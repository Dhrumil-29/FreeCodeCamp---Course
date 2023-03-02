--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: demo_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.demo_table (
    one_col integer NOT NULL,
    name character varying(30),
    is_demo boolean,
    is_table boolean,
    num numeric(3,1),
    descption text,
    demo_table_id integer NOT NULL
);


ALTER TABLE public.demo_table OWNER TO freecodecamp;

--
-- Name: demo_table_demo_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.demo_table_demo_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demo_table_demo_table_id_seq OWNER TO freecodecamp;

--
-- Name: demo_table_demo_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.demo_table_demo_table_id_seq OWNED BY public.demo_table.demo_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50),
    has_life integer,
    is_spherical boolean,
    is_galaxy boolean,
    distance_from_earth numeric(7,2),
    ref_col integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50),
    has_life integer,
    is_spherical boolean,
    is_moon boolean,
    distance_from_earth numeric(7,2),
    ref_col integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50),
    has_life integer,
    is_spherical boolean,
    is_planet boolean,
    distance_from_earth numeric(7,2),
    ref_col integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50),
    has_life integer,
    is_spherical boolean,
    is_star boolean,
    distance_from_earth numeric(7,2),
    ref_col integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: demo_table demo_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo_table ALTER COLUMN demo_table_id SET DEFAULT nextval('public.demo_table_demo_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: demo_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.demo_table VALUES (1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.demo_table VALUES (2, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.demo_table VALUES (3, NULL, NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 'demo', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'a', 'demo', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'a', 'demo', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'a', 'demo', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'a', 'demo', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'a', 'demo', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'a', 'moon', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 'demo', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'a', 'demo', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'a', 'demo', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'a', 'demo', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'a', 'demo', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'a', 'demo', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (13, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'a', 'demo', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 'demo', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'a', 'demo', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'a', 'demo', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'a', 'demo', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'a', 'demo', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'a', 'demo', NULL, NULL, NULL, NULL, 6);


--
-- Name: demo_table_demo_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.demo_table_demo_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: demo_table demo_table_demo_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo_table
    ADD CONSTRAINT demo_table_demo_table_id_key UNIQUE (demo_table_id);


--
-- Name: demo_table demo_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo_table
    ADD CONSTRAINT demo_table_pkey PRIMARY KEY (demo_table_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_ref_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_ref_col_key UNIQUE (ref_col);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_ref_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_ref_col_key UNIQUE (ref_col);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_ref_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ref_col_key UNIQUE (ref_col);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_ref_col_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_ref_col_fkey FOREIGN KEY (ref_col) REFERENCES public.planet(ref_col);


--
-- Name: planet planet_ref_col_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_ref_col_fkey FOREIGN KEY (ref_col) REFERENCES public.star(ref_col);


--
-- Name: star star_ref_col_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ref_col_fkey FOREIGN KEY (ref_col) REFERENCES public.galaxy(ref_col);


--
-- PostgreSQL database dump complete
--

