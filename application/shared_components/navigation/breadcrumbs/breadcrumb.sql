prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8869630288297663)
,p_name=>'Breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8869816424297667)
,p_short_name=>'My Watchlist'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260220060847Z')
,p_updated_on=>wwv_flow_imp.dz('20260220060847Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
