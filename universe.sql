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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(60),
    height numeric,
    age integer NOT NULL,
    email text,
    indian boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    gmail text,
    indian boolean,
    height numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'A', 98, 67, 'A', NULL);
INSERT INTO public.earth VALUES (2, 'b', 98, 67, 'A', NULL);
INSERT INTO public.earth VALUES (3, 'c', 98, 67, 'A', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (2, 'B', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (3, 'C', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (4, 'D', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (5, 'E', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (6, 'F', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (7, 'G', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (8, 'H', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (9, 'I', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (10, 'J', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (11, 'K', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (12, 'L', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (13, 'M', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (14, 'N', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (15, 'O', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (16, 'P', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (17, 'Q', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (18, 'R', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (19, 'S', 67, 'A', NULL, 98);
INSERT INTO public.galaxy VALUES (20, 'T', 67, 'A', NULL, 98);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 67, 98, 'A', 1);
INSERT INTO public.moon VALUES (2, 'B', 67, 98, 'A', 2);
INSERT INTO public.moon VALUES (3, 'C', 67, 98, 'A', 3);
INSERT INTO public.moon VALUES (4, 'D', 67, 98, 'A', 4);
INSERT INTO public.moon VALUES (5, 'E', 67, 98, 'A', 5);
INSERT INTO public.moon VALUES (6, 'F', 67, 98, 'A', 6);
INSERT INTO public.moon VALUES (7, 'G', 67, 98, 'A', 7);
INSERT INTO public.moon VALUES (8, 'H', 67, 98, 'A', 8);
INSERT INTO public.moon VALUES (9, 'I', 67, 98, 'A', 9);
INSERT INTO public.moon VALUES (10, 'J', 67, 98, 'A', 10);
INSERT INTO public.moon VALUES (11, 'K', 67, 98, 'A', 11);
INSERT INTO public.moon VALUES (12, 'L', 67, 98, 'A', 12);
INSERT INTO public.moon VALUES (13, 'M', 67, 98, 'A', 13);
INSERT INTO public.moon VALUES (14, 'N', 67, 98, 'A', 14);
INSERT INTO public.moon VALUES (15, 'O', 67, 98, 'A', 15);
INSERT INTO public.moon VALUES (16, 'P', 67, 98, 'A', 16);
INSERT INTO public.moon VALUES (17, 'Q', 67, 98, 'A', 17);
INSERT INTO public.moon VALUES (18, 'R', 67, 98, 'A', 18);
INSERT INTO public.moon VALUES (19, 'S', 67, 98, 'A', 19);
INSERT INTO public.moon VALUES (20, 'T', 67, 98, 'A', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 67, 98, 'A', 1);
INSERT INTO public.planet VALUES (2, 'B', 67, 98, 'A', 2);
INSERT INTO public.planet VALUES (3, 'C', 67, 98, 'A', 3);
INSERT INTO public.planet VALUES (4, 'D', 67, 98, 'A', 4);
INSERT INTO public.planet VALUES (5, 'E', 67, 98, 'A', 5);
INSERT INTO public.planet VALUES (6, 'F', 67, 98, 'A', 6);
INSERT INTO public.planet VALUES (7, 'G', 67, 98, 'A', 7);
INSERT INTO public.planet VALUES (8, 'H', 67, 98, 'A', 8);
INSERT INTO public.planet VALUES (9, 'I', 67, 98, 'A', 9);
INSERT INTO public.planet VALUES (10, 'J', 67, 98, 'A', 10);
INSERT INTO public.planet VALUES (11, 'K', 67, 98, 'A', 11);
INSERT INTO public.planet VALUES (12, 'L', 67, 98, 'A', 12);
INSERT INTO public.planet VALUES (13, 'M', 67, 98, 'A', 13);
INSERT INTO public.planet VALUES (14, 'N', 67, 98, 'A', 14);
INSERT INTO public.planet VALUES (15, 'O', 67, 98, 'A', 15);
INSERT INTO public.planet VALUES (16, 'P', 67, 98, 'A', 16);
INSERT INTO public.planet VALUES (17, 'Q', 67, 98, 'A', 17);
INSERT INTO public.planet VALUES (18, 'S', 67, 98, 'A', 18);
INSERT INTO public.planet VALUES (19, 'R', 67, 98, 'A', 19);
INSERT INTO public.planet VALUES (20, 'T', 67, 98, 'A', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 67, 98, 'A', 1);
INSERT INTO public.star VALUES (2, 'B', 67, 98, 'A', 2);
INSERT INTO public.star VALUES (3, 'C', 67, 98, 'A', 3);
INSERT INTO public.star VALUES (4, 'D', 67, 98, 'A', 4);
INSERT INTO public.star VALUES (5, 'E', 67, 98, 'A', 5);
INSERT INTO public.star VALUES (6, 'F', 67, 98, 'A', 6);
INSERT INTO public.star VALUES (7, 'G', 67, 98, 'A', 7);
INSERT INTO public.star VALUES (8, 'H', 67, 98, 'A', 8);
INSERT INTO public.star VALUES (9, 'I', 67, 98, 'A', 9);
INSERT INTO public.star VALUES (10, 'J', 67, 98, 'A', 10);
INSERT INTO public.star VALUES (11, 'K', 67, 98, 'A', 11);
INSERT INTO public.star VALUES (12, 'L', 67, 98, 'A', 12);
INSERT INTO public.star VALUES (13, 'M', 67, 98, 'A', 13);
INSERT INTO public.star VALUES (14, 'N', 67, 98, 'A', 14);
INSERT INTO public.star VALUES (15, 'O', 67, 98, 'A', 15);
INSERT INTO public.star VALUES (16, 'P', 67, 98, 'A', 16);
INSERT INTO public.star VALUES (17, 'Q', 67, 98, 'A', 17);
INSERT INTO public.star VALUES (18, 'R', 67, 98, 'A', 18);
INSERT INTO public.star VALUES (19, 'S', 67, 98, 'A', 19);
INSERT INTO public.star VALUES (20, '7', 67, 98, 'A', 20);


--
-- Name: earth earth_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_id UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


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

