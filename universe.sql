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
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
    five_id integer NOT NULL,
    name character varying(20),
    int_col integer NOT NULL,
    num_col numeric,
    bool_col boolean
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_five_id_seq OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_five_id_seq OWNED BY public.five.five_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    int_one integer NOT NULL,
    int_two integer NOT NULL,
    bool_one boolean,
    bool_two boolean,
    num_col numeric,
    descrptn text
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
    name character varying(20),
    int_one integer NOT NULL,
    int_two integer NOT NULL,
    bool_one boolean,
    bool_two boolean,
    num_col numeric,
    descrptn text
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
    name character varying(20),
    int_one integer NOT NULL,
    int_two integer NOT NULL,
    bool_one boolean,
    bool_two boolean,
    num_col numeric,
    descrptn text
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
    name character varying(20),
    int_one integer NOT NULL,
    int_two integer NOT NULL,
    bool_one boolean,
    bool_two boolean,
    num_col numeric,
    descrptn text
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
-- Name: five five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five ALTER COLUMN five_id SET DEFAULT nextval('public.five_five_id_seq'::regclass);


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
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five VALUES (1, 'Emin', 1, 19, true);
INSERT INTO public.five VALUES (2, 'Joel', 2, 19, true);
INSERT INTO public.five VALUES (3, 'Aditya', 3, 19, true);
INSERT INTO public.five VALUES (4, 'Adwait', 4, 19, true);
INSERT INTO public.five VALUES (5, 'Lloyd', 5, 19, true);
INSERT INTO public.five VALUES (6, 'Eshank', 6, 19, true);
INSERT INTO public.five VALUES (7, 'Hansel', 7, 19, true);
INSERT INTO public.five VALUES (8, 'Aston', 8, 19, true);
INSERT INTO public.five VALUES (9, 'Chhand', 9, 19, true);
INSERT INTO public.five VALUES (10, 'Janice', 10, 19, true);
INSERT INTO public.five VALUES (11, 'Slayde', 11, 19, true);
INSERT INTO public.five VALUES (12, 'Lisa', 12, 19, true);
INSERT INTO public.five VALUES (13, 'Sanika P', 13, 19, true);
INSERT INTO public.five VALUES (14, 'Crystal', 14, 19, true);
INSERT INTO public.five VALUES (15, 'Sanika R', 15, 19, true);
INSERT INTO public.five VALUES (16, 'Jaydenmario', 16, 19, true);
INSERT INTO public.five VALUES (17, 'Arnav', 17, 19, true);
INSERT INTO public.five VALUES (18, 'Mark', 18, 19, true);
INSERT INTO public.five VALUES (19, 'Sania', 19, 19, true);
INSERT INTO public.five VALUES (20, 'Nicole', 20, 19, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, 11, true, true, 111, 'dfsfg');
INSERT INTO public.galaxy VALUES (2, 'Sombrero', 2, 22, true, true, 222, 'sduhsfoid');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 3, 33, true, true, 333, 'wisondbvso');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 4, 44, true, true, 444, 'divdpfhadgadgh');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 5, 55, true, true, 555, 'sdpohfadghapghpig');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 6, 66, true, true, 666, 'ihfdoihfpiasfgahipd');
INSERT INTO public.galaxy VALUES (7, 'Milky way', 7, 77, true, true, 777, 'oiuy');
INSERT INTO public.galaxy VALUES (8, 'Large MC', 8, 88, true, true, 888, 'poiuytr');
INSERT INTO public.galaxy VALUES (9, 'Small MC', 9, 99, true, true, 999, 'lkjhgf');
INSERT INTO public.galaxy VALUES (10, 'Cigar', 10, 1010, true, true, 101010, 'mnbvc');
INSERT INTO public.galaxy VALUES (11, 'Sunflower', 11, 1111, true, true, 111111, 'rdfgh');
INSERT INTO public.galaxy VALUES (12, 'Commet', 12, 1212, true, true, 121212, 'poiuytr');
INSERT INTO public.galaxy VALUES (13, 'Tadpole', 13, 1313, true, true, 131313, 'lkjhgfds');
INSERT INTO public.galaxy VALUES (14, 'Messier 83', 14, 1414, true, true, 141414, 'mnbvcx');
INSERT INTO public.galaxy VALUES (15, 'Cosmos Redshift', 15, 1515, true, true, 151515, 'poiuytr');
INSERT INTO public.galaxy VALUES (16, 'Fireworks', 16, 1616, true, true, 161616, 'lkjhgszxcvb');
INSERT INTO public.galaxy VALUES (17, 'Needle
', 17, 1717, true, true, 171717, 'poiuytfgh');
INSERT INTO public.galaxy VALUES (18, 'Sculptor', 18, 1818, true, true, 181818, 'oiuyfbnhgf');
INSERT INTO public.galaxy VALUES (19, 'Bodes', 19, 1919, true, true, 191919, 'mnbvcgytre');
INSERT INTO public.galaxy VALUES (20, 'Sculptor Dwarf', 20, 2020, true, true, 202020, 'pihmghj');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 11, true, true, 111, 'poiuytre');
INSERT INTO public.moon VALUES (2, 'Titan', 2, 22, true, true, 222, 'jhgfd');
INSERT INTO public.moon VALUES (3, 'Europa', 3, 33, true, true, 333, 'fg');
INSERT INTO public.moon VALUES (4, 'Ganymede', 4, 44, true, true, 444, 'sdg');
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 55, true, true, 555, 'gf');
INSERT INTO public.moon VALUES (6, 'Enceladus', 6, 66, true, true, 666, 'gf');
INSERT INTO public.moon VALUES (7, 'Triton', 7, 77, true, true, 777, 'dfsh');
INSERT INTO public.moon VALUES (8, 'Dione', 8, 88, true, true, 888, 'iuytrer');
INSERT INTO public.moon VALUES (9, 'Iapetus', 9, 99, true, true, 999, 'yturieoe');
INSERT INTO public.moon VALUES (10, 'Mimas', 10, 1010, true, true, 101010, 'ghfjkds');
INSERT INTO public.moon VALUES (11, 'Oberon', 11, 1111, true, true, 111111, 'jkloiuy');
INSERT INTO public.moon VALUES (12, 'Elara', 12, 1212, true, true, 121212, 'hfj');
INSERT INTO public.moon VALUES (13, 'Tethys', 13, 1313, true, true, 131313, 'hgjfuthg');
INSERT INTO public.moon VALUES (14, 'Titania', 14, 1414, true, true, 141414, 'asdfghj');
INSERT INTO public.moon VALUES (15, 'Rhea', 15, 1515, true, true, 151515, 'jhnbhgbv');
INSERT INTO public.moon VALUES (16, 'Atlas', 16, 1616, true, true, 161616, 'kljnhbgm');
INSERT INTO public.moon VALUES (17, 'Hyperion', 17, 1717, true, true, 171717, 'mnbvcx');
INSERT INTO public.moon VALUES (18, 'Amalthea', 18, 1818, true, true, 181818, 'gfhud');
INSERT INTO public.moon VALUES (19, 'Thebe', 19, 1919, true, true, 191919, 'ghj');
INSERT INTO public.moon VALUES (20, 'Charon', 20, 2020, true, true, 202020, 'ghjk');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 11, true, true, 111, 'apifhaphf');
INSERT INTO public.planet VALUES (2, 'Venus', 2, 22, true, true, 222, 'fafoihaf');
INSERT INTO public.planet VALUES (3, 'Earth', 3, 33, true, true, 333, 'aifhoagf');
INSERT INTO public.planet VALUES (4, 'Mars', 4, 44, true, true, 444, 'sidhfidhgspidgh');
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 55, true, true, 555, 'aphfapfhadhf');
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 66, true, true, 666, 'aphfapif');
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 77, true, true, 777, 'jhgfd');
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 88, true, true, 888, 'jhgfd');
INSERT INTO public.planet VALUES (9, 'Pluto', 9, 99, true, true, 999, 'jhgf');
INSERT INTO public.planet VALUES (10, 'Arion', 10, 1010, true, true, 101010, 'hgfd');
INSERT INTO public.planet VALUES (11, 'Orbitar', 11, 1111, true, true, 111111, 'gfd');
INSERT INTO public.planet VALUES (12, 'Taphao thong', 12, 1212, true, true, 121212, 'hgfds');
INSERT INTO public.planet VALUES (13, 'TAphao Kaew', 13, 1313, true, true, 131313, 'fd');
INSERT INTO public.planet VALUES (14, 'Dimidum', 14, 1414, true, true, 141414, 'hgfd');
INSERT INTO public.planet VALUES (15, 'Galileo', 15, 1515, true, true, 151515, 'gjgjfjf');
INSERT INTO public.planet VALUES (16, 'Brahe', 16, 1616, true, true, 161616, 'sdkfj');
INSERT INTO public.planet VALUES (17, 'Lipperhey', 17, 1717, true, true, 171717, 'lkjhgfd');
INSERT INTO public.planet VALUES (18, 'Janssen', 18, 1818, true, true, 181818, 'dsflj');
INSERT INTO public.planet VALUES (19, 'Harriot', 19, 1919, true, true, 191919, 'kldsf');
INSERT INTO public.planet VALUES (20, 'Halla', 20, 2020, true, true, 202020, 'jdflkf');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Scorpii', 1, 11, true, true, 111, 'ihdpfadgfhihf');
INSERT INTO public.star VALUES (2, 'Altair', 2, 22, true, true, 222, 'srgsoirhgs');
INSERT INTO public.star VALUES (3, 'Achernar', 3, 33, true, true, 333, 'isdhfihfsog');
INSERT INTO public.star VALUES (4, 'Aldebaran', 4, 44, true, true, 444, 'dofpdihfadgf');
INSERT INTO public.star VALUES (5, 'Alioth', 5, 55, true, true, 555, 'dsdihsiodoidv');
INSERT INTO public.star VALUES (6, 'Alnair', 6, 66, true, true, 666, 'sdifpigdfsigf');
INSERT INTO public.star VALUES (7, 'Messier 87', 7, 77, true, true, 777, 'lfglfhg');
INSERT INTO public.star VALUES (8, 'Alpha Andromedae', 8, 88, true, true, 888, 'dfdfhgdfhlg');
INSERT INTO public.star VALUES (9, 'Alpha centauri', 9, 99, true, true, 999, 'jsdbfsdgf');
INSERT INTO public.star VALUES (10, '80 Ursa Major', 10, 1010, true, true, 101010, 'sdlfhsf');
INSERT INTO public.star VALUES (11, 'Alderamin', 11, 1111, true, true, 111111, 'fhffhlkfhkf');
INSERT INTO public.star VALUES (12, 'Alpha Canis Mojor', 12, 1212, true, true, 121212, 'porpweirpwoepro');
INSERT INTO public.star VALUES (13, 'Polaris', 13, 1313, true, true, 131313, 'mnjkiuyhb');
INSERT INTO public.star VALUES (14, 'Lynx', 14, 1414, true, true, 141414, 'sdlifh');
INSERT INTO public.star VALUES (15, 'Eridanus', 15, 1515, true, true, 151515, 'lskdflskdhf');
INSERT INTO public.star VALUES (16, 'Cassiopeia', 16, 1616, true, true, 161616, 'ghjkl');
INSERT INTO public.star VALUES (17, 'Scorpius', 17, 1717, true, true, 171717, 'hgfdsh');
INSERT INTO public.star VALUES (18, 'Crux', 18, 1818, true, true, 181818, 'ghfjdk');
INSERT INTO public.star VALUES (19, 'Leo', 19, 1919, true, true, 191919, 'ghjkiuy');
INSERT INTO public.star VALUES (20, 'Taurus', 20, 2020, true, true, 202020, 'ghfjkd');


--
-- Name: five_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_five_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: five five_int_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_int_col_key UNIQUE (int_col);


--
-- Name: five five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_pkey PRIMARY KEY (five_id);


--
-- Name: galaxy galaxy_int_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_int_one_key UNIQUE (int_one);


--
-- Name: galaxy galaxy_int_one_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_int_one_key1 UNIQUE (int_one);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_int_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_int_one_key UNIQUE (int_one);


--
-- Name: moon moon_num_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_num_col_key UNIQUE (num_col);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_int_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_int_one_key UNIQUE (int_one);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_int_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int_one_key UNIQUE (int_one);


--
-- Name: star star_int_one_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int_one_key1 UNIQUE (int_one);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_int_one_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_int_one_fkey FOREIGN KEY (int_one) REFERENCES public.planet(int_one);


--
-- Name: planet planet_int_one_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_int_one_fkey FOREIGN KEY (int_one) REFERENCES public.star(int_one);


--
-- Name: star star_int_one_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int_one_fkey FOREIGN KEY (int_one) REFERENCES public.galaxy(int_one);


--
-- PostgreSQL database dump complete
--

