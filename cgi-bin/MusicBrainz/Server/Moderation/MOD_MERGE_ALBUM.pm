#!/home/httpd/musicbrainz/mb_server/cgi-bin/perl -w
# vi: set ts=4 sw=4 :
#____________________________________________________________________________
#
#   MusicBrainz -- the open internet music database
#
#   Copyright (C) 2000 Robert Kaye
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#
#   $Id$
#____________________________________________________________________________

use strict;

package MusicBrainz::Server::Moderation::MOD_MERGE_ALBUM;

# NOTE!  This module also handles MOD_MERGE_ALBUM_MAC

use ModDefs qw( :modstatus MODBOT_MODERATOR MOD_MERGE_ALBUM_MAC );
use base 'Moderation';

sub Name { "Merge Albums" }
(__PACKAGE__)->RegisterHandler;

sub PreInsert
{
	my ($self, %opts) = @_;

	my $albums = $opts{'albums'} or die;
	my $into = $opts{'into'} or die;

	my @albums = ($into, @$albums);
	
	# Sanity check: all the albums must be unique
	my %seen;

	for (@albums)
	{
		die "Album #" . ($_->GetId) . " passed twice to " . $self->Token
			if $seen{$_->GetId}++;
	}

	my %new = (
		map {
			(
				"AlbumId$_"		=> $albums[$_]->GetId,
				"AlbumName$_"	=> $albums[$_]->GetName,
			)
		} 0 .. $#albums
	);

	$self->SetArtist($into->GetArtist);
	$self->SetTable("album");
	$self->SetColumn("id");
	$self->SetRowId($into->GetId);
	$self->SetNew($self->ConvertHashToNew(\%new));
}

sub PostLoad
{
	my $self = shift;

	my $new = $self->{'new_unpacked'} = $self->ConvertNewToHash($self->GetNew)
		or die;

	my $into = $self->{'new_into'} = {
		id => $new->{"AlbumId0"},
		name => $new->{"AlbumName0"},
	};

	$into->{"id"} or die;

	my @albums;

	for (my $i=1; ; ++$i)
	{
		my $id = $new->{"AlbumId$i"}
			or last;
		my $name = $new->{"AlbumName$i"};
		defined($name) or last;

		push @albums, { id => $id, name => $name };
	}

	$self->{'new_albums'} = \@albums;
	@albums or die;
}

sub AdjustModPending
{
	my ($self, $adjust) = @_;
	my $sql = Sql->new($self->{DBH});

	# Prior to the ModerationClasses2 branch, the "mod pending" change would
	# only be applied to the album listed in $self->GetRowId, i.e. the target
	# of the merge (here referred to as the "into" album).
	# Now though we apply the modpending change to all affected albums.

	for my $album ($self->{'new_into'}, @{ $self->{'new_albums'} })
	{
		$sql->Do(
			"UPDATE album SET modpending = modpending + ? WHERE id = ?",
			$adjust,
			$album->{'id'},
		);

		# ... and we allow for modpending to go negative (if it was never
		# incremented in the first place), and fix it if it does.
		$sql->Do(
			"UPDATE album SET modpending = 0 WHERE id = ? AND modpending < 0",
			$album->{'id'},
		) if $adjust < 0;
	}
}

sub ApprovedAction
{
 	my $self = shift;

	my $al = Album->new($self->{DBH});
	$al->SetId($self->{'new_into'}{'id'});

	unless ($al->LoadFromId)
	{
		$self->InsertNote(MODBOT_MODERATOR, "This album has been deleted");
		return STATUS_FAILEDPREREQ;
	}
	
	$al->MergeAlbums(
		($self->GetType == MOD_MERGE_ALBUM_MAC),
		map { $_->{'id'} } @{ $self->{'new_albums'} },
	);
					
	STATUS_APPLIED;
}

1;
# eof MOD_MERGE_ALBUM.pm
