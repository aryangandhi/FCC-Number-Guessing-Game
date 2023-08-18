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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 5);
INSERT INTO public.games VALUES (2, 2, 10);
INSERT INTO public.games VALUES (3, 2, 2);
INSERT INTO public.games VALUES (4, 46, 193);
INSERT INTO public.games VALUES (5, 46, 255);
INSERT INTO public.games VALUES (6, 47, 17);
INSERT INTO public.games VALUES (7, 47, 667);
INSERT INTO public.games VALUES (8, 46, 837);
INSERT INTO public.games VALUES (9, 46, 666);
INSERT INTO public.games VALUES (10, 46, 638);
INSERT INTO public.games VALUES (11, 48, 695);
INSERT INTO public.games VALUES (12, 48, 512);
INSERT INTO public.games VALUES (13, 49, 350);
INSERT INTO public.games VALUES (14, 49, 57);
INSERT INTO public.games VALUES (15, 48, 413);
INSERT INTO public.games VALUES (16, 48, 7);
INSERT INTO public.games VALUES (17, 48, 917);
INSERT INTO public.games VALUES (18, 50, 875);
INSERT INTO public.games VALUES (19, 50, 927);
INSERT INTO public.games VALUES (20, 51, 233);
INSERT INTO public.games VALUES (21, 51, 660);
INSERT INTO public.games VALUES (22, 50, 436);
INSERT INTO public.games VALUES (23, 50, 227);
INSERT INTO public.games VALUES (24, 50, 152);
INSERT INTO public.games VALUES (25, 52, 706);
INSERT INTO public.games VALUES (26, 52, 726);
INSERT INTO public.games VALUES (27, 53, 248);
INSERT INTO public.games VALUES (28, 53, 181);
INSERT INTO public.games VALUES (29, 52, 124);
INSERT INTO public.games VALUES (30, 52, 586);
INSERT INTO public.games VALUES (31, 52, 425);
INSERT INTO public.games VALUES (32, 54, 123);
INSERT INTO public.games VALUES (33, 54, 635);
INSERT INTO public.games VALUES (34, 55, 565);
INSERT INTO public.games VALUES (35, 55, 698);
INSERT INTO public.games VALUES (36, 54, 330);
INSERT INTO public.games VALUES (37, 54, 119);
INSERT INTO public.games VALUES (38, 54, 361);
INSERT INTO public.games VALUES (39, 56, 192);
INSERT INTO public.games VALUES (40, 56, 930);
INSERT INTO public.games VALUES (41, 57, 897);
INSERT INTO public.games VALUES (42, 57, 111);
INSERT INTO public.games VALUES (43, 56, 925);
INSERT INTO public.games VALUES (44, 56, 883);
INSERT INTO public.games VALUES (45, 56, 769);
INSERT INTO public.games VALUES (46, 58, 793);
INSERT INTO public.games VALUES (47, 58, 490);
INSERT INTO public.games VALUES (48, 59, 289);
INSERT INTO public.games VALUES (49, 59, 87);
INSERT INTO public.games VALUES (50, 58, 518);
INSERT INTO public.games VALUES (51, 58, 666);
INSERT INTO public.games VALUES (52, 58, 416);
INSERT INTO public.games VALUES (53, 60, 163);
INSERT INTO public.games VALUES (54, 60, 363);
INSERT INTO public.games VALUES (55, 61, 49);
INSERT INTO public.games VALUES (56, 61, 611);
INSERT INTO public.games VALUES (57, 60, 786);
INSERT INTO public.games VALUES (58, 60, 95);
INSERT INTO public.games VALUES (59, 60, 75);
INSERT INTO public.games VALUES (60, 2, 15);
INSERT INTO public.games VALUES (61, 62, 794);
INSERT INTO public.games VALUES (62, 62, 308);
INSERT INTO public.games VALUES (63, 63, 858);
INSERT INTO public.games VALUES (64, 63, 119);
INSERT INTO public.games VALUES (65, 62, 40);
INSERT INTO public.games VALUES (66, 62, 607);
INSERT INTO public.games VALUES (67, 62, 227);
INSERT INTO public.games VALUES (68, 64, 329);
INSERT INTO public.games VALUES (69, 64, 429);
INSERT INTO public.games VALUES (70, 65, 441);
INSERT INTO public.games VALUES (71, 65, 236);
INSERT INTO public.games VALUES (72, 64, 81);
INSERT INTO public.games VALUES (73, 64, 495);
INSERT INTO public.games VALUES (74, 64, 399);
INSERT INTO public.games VALUES (75, 66, 548);
INSERT INTO public.games VALUES (76, 66, 488);
INSERT INTO public.games VALUES (77, 67, 540);
INSERT INTO public.games VALUES (78, 67, 398);
INSERT INTO public.games VALUES (79, 66, 546);
INSERT INTO public.games VALUES (80, 66, 942);
INSERT INTO public.games VALUES (81, 66, 280);
INSERT INTO public.games VALUES (82, 68, 713);
INSERT INTO public.games VALUES (83, 68, 625);
INSERT INTO public.games VALUES (84, 69, 576);
INSERT INTO public.games VALUES (85, 69, 197);
INSERT INTO public.games VALUES (86, 68, 185);
INSERT INTO public.games VALUES (87, 68, 388);
INSERT INTO public.games VALUES (88, 68, 203);
INSERT INTO public.games VALUES (89, 70, 71);
INSERT INTO public.games VALUES (90, 70, 575);
INSERT INTO public.games VALUES (91, 71, 106);
INSERT INTO public.games VALUES (92, 71, 23);
INSERT INTO public.games VALUES (93, 70, 632);
INSERT INTO public.games VALUES (94, 70, 840);
INSERT INTO public.games VALUES (95, 70, 950);
INSERT INTO public.games VALUES (96, 72, 1);
INSERT INTO public.games VALUES (97, 72, 1);
INSERT INTO public.games VALUES (98, 73, 1);
INSERT INTO public.games VALUES (99, 73, 1);
INSERT INTO public.games VALUES (100, 72, 1);
INSERT INTO public.games VALUES (101, 72, 1);
INSERT INTO public.games VALUES (102, 72, 1);
INSERT INTO public.games VALUES (103, 74, 1);
INSERT INTO public.games VALUES (104, 74, 1);
INSERT INTO public.games VALUES (105, 75, 1);
INSERT INTO public.games VALUES (106, 75, 1);
INSERT INTO public.games VALUES (107, 74, 1);
INSERT INTO public.games VALUES (108, 74, 1);
INSERT INTO public.games VALUES (109, 74, 1);
INSERT INTO public.games VALUES (110, 76, 484);
INSERT INTO public.games VALUES (111, 76, 799);
INSERT INTO public.games VALUES (112, 77, 273);
INSERT INTO public.games VALUES (113, 77, 819);
INSERT INTO public.games VALUES (114, 76, 38);
INSERT INTO public.games VALUES (115, 76, 146);
INSERT INTO public.games VALUES (116, 76, 246);
INSERT INTO public.games VALUES (117, 78, 949);
INSERT INTO public.games VALUES (118, 78, 941);
INSERT INTO public.games VALUES (119, 79, 268);
INSERT INTO public.games VALUES (120, 79, 243);
INSERT INTO public.games VALUES (121, 78, 40);
INSERT INTO public.games VALUES (122, 78, 218);
INSERT INTO public.games VALUES (123, 78, 919);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'aryandaddy');
INSERT INTO public.users VALUES (2, 'aryan');
INSERT INTO public.users VALUES (5, 'user_1692395121011');
INSERT INTO public.users VALUES (7, 'user_1692395121010');
INSERT INTO public.users VALUES (12, 'user_1692395204008');
INSERT INTO public.users VALUES (14, 'user_1692395204007');
INSERT INTO public.users VALUES (19, 'user_1692395239596');
INSERT INTO public.users VALUES (21, 'user_1692395239595');
INSERT INTO public.users VALUES (26, 'user_1692395280533');
INSERT INTO public.users VALUES (28, 'user_1692395280532');
INSERT INTO public.users VALUES (33, 'user_1692395329573');
INSERT INTO public.users VALUES (35, 'user_1692395329572');
INSERT INTO public.users VALUES (46, 'user_1692397440658');
INSERT INTO public.users VALUES (47, 'user_1692397440657');
INSERT INTO public.users VALUES (48, 'user_1692397476875');
INSERT INTO public.users VALUES (49, 'user_1692397476874');
INSERT INTO public.users VALUES (50, 'user_1692397531915');
INSERT INTO public.users VALUES (51, 'user_1692397531914');
INSERT INTO public.users VALUES (52, 'user_1692397709293');
INSERT INTO public.users VALUES (53, 'user_1692397709292');
INSERT INTO public.users VALUES (54, 'user_1692397747122');
INSERT INTO public.users VALUES (55, 'user_1692397747121');
INSERT INTO public.users VALUES (56, 'user_1692397795648');
INSERT INTO public.users VALUES (57, 'user_1692397795647');
INSERT INTO public.users VALUES (58, 'user_1692397828018');
INSERT INTO public.users VALUES (59, 'user_1692397828017');
INSERT INTO public.users VALUES (60, 'user_1692397893400');
INSERT INTO public.users VALUES (61, 'user_1692397893399');
INSERT INTO public.users VALUES (62, 'user_1692398027551');
INSERT INTO public.users VALUES (63, 'user_1692398027550');
INSERT INTO public.users VALUES (64, 'user_1692398056298');
INSERT INTO public.users VALUES (65, 'user_1692398056297');
INSERT INTO public.users VALUES (66, 'user_1692398093834');
INSERT INTO public.users VALUES (67, 'user_1692398093833');
INSERT INTO public.users VALUES (68, 'user_1692398105107');
INSERT INTO public.users VALUES (69, 'user_1692398105106');
INSERT INTO public.users VALUES (70, 'user_1692398193680');
INSERT INTO public.users VALUES (71, 'user_1692398193679');
INSERT INTO public.users VALUES (72, 'user_1692398237413');
INSERT INTO public.users VALUES (73, 'user_1692398237412');
INSERT INTO public.users VALUES (74, 'user_1692398264339');
INSERT INTO public.users VALUES (75, 'user_1692398264338');
INSERT INTO public.users VALUES (76, 'user_1692398287363');
INSERT INTO public.users VALUES (77, 'user_1692398287362');
INSERT INTO public.users VALUES (78, 'user_1692398519464');
INSERT INTO public.users VALUES (79, 'user_1692398519463');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 123, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 79, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

