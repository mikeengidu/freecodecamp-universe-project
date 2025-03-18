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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    galaxy_types character varying(100),
    age_in_billions_of_years numeric,
    has_life boolean NOT NULL
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    orbital_period_in_days numeric,
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
-- Name: observatory; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.observatory (
    observatory_id integer NOT NULL,
    name character varying(100) NOT NULL,
    location text NOT NULL,
    telescope_type character varying(100),
    established_year integer NOT NULL
);


ALTER TABLE public.observatory OWNER TO freecodecamp;

--
-- Name: observatory_observatory_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.observatory_observatory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.observatory_observatory_id_seq OWNER TO freecodecamp;

--
-- Name: observatory_observatory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.observatory_observatory_id_seq OWNED BY public.observatory.observatory_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    planet_types character varying(100),
    orbital_period_in_days numeric,
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: observatory observatory_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observatory ALTER COLUMN observatory_id SET DEFAULT nextval('public.observatory_observatory_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, a barred spiral galaxy.', 'Barred Spiral', 13.6, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest large spiral galaxy to the Milky Way.', 'Spiral', 10.0, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A smaller spiral galaxy in the Local Group.', 'Spiral', NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A lenticular galaxy with a prominent dust lane.', 'Lenticular', 9.0, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'A grand-design spiral galaxy interacting with a smaller galaxy.', 'Spiral', 0.5, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'A face-on spiral galaxy with well-defined arms.', 'Spiral', 10.2, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite.', true, 27.3, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger of Mars'' two moons.', false, 0.3, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of Mars'' two moons.', false, 1.3, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'The innermost of Jupiter''s Galilean moons, known for its volcanism.', true, 1.8, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'One of Jupiter''s Galilean moons, thought to have a subsurface ocean.', true, 3.5, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the Solar System, and one of Jupiter''s Galilean moons.', true, 7.2, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'The outermost of Jupiter''s Galilean moons, heavily cratered.', true, 16.7, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 'A small moon of Saturn with a large impact crater.', true, 0.9, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A small, icy moon of Saturn known for its south polar geysers.', true, 1.3, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 'A mid-sized icy moon of Saturn with a large canyon.', true, 1.9, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'An icy moon of Saturn with bright wispy terrain.', true, 2.7, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 'The second-largest moon of Saturn.', true, 4.5, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 'Saturn''s largest moon, with a dense atmosphere and liquid methane lakes.', true, 15.9, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'A moon of Saturn with a distinctive two-toned appearance.', true, 79.3, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 'One of Uranus'' major moons, with a varied and fractured surface.', true, 1.4, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 'One of Uranus''major moons, with bright, grooved terrain.', true, 2.5, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'One of Uranus'' major moons, dark and heavily cratered.', true, 4.1, 7);
INSERT INTO public.moon VALUES (18, 'Titania', 'The largest of Uranus'' moons.', true, 8.7, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 'The outermost of Uranus'' major moons.', true, 13.5, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 'Neptune''s largest moon, a captured Kuiper Belt object with retrograde orbit.', true, 5.9, 8);
INSERT INTO public.moon VALUES (21, 'Nereid', 'The third-largest moon of Neptune, with a highly eccentric orbit.', false, 360.0, 8);


--
-- Data for Name: observatory; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.observatory VALUES (1, 'Mount Wilson Observatory', 'Mount Wilson, California, USA', 'Reflecting', 1904);
INSERT INTO public.observatory VALUES (2, 'Mauna Kea Observatory', 'Mauna Kea, Hawaii, USA', 'Multiple', 1967);
INSERT INTO public.observatory VALUES (3, 'Atacama Large Millimeter/submillimeter Array (ALMA)', 'Atacama Desert, Chile', 'Radio', 2013);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The closest planet to the Sun.', false, 'Terrestrial', 88.0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'A hot, dense planet with a toxic atmosphere.', false, 'Terrestrial', 225.0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet, known to harbor life.', true, 'Terrestrial', 365.25, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The "Red Planet", with evidence of past liquid water.', false, 'Terrestrial', 687.0, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in our Solar System, a gas giant.', false, 'Gas Giant', 4331.0, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A gas giant with prominent rings.', false, 'Gas Giant', 10747.0, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with a sideways rotation.', false, 'Ice Giant', 30584.0, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The farthest known planet from the Sun.', false, 'Ice Giant', 59800.0, 1);
INSERT INTO public.planet VALUES (9, 'Andromeda b', 'An exoplanet orbiting Alpha Andromedae.', false, 'Gas Giant', 100.0, 3);
INSERT INTO public.planet VALUES (10, 'Betelgeuse c', 'A hypothetical planet orbiting Betelgeuse.', false, 'Unknown', NULL, 4);
INSERT INTO public.planet VALUES (11, 'M33-B i', 'An exoplanet in the Triangulum Galaxy.', false, 'Unknown', 500.0, 5);
INSERT INTO public.planet VALUES (12, 'NGC 5194-S1 b', 'An exoplanet in the Whirlpool Galaxy.', false, 'Gas Giant', 300.0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our Solar System.', 0, 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky.', 9, 230, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Andromedae', 'The brightest star in the Andromeda constellation.', 97, 50, true, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A red supergiant star in the constellation Orion.', 550, 8, true, 1);
INSERT INTO public.star VALUES (5, 'M33-B', 'A bright blue giant star in the Triangulum Galaxy.', 2700000, 15, true, 3);
INSERT INTO public.star VALUES (6, 'NGC 5194-S1', 'A bright star in the Whirlpool Galaxy.', 31000000, 20, true, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: observatory_observatory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.observatory_observatory_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: observatory observatory_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observatory
    ADD CONSTRAINT observatory_name_key UNIQUE (name);


--
-- Name: observatory observatory_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observatory
    ADD CONSTRAINT observatory_pkey PRIMARY KEY (observatory_id);


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

