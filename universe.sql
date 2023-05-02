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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    column_1 integer NOT NULL,
    column2 integer,
    column_3 boolean,
    name character varying(10)
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_from_earth numeric(20,3),
    galaxy_type text,
    age integer
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
    name character varying(60) NOT NULL,
    age_in_billions numeric(3,2),
    has_life boolean,
    planet_id integer,
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moons_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_star_id_seq OWNER TO freecodecamp;

--
-- Name: moons_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_star_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years numeric(2,1),
    planet_types character varying(20),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_star_id_seq OWNER TO freecodecamp;

--
-- Name: planets_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_star_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_star_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 32, 90, false, NULL);
INSERT INTO public.fifth_table VALUES (2, 92, 12, true, NULL);
INSERT INTO public.fifth_table VALUES (3, 120, 102, true, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2.537, 'spiral', 2);
INSERT INTO public.galaxy VALUES (2, 'Milky way', 100000.000, 'spiral', 10);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000.000, 'spiral', 11);
INSERT INTO public.galaxy VALUES (4, 'Centaurus', 130000000.000, 'spiral', 311);
INSERT INTO public.galaxy VALUES (5, 'Bode', 12000000.000, 'Irregular', 203);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 23500000.000, 'Spiral', 90);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (101, 'Luna', 4.00, false, 1, 12);
INSERT INTO public.moon VALUES (102, 'Io', 4.00, false, 1, 12);
INSERT INTO public.moon VALUES (103, 'Europa', 4.00, false, 3, 0);
INSERT INTO public.moon VALUES (104, 'Ganymede', 4.00, false, 3, 0);
INSERT INTO public.moon VALUES (105, 'Callisto', 4.00, false, 3, 0);
INSERT INTO public.moon VALUES (106, 'Titan', 4.00, false, 1, 0);
INSERT INTO public.moon VALUES (107, 'Rhea', 4.00, false, 4, 0);
INSERT INTO public.moon VALUES (108, 'Iapetus', 4.00, false, 4, 0);
INSERT INTO public.moon VALUES (109, 'Dione', 4.00, false, 1, 0);
INSERT INTO public.moon VALUES (110, 'Tethys', 4.00, false, 4, 0);
INSERT INTO public.moon VALUES (111, 'Enceladus', 4.00, false, 4, 0);
INSERT INTO public.moon VALUES (112, 'Charon', 4.00, false, 1, 0);
INSERT INTO public.moon VALUES (126, 'Nix', 4.00, false, 1, 0);
INSERT INTO public.moon VALUES (127, 'Hydra', 4.00, false, 5, 0);
INSERT INTO public.moon VALUES (128, 'Ariel', 4.00, false, 6, 0);
INSERT INTO public.moon VALUES (129, 'Umbriel', 4.00, false, 6, 0);
INSERT INTO public.moon VALUES (130, 'Oberon', 4.00, false, 6, 0);
INSERT INTO public.moon VALUES (131, 'Titania', 4.00, false, 6, 0);
INSERT INTO public.moon VALUES (132, 'Triton', 4.00, false, 7, 0);
INSERT INTO public.moon VALUES (133, 'Nereid', 4.00, false, 7, 0);
INSERT INTO public.moon VALUES (134, 'Larissa', 4.00, false, 8, 0);
INSERT INTO public.moon VALUES (135, 'Proteus', 4.00, false, 8, 0);
INSERT INTO public.moon VALUES (136, 'Amalthea', 4.00, false, 4, 0);
INSERT INTO public.moon VALUES (137, 'Thebe', 4.00, false, 5, 0);
INSERT INTO public.moon VALUES (138, 'Adrastea', 4.00, false, 5, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4.5, 'Terrestial', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4.6, 'Terrestial', 1);
INSERT INTO public.planet VALUES (3, 'Kepler-1b', 7.5, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (4, 'Kepler-2b', 4.5, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (5, 'GJ 667 Cc', 4.5, 'Terrestrial', 3);
INSERT INTO public.planet VALUES (6, 'GJ 667 Cd', 4.5, 'Terrestrial', 3);
INSERT INTO public.planet VALUES (7, 'Proxima Centauri b', 4.9, 'Terrestrial', 4);
INSERT INTO public.planet VALUES (8, 'TRAPPIST-1b', 6.3, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1c', 6.3, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1d', 6.3, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 6.3, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1f', 6.3, 'Terrestrial', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, true, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', false, true, 2);
INSERT INTO public.star VALUES (3, 'Vega', true, true, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', false, true, 2);
INSERT INTO public.star VALUES (5, 'Epsilon Eridani', false, false, 2);
INSERT INTO public.star VALUES (6, 'NGC 253 X-1', false, true, 1);
INSERT INTO public.star VALUES (7, 'NGC 4567/4568', false, true, 1);
INSERT INTO public.star VALUES (8, 'NGC 1316 X-1', false, true, 4);
INSERT INTO public.star VALUES (9, 'NGC 4258 ULX-1', false, true, 2);
INSERT INTO public.star VALUES (10, 'NGC 5907 ULX-1', false, true, 2);
INSERT INTO public.star VALUES (11, 'Whirlpool Galaxy X-1', false, true, 6);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moons_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_star_id_seq', 138, true);


--
-- Name: planets_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_star_id_seq', 12, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 11, true);


--
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: fifth_table uniquement; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT uniquement UNIQUE (column_1);


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

