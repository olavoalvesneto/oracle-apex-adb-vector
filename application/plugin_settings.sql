prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8864886372297637)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>46337717107236
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8865117118297648)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>46337717107308
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8865437204297648)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>46337717107324
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8865757124297649)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>46337717107333
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8866091953297650)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>46337717107341
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8866383234297650)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>46337717107349
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8866693320297651)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>46337717107362
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8866970664297651)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>46337717107374
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8867258152297652)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>46337717107382
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8867505755297652)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>46337717107390
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8867851917297653)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>46337717107398
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8868173595297653)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>46337717107406
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8868447467297653)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>46337717107416
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8868737603297654)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>46337717107424
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
