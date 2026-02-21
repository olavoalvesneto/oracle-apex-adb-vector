prompt --workspace/remote_servers/database_onmx_model
begin
--   Manifest
--     REMOTE SERVER: Database ONMX Model
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
 p_id=>wwv_flow_imp.id(8974342751823587)
,p_name=>'Database ONMX Model'
,p_static_id=>'database_onmx_model_onnx_model'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('database_onmx_model_onnx_model'),'https://localhost')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('database_onmx_model_onnx_model'),'')
,p_server_type=>'VECTOR'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('database_onmx_model_onnx_model'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('database_onmx_model_onnx_model'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('database_onmx_model_onnx_model'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('database_onmx_model_onnx_model'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('database_onmx_model_onnx_model'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('database_onmx_model_onnx_model'),'')
,p_embedding_type=>'ONNX'
,p_emb_local_model_owner=>'WKSP_DEMO'
,p_emb_local_model_name=>'DOC_MODEL'
,p_created_on=>wwv_flow_imp.dz('20260220184307Z')
,p_updated_on=>wwv_flow_imp.dz('20260220184307Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
