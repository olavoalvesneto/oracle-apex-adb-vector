prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8870132369297674)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>46341678021557
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220190607Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8881757243297854)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'My Watchlist'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-film'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260220060849Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060849Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8978806726961670)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Movies Search'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20260220190607Z')
,p_updated_on=>wwv_flow_imp.dz('20260220190607Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
