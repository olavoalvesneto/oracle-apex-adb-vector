# Movies Watchlist Application with Oracle APEX and Autonomous Database 26ai AI Vector Search

## Overview

This project implements a cloud-native Movies Watchlist application
built with Oracle APEX on Oracle Autonomous Database 26ai, deployed
on Oracle Cloud Infrastructure (OCI).

The solution integrates external REST services and extends traditional
relational search with native AI Vector Search, leveraging in-database
embedding generation and semantic similarity queries.

------------------------------------------------------------------------

## Project Context

This project was initially developed as part of an official Oracle
LiveLabs hands-on lab focused on building a Movies Watchlist application
using Oracle APEX and REST Data Sources.

Beyond the baseline lab requirements, the solution was extended with
advanced Oracle Database 26ai AI Vector Search capabilities, including
ONNX model deployment, VECTOR column persistence, embedding generation,
and semantic similarity search.

The final implementation reflects both the completion of the LiveLab
objectives and additional architectural enhancements demonstrating
deeper adoption of Oracle 26ai AI features.

------------------------------------------------------------------------

## Architecture

Infrastructure: - Oracle Cloud Infrastructure (OCI) - Autonomous
Database (ATP workload) - Oracle REST Data Services (ORDS)

Application Layer: - Oracle APEX - REST Data Sources (TMDB
integration) - Multi-user relational persistence

AI Layer: - Oracle Database 26ai AI Vector Search - ONNX embedding model
loaded via DBMS_VECTOR - VECTOR column storage - Embedding generation
using apex_ai.get_vector_embeddings - Semantic similarity search using
VECTOR_DISTANCE

------------------------------------------------------------------------

## Key Features

-   Movies discovery via REST integration
-   Persistent multi-user watchlist
-   Relational filtering
-   AI-powered semantic search (e.g., "space adventure", "wizard",
    "fiction")
-   Native in-database embeddings (no external vector database required)

------------------------------------------------------------------------

## AI Vector Search Implementation

1.  ONNX model loaded using DBMS_VECTOR.LOAD_ONNX_MODEL
2.  VECTOR column added to the popular_movies table
3.  Embeddings generated via apex_ai.get_vector_embeddings
4.  Similarity queries executed using VECTOR_DISTANCE

This enables contextual movie discovery using semantic similarity rather
than keyword matching.

------------------------------------------------------------------------

## Repository Structure

/sql 01_schema_setup.sql 02_tables.sql 03_vector_model_load.sql
04_vector_column.sql 05_generate_embeddings.sql 06_sample_queries.sql

/oracle-apex-adb-vector /application /workspace install.sql

------------------------------------------------------------------------

## Deployment Instructions

1.  Provision Autonomous Database (ATP) on OCI
2.  Enable APEX
3.  Configure Web Credentials for TMDB API
4.  Execute SQL scripts in order
5.  Import APEX application using install.sql

------------------------------------------------------------------------

## Live Demo

URL:
https://gf35288587324cf-rf25xkh06g8qww9d.adb.sa-saopaulo-1.oraclecloudapps.com/ords/r/demo/movies-watchlist/home

Evaluator Access: Username: ace_evaluator Password: password_ace_2026

(Runtime-only access. No development privileges.)

------------------------------------------------------------------------
