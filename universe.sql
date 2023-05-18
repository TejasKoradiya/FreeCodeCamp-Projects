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
    shape text,
    name character varying(30),
    age_in_billion_years numeric NOT NULL,
    mass_billion_times integer
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
-- Name: general_feature; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.general_feature (
    general_feature_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.general_feature OWNER TO freecodecamp;

--
-- Name: general_feature_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.general_feature_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_feature_feature_id_seq OWNER TO freecodecamp;

--
-- Name: general_feature_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.general_feature_feature_id_seq OWNED BY public.general_feature.general_feature_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_in_kms integer,
    orbit_size_kms integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    color text,
    moon_present boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_million_kms numeric(8,2),
    planet_present boolean,
    color text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_star_id_seq OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: general_feature general_feature_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_feature ALTER COLUMN general_feature_id SET DEFAULT nextval('public.general_feature_feature_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Spiral', 'Andromeda', 10, 1500);
INSERT INTO public.galaxy VALUES (3, 'Spiral', 'Triangulum', 9, 40);
INSERT INTO public.galaxy VALUES (4, 'Elliptical', 'Sombrero', 8, 1000);
INSERT INTO public.galaxy VALUES (5, 'Spiral', 'Whirlpool', 0.7, 160);
INSERT INTO public.galaxy VALUES (1, 'Spiral', 'Milky Way', 13.6, 2500);
INSERT INTO public.galaxy VALUES (7, 'Elliptical', 'Virgo', 12.3, 6600);


--
-- Data for Name: general_feature; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.general_feature VALUES (1, 'Black Hole', 'Dense Object with Gravitational Pull');
INSERT INTO public.general_feature VALUES (2, 'Gamma Ray Burst', 'Powerfull Explosion Emitting highly energetic rays');
INSERT INTO public.general_feature VALUES (3, 'Dark Matter', 'Matter that does not interact with light but affects gravity');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 384400, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 9377, 4);
INSERT INTO public.moon VALUES (3, 'Deitos', 13, 23460, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3642, 421700, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5268, 1070400, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 4821, 1882700, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 3121, 670900, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 250, 181400, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 170, 11480000, 5);
INSERT INTO public.moon VALUES (10, 'Titan', 5150, 1221870, 7);
INSERT INTO public.moon VALUES (11, 'Rhea', 1527, 527108, 7);
INSERT INTO public.moon VALUES (12, 'Lapetus', 1470, 356820, 7);
INSERT INTO public.moon VALUES (13, 'Enceladus', 504, 238020, 7);
INSERT INTO public.moon VALUES (14, 'Mimas', 396, 185520, 7);
INSERT INTO public.moon VALUES (15, 'Dione', 1123, 377400, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 1522, 583520, 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', 1169, 266300, 6);
INSERT INTO public.moon VALUES (18, 'Triton', 2706, 354760, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 340, 5513400, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 1212, 17536, 9);
INSERT INTO public.moon VALUES (21, 'Nix', 42, 48690, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Brown', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Cream', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Green', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Orange', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'White', true, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Pale Yellow', true, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Yellow', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Blue', true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Bluish Gray', true, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 'Gray', true, 1);
INSERT INTO public.planet VALUES (11, 'Orcus', 'Dark Reddish', true, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', 'Grayish Brown', false, 1);
INSERT INTO public.planet VALUES (13, 'Sedna', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.40, true, 'Yellow', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 4.80, false, 'Blue', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1241.80, false, 'Orange', 1);
INSERT INTO public.star VALUES (4, 'Andromeda A1', NULL, false, 'White', 2);
INSERT INTO public.star VALUES (5, 'Triangulum T1', NULL, false, NULL, 3);
INSERT INTO public.star VALUES (6, 'Sombrero S1', NULL, false, NULL, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: general_feature_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.general_feature_feature_id_seq', 3, true);


--
-- Name: moons_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_moon_id_seq', 21, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 13, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: general_feature general_feature_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_feature
    ADD CONSTRAINT general_feature_name_key UNIQUE (name);


--
-- Name: general_feature general_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_feature
    ADD CONSTRAINT general_feature_pkey PRIMARY KEY (general_feature_id);


--
-- Name: moon moons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_name_key UNIQUE (name);


--
-- Name: moon moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_name_key UNIQUE (name);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: star stars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_name_key UNIQUE (name);


--
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: moon moons_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

