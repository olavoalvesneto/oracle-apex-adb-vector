-- Example similarity search query
SELECT title,
       VECTOR_DISTANCE(
           pname_vector,
           apex_ai.get_vector_embeddings(
               p_value => 'science fiction space adventure',
               p_service_static_id => 'database_onnx_model'
           )
       ) AS similarity_score
FROM popular_movies
ORDER BY similarity_score
FETCH FIRST 10 ROWS ONLY;