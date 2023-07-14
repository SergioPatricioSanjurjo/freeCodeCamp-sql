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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    shape character varying(30) NOT NULL,
    n_of_stars integer,
    descripcion character varying(120)
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
    name character varying NOT NULL,
    have_water boolean NOT NULL,
    description text,
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
    name character varying(30) NOT NULL,
    have_water boolean NOT NULL,
    distance_to_star_mm_km numeric(10,2),
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
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL,
    size_mm_km integer NOT NULL,
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
-- Name: wanderer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.wanderer (
    wanderer_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    have_water boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.wanderer OWNER TO freecodecamp;

--
-- Name: wanderer_wanderer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.wanderer_wanderer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wanderer_wanderer_id_seq OWNER TO freecodecamp;

--
-- Name: wanderer_wanderer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.wanderer_wanderer_id_seq OWNED BY public.wanderer.wanderer_id;


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
-- Name: wanderer wanderer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wanderer ALTER COLUMN wanderer_id SET DEFAULT nextval('public.wanderer_wanderer_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M88', 'eliptic', 7689, 'an eliptic galaxy');
INSERT INTO public.galaxy VALUES (2, 'M16', 'spiral', 6515, 'a spiral shaped galaxy');
INSERT INTO public.galaxy VALUES (3, 'NGC 2787', 'lenticular', 156987, 'lenticular shaped');
INSERT INTO public.galaxy VALUES (4, 'NGC 1427A', 'irregular', 698754, 'a galaxy with an irregular shape');
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'spiral', 6546675, 'our mother galaxy');
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'spiral', 354568, 'the most famous after ours');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, 'our moon', 39);
INSERT INTO public.moon VALUES (2, 'metis', false, 'jupiter first', 41);
INSERT INTO public.moon VALUES (3, 'adrastea', false, 'jup second', 41);
INSERT INTO public.moon VALUES (4, 'amalthea', false, 'jup third', 41);
INSERT INTO public.moon VALUES (5, 'thebe', true, 'jup fourth', 41);
INSERT INTO public.moon VALUES (6, 'io', true, 'jup fifth', 41);
INSERT INTO public.moon VALUES (7, 'europa', true, 'jup sixth', 41);
INSERT INTO public.moon VALUES (8, 'ganymede', false, 'jup seventh', 41);
INSERT INTO public.moon VALUES (9, 'callisto', true, 'jup eigth', 41);
INSERT INTO public.moon VALUES (10, 'themisto', true, 'jup nineth', 41);
INSERT INTO public.moon VALUES (11, 'leda', false, 'jup tenth', 41);
INSERT INTO public.moon VALUES (12, 'ersa', false, 'jupiter eleventh', 41);
INSERT INTO public.moon VALUES (13, 'himalia', false, 'jup twelve', 41);
INSERT INTO public.moon VALUES (14, 'pandia', false, 'jup 13', 41);
INSERT INTO public.moon VALUES (15, 'lysythea', true, 'jup 14', 41);
INSERT INTO public.moon VALUES (16, 'dia', true, 'jup 15', 41);
INSERT INTO public.moon VALUES (17, 'carpo', true, 'jup 16', 41);
INSERT INTO public.moon VALUES (18, 'valetudo', false, 'jup 17', 41);
INSERT INTO public.moon VALUES (19, 'euporie', true, 'jup 18', 41);
INSERT INTO public.moon VALUES (20, 'mneme', true, 'jup 19', 41);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (37, 'mercury', false, 100.21, 1);
INSERT INTO public.planet VALUES (38, 'venus', false, 321.45, 1);
INSERT INTO public.planet VALUES (39, 'earth', true, 654.21, 1);
INSERT INTO public.planet VALUES (40, 'mars', true, 941.65, 1);
INSERT INTO public.planet VALUES (41, 'jupiter', false, 45321.67, 1);
INSERT INTO public.planet VALUES (42, 'saturn', false, 78432.78, 1);
INSERT INTO public.planet VALUES (43, 'uranus', true, 98712.67, 1);
INSERT INTO public.planet VALUES (44, 'neptune', false, 145632.54, 1);
INSERT INTO public.planet VALUES (45, 'venuss', true, 250321.54, 1);
INSERT INTO public.planet VALUES (46, 'sg 86', true, 6541.21, 2);
INSERT INTO public.planet VALUES (47, 'sg 87', false, 7561.54, 2);
INSERT INTO public.planet VALUES (48, 'sg 94', true, 9871.12, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'yellow dwarf', 696, 5);
INSERT INTO public.star VALUES (2, 'rigel', 'red giant', 9856, 5);
INSERT INTO public.star VALUES (3, 'spica', 'binary', 5319, 6);
INSERT INTO public.star VALUES (4, 'antares', 'red giant', 12654, 6);
INSERT INTO public.star VALUES (5, 'denev', 'red star', 2431, 5);
INSERT INTO public.star VALUES (6, 'sirius', 'binary', 7851, 6);


--
-- Data for Name: wanderer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.wanderer VALUES (1, 'OTS', 'exoplanet', false, 5);
INSERT INTO public.wanderer VALUES (2, 'S Ori 52', 'exoplanet', false, 5);
INSERT INTO public.wanderer VALUES (3, 'CFBDSIR 2149-0403', 'exoplanet', true, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: wanderer_wanderer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.wanderer_wanderer_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: wanderer wanderer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wanderer
    ADD CONSTRAINT wanderer_name_key UNIQUE (name);


--
-- Name: wanderer wanderer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wanderer
    ADD CONSTRAINT wanderer_pkey PRIMARY KEY (wanderer_id);


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
-- Name: wanderer wanderer_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wanderer
    ADD CONSTRAINT wanderer_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

