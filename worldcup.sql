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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (43, 2018, 'Final', 227, 228, 4, 2);
INSERT INTO public.games VALUES (44, 2018, 'Third Place', 229, 230, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Semi-Final', 228, 230, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Semi-Final', 227, 229, 1, 0);
INSERT INTO public.games VALUES (47, 2018, 'Quarter-Final', 228, 231, 3, 2);
INSERT INTO public.games VALUES (48, 2018, 'Quarter-Final', 230, 232, 2, 0);
INSERT INTO public.games VALUES (49, 2018, 'Quarter-Final', 229, 233, 2, 1);
INSERT INTO public.games VALUES (50, 2018, 'Quarter-Final', 227, 234, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 230, 235, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 232, 236, 1, 0);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 229, 237, 3, 2);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 233, 238, 2, 0);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 228, 239, 2, 1);
INSERT INTO public.games VALUES (56, 2018, 'Eighth-Final', 231, 240, 2, 1);
INSERT INTO public.games VALUES (57, 2018, 'Eighth-Final', 234, 241, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Eighth-Final', 227, 242, 4, 3);
INSERT INTO public.games VALUES (59, 2014, 'Final', 243, 242, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Third Place', 244, 233, 3, 0);
INSERT INTO public.games VALUES (61, 2014, 'Semi-Final', 242, 244, 1, 0);
INSERT INTO public.games VALUES (62, 2014, 'Semi-Final', 243, 233, 7, 1);
INSERT INTO public.games VALUES (63, 2014, 'Quarter-Final', 244, 245, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Quarter-Final', 242, 229, 1, 0);
INSERT INTO public.games VALUES (65, 2014, 'Quarter-Final', 233, 235, 2, 1);
INSERT INTO public.games VALUES (66, 2014, 'Quarter-Final', 243, 227, 1, 0);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 233, 246, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 235, 234, 2, 0);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 227, 247, 2, 0);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 243, 248, 2, 1);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 244, 238, 2, 1);
INSERT INTO public.games VALUES (72, 2014, 'Eighth-Final', 245, 249, 2, 1);
INSERT INTO public.games VALUES (73, 2014, 'Eighth-Final', 242, 236, 1, 0);
INSERT INTO public.games VALUES (74, 2014, 'Eighth-Final', 229, 250, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (227, 'France');
INSERT INTO public.teams VALUES (228, 'Croatia');
INSERT INTO public.teams VALUES (229, 'Belgium');
INSERT INTO public.teams VALUES (230, 'England');
INSERT INTO public.teams VALUES (231, 'Russia');
INSERT INTO public.teams VALUES (232, 'Sweden');
INSERT INTO public.teams VALUES (233, 'Brazil');
INSERT INTO public.teams VALUES (234, 'Uruguay');
INSERT INTO public.teams VALUES (235, 'Colombia');
INSERT INTO public.teams VALUES (236, 'Switzerland');
INSERT INTO public.teams VALUES (237, 'Japan');
INSERT INTO public.teams VALUES (238, 'Mexico');
INSERT INTO public.teams VALUES (239, 'Denmark');
INSERT INTO public.teams VALUES (240, 'Spain');
INSERT INTO public.teams VALUES (241, 'Portugal');
INSERT INTO public.teams VALUES (242, 'Argentina');
INSERT INTO public.teams VALUES (243, 'Germany');
INSERT INTO public.teams VALUES (244, 'Netherlands');
INSERT INTO public.teams VALUES (245, 'Costa Rica');
INSERT INTO public.teams VALUES (246, 'Chile');
INSERT INTO public.teams VALUES (247, 'Nigeria');
INSERT INTO public.teams VALUES (248, 'Algeria');
INSERT INTO public.teams VALUES (249, 'Greece');
INSERT INTO public.teams VALUES (250, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 74, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 250, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

