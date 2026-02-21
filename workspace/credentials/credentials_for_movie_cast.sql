prompt --workspace/credentials/credentials_for_movie_cast
begin
--   Manifest
--     CREDENTIAL: Credentials for Movie Cast
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(8887624246384797)
,p_name=>'Credentials for Movie Cast'
,p_static_id=>'credentials_for_movie_cast'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.themoviedb.org/3/',
''))
,p_prompt_on_install=>true
,p_created_on=>wwv_flow_imp.dz('20260220062319Z')
,p_updated_on=>wwv_flow_imp.dz('20260220062752Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
