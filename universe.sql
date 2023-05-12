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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(30),
    earth_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(2,1),
    age integer,
    population integer,
    description text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(2,1),
    age integer,
    population integer,
    description text,
    is_from_bigbang boolean,
    dust_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_dust_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_dust_id_seq OWNED BY public.galaxy.dust_id;


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
    name character varying(30),
    moon_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(2,1),
    age integer,
    population integer,
    description text,
    dust_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_dust_id_seq OWNER TO freecodecamp;

--
-- Name: moon_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_dust_id_seq OWNED BY public.moon.dust_id;


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
    name character varying(30),
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(2,1),
    age integer,
    population integer,
    description text,
    dust_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_dust_id_seq OWNER TO freecodecamp;

--
-- Name: planet_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_dust_id_seq OWNED BY public.planet.dust_id;


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
    name character varying(30),
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(2,1),
    age integer,
    population integer,
    description text,
    dust_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_dust_id_seq OWNER TO freecodecamp;

--
-- Name: star_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_dust_id_seq OWNED BY public.star.dust_id;


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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN dust_id SET DEFAULT nextval('public.galaxy_dust_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN dust_id SET DEFAULT nextval('public.moon_dust_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN dust_id SET DEFAULT nextval('public.planet_dust_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN dust_id SET DEFAULT nextval('public.star_dust_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('earth1', 1, true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES ('earth2', 2, true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES ('earth3', 3, true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES ('earth4', 4, true, true, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 21, false, false, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('galaxy2', 22, false, false, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('galaxy3', 23, false, false, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('galaxy4', 24, false, false, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('galaxy4', 25, false, false, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('galaxy5', 26, false, false, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES ('galaxy6', 27, false, false, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES ('galaxy7', 28, false, false, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES ('galaxy8', 29, false, false, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES ('galaxy9', 30, false, false, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES ('galaxy10', 31, false, false, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES ('galaxy11', 32, false, false, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES ('galaxy12', 33, false, false, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES ('galaxy13', 34, false, false, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES ('galaxy14', 35, false, false, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES ('galaxy14', 36, false, false, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES ('galaxy15', 37, false, false, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES ('galaxy16', 38, false, false, NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES ('galaxy17', 39, false, false, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES ('galaxy18', 40, false, false, NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.galaxy VALUES ('galaxy19', 41, false, false, NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO public.galaxy VALUES ('galaxy20', 42, false, false, NULL, NULL, NULL, NULL, NULL, 22);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, false, false, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon2', 2, false, false, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('moon3', 3, false, false, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('moon4', 4, false, false, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('moon5', 5, false, false, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('moon6', 6, false, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('moon7', 7, false, false, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('moon8', 8, false, false, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('moon9', 9, false, false, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('moon10', 10, false, false, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('moon11', 11, false, false, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('moon12', 12, false, false, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('moon13', 13, false, false, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES ('moon14', 14, false, false, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES ('moon15', 15, false, false, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES ('moon16', 16, false, false, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES ('moon17', 17, false, false, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES ('moon18', 18, false, false, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES ('moon19', 19, false, false, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES ('moon20', 20, false, false, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 21, false, false, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet2', 22, false, false, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('planet3', 23, false, false, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('planet4', 24, false, false, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('planet5', 25, false, false, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('planet6', 26, false, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('planet7', 27, false, false, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('planet8', 28, false, false, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('planet9', 29, false, false, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('planet10', 30, false, false, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES ('planet11', 31, false, false, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES ('planet12', 32, false, false, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES ('planet13', 33, false, false, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES ('planet14', 34, false, false, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES ('planet15', 35, false, false, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES ('planet16', 36, false, false, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES ('planet17', 37, false, false, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES ('planet18', 38, false, false, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES ('planet19', 39, false, false, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES ('planet20', 40, false, false, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 21, false, false, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star2', 22, false, false, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('star3', 23, false, false, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('star4', 24, false, false, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('star5', 25, false, false, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('star6', 26, false, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('star7', 27, false, false, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('star8', 28, false, false, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES ('star9', 29, false, false, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES ('star10', 30, false, false, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES ('star11', 31, false, false, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES ('star12', 32, false, false, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES ('star13', 33, false, false, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES ('star14', 34, false, false, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES ('star15', 35, false, false, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES ('star16', 36, false, false, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES ('star17', 37, false, false, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES ('star18', 38, false, false, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES ('star19', 39, false, false, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES ('star20', 40, false, false, NULL, NULL, NULL, NULL, 20);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 4, true);


--
-- Name: galaxy_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_dust_id_seq', 22, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 42, true);


--
-- Name: moon_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_dust_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_dust_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_dust_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 40, true);


--
-- Name: earth earth_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_age_key UNIQUE (age);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_dust_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_dust_id_key UNIQUE (dust_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_dust_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_dust_id_key UNIQUE (dust_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_dust_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dust_id_key UNIQUE (dust_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_dust_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_dust_id_key UNIQUE (dust_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_dust_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_dust_id_fkey FOREIGN KEY (dust_id) REFERENCES public.planet(dust_id);


--
-- Name: planet planet_dust_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dust_id_fkey FOREIGN KEY (dust_id) REFERENCES public.star(dust_id);


--
-- Name: star star_dust_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_dust_id_fkey FOREIGN KEY (dust_id) REFERENCES public.galaxy(dust_id);


--
-- PostgreSQL database dump complete
--

