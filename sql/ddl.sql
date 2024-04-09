-- DROP ROLE IF EXISTS jg_judge_admin;

CREATE ROLE jg_judge_admin WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOREPLICATION
    NOBYPASSRLS
    CONNECTION LIMIT 32
    PASSWORD '';

-- DROP ROLE IF EXISTS jg_judge_member;

CREATE ROLE jg_judge_member WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOREPLICATION
    NOBYPASSRLS
    PASSWORD '';

-- DROP ROLE IF EXISTS jg_judge_guest;

CREATE ROLE jg_judge_guest WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOREPLICATION
    NOBYPASSRLS
    PASSWORD '';

CREATE TABLE IF NOT EXISTS public.rules (
    subject_entity_code character(6),
    subject_id character varying(36),
    object_entity_code character(6),
    object_id character varying(36),
    action_code character(6),
    allowed boolean NOT NULL DEFAULT FALSE,
    created_at timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT rules_pk PRIMARY KEY (subject_entity_code, subject_id, object_entity_code, object_id, action_code)
);
