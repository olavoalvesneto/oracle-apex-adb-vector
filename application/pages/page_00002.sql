prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Movie Search'
,p_alias=>'MOVIE-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Movie Search'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Set posters to be the same size/ratio */',
'.a-CardView-media--square:before {',
'    padding-top: 150%; /* 2:3 ratio */',
'}',
'',
'/* set position of the Card badge */',
'.a-CardView-badge {',
'    position: absolute;',
'    top: 12px;',
'    right: 12px;',
'    margin: 0;',
'}',
'',
'/* style the movie rating under the movie title */',
'    .movie-rating {',
'    margin-top: 4px;',
'}',
'',
'/* style both the movie rating and the star icon under the movie title */',
'.movie-rating,',
'.movie-rating .fa {',
'    font-size: 12px;',
'    line-height: inherit;',
'    vertical-align: bottom;',
'    opacity: 0.75;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260220062910Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260220184521Z')
,p_created_by=>'DEMO'
,p_last_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8912678081450401)
,p_plug_name=>'Popular Movies'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(8904557078384869)
,p_use_local_sync_table=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ads.id,',
'       ads.adult,',
'       ads.title,',
'       ads.video,',
'       ads.overview,',
'       ads.popularity,',
'       ads.vote_count,',
'       ads.poster_path,',
'       ads.release_date,',
'       ads.vote_average,',
'       ads.backdrop_path,',
'       ads.original_title,',
'       ads.original_language,',
'       case when w.watched_yn = ''Y'' then ''Watched''',
'            when w.watched_yn = ''N'' then ''Added''',
'            end as badge_label,',
'       case when w.watched_yn = ''N'' then ''u-success''',
'            end as badge_color',
'  from #APEX$SOURCE_DATA# ads',
'LEFT OUTER JOIN',
'    -- doing inline select to limit rows to current user',
'    (select * from watchlist where user_id = :USER_ID) w',
'    ON w.movie_id = ads.ID'))
,p_source_post_processing=>'SQL'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_SEARCH'
,p_created_on=>wwv_flow_imp.dz('20260220063858Z')
,p_updated_on=>wwv_flow_imp.dz('20260220184521Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8912792127450402)
,p_region_id=>wwv_flow_imp.id(8912678081450401)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-rating">',
'<span aria-hidden="true" class="fa fa-star"></span> &VOTE_AVERAGE.</div>',
''))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'BADGE_LABEL'
,p_badge_css_classes=>'&BADGE_COLOR'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'https://image.tmdb.org/t/p/w500&POSTER_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
,p_updated_on=>wwv_flow_imp.dz('20260220164532Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8914660495450421)
,p_card_id=>wwv_flow_imp.id(8912792127450402)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID,P3_PREVIOUS_PAGE_ID:&ID.,2'
,p_updated_on=>wwv_flow_imp.dz('20260220164532Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8912806070450403)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(8905265414384870)
,p_page_plug_id=>wwv_flow_imp.id(8912678081450401)
,p_value_type=>'DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260220063858Z')
,p_updated_on=>wwv_flow_imp.dz('20260220063858Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8912999979450404)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(8905669485384870)
,p_page_plug_id=>wwv_flow_imp.id(8912678081450401)
,p_value_type=>'DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260220063858Z')
,p_updated_on=>wwv_flow_imp.dz('20260220063858Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8913031963450405)
,p_plug_name=>'Searched Movies'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(8910109399384878)
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ads.id,',
'       ads.adult,',
'       ads.title,',
'       ads.video,',
'       ads.overview,',
'       ads.popularity,',
'       ads.vote_count,',
'       ads.poster_path,',
'       ads.release_date,',
'       ads.vote_average,',
'       ads.backdrop_path,',
'       ads.original_title,',
'       ads.original_language,',
'       case when w.watched_yn = ''Y'' then ''Watched''',
'            when w.watched_yn = ''N'' then ''Added''',
'            end as badge_label,',
'       case when w.watched_yn = ''N'' then ''u-success''',
'            end as badge_color',
'  from #APEX$SOURCE_DATA# ads',
'LEFT OUTER JOIN',
'    -- doing inline select to limit rows to current user',
'    (select * from watchlist where user_id = :USER_ID) w',
'    ON w.movie_id = ads.ID'))
,p_source_post_processing=>'SQL'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>25
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_SEARCH'
,p_created_on=>wwv_flow_imp.dz('20260220064039Z')
,p_updated_on=>wwv_flow_imp.dz('20260220164859Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8913340878450408)
,p_region_id=>wwv_flow_imp.id(8913031963450405)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-rating">',
'<span aria-hidden="true" class="fa fa-star"></span> &VOTE_AVERAGE.</div>',
''))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'BADGE_LABEL'
,p_badge_css_classes=>'&BADGE_COLOR'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'https://image.tmdb.org/t/p/w500&POSTER_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
,p_updated_on=>wwv_flow_imp.dz('20260220164859Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8914755754450422)
,p_card_id=>wwv_flow_imp.id(8913340878450408)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID,P3_PREVIOUS_PAGE_ID:&ID.,2'
,p_updated_on=>wwv_flow_imp.dz('20260220164859Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8913493188450409)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(8911522263384883)
,p_page_plug_id=>wwv_flow_imp.id(8913031963450405)
,p_value_type=>'DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260220064039Z')
,p_updated_on=>wwv_flow_imp.dz('20260220064039Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8913554354450410)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(8910776447384879)
,p_page_plug_id=>wwv_flow_imp.id(8913031963450405)
,p_value_type=>'DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260220064039Z')
,p_updated_on=>wwv_flow_imp.dz('20260220064039Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8913646729450411)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(8911123000384882)
,p_page_plug_id=>wwv_flow_imp.id(8913031963450405)
,p_value_type=>'ITEM'
,p_value=>'P2_SEARCH'
,p_created_on=>wwv_flow_imp.dz('20260220064039Z')
,p_updated_on=>wwv_flow_imp.dz('20260220064952Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8913760697450412)
,p_plug_name=>'Search Bar'
,p_region_css_classes=>'padding-sm'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220064615Z')
,p_updated_on=>wwv_flow_imp.dz('20260220064615Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8913825848450413)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8913760697450412)
,p_prompt=>'Search'
,p_placeholder=>'Search for a movie...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220064615Z')
,p_updated_on=>wwv_flow_imp.dz('20260220064615Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
