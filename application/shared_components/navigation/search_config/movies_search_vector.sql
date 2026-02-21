prompt --application/shared_components/navigation/search_config/movies_search_vector
begin
--   Manifest
--     SEARCH CONFIG: Movies Search - Vector
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>8862249021263772
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMO'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(8978352487942173)
,p_label=>'Movies Search - Vector'
,p_static_id=>'movies_search_vector'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'POPULAR_MOVIES'
,p_oratext_index_column_name=>'PNAME_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(8974342751823587)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'COSINE'
,p_return_max_results=>100
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_description_column_name=>'OVERVIEW'
,p_icon_source_type=>'URL'
,p_icon_image_url=>'https://image.tmdb.org/t/p/w500&POSTER_PATH.'
,p_version_scn=>46341677387759
,p_created_on=>wwv_flow_imp.dz('20260220190253Z')
,p_updated_on=>wwv_flow_imp.dz('20260220190343Z')
,p_created_by=>'DEMO'
,p_updated_by=>'DEMO'
);
wwv_flow_imp.component_end;
end;
/
