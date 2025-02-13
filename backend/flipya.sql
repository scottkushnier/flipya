\echo 'Delete and recreate flipya db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE IF EXISTS flipya;
CREATE DATABASE flipya;
\connect flipya

\i flipya-schema.sql
\i flipya-seed.sql

