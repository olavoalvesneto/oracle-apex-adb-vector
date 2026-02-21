prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_imp.id(8871273489297754)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>46337717110968
,p_created_on=>wwv_flow_imp.dz('20260220060848Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060850Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8883257043297876)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260220060849Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060849Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8883782892297877)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8883257043297876)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260220060849Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060849Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8884153310297880)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8883257043297876)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260220060850Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060850Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
