prompt --workspace/remote_servers/api_themoviedb_org_3
begin
--   Manifest
--     REMOTE SERVER: api-themoviedb-org-3
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(8887884896384817)
,p_name=>'api-themoviedb-org-3'
,p_static_id=>'api_themoviedb_org_3'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3'),'https://api.themoviedb.org/3/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_themoviedb_org_3'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_themoviedb_org_3'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_themoviedb_org_3'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_themoviedb_org_3'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_themoviedb_org_3'),'')
,p_created_on=>wwv_flow_imp.dz('20260220062319Z')
,p_updated_on=>wwv_flow_imp.dz('20260220062319Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
