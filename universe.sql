--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    degree_north integer,
    degree_south integer,
    information text NOT NULL,
    reachable boolean NOT NULL,
    ending_ boolean,
    age_in_k numeric(6,2)
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
-- Name: galmilkyaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galmilkyaxy (
    galmilkyaxy_id integer NOT NULL,
    name character varying(30),
    degree_north integer,
    degree_south integer,
    information text NOT NULL,
    reachable boolean NOT NULL,
    ending_ boolean,
    age_in_k numeric(6,2)
);


ALTER TABLE public.galmilkyaxy OWNER TO freecodecamp;

--
-- Name: galmilkyaxy_galmilkyaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galmilkyaxy_galmilkyaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galmilkyaxy_galmilkyaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galmilkyaxy_galmilkyaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galmilkyaxy_galmilkyaxy_id_seq OWNED BY public.galmilkyaxy.galmilkyaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    degree_north integer,
    degree_south integer,
    information text NOT NULL,
    reachable boolean NOT NULL,
    ending_ boolean,
    age_in_k numeric(6,2),
    planet_id integer NOT NULL
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
    name character varying(30),
    degree_north integer,
    degree_south integer,
    information text NOT NULL,
    reachable boolean NOT NULL,
    ending_ boolean,
    age_in_k numeric(6,2),
    star_id integer NOT NULL
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
    name character varying(30),
    degree_north integer,
    degree_south integer,
    information text NOT NULL,
    reachable boolean NOT NULL,
    ending_ boolean,
    age_in_k numeric(6,2),
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galmilkyaxy galmilkyaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galmilkyaxy ALTER COLUMN galmilkyaxy_id SET DEFAULT nextval('public.galmilkyaxy_galmilkyaxy_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 36, 23, 'This is the closest galaxy', false, true, 300.20);
INSERT INTO public.galaxy VALUES (2, 'Andromeda1', 33246, 213, 'This is the closest galaxy1', true, true, 600.20);
INSERT INTO public.galaxy VALUES (3, 'Andromeda2', 3426, 253, 'This is the closest galaxy2', false, false, 340.20);
INSERT INTO public.galaxy VALUES (4, 'Andromeda3', 34326, 2233, 'This is the closest galaxy3', false, true, 330.20);
INSERT INTO public.galaxy VALUES (5, 'Andromeda4', 3326, 2323, 'This is the closest galaxy4', true, false, 100.20);
INSERT INTO public.galaxy VALUES (6, 'Andromeda5', 34236, 23423, 'This is the closest galaxy5', false, true, 40.20);


--
-- Data for Name: galmilkyaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galmilkyaxy VALUES (1, 'Andromeda', 36, 23, 'This is the closest galaxy', false, true, 300.20);
INSERT INTO public.galmilkyaxy VALUES (2, 'Andromeda1', 33246, 213, 'This is the closest galaxy1', true, true, 600.20);
INSERT INTO public.galmilkyaxy VALUES (3, 'Andromeda2', 3426, 253, 'This is the closest galaxy2', false, false, 340.20);
INSERT INTO public.galmilkyaxy VALUES (4, 'Andromeda3', 34326, 2233, 'This is the closest galaxy3', false, true, 330.20);
INSERT INTO public.galmilkyaxy VALUES (5, 'Andromeda4', 3326, 2323, 'This is the closest galaxy4', true, false, 100.20);
INSERT INTO public.galmilkyaxy VALUES (6, 'Andromeda5', 34236, 23423, 'This is the closest galaxy5', false, true, 40.20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'name1', 1, 12, 'This is a star1', false, false, 112.40, 1);
INSERT INTO public.moon VALUES (2, 'name2', 2, 11, 'This is a star2', false, true, 232.40, 1);
INSERT INTO public.moon VALUES (3, 'name3', 3, 10, 'This is a star3', false, true, 11.40, 2);
INSERT INTO public.moon VALUES (4, 'name4', 4, 9, 'This is a star4', false, false, 11.40, 4);
INSERT INTO public.moon VALUES (5, 'name5', 5, 8, 'This is a star5', false, false, 52.40, 3);
INSERT INTO public.moon VALUES (6, 'name6', 6, 7, 'This is a star6', false, true, 22.40, 4);
INSERT INTO public.moon VALUES (7, 'name7', 7, 6, 'This is a star7', false, true, 62.40, 12);
INSERT INTO public.moon VALUES (8, 'name8', 8, 5, 'This is a star8', false, false, 322.40, 12);
INSERT INTO public.moon VALUES (9, 'name9', 9, 4, 'This is a star9', false, true, 135.40, 5);
INSERT INTO public.moon VALUES (10, 'name10', 10, 3, 'This is a star10', false, true, 900.40, 11);
INSERT INTO public.moon VALUES (11, 'name11', 11, 2, 'This is a star11', false, true, 12.40, 9);
INSERT INTO public.moon VALUES (12, 'name12', 12, 1, 'This is a star12', false, false, 1.40, 10);
INSERT INTO public.moon VALUES (13, 'name13', 1, 12, 'This is a star13', false, false, 112.40, 11);
INSERT INTO public.moon VALUES (14, 'name14', 2, 11, 'This is a star14', false, true, 232.40, 7);
INSERT INTO public.moon VALUES (15, 'name15', 3, 10, 'This is a star15', false, true, 11.40, 7);
INSERT INTO public.moon VALUES (16, 'name16', 4, 9, 'This is a star16', false, false, 11.40, 5);
INSERT INTO public.moon VALUES (17, 'name17', 5, 8, 'This is a star17', false, false, 52.40, 6);
INSERT INTO public.moon VALUES (18, 'name18', 6, 7, 'This is a star18', false, true, 22.40, 8);
INSERT INTO public.moon VALUES (19, 'name19', 7, 6, 'This is a star19', false, true, 62.40, 3);
INSERT INTO public.moon VALUES (20, 'name20', 8, 5, 'This is a star20', false, false, 322.40, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'name1', 1, 12, 'This is a star1', false, false, 112.40, 1);
INSERT INTO public.planet VALUES (2, 'name2', 2, 11, 'This is a star2', false, true, 232.40, 1);
INSERT INTO public.planet VALUES (3, 'name3', 3, 10, 'This is a star3', false, true, 11.40, 2);
INSERT INTO public.planet VALUES (4, 'name4', 4, 9, 'This is a star4', false, false, 11.40, 2);
INSERT INTO public.planet VALUES (5, 'name5', 5, 8, 'This is a star5', false, false, 52.40, 3);
INSERT INTO public.planet VALUES (6, 'name6', 6, 7, 'This is a star6', false, true, 22.40, 4);
INSERT INTO public.planet VALUES (7, 'name7', 7, 6, 'This is a star7', false, true, 62.40, 5);
INSERT INTO public.planet VALUES (8, 'name8', 8, 5, 'This is a star8', false, false, 322.40, 5);
INSERT INTO public.planet VALUES (9, 'name9', 9, 4, 'This is a star9', false, true, 135.40, 5);
INSERT INTO public.planet VALUES (10, 'name10', 10, 3, 'This is a star10', false, true, 900.40, 2);
INSERT INTO public.planet VALUES (11, 'name11', 11, 2, 'This is a star11', false, true, 12.40, 3);
INSERT INTO public.planet VALUES (12, 'name12', 12, 1, 'This is a star12', false, false, 1.40, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lili', 6, 243, 'This is the lol star haha', false, true, 300.20, 1);
INSERT INTO public.star VALUES (2, 'polar bear', 4, 213, 'This is the lol star haha1', true, true, 600.20, 1);
INSERT INTO public.star VALUES (3, 'lol', 36, 53, 'This is the lol star haha2', false, false, 340.20, 2);
INSERT INTO public.star VALUES (4, 'kepler', 46, 23, 'This is the lol star haha3', false, true, 330.20, 3);
INSERT INTO public.star VALUES (5, 'nig are', 26, 32, 'This is the lol star haha4', true, false, 100.20, 5);
INSERT INTO public.star VALUES (6, 'meda nde', 346, 3, 'This is the lol star haha5', false, true, 40.20, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galmilkyaxy_galmilkyaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galmilkyaxy_galmilkyaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_information_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_information_key UNIQUE (information);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galmilkyaxy galmilkyaxy_information_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galmilkyaxy
    ADD CONSTRAINT galmilkyaxy_information_key UNIQUE (information);


--
-- Name: galmilkyaxy galmilkyaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galmilkyaxy
    ADD CONSTRAINT galmilkyaxy_pkey PRIMARY KEY (galmilkyaxy_id);


--
-- Name: moon moon_information_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_information_key UNIQUE (information);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_information_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_information_key UNIQUE (information);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_information_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_information_key UNIQUE (information);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

