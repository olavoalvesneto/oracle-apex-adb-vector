prompt --application/shared_components/logic/application_items/user_id
begin
--   Manifest
--     APPLICATION ITEM: USER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(8956333234816413)
,p_name=>'USER_ID'
,p_protection_level=>'I'
,p_version_scn=>46338123222334
,p_created_on=>wwv_flow_imp.dz('20260220073515Z')
,p_updated_on=>wwv_flow_imp.dz('20260220073515Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
