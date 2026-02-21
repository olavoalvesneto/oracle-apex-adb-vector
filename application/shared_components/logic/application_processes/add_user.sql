prompt --application/shared_components/logic/application_processes/add_user
begin
--   Manifest
--     APPLICATION PROCESS: Add User
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(8956871210830870)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- create movie user ID',
'-- query movie_users table to check for existing user',
'-- if yes, return PK as user_id',
'-- if no, add new user to movie_users',
'declare',
'    l_user_id number;',
'begin',
'    select id into l_user_id from movie_users where username = :APP_USER;',
'',
'    :USER_ID := l_user_id;',
'',
'    exception',
'        when no_data_found then',
'        insert into movie_users',
'                (username)',
'            values',
'                (:APP_USER)',
'            returning',
'                id into :USER_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>46338123437525
,p_created_on=>wwv_flow_imp.dz('20260220073739Z')
,p_updated_on=>wwv_flow_imp.dz('20260220073739Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
