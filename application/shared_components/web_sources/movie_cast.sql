prompt --application/shared_components/web_sources/movie_cast
begin
--   Manifest
--     WEB SOURCE: Movie Cast
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(8891831483384838)
,p_name=>'Movie Cast'
,p_static_id=>'Movie_Cast'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(8888027879384826)
,p_remote_server_id=>wwv_flow_imp.id(8887884896384817)
,p_url_path_prefix=>'movie/:movie_id/credits'
,p_credential_id=>wwv_flow_imp.id(8887624246384797)
,p_pass_ecid=>true
,p_catalog_internal_name=>'TMDB'
,p_catalog_service_name=>'Movie Cast'
,p_catalog_service_version=>20220802
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>46337787530246
,p_created_on=>wwv_flow_imp.dz('20260220062319Z')
,p_updated_on=>wwv_flow_imp.dz('20260220062319Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(8892456886384846)
,p_web_src_module_id=>wwv_flow_imp.id(8891831483384838)
,p_name=>'movie_id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'505'
,p_created_on=>wwv_flow_imp.dz('20260220062319Z')
,p_updated_on=>wwv_flow_imp.dz('20260220062319Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(8892018699384841)
,p_web_src_module_id=>wwv_flow_imp.id(8891831483384838)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
,p_created_on=>wwv_flow_imp.dz('20260220062319Z')
,p_updated_on=>wwv_flow_imp.dz('20260220062319Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
