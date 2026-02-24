DECLARE
    l_response_blob BLOB;
BEGIN
    -- Replace with your ONNX model retrieval logic if needed
    
    DBMS_VECTOR.LOAD_ONNX_MODEL(
        MODEL_NAME  => 'DOC_MODEL',
        MODEL_DATA  => l_response_blob,
        METADATA    => JSON(
            '{
                "function": "embedding",
                "embeddingOutput": "embedding",
                "input": {"input": ["DATA"]}
            }'
        )
    );
END;
/