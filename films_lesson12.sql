--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id_actor integer NOT NULL,
    actor_name text NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_actor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_actor_seq OWNER TO postgres;

--
-- Name: actors_id_actor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_actor_seq OWNED BY public.actors.id_actor;


--
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    id_film integer NOT NULL,
    film_name text NOT NULL,
    year character varying(4) NOT NULL,
    rating character varying(3) NOT NULL
);


ALTER TABLE public.films OWNER TO postgres;

--
-- Name: films_id_film_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_id_film_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_id_film_seq OWNER TO postgres;

--
-- Name: films_id_film_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_id_film_seq OWNED BY public.films.id_film;


--
-- Name: producers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producers (
    id_producer integer NOT NULL,
    producer_name text NOT NULL
);


ALTER TABLE public.producers OWNER TO postgres;

--
-- Name: producers_id_producer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producers_id_producer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producers_id_producer_seq OWNER TO postgres;

--
-- Name: producers_id_producer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producers_id_producer_seq OWNED BY public.producers.id_producer;


--
-- Name: s_film_actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s_film_actor (
    id_film integer NOT NULL,
    id_actor integer NOT NULL
);


ALTER TABLE public.s_film_actor OWNER TO postgres;

--
-- Name: s_film_actor_id_actor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_film_actor_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_film_actor_id_actor_seq OWNER TO postgres;

--
-- Name: s_film_actor_id_actor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s_film_actor_id_actor_seq OWNED BY public.s_film_actor.id_actor;


--
-- Name: s_film_actor_id_film_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_film_actor_id_film_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_film_actor_id_film_seq OWNER TO postgres;

--
-- Name: s_film_actor_id_film_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s_film_actor_id_film_seq OWNED BY public.s_film_actor.id_film;


--
-- Name: s_film_producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s_film_producer (
    id_film integer NOT NULL,
    id_producer integer NOT NULL
);


ALTER TABLE public.s_film_producer OWNER TO postgres;

--
-- Name: s_film_producer_id_film_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_film_producer_id_film_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_film_producer_id_film_seq OWNER TO postgres;

--
-- Name: s_film_producer_id_film_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s_film_producer_id_film_seq OWNED BY public.s_film_producer.id_film;


--
-- Name: s_film_producer_id_producer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_film_producer_id_producer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_film_producer_id_producer_seq OWNER TO postgres;

--
-- Name: s_film_producer_id_producer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s_film_producer_id_producer_seq OWNED BY public.s_film_producer.id_producer;


--
-- Name: actors id_actor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id_actor SET DEFAULT nextval('public.actors_id_actor_seq'::regclass);


--
-- Name: films id_film; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN id_film SET DEFAULT nextval('public.films_id_film_seq'::regclass);


--
-- Name: producers id_producer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producers ALTER COLUMN id_producer SET DEFAULT nextval('public.producers_id_producer_seq'::regclass);


--
-- Name: s_film_actor id_film; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s_film_actor ALTER COLUMN id_film SET DEFAULT nextval('public.s_film_actor_id_film_seq'::regclass);


--
-- Name: s_film_actor id_actor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s_film_actor ALTER COLUMN id_actor SET DEFAULT nextval('public.s_film_actor_id_actor_seq'::regclass);


--
-- Name: s_film_producer id_film; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s_film_producer ALTER COLUMN id_film SET DEFAULT nextval('public.s_film_producer_id_film_seq'::regclass);


--
-- Name: s_film_producer id_producer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s_film_producer ALTER COLUMN id_producer SET DEFAULT nextval('public.s_film_producer_id_producer_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id_actor, actor_name) FROM stdin;
1	Tim Robbins
2	Morgan Freeman
3	Tom Hanks
4	David Morse
5	Michael Clarke Duncan
6	Francois Cluset
7	Omar Sy
8	Jean Reno
9	Natalie Portman
10	Mila Kunis
11	Edward Norton
12	Brad Pitt
13	Helena Bonham Carter
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (id_film, film_name, year, rating) FROM stdin;
2	THe Shawshank Redemption	1994	9.3
3	The Green Mile	1999	8.6
4	Forrest Gump	1994	8.8
5	The Intouchables	2011	8.5
6	Leon	1994	8.5
7	Black Swan	2010	8
8	Fight Club	1999	8.8
\.


--
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producers (id_producer, producer_name) FROM stdin;
1	Frank Darabont
2	Robert Zemeckis
3	Olivier Nacache
4	Eric Toledano
5	Luc Besson
6	Darren Aronofsky
7	David Fincher
\.


--
-- Data for Name: s_film_actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s_film_actor (id_film, id_actor) FROM stdin;
2	1
2	2
3	3
3	4
3	5
4	3
5	6
5	7
6	8
6	9
7	9
7	10
8	11
8	12
8	13
\.


--
-- Data for Name: s_film_producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s_film_producer (id_film, id_producer) FROM stdin;
2	1
3	1
4	2
5	3
5	4
6	5
7	6
8	7
\.


--
-- Name: actors_id_actor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_actor_seq', 13, true);


--
-- Name: films_id_film_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_id_film_seq', 8, true);


--
-- Name: producers_id_producer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producers_id_producer_seq', 7, true);


--
-- Name: s_film_actor_id_actor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_film_actor_id_actor_seq', 1, false);


--
-- Name: s_film_actor_id_film_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_film_actor_id_film_seq', 1, false);


--
-- Name: s_film_producer_id_film_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_film_producer_id_film_seq', 1, false);


--
-- Name: s_film_producer_id_producer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_film_producer_id_producer_seq', 1, false);


--
-- PostgreSQL database dump complete
--

