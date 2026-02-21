prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Movie Details'
,p_alias=>'MOVIE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Movie Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Customize Movie Header Card */',
'.movie-header-card.a-CardView {',
'    /* Increase the font sizes for movie name and tag line */',
'    --a-cv-title-font-size: 24px;',
'    --a-cv-subtitle-font-size: 16px;',
'',
'    /* Add additional spacing around the header content */',
'    --ut-cv-subtitle-margin: 16px 0 0 0;',
'    display: flex;',
'    padding: 24px 0;',
'}',
'.movie-header-card .a-CardView-body {',
'    /* Remove unnecessary padding */',
'    padding-top: 0;',
'}',
'.movie-details {',
'    /* Center align Card Body text */',
'    text-align: center;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260220181248Z')
,p_created_by=>'DEMO'
,p_last_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8914252251450417)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(8899389916384859)
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       title,',
'       ''https://image.tmdb.org/t/p/w500''||poster_path as poster_url,',
'       ''https://image.tmdb.org/t/p/w500''||backdrop_path as backdrop_url,',
'       release_date,',
'       runtime,',
'       trunc(runtime/60) || ''hr '' ||',
'            extract (minute from numtodsinterval((runtime/60), ''HOUR'' )) || ''min''',
'            as runtime_friendly,',
'       vote_average,',
'       tagline',
'  from #APEX$SOURCE_DATA#'))
,p_source_post_processing=>'SQL'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260220072045Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8914357231450418)
,p_region_id=>wwv_flow_imp.id(8914252251450417)
,p_layout_type=>'ROW'
,p_component_css_classes=>'movie-header-card'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TAGLINE'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-details">',
'    <span title="Release Date">Released &RELEASE_DATE.</span> &middot;',
'    <span title="Runtime">&RUNTIME_FRIENDLY.</span> &middot;',
'    <span title="&VOTE_AVERAGE. out of 10"><span class="fa fa-star" aria-hidden="true"></span> &VOTE_AVERAGE.</span>',
'</div>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&POSTER_URL.'
,p_icon_css_classes=>'w100 h150'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'BACKDROP_URL'
,p_media_display_position=>'BACKGROUND'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8914441621450419)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(8900031153384860)
,p_page_plug_id=>wwv_flow_imp.id(8914252251450417)
,p_value_type=>'ITEM'
,p_value=>'P3_ID'
,p_created_on=>wwv_flow_imp.dz('20260220072046Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8914526238450420)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'&P3_OVERVIEW.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220072045Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8915810936450433)
,p_plug_name=>'Cast'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>40
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(8891831483384838)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260220181149Z')
,p_updated_on=>wwv_flow_imp.dz('20260220181248Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8915935868450434)
,p_region_id=>wwv_flow_imp.id(8915810936450433)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'CHARACTER'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'NAME'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'https://image.tmdb.org/t/p/w500&PROFILE_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
,p_updated_on=>wwv_flow_imp.dz('20260220181149Z')
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8916059104450435)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(8892456886384846)
,p_page_plug_id=>wwv_flow_imp.id(8915810936450433)
,p_value_type=>'ITEM'
,p_value=>'P3_ID'
,p_created_on=>wwv_flow_imp.dz('20260220181149Z')
,p_updated_on=>wwv_flow_imp.dz('20260220181248Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8925114279648820)
,p_plug_name=>'Movie Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(8899389916384859)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8925681212648822)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(8900031153384860)
,p_page_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_value_type=>'ITEM'
,p_value=>'P3_ID'
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8940745048648857)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220162252Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8914837428450423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8940745048648857)
,p_button_name=>'ADD_TO_WATCHLIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add To Watchlist'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260220162252Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163734Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8914923926450424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8940745048648857)
,p_button_name=>'REMOVE_FROM_WATCHLIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Remove From Watchlist'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID'))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260220162252Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163807Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8915034170450425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8940745048648857)
,p_button_name=>'MARK_WATCHED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'I''ve Watched This'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where movie_id =:P3_ID',
'   and user_id = :USER_ID',
'   and watched_yn = ''N'''))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260220162252Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163834Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8941169922648858)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8940745048648857)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P3_PREVIOUS_PAGE_ID'
,p_button_condition2=>'2'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163929Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8915352676450428)
,p_branch_name=>'Redirect  to previous page'
,p_branch_action=>'f?p=&APP_ID.:&P3_PREVIOUS_PAGE_ID:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260220163439Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163439Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8915478113450429)
,p_name=>'P3_PREVIOUS_PAGE_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220163439Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163439Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8926061952648823)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220070719Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8926438006648827)
,p_name=>'P3_ADULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'ADULT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072045Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8926895575648829)
,p_name=>'P3_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8927240228648829)
,p_name=>'P3_VIDEO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'VIDEO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8927657855648830)
,p_name=>'P3_BUDGET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'BUDGET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8928013539648832)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8928442502648832)
,p_name=>'P3_IMDB_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'IMDB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8928837175648833)
,p_name=>'P3_REVENUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'REVENUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8929285089648834)
,p_name=>'P3_RUNTIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'RUNTIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8929616735648837)
,p_name=>'P3_TAGLINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'TAGLINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8930045095648838)
,p_name=>'P3_HOMEPAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'HOMEPAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8930419983648838)
,p_name=>'P3_OVERVIEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'OVERVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8930829969648839)
,p_name=>'P3_POPULARITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'POPULARITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8931262574648840)
,p_name=>'P3_VOTE_COUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'VOTE_COUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8931651632648841)
,p_name=>'P3_POSTER_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'POSTER_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8932011283648842)
,p_name=>'P3_RELEASE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'RELEASE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8932426017648842)
,p_name=>'P3_VOTE_AVERAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'VOTE_AVERAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8932854102648843)
,p_name=>'P3_BACKDROP_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'BACKDROP_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8933293634648844)
,p_name=>'P3_ORIGINAL_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'ORIGINAL_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8933698179648844)
,p_name=>'P3_ORIGINAL_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'ORIGINAL_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8934065495648845)
,p_name=>'P3_BELONGS_TO_COLLECTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_item_source_plug_id=>wwv_flow_imp.id(8925114279648820)
,p_source=>'BELONGS_TO_COLLECTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220072046Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8942972851648871)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add movie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into watchlist',
'    (',
'        movie_id,',
'        user_id,',
'        watched_yn,',
'        title,',
'        poster_url,',
'        release_date,',
'        runtime,',
'        vote_average',
'    )',
'values',
'    (',
'        :P3_ID,',
'        :USER_ID,',
'        ''N'',',
'        :P3_TITLE,',
'        ''https://image.tmdb.org/t/p/w500''||:P3_POSTER_PATH,',
'        :P3_RELEASE_DATE,',
'        :P3_RUNTIME,',
'        :P3_VOTE_AVERAGE',
'    );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8914837428450423)
,p_internal_uid=>8942972851648871
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163003Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8915153142450426)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove movie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from watchlist',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8914923926450424)
,p_internal_uid=>8915153142450426
,p_created_on=>wwv_flow_imp.dz('20260220163003Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163003Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8915290898450427)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update movie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update watchlist',
'   set watched_yn = ''Y'',',
'       watched = SYSDATE',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8915034170450425)
,p_internal_uid=>8915290898450427
,p_created_on=>wwv_flow_imp.dz('20260220163003Z')
,p_updated_on=>wwv_flow_imp.dz('20260220163034Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8942565069648864)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8925114279648820)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Movie Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8942565069648864
,p_created_on=>wwv_flow_imp.dz('20260220070719Z')
,p_updated_on=>wwv_flow_imp.dz('20260220070719Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
