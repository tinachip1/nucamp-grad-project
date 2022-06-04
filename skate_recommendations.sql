--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bearings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bearings (
    id integer NOT NULL,
    bearing_type text NOT NULL
);


ALTER TABLE public.bearings OWNER TO postgres;

--
-- Name: bearings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bearings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bearings_id_seq OWNER TO postgres;

--
-- Name: bearings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bearings_id_seq OWNED BY public.bearings.id;


--
-- Name: boots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boots (
    id integer NOT NULL,
    boot_type text NOT NULL,
    material_id integer NOT NULL
);


ALTER TABLE public.boots OWNER TO postgres;

--
-- Name: boots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boots_id_seq OWNER TO postgres;

--
-- Name: boots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boots_id_seq OWNED BY public.boots.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materials (
    id integer NOT NULL,
    boot_material text NOT NULL,
    plate_material text NOT NULL
);


ALTER TABLE public.materials OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- Name: plates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plates (
    id integer NOT NULL,
    material_id integer NOT NULL,
    size_id integer NOT NULL,
    kingpin_angle text NOT NULL,
    plate_action text NOT NULL
);


ALTER TABLE public.plates OWNER TO postgres;

--
-- Name: plates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plates_id_seq OWNER TO postgres;

--
-- Name: plates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plates_id_seq OWNED BY public.plates.id;


--
-- Name: sizes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sizes (
    id integer NOT NULL,
    wheel_size text NOT NULL,
    axel_size text NOT NULL
);


ALTER TABLE public.sizes OWNER TO postgres;

--
-- Name: sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sizes_id_seq OWNER TO postgres;

--
-- Name: sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sizes_id_seq OWNED BY public.sizes.id;


--
-- Name: skaters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skaters (
    id integer NOT NULL,
    username text NOT NULL
);


ALTER TABLE public.skaters OWNER TO postgres;

--
-- Name: skaters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skaters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skaters_id_seq OWNER TO postgres;

--
-- Name: skaters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skaters_id_seq OWNED BY public.skaters.id;


--
-- Name: wheels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wheels (
    id integer NOT NULL,
    size_id integer NOT NULL,
    durometer text NOT NULL,
    shape text NOT NULL
);


ALTER TABLE public.wheels OWNER TO postgres;

--
-- Name: wheels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wheels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wheels_id_seq OWNER TO postgres;

--
-- Name: wheels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wheels_id_seq OWNED BY public.wheels.id;


--
-- Name: bearings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bearings ALTER COLUMN id SET DEFAULT nextval('public.bearings_id_seq'::regclass);


--
-- Name: boots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boots ALTER COLUMN id SET DEFAULT nextval('public.boots_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: plates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plates ALTER COLUMN id SET DEFAULT nextval('public.plates_id_seq'::regclass);


--
-- Name: sizes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sizes ALTER COLUMN id SET DEFAULT nextval('public.sizes_id_seq'::regclass);


--
-- Name: skaters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skaters ALTER COLUMN id SET DEFAULT nextval('public.skaters_id_seq'::regclass);


--
-- Name: wheels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wheels ALTER COLUMN id SET DEFAULT nextval('public.wheels_id_seq'::regclass);


--
-- Data for Name: bearings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bearings (id, bearing_type) FROM stdin;
\.


--
-- Data for Name: boots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boots (id, boot_type, material_id) FROM stdin;
\.


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materials (id, boot_material, plate_material) FROM stdin;
\.


--
-- Data for Name: plates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plates (id, material_id, size_id, kingpin_angle, plate_action) FROM stdin;
\.


--
-- Data for Name: sizes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sizes (id, wheel_size, axel_size) FROM stdin;
\.


--
-- Data for Name: skaters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skaters (id, username) FROM stdin;
\.


--
-- Data for Name: wheels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wheels (id, size_id, durometer, shape) FROM stdin;
\.


--
-- Name: bearings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bearings_id_seq', 1, false);


--
-- Name: boots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boots_id_seq', 1, false);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materials_id_seq', 1, false);


--
-- Name: plates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plates_id_seq', 1, false);


--
-- Name: sizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sizes_id_seq', 1, false);


--
-- Name: skaters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skaters_id_seq', 1, false);


--
-- Name: wheels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wheels_id_seq', 1, false);


--
-- Name: bearings bearings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bearings
    ADD CONSTRAINT bearings_pkey PRIMARY KEY (id);


--
-- Name: boots boots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boots
    ADD CONSTRAINT boots_pkey PRIMARY KEY (id);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: plates plates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plates
    ADD CONSTRAINT plates_pkey PRIMARY KEY (id);


--
-- Name: sizes sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sizes
    ADD CONSTRAINT sizes_pkey PRIMARY KEY (id);


--
-- Name: skaters skaters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skaters
    ADD CONSTRAINT skaters_pkey PRIMARY KEY (id);


--
-- Name: wheels wheels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wheels
    ADD CONSTRAINT wheels_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

