CREATE TABLE public.sample_table_v13 (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean DEFAULT true,
    description text
);


CREATE SEQUENCE public.sample_table_v13_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sample_table_v13_id_seq OWNED BY public.sample_table_v13.id;


ALTER TABLE ONLY public.sample_table_v13 ALTER COLUMN id SET DEFAULT nextval('public.sample_table_v13_id_seq'::regclass);


ALTER TABLE ONLY public.sample_table_v13
    ADD CONSTRAINT sample_table_v13_pkey PRIMARY KEY (id);