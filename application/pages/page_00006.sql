prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Movies Search'
,p_alias=>'MOVIES-SEARCH'
,p_step_title=>'Movies Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
,p_created_on=>wwv_flow_imp.dz('20260220190607Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260220190608Z')
,p_created_by=>'DEMO'
,p_last_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8979267786961674)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results for your search term.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'N',
  'search_page_item', 'P6_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220190607Z')
,p_updated_on=>wwv_flow_imp.dz('20260220190608Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(8979792560961679)
,p_region_id=>wwv_flow_imp.id(8979267786961674)
,p_search_config_id=>wwv_flow_imp.id(8978352487942173)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Movies Search - Vector'
,p_created_on=>wwv_flow_imp.dz('20260220190608Z')
,p_updated_on=>wwv_flow_imp.dz('20260220190608Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8980127356961683)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8979267786961674)
,p_item_display_point=>'SEARCH_FIELD'
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260220190608Z')
,p_updated_on=>wwv_flow_imp.dz('20260220190608Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
