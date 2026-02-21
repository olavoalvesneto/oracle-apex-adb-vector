prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'My Watchlist'
,p_alias=>'HOME'
,p_step_title=>'Movies Watchlist'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
':root {',
'    /* Updating movie title size to make it more prominent */',
'    --a-cv-title-font-size: 24px;',
'    --a-cv-title-line-height: 1.5;',
'}',
'',
'    /* Update default width of images */',
'    .a-CardView-items--row .has-media {',
'    grid-template-columns: minmax(32px,128px) minmax(0,var(--a-cv-icon-spacer,44px)) 1fr minmax(0,auto);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260220060849Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260220191723Z')
,p_created_by=>'DEMO'
,p_last_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8882662566297866)
,p_plug_name=>'Movies Watchlist'
,p_title=>'My Watchlist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220060849Z')
,p_updated_on=>wwv_flow_imp.dz('20260220065833Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8915553952450430)
,p_plug_name=>'WtachList'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       movie_id,',
'       user_id,',
'       watched_yn,',
'       watched,',
'       case when watched_yn = ''Y'' then ''Watched'' end as WATCHED_LABEL,',
'       case when watched_yn = ''Y''',
'            then ''Marked as watched '' || apex_util.get_since(watched)',
'            else ''Added to watchlist '' || apex_util.get_since(created)',
'            end as movie_status,',
'       title,',
'       poster_url,',
'       release_date,',
'       to_char(release_date, ''YYYY'') as release_year,',
'       floor( to_char(release_date, ''YYYY'') / 10) * 10 as decade,',
'       runtime,',
'       vote_average,',
'       created,',
'       to_char(created, ''MM/YYYY'') as created_on,',
'       created_by,',
'       updated,',
'       updated_by',
'  from watchlist',
' where user_id = :USER_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where user_id = :USER_ID'))
,p_created_on=>wwv_flow_imp.dz('20260220174343Z')
,p_updated_on=>wwv_flow_imp.dz('20260220191335Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8915652059450431)
,p_region_id=>wwv_flow_imp.id(8915553952450430)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Release Year: &RELEASE_YEAR.',
'<br>',
'Rating: &VOTE_AVERAGE.'))
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'MOVIE_STATUS'
,p_badge_column_name=>'WATCHED_LABEL'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'POSTER_URL'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
,p_updated_on=>wwv_flow_imp.dz('20260220174343Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8915766368450432)
,p_card_id=>wwv_flow_imp.id(8915652059450431)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID,P3_PREVIOUS_PAGE_ID:&MOVIE_ID.,1'
,p_updated_on=>wwv_flow_imp.dz('20260220174343Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8916188406450436)
,p_plug_name=>'Get Started'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Welcome to your Watchlist!</strong>',
'<br>',
'<br>',
'To search for movies and add them to your list, click on the <strong>Add a Movie</strong> button above.'))
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where user_id = :USER_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220191233Z')
,p_updated_on=>wwv_flow_imp.dz('20260220191233Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8913904520450414)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8882662566297866)
,p_button_name=>'ADD_MOVIE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Movie'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_created_on=>wwv_flow_imp.dz('20260220065833Z')
,p_updated_on=>wwv_flow_imp.dz('20260220065833Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8914060538450415)
,p_name=>'Refresh on Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8913904520450414)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
,p_created_on=>wwv_flow_imp.dz('20260220065833Z')
,p_updated_on=>wwv_flow_imp.dz('20260220065833Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8914169425450416)
,p_event_id=>wwv_flow_imp.id(8914060538450415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260220065833Z')
,p_updated_on=>wwv_flow_imp.dz('20260220065833Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
