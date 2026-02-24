DECLARE
    l_vector VECTOR;
BEGIN
    FOR i IN (
        SELECT id, title, overview
        FROM popular_movies
    ) LOOP
        
        SELECT apex_ai.get_vector_embeddings(
            p_value            => i.title || ' ' || i.overview,
            p_service_static_id => 'database_onnx_model'
        )
        INTO l_vector
        FROM dual;

        UPDATE popular_movies
        SET pname_vector = l_vector
        WHERE id = i.id;

    END LOOP;

    COMMIT;
END;
/