-- Automatically generated, do not edit.
\unset ON_ERROR_STOP

ALTER TABLE annotation DROP CONSTRAINT annotation_fk_editor;
ALTER TABLE artist DROP CONSTRAINT artist_fk_name;
ALTER TABLE artist DROP CONSTRAINT artist_fk_sort_name;
ALTER TABLE artist DROP CONSTRAINT artist_fk_type;
ALTER TABLE artist DROP CONSTRAINT artist_fk_country;
ALTER TABLE artist DROP CONSTRAINT artist_fk_gender;
ALTER TABLE artist_alias DROP CONSTRAINT artist_alias_fk_artist;
ALTER TABLE artist_alias DROP CONSTRAINT artist_alias_fk_name;
ALTER TABLE artist_annotation DROP CONSTRAINT artist_annotation_fk_artist;
ALTER TABLE artist_annotation DROP CONSTRAINT artist_annotation_fk_annotation;
ALTER TABLE artist_credit DROP CONSTRAINT artist_credit_fk_name;
ALTER TABLE artist_credit_name DROP CONSTRAINT artist_credit_name_fk_artist_credit;
ALTER TABLE artist_credit_name DROP CONSTRAINT artist_credit_name_fk_artist;
ALTER TABLE artist_credit_name DROP CONSTRAINT artist_credit_name_fk_name;
ALTER TABLE artist_gid_redirect DROP CONSTRAINT artist_gid_redirect_fk_new_id;
ALTER TABLE artist_meta DROP CONSTRAINT artist_meta_fk_id;
ALTER TABLE artist_rating_raw DROP CONSTRAINT artist_rating_raw_fk_artist;
ALTER TABLE artist_rating_raw DROP CONSTRAINT artist_rating_raw_fk_editor;
ALTER TABLE artist_tag DROP CONSTRAINT artist_tag_fk_artist;
ALTER TABLE artist_tag DROP CONSTRAINT artist_tag_fk_tag;
ALTER TABLE artist_tag_raw DROP CONSTRAINT artist_tag_raw_fk_artist;
ALTER TABLE artist_tag_raw DROP CONSTRAINT artist_tag_raw_fk_editor;
ALTER TABLE artist_tag_raw DROP CONSTRAINT artist_tag_raw_fk_tag;
ALTER TABLE autoeditor_election DROP CONSTRAINT autoeditor_election_fk_candidate;
ALTER TABLE autoeditor_election DROP CONSTRAINT autoeditor_election_fk_proposer;
ALTER TABLE autoeditor_election DROP CONSTRAINT autoeditor_election_fk_seconder_1;
ALTER TABLE autoeditor_election DROP CONSTRAINT autoeditor_election_fk_seconder_2;
ALTER TABLE autoeditor_election_vote DROP CONSTRAINT autoeditor_election_vote_fk_autoeditor_election;
ALTER TABLE autoeditor_election_vote DROP CONSTRAINT autoeditor_election_vote_fk_voter;
ALTER TABLE cdtoc_raw DROP CONSTRAINT cdtoc_raw_fk_release;
ALTER TABLE edit DROP CONSTRAINT edit_fk_editor;
ALTER TABLE edit_artist DROP CONSTRAINT edit_artist_fk_edit;
ALTER TABLE edit_artist DROP CONSTRAINT edit_artist_fk_artist;
ALTER TABLE edit_label DROP CONSTRAINT edit_label_fk_edit;
ALTER TABLE edit_label DROP CONSTRAINT edit_label_fk_label;
ALTER TABLE edit_note DROP CONSTRAINT edit_note_fk_editor;
ALTER TABLE edit_note DROP CONSTRAINT edit_note_fk_edit;
ALTER TABLE edit_recording DROP CONSTRAINT edit_recording_fk_edit;
ALTER TABLE edit_recording DROP CONSTRAINT edit_recording_fk_recording;
ALTER TABLE edit_release DROP CONSTRAINT edit_release_fk_edit;
ALTER TABLE edit_release DROP CONSTRAINT edit_release_fk_release;
ALTER TABLE edit_release_group DROP CONSTRAINT edit_release_group_fk_edit;
ALTER TABLE edit_release_group DROP CONSTRAINT edit_release_group_fk_release_group;
ALTER TABLE edit_url DROP CONSTRAINT edit_url_fk_edit;
ALTER TABLE edit_url DROP CONSTRAINT edit_url_fk_url;
ALTER TABLE edit_work DROP CONSTRAINT edit_work_fk_edit;
ALTER TABLE edit_work DROP CONSTRAINT edit_work_fk_work;
ALTER TABLE editor DROP CONSTRAINT editor_fk_gender;
ALTER TABLE editor DROP CONSTRAINT editor_fk_country;
ALTER TABLE editor_collection DROP CONSTRAINT editor_collection_fk_editor;
ALTER TABLE editor_collection_release DROP CONSTRAINT editor_collection_release_fk_collection;
ALTER TABLE editor_collection_release DROP CONSTRAINT editor_collection_release_fk_release;
ALTER TABLE editor_language DROP CONSTRAINT editor_language_fk_editor;
ALTER TABLE editor_language DROP CONSTRAINT editor_language_fk_language;
ALTER TABLE editor_preference DROP CONSTRAINT editor_preference_fk_editor;
ALTER TABLE editor_subscribe_artist DROP CONSTRAINT editor_subscribe_artist_fk_editor;
ALTER TABLE editor_subscribe_editor DROP CONSTRAINT editor_subscribe_editor_fk_editor;
ALTER TABLE editor_subscribe_editor DROP CONSTRAINT editor_subscribe_editor_fk_subscribed_editor;
ALTER TABLE editor_subscribe_label DROP CONSTRAINT editor_subscribe_label_fk_editor;
ALTER TABLE editor_watch_artist DROP CONSTRAINT editor_watch_artist_fk_artist;
ALTER TABLE editor_watch_artist DROP CONSTRAINT editor_watch_artist_fk_editor;
ALTER TABLE editor_watch_preferences DROP CONSTRAINT editor_watch_preferences_fk_editor;
ALTER TABLE editor_watch_release_group_type DROP CONSTRAINT editor_watch_release_group_type_fk_editor;
ALTER TABLE editor_watch_release_group_type DROP CONSTRAINT editor_watch_release_group_type_fk_release_group_type;
ALTER TABLE editor_watch_release_status DROP CONSTRAINT editor_watch_release_status_fk_editor;
ALTER TABLE editor_watch_release_status DROP CONSTRAINT editor_watch_release_status_fk_release_status;
ALTER TABLE isrc DROP CONSTRAINT isrc_fk_recording;
ALTER TABLE l_artist_artist DROP CONSTRAINT l_artist_artist_fk_link;
ALTER TABLE l_artist_artist DROP CONSTRAINT l_artist_artist_fk_entity0;
ALTER TABLE l_artist_artist DROP CONSTRAINT l_artist_artist_fk_entity1;
ALTER TABLE l_artist_label DROP CONSTRAINT l_artist_label_fk_link;
ALTER TABLE l_artist_label DROP CONSTRAINT l_artist_label_fk_entity0;
ALTER TABLE l_artist_label DROP CONSTRAINT l_artist_label_fk_entity1;
ALTER TABLE l_artist_recording DROP CONSTRAINT l_artist_recording_fk_link;
ALTER TABLE l_artist_recording DROP CONSTRAINT l_artist_recording_fk_entity0;
ALTER TABLE l_artist_recording DROP CONSTRAINT l_artist_recording_fk_entity1;
ALTER TABLE l_artist_release DROP CONSTRAINT l_artist_release_fk_link;
ALTER TABLE l_artist_release DROP CONSTRAINT l_artist_release_fk_entity0;
ALTER TABLE l_artist_release DROP CONSTRAINT l_artist_release_fk_entity1;
ALTER TABLE l_artist_release_group DROP CONSTRAINT l_artist_release_group_fk_link;
ALTER TABLE l_artist_release_group DROP CONSTRAINT l_artist_release_group_fk_entity0;
ALTER TABLE l_artist_release_group DROP CONSTRAINT l_artist_release_group_fk_entity1;
ALTER TABLE l_artist_url DROP CONSTRAINT l_artist_url_fk_link;
ALTER TABLE l_artist_url DROP CONSTRAINT l_artist_url_fk_entity0;
ALTER TABLE l_artist_url DROP CONSTRAINT l_artist_url_fk_entity1;
ALTER TABLE l_artist_work DROP CONSTRAINT l_artist_work_fk_link;
ALTER TABLE l_artist_work DROP CONSTRAINT l_artist_work_fk_entity0;
ALTER TABLE l_artist_work DROP CONSTRAINT l_artist_work_fk_entity1;
ALTER TABLE l_label_label DROP CONSTRAINT l_label_label_fk_link;
ALTER TABLE l_label_label DROP CONSTRAINT l_label_label_fk_entity0;
ALTER TABLE l_label_label DROP CONSTRAINT l_label_label_fk_entity1;
ALTER TABLE l_label_recording DROP CONSTRAINT l_label_recording_fk_link;
ALTER TABLE l_label_recording DROP CONSTRAINT l_label_recording_fk_entity0;
ALTER TABLE l_label_recording DROP CONSTRAINT l_label_recording_fk_entity1;
ALTER TABLE l_label_release DROP CONSTRAINT l_label_release_fk_link;
ALTER TABLE l_label_release DROP CONSTRAINT l_label_release_fk_entity0;
ALTER TABLE l_label_release DROP CONSTRAINT l_label_release_fk_entity1;
ALTER TABLE l_label_release_group DROP CONSTRAINT l_label_release_group_fk_link;
ALTER TABLE l_label_release_group DROP CONSTRAINT l_label_release_group_fk_entity0;
ALTER TABLE l_label_release_group DROP CONSTRAINT l_label_release_group_fk_entity1;
ALTER TABLE l_label_url DROP CONSTRAINT l_label_url_fk_link;
ALTER TABLE l_label_url DROP CONSTRAINT l_label_url_fk_entity0;
ALTER TABLE l_label_url DROP CONSTRAINT l_label_url_fk_entity1;
ALTER TABLE l_label_work DROP CONSTRAINT l_label_work_fk_link;
ALTER TABLE l_label_work DROP CONSTRAINT l_label_work_fk_entity0;
ALTER TABLE l_label_work DROP CONSTRAINT l_label_work_fk_entity1;
ALTER TABLE l_recording_recording DROP CONSTRAINT l_recording_recording_fk_link;
ALTER TABLE l_recording_recording DROP CONSTRAINT l_recording_recording_fk_entity0;
ALTER TABLE l_recording_recording DROP CONSTRAINT l_recording_recording_fk_entity1;
ALTER TABLE l_recording_release DROP CONSTRAINT l_recording_release_fk_link;
ALTER TABLE l_recording_release DROP CONSTRAINT l_recording_release_fk_entity0;
ALTER TABLE l_recording_release DROP CONSTRAINT l_recording_release_fk_entity1;
ALTER TABLE l_recording_release_group DROP CONSTRAINT l_recording_release_group_fk_link;
ALTER TABLE l_recording_release_group DROP CONSTRAINT l_recording_release_group_fk_entity0;
ALTER TABLE l_recording_release_group DROP CONSTRAINT l_recording_release_group_fk_entity1;
ALTER TABLE l_recording_url DROP CONSTRAINT l_recording_url_fk_link;
ALTER TABLE l_recording_url DROP CONSTRAINT l_recording_url_fk_entity0;
ALTER TABLE l_recording_url DROP CONSTRAINT l_recording_url_fk_entity1;
ALTER TABLE l_recording_work DROP CONSTRAINT l_recording_work_fk_link;
ALTER TABLE l_recording_work DROP CONSTRAINT l_recording_work_fk_entity0;
ALTER TABLE l_recording_work DROP CONSTRAINT l_recording_work_fk_entity1;
ALTER TABLE l_release_group_release_group DROP CONSTRAINT l_release_group_release_group_fk_link;
ALTER TABLE l_release_group_release_group DROP CONSTRAINT l_release_group_release_group_fk_entity0;
ALTER TABLE l_release_group_release_group DROP CONSTRAINT l_release_group_release_group_fk_entity1;
ALTER TABLE l_release_group_url DROP CONSTRAINT l_release_group_url_fk_link;
ALTER TABLE l_release_group_url DROP CONSTRAINT l_release_group_url_fk_entity0;
ALTER TABLE l_release_group_url DROP CONSTRAINT l_release_group_url_fk_entity1;
ALTER TABLE l_release_group_work DROP CONSTRAINT l_release_group_work_fk_link;
ALTER TABLE l_release_group_work DROP CONSTRAINT l_release_group_work_fk_entity0;
ALTER TABLE l_release_group_work DROP CONSTRAINT l_release_group_work_fk_entity1;
ALTER TABLE l_release_release DROP CONSTRAINT l_release_release_fk_link;
ALTER TABLE l_release_release DROP CONSTRAINT l_release_release_fk_entity0;
ALTER TABLE l_release_release DROP CONSTRAINT l_release_release_fk_entity1;
ALTER TABLE l_release_release_group DROP CONSTRAINT l_release_release_group_fk_link;
ALTER TABLE l_release_release_group DROP CONSTRAINT l_release_release_group_fk_entity0;
ALTER TABLE l_release_release_group DROP CONSTRAINT l_release_release_group_fk_entity1;
ALTER TABLE l_release_url DROP CONSTRAINT l_release_url_fk_link;
ALTER TABLE l_release_url DROP CONSTRAINT l_release_url_fk_entity0;
ALTER TABLE l_release_url DROP CONSTRAINT l_release_url_fk_entity1;
ALTER TABLE l_release_work DROP CONSTRAINT l_release_work_fk_link;
ALTER TABLE l_release_work DROP CONSTRAINT l_release_work_fk_entity0;
ALTER TABLE l_release_work DROP CONSTRAINT l_release_work_fk_entity1;
ALTER TABLE l_url_url DROP CONSTRAINT l_url_url_fk_link;
ALTER TABLE l_url_url DROP CONSTRAINT l_url_url_fk_entity0;
ALTER TABLE l_url_url DROP CONSTRAINT l_url_url_fk_entity1;
ALTER TABLE l_url_work DROP CONSTRAINT l_url_work_fk_link;
ALTER TABLE l_url_work DROP CONSTRAINT l_url_work_fk_entity0;
ALTER TABLE l_url_work DROP CONSTRAINT l_url_work_fk_entity1;
ALTER TABLE l_work_work DROP CONSTRAINT l_work_work_fk_link;
ALTER TABLE l_work_work DROP CONSTRAINT l_work_work_fk_entity0;
ALTER TABLE l_work_work DROP CONSTRAINT l_work_work_fk_entity1;
ALTER TABLE label DROP CONSTRAINT label_fk_name;
ALTER TABLE label DROP CONSTRAINT label_fk_sort_name;
ALTER TABLE label DROP CONSTRAINT label_fk_type;
ALTER TABLE label DROP CONSTRAINT label_fk_country;
ALTER TABLE label_alias DROP CONSTRAINT label_alias_fk_label;
ALTER TABLE label_alias DROP CONSTRAINT label_alias_fk_name;
ALTER TABLE label_annotation DROP CONSTRAINT label_annotation_fk_label;
ALTER TABLE label_annotation DROP CONSTRAINT label_annotation_fk_annotation;
ALTER TABLE label_gid_redirect DROP CONSTRAINT label_gid_redirect_fk_new_id;
ALTER TABLE label_meta DROP CONSTRAINT label_meta_fk_id;
ALTER TABLE label_rating_raw DROP CONSTRAINT label_rating_raw_fk_label;
ALTER TABLE label_rating_raw DROP CONSTRAINT label_rating_raw_fk_editor;
ALTER TABLE label_tag DROP CONSTRAINT label_tag_fk_label;
ALTER TABLE label_tag DROP CONSTRAINT label_tag_fk_tag;
ALTER TABLE label_tag_raw DROP CONSTRAINT label_tag_raw_fk_label;
ALTER TABLE label_tag_raw DROP CONSTRAINT label_tag_raw_fk_editor;
ALTER TABLE label_tag_raw DROP CONSTRAINT label_tag_raw_fk_tag;
ALTER TABLE link DROP CONSTRAINT link_fk_link_type;
ALTER TABLE link_attribute DROP CONSTRAINT link_attribute_fk_link;
ALTER TABLE link_attribute DROP CONSTRAINT link_attribute_fk_attribute_type;
ALTER TABLE link_attribute_type DROP CONSTRAINT link_attribute_type_fk_parent;
ALTER TABLE link_attribute_type DROP CONSTRAINT link_attribute_type_fk_root;
ALTER TABLE link_type DROP CONSTRAINT link_type_fk_parent;
ALTER TABLE link_type_attribute_type DROP CONSTRAINT link_type_attribute_type_fk_link_type;
ALTER TABLE link_type_attribute_type DROP CONSTRAINT link_type_attribute_type_fk_attribute_type;
ALTER TABLE medium DROP CONSTRAINT medium_fk_tracklist;
ALTER TABLE medium DROP CONSTRAINT medium_fk_release;
ALTER TABLE medium DROP CONSTRAINT medium_fk_format;
ALTER TABLE medium_cdtoc DROP CONSTRAINT medium_cdtoc_fk_medium;
ALTER TABLE medium_cdtoc DROP CONSTRAINT medium_cdtoc_fk_cdtoc;
ALTER TABLE medium_format DROP CONSTRAINT medium_format_fk_parent;
ALTER TABLE puid DROP CONSTRAINT puid_fk_version;
ALTER TABLE recording DROP CONSTRAINT recording_fk_name;
ALTER TABLE recording DROP CONSTRAINT recording_fk_artist_credit;
ALTER TABLE recording_annotation DROP CONSTRAINT recording_annotation_fk_recording;
ALTER TABLE recording_annotation DROP CONSTRAINT recording_annotation_fk_annotation;
ALTER TABLE recording_gid_redirect DROP CONSTRAINT recording_gid_redirect_fk_new_id;
ALTER TABLE recording_meta DROP CONSTRAINT recording_meta_fk_id;
ALTER TABLE recording_puid DROP CONSTRAINT recording_puid_fk_puid;
ALTER TABLE recording_puid DROP CONSTRAINT recording_puid_fk_recording;
ALTER TABLE recording_rating_raw DROP CONSTRAINT recording_rating_raw_fk_recording;
ALTER TABLE recording_rating_raw DROP CONSTRAINT recording_rating_raw_fk_editor;
ALTER TABLE recording_tag DROP CONSTRAINT recording_tag_fk_recording;
ALTER TABLE recording_tag DROP CONSTRAINT recording_tag_fk_tag;
ALTER TABLE recording_tag_raw DROP CONSTRAINT recording_tag_raw_fk_recording;
ALTER TABLE recording_tag_raw DROP CONSTRAINT recording_tag_raw_fk_editor;
ALTER TABLE recording_tag_raw DROP CONSTRAINT recording_tag_raw_fk_tag;
ALTER TABLE release DROP CONSTRAINT release_fk_name;
ALTER TABLE release DROP CONSTRAINT release_fk_artist_credit;
ALTER TABLE release DROP CONSTRAINT release_fk_release_group;
ALTER TABLE release DROP CONSTRAINT release_fk_status;
ALTER TABLE release DROP CONSTRAINT release_fk_packaging;
ALTER TABLE release DROP CONSTRAINT release_fk_country;
ALTER TABLE release DROP CONSTRAINT release_fk_language;
ALTER TABLE release DROP CONSTRAINT release_fk_script;
ALTER TABLE release_annotation DROP CONSTRAINT release_annotation_fk_release;
ALTER TABLE release_annotation DROP CONSTRAINT release_annotation_fk_annotation;
ALTER TABLE release_coverart DROP CONSTRAINT release_coverart_fk_id;
ALTER TABLE release_gid_redirect DROP CONSTRAINT release_gid_redirect_fk_new_id;
ALTER TABLE release_group DROP CONSTRAINT release_group_fk_name;
ALTER TABLE release_group DROP CONSTRAINT release_group_fk_artist_credit;
ALTER TABLE release_group DROP CONSTRAINT release_group_fk_type;
ALTER TABLE release_group_annotation DROP CONSTRAINT release_group_annotation_fk_release_group;
ALTER TABLE release_group_annotation DROP CONSTRAINT release_group_annotation_fk_annotation;
ALTER TABLE release_group_gid_redirect DROP CONSTRAINT release_group_gid_redirect_fk_new_id;
ALTER TABLE release_group_meta DROP CONSTRAINT release_group_meta_fk_id;
ALTER TABLE release_group_rating_raw DROP CONSTRAINT release_group_rating_raw_fk_release_group;
ALTER TABLE release_group_rating_raw DROP CONSTRAINT release_group_rating_raw_fk_editor;
ALTER TABLE release_group_tag DROP CONSTRAINT release_group_tag_fk_release_group;
ALTER TABLE release_group_tag DROP CONSTRAINT release_group_tag_fk_tag;
ALTER TABLE release_group_tag_raw DROP CONSTRAINT release_group_tag_raw_fk_release_group;
ALTER TABLE release_group_tag_raw DROP CONSTRAINT release_group_tag_raw_fk_editor;
ALTER TABLE release_group_tag_raw DROP CONSTRAINT release_group_tag_raw_fk_tag;
ALTER TABLE release_label DROP CONSTRAINT release_label_fk_release;
ALTER TABLE release_label DROP CONSTRAINT release_label_fk_label;
ALTER TABLE release_meta DROP CONSTRAINT release_meta_fk_id;
ALTER TABLE release_tag DROP CONSTRAINT release_tag_fk_release;
ALTER TABLE release_tag DROP CONSTRAINT release_tag_fk_tag;
ALTER TABLE release_tag_raw DROP CONSTRAINT release_tag_raw_fk_release;
ALTER TABLE release_tag_raw DROP CONSTRAINT release_tag_raw_fk_editor;
ALTER TABLE release_tag_raw DROP CONSTRAINT release_tag_raw_fk_tag;
ALTER TABLE script_language DROP CONSTRAINT script_language_fk_script;
ALTER TABLE script_language DROP CONSTRAINT script_language_fk_language;
ALTER TABLE tag_relation DROP CONSTRAINT tag_relation_fk_tag1;
ALTER TABLE tag_relation DROP CONSTRAINT tag_relation_fk_tag2;
ALTER TABLE track DROP CONSTRAINT track_fk_recording;
ALTER TABLE track DROP CONSTRAINT track_fk_tracklist;
ALTER TABLE track DROP CONSTRAINT track_fk_name;
ALTER TABLE track DROP CONSTRAINT track_fk_artist_credit;
ALTER TABLE track_raw DROP CONSTRAINT track_raw_fk_release;
ALTER TABLE url_gid_redirect DROP CONSTRAINT url_gid_redirect_fk_new_id;
ALTER TABLE vote DROP CONSTRAINT vote_fk_editor;
ALTER TABLE vote DROP CONSTRAINT vote_fk_edit;
ALTER TABLE work DROP CONSTRAINT work_fk_name;
ALTER TABLE work DROP CONSTRAINT work_fk_type;
ALTER TABLE work_alias DROP CONSTRAINT work_alias_fk_work;
ALTER TABLE work_alias DROP CONSTRAINT work_alias_fk_name;
ALTER TABLE work_annotation DROP CONSTRAINT work_annotation_fk_work;
ALTER TABLE work_annotation DROP CONSTRAINT work_annotation_fk_annotation;
ALTER TABLE work_gid_redirect DROP CONSTRAINT work_gid_redirect_fk_new_id;
ALTER TABLE work_meta DROP CONSTRAINT work_meta_fk_id;
ALTER TABLE work_rating_raw DROP CONSTRAINT work_rating_raw_fk_work;
ALTER TABLE work_rating_raw DROP CONSTRAINT work_rating_raw_fk_editor;
ALTER TABLE work_tag DROP CONSTRAINT work_tag_fk_work;
ALTER TABLE work_tag DROP CONSTRAINT work_tag_fk_tag;
ALTER TABLE work_tag_raw DROP CONSTRAINT work_tag_raw_fk_work;
ALTER TABLE work_tag_raw DROP CONSTRAINT work_tag_raw_fk_editor;
ALTER TABLE work_tag_raw DROP CONSTRAINT work_tag_raw_fk_tag;
