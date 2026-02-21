prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(8884841060313411)
,p_theme_id=>42
,p_name=>'Movies - Dark'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#c64433","@g_Accent-OG":"#312d2a"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#8884841060313411.css'
,p_theme_roller_read_only=>false
,p_created_on=>wwv_flow_imp.dz('20260220061125Z')
,p_updated_on=>wwv_flow_imp.dz('20260220061125Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
