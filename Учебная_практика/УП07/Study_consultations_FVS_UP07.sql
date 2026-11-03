--
-- PostgreSQL database dump
--

\restrict pwKA0AHVIAp05J3eamvgU4cvNrwr45GU0MlbQlHGSxoVlKGzja3GmrHo62CZdFg

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-11-03 16:39:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 59527)
-- Name: consultations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consultations (
    consultation_id integer NOT NULL,
    student_id integer,
    name_prepod character varying(100) NOT NULL,
    name_object character varying(50) NOT NULL
);


ALTER TABLE public.consultations OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 59526)
-- Name: consultations_consultation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consultations_consultation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.consultations_consultation_id_seq OWNER TO postgres;

--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 221
-- Name: consultations_consultation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consultations_consultation_id_seq OWNED BY public.consultations.consultation_id;


--
-- TOC entry 224 (class 1259 OID 59542)
-- Name: prepods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prepods (
    prepod_id integer NOT NULL,
    consultation_id integer,
    name_prepod character varying(100) NOT NULL,
    prepod_refers_subject character varying(50) NOT NULL,
    prepod_classes_belong character varying(50) NOT NULL
);


ALTER TABLE public.prepods OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 59541)
-- Name: prepods_prepod_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prepods_prepod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prepods_prepod_id_seq OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 223
-- Name: prepods_prepod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prepods_prepod_id_seq OWNED BY public.prepods.prepod_id;


--
-- TOC entry 226 (class 1259 OID 59558)
-- Name: records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.records (
    record_id integer NOT NULL,
    prepod_id integer,
    record_week character varying(20) NOT NULL,
    record_data date NOT NULL,
    record_time time without time zone NOT NULL,
    status character varying(25) DEFAULT 'Записан'::character varying
);


ALTER TABLE public.records OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 59557)
-- Name: records_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.records_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.records_record_id_seq OWNER TO postgres;

--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 225
-- Name: records_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.records_record_id_seq OWNED BY public.records.record_id;


--
-- TOC entry 220 (class 1259 OID 59517)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    full_name character varying(100) NOT NULL,
    classed character varying(12) NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 59516)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 219
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 4872 (class 2604 OID 59530)
-- Name: consultations consultation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultations ALTER COLUMN consultation_id SET DEFAULT nextval('public.consultations_consultation_id_seq'::regclass);


--
-- TOC entry 4873 (class 2604 OID 59545)
-- Name: prepods prepod_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepods ALTER COLUMN prepod_id SET DEFAULT nextval('public.prepods_prepod_id_seq'::regclass);


--
-- TOC entry 4874 (class 2604 OID 59561)
-- Name: records record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records ALTER COLUMN record_id SET DEFAULT nextval('public.records_record_id_seq'::regclass);


--
-- TOC entry 4871 (class 2604 OID 59520)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 5037 (class 0 OID 59527)
-- Dependencies: 222
-- Data for Name: consultations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consultations (consultation_id, student_id, name_prepod, name_object) FROM stdin;
\.


--
-- TOC entry 5039 (class 0 OID 59542)
-- Dependencies: 224
-- Data for Name: prepods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prepods (prepod_id, consultation_id, name_prepod, prepod_refers_subject, prepod_classes_belong) FROM stdin;
\.


--
-- TOC entry 5041 (class 0 OID 59558)
-- Dependencies: 226
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.records (record_id, prepod_id, record_week, record_data, record_time, status) FROM stdin;
\.


--
-- TOC entry 5035 (class 0 OID 59517)
-- Dependencies: 220
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, full_name, classed) FROM stdin;
\.


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 221
-- Name: consultations_consultation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consultations_consultation_id_seq', 1, false);


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 223
-- Name: prepods_prepod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prepods_prepod_id_seq', 1, false);


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 225
-- Name: records_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.records_record_id_seq', 1, false);


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 219
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);


--
-- TOC entry 4879 (class 2606 OID 59535)
-- Name: consultations consultations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultations
    ADD CONSTRAINT consultations_pkey PRIMARY KEY (consultation_id);


--
-- TOC entry 4881 (class 2606 OID 59551)
-- Name: prepods prepods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepods
    ADD CONSTRAINT prepods_pkey PRIMARY KEY (prepod_id);


--
-- TOC entry 4883 (class 2606 OID 59568)
-- Name: records records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_pkey PRIMARY KEY (record_id);


--
-- TOC entry 4877 (class 2606 OID 59525)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4884 (class 2606 OID 59536)
-- Name: consultations consultations_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultations
    ADD CONSTRAINT consultations_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- TOC entry 4885 (class 2606 OID 59552)
-- Name: prepods prepods_consultation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepods
    ADD CONSTRAINT prepods_consultation_id_fkey FOREIGN KEY (consultation_id) REFERENCES public.consultations(consultation_id);


--
-- TOC entry 4886 (class 2606 OID 59569)
-- Name: records records_prepod_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_prepod_id_fkey FOREIGN KEY (prepod_id) REFERENCES public.prepods(prepod_id);


-- Completed on 2026-11-03 16:39:10

--
-- PostgreSQL database dump complete
--

\unrestrict pwKA0AHVIAp05J3eamvgU4cvNrwr45GU0MlbQlHGSxoVlKGzja3GmrHo62CZdFg

