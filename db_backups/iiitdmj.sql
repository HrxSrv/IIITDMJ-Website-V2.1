--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-07-17 03:45:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 717391)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 8320 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 717437)
-- Name: Carousels; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."Carousels" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    subtext character varying(255) NOT NULL,
    image_url character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Carousels" OWNER TO "superAdmin";

--
-- TOC entry 220 (class 1259 OID 717442)
-- Name: Carousels_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."Carousels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Carousels_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8321 (class 0 OID 0)
-- Dependencies: 220
-- Name: Carousels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."Carousels_id_seq" OWNED BY public."Carousels".id;


--
-- TOC entry 221 (class 1259 OID 717443)
-- Name: Downloads; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."Downloads" (
    id integer NOT NULL,
    downloads character varying(255) NOT NULL,
    items jsonb DEFAULT '[]'::jsonb NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Downloads" OWNER TO "superAdmin";

--
-- TOC entry 222 (class 1259 OID 717449)
-- Name: Downloads_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."Downloads_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Downloads_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8322 (class 0 OID 0)
-- Dependencies: 222
-- Name: Downloads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."Downloads_id_seq" OWNED BY public."Downloads".id;


--
-- TOC entry 223 (class 1259 OID 717450)
-- Name: FacultyPics; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."FacultyPics" (
    id integer NOT NULL,
    fac_id integer,
    profile_pic character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."FacultyPics" OWNER TO "superAdmin";

--
-- TOC entry 224 (class 1259 OID 717453)
-- Name: FacultyPics_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."FacultyPics_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."FacultyPics_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8323 (class 0 OID 0)
-- Dependencies: 224
-- Name: FacultyPics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."FacultyPics_id_seq" OWNED BY public."FacultyPics".id;


--
-- TOC entry 225 (class 1259 OID 717454)
-- Name: GymkhanaNotifications; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."GymkhanaNotifications" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    link character varying(255),
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."GymkhanaNotifications" OWNER TO "superAdmin";

--
-- TOC entry 226 (class 1259 OID 717460)
-- Name: GymkhanaNotifications_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."GymkhanaNotifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."GymkhanaNotifications_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8324 (class 0 OID 0)
-- Dependencies: 226
-- Name: GymkhanaNotifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."GymkhanaNotifications_id_seq" OWNED BY public."GymkhanaNotifications".id;


--
-- TOC entry 227 (class 1259 OID 717461)
-- Name: Marquees; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."Marquees" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL
);


ALTER TABLE public."Marquees" OWNER TO "superAdmin";

--
-- TOC entry 228 (class 1259 OID 717467)
-- Name: Marquees_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."Marquees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Marquees_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8325 (class 0 OID 0)
-- Dependencies: 228
-- Name: Marquees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."Marquees_id_seq" OWNED BY public."Marquees".id;


--
-- TOC entry 229 (class 1259 OID 717468)
-- Name: News; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."News" (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    content text,
    image_url character varying(255),
    link character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL
);


ALTER TABLE public."News" OWNER TO "superAdmin";

--
-- TOC entry 230 (class 1259 OID 717474)
-- Name: News_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."News_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."News_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8326 (class 0 OID 0)
-- Dependencies: 230
-- Name: News_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."News_id_seq" OWNED BY public."News".id;


--
-- TOC entry 231 (class 1259 OID 717475)
-- Name: Notices; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."Notices" (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    content text,
    link character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL
);


ALTER TABLE public."Notices" OWNER TO "superAdmin";

--
-- TOC entry 232 (class 1259 OID 717481)
-- Name: Notices_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."Notices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Notices_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8327 (class 0 OID 0)
-- Dependencies: 232
-- Name: Notices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."Notices_id_seq" OWNED BY public."Notices".id;


--
-- TOC entry 233 (class 1259 OID 717482)
-- Name: RedAnnouncements; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public."RedAnnouncements" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL
);


ALTER TABLE public."RedAnnouncements" OWNER TO "superAdmin";

--
-- TOC entry 234 (class 1259 OID 717488)
-- Name: RedAnnouncements_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public."RedAnnouncements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RedAnnouncements_id_seq" OWNER TO "superAdmin";

--
-- TOC entry 8328 (class 0 OID 0)
-- Dependencies: 234
-- Name: RedAnnouncements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public."RedAnnouncements_id_seq" OWNED BY public."RedAnnouncements".id;


--
-- TOC entry 235 (class 1259 OID 717489)
-- Name: academic_calander; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_calander (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.academic_calander OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 717494)
-- Name: academic_calander_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academic_calander_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.academic_calander_id_seq OWNER TO postgres;

--
-- TOC entry 8329 (class 0 OID 0)
-- Dependencies: 236
-- Name: academic_calander_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academic_calander_id_seq OWNED BY public.academic_calander.id;


--
-- TOC entry 237 (class 1259 OID 717495)
-- Name: achievements; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public.achievements (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    content text,
    image_url character varying(255),
    link character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL
);


ALTER TABLE public.achievements OWNER TO "superAdmin";

--
-- TOC entry 238 (class 1259 OID 717501)
-- Name: achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public.achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.achievements_id_seq OWNER TO "superAdmin";

--
-- TOC entry 8330 (class 0 OID 0)
-- Dependencies: 238
-- Name: achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;


--
-- TOC entry 239 (class 1259 OID 717502)
-- Name: annual_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.annual_account (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.annual_account OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 717507)
-- Name: annual_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.annual_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.annual_account_id_seq OWNER TO postgres;

--
-- TOC entry 8331 (class 0 OID 0)
-- Dependencies: 240
-- Name: annual_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.annual_account_id_seq OWNED BY public.annual_account.id;


--
-- TOC entry 241 (class 1259 OID 717508)
-- Name: annual_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.annual_report (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.annual_report OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 717513)
-- Name: annual_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.annual_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.annual_report_id_seq OWNER TO postgres;

--
-- TOC entry 8332 (class 0 OID 0)
-- Dependencies: 242
-- Name: annual_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.annual_report_id_seq OWNED BY public.annual_report.id;


--
-- TOC entry 243 (class 1259 OID 717514)
-- Name: bog_agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bog_agenda (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.bog_agenda OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 717519)
-- Name: bog_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bog_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bog_agenda_id_seq OWNER TO postgres;

--
-- TOC entry 8333 (class 0 OID 0)
-- Dependencies: 244
-- Name: bog_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bog_agenda_id_seq OWNED BY public.bog_agenda.id;


--
-- TOC entry 245 (class 1259 OID 717520)
-- Name: bog_minutes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bog_minutes (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.bog_minutes OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 717525)
-- Name: bog_minutes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bog_minutes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bog_minutes_id_seq OWNER TO postgres;

--
-- TOC entry 8334 (class 0 OID 0)
-- Dependencies: 246
-- Name: bog_minutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bog_minutes_id_seq OWNED BY public.bog_minutes.id;


--
-- TOC entry 247 (class 1259 OID 717526)
-- Name: bwc_agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bwc_agenda (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.bwc_agenda OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 717531)
-- Name: bwc_minutes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bwc_minutes (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.bwc_minutes OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 717536)
-- Name: bwg_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bwg_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bwg_agenda_id_seq OWNER TO postgres;

--
-- TOC entry 8335 (class 0 OID 0)
-- Dependencies: 249
-- Name: bwg_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bwg_agenda_id_seq OWNED BY public.bwc_agenda.id;


--
-- TOC entry 250 (class 1259 OID 717537)
-- Name: bwg_minutes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bwg_minutes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bwg_minutes_id_seq OWNER TO postgres;

--
-- TOC entry 8336 (class 0 OID 0)
-- Dependencies: 250
-- Name: bwg_minutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bwg_minutes_id_seq OWNED BY public.bwc_minutes.id;


--
-- TOC entry 251 (class 1259 OID 717538)
-- Name: calendars; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public.calendars (
    id uuid NOT NULL,
    calendar_no character varying(100) NOT NULL,
    title text,
    closing_date timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL,
    attachments jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.calendars OWNER TO "superAdmin";

--
-- TOC entry 286 (class 1259 OID 786964)
-- Name: convocations; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public.convocations (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    data text,
    location character varying(255) NOT NULL,
    graduating_students json DEFAULT '[]'::json,
    medal_awardees json DEFAULT '[]'::json,
    guidelines json DEFAULT '[]'::json,
    description text,
    read_more text,
    media json DEFAULT '[]'::json,
    background_image character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.convocations OWNER TO "superAdmin";

--
-- TOC entry 285 (class 1259 OID 786963)
-- Name: convocations_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public.convocations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.convocations_id_seq OWNER TO "superAdmin";

--
-- TOC entry 8337 (class 0 OID 0)
-- Dependencies: 285
-- Name: convocations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public.convocations_id_seq OWNED BY public.convocations.id;


--
-- TOC entry 252 (class 1259 OID 717545)
-- Name: counselling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.counselling (
    id integer NOT NULL,
    role character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    roll_no character varying(255) NOT NULL,
    batch character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    student_type character varying
);


ALTER TABLE public.counselling OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 717550)
-- Name: counselling_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.counselling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.counselling_id_seq OWNER TO postgres;

--
-- TOC entry 8338 (class 0 OID 0)
-- Dependencies: 253
-- Name: counselling_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.counselling_id_seq OWNED BY public.counselling.id;


--
-- TOC entry 254 (class 1259 OID 717551)
-- Name: doctors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctors (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255) NOT NULL
);


ALTER TABLE public.doctors OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 717556)
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_id_seq OWNER TO postgres;

--
-- TOC entry 8339 (class 0 OID 0)
-- Dependencies: 255
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- TOC entry 256 (class 1259 OID 717557)
-- Name: eventImages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."eventImages" (
    id integer NOT NULL,
    event_id integer NOT NULL,
    image_path character varying(255) NOT NULL,
    "createdAt" date,
    "updatedAt" date
);


ALTER TABLE public."eventImages" OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 717560)
-- Name: event_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.event_images_id_seq OWNER TO postgres;

--
-- TOC entry 8340 (class 0 OID 0)
-- Dependencies: 257
-- Name: event_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_images_id_seq OWNED BY public."eventImages".id;


--
-- TOC entry 258 (class 1259 OID 717561)
-- Name: events; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    date date NOT NULL,
    location character varying(255) NOT NULL,
    external_link character varying(255),
    cover_image character varying(255),
    "createdAt" date,
    "updatedAt" date,
    description text
);


ALTER TABLE public.events OWNER TO "superAdmin";

--
-- TOC entry 259 (class 1259 OID 717566)
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: superAdmin
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_id_seq OWNER TO "superAdmin";

--
-- TOC entry 8341 (class 0 OID 0)
-- Dependencies: 259
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superAdmin
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- TOC entry 260 (class 1259 OID 717567)
-- Name: external_circulars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.external_circulars (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.external_circulars OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 717572)
-- Name: external_circulars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.external_circulars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.external_circulars_id_seq OWNER TO postgres;

--
-- TOC entry 8342 (class 0 OID 0)
-- Dependencies: 261
-- Name: external_circulars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.external_circulars_id_seq OWNED BY public.external_circulars.id;


--
-- TOC entry 262 (class 1259 OID 717573)
-- Name: faculty_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty_positions (
    id integer NOT NULL,
    position_type character varying(255) NOT NULL,
    role character varying(255),
    imp integer DEFAULT 1,
    email character varying(254)
);


ALTER TABLE public.faculty_positions OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 717579)
-- Name: fc_agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fc_agenda (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.fc_agenda OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 717584)
-- Name: fc_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fc_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fc_agenda_id_seq OWNER TO postgres;

--
-- TOC entry 8343 (class 0 OID 0)
-- Dependencies: 264
-- Name: fc_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fc_agenda_id_seq OWNED BY public.fc_agenda.id;


--
-- TOC entry 265 (class 1259 OID 717585)
-- Name: fc_minutes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fc_minutes (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.fc_minutes OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 717590)
-- Name: fc_minutes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fc_minutes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fc_minutes_id_seq OWNER TO postgres;

--
-- TOC entry 8344 (class 0 OID 0)
-- Dependencies: 266
-- Name: fc_minutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fc_minutes_id_seq OWNED BY public.fc_minutes.id;


--
-- TOC entry 267 (class 1259 OID 717591)
-- Name: grievance_redressal_cell; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grievance_redressal_cell (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.grievance_redressal_cell OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 717596)
-- Name: grievance_redressal_cell_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grievance_redressal_cell_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grievance_redressal_cell_id_seq OWNER TO postgres;

--
-- TOC entry 8345 (class 0 OID 0)
-- Dependencies: 268
-- Name: grievance_redressal_cell_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grievance_redressal_cell_id_seq OWNED BY public.grievance_redressal_cell.id;


--
-- TOC entry 269 (class 1259 OID 717597)
-- Name: hostels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hostels (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    href character varying(255)
);


ALTER TABLE public.hostels OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 717602)
-- Name: hostels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hostels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hostels_id_seq OWNER TO postgres;

--
-- TOC entry 8346 (class 0 OID 0)
-- Dependencies: 270
-- Name: hostels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hostels_id_seq OWNED BY public.hostels.id;


--
-- TOC entry 271 (class 1259 OID 717603)
-- Name: internal_circulars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internal_circulars (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.internal_circulars OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 717608)
-- Name: internal_circulars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internal_circulars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.internal_circulars_id_seq OWNER TO postgres;

--
-- TOC entry 8347 (class 0 OID 0)
-- Dependencies: 272
-- Name: internal_circulars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internal_circulars_id_seq OWNED BY public.internal_circulars.id;


--
-- TOC entry 284 (class 1259 OID 720647)
-- Name: jobs; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public.jobs (
    id uuid NOT NULL,
    "advertTitle" text NOT NULL,
    "jobType" character varying(50) NOT NULL,
    "applicationOpeningDate" timestamp with time zone,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL,
    "additionalInformation" jsonb DEFAULT '[]'::jsonb,
    positions jsonb DEFAULT '[]'::jsonb,
    "shortlistedCandidates" jsonb DEFAULT '[]'::jsonb,
    "importantLinks" jsonb DEFAULT '[]'::jsonb,
    misc text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "readMore" text
);


ALTER TABLE public.jobs OWNER TO "superAdmin";

--
-- TOC entry 8348 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN jobs."additionalInformation"; Type: COMMENT; Schema: public; Owner: superAdmin
--

COMMENT ON COLUMN public.jobs."additionalInformation" IS 'Array of objects with title and link properties';


--
-- TOC entry 8349 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN jobs.positions; Type: COMMENT; Schema: public; Owner: superAdmin
--

COMMENT ON COLUMN public.jobs.positions IS 'Array of objects with Title, Department, Level, Type, AdvertNo, and Advert Date';


--
-- TOC entry 8350 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN jobs."shortlistedCandidates"; Type: COMMENT; Schema: public; Owner: superAdmin
--

COMMENT ON COLUMN public.jobs."shortlistedCandidates" IS 'Array of objects with Title and an array of title-link objects';


--
-- TOC entry 8351 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN jobs."importantLinks"; Type: COMMENT; Schema: public; Owner: superAdmin
--

COMMENT ON COLUMN public.jobs."importantLinks" IS 'Array of objects with title and link properties';


--
-- TOC entry 273 (class 1259 OID 717609)
-- Name: non_faculty_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.non_faculty_info (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    address text,
    phone_no bigint,
    profile_picture character varying(255),
    user_type character varying DEFAULT false
);


ALTER TABLE public.non_faculty_info OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 717615)
-- Name: non_faculty_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.non_faculty_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.non_faculty_info_id_seq OWNER TO postgres;

--
-- TOC entry 8352 (class 0 OID 0)
-- Dependencies: 274
-- Name: non_faculty_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.non_faculty_info_id_seq OWNED BY public.non_faculty_info.id;


--
-- TOC entry 275 (class 1259 OID 717616)
-- Name: non_faculty_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.non_faculty_positions (
    id integer NOT NULL,
    position_type character varying(255) NOT NULL,
    role character varying(255),
    imp integer DEFAULT 1,
    email character varying(254)
);


ALTER TABLE public.non_faculty_positions OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 717622)
-- Name: press_releases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.press_releases (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.press_releases OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 717627)
-- Name: press_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.press_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.press_releases_id_seq OWNER TO postgres;

--
-- TOC entry 8353 (class 0 OID 0)
-- Dependencies: 277
-- Name: press_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.press_releases_id_seq OWNED BY public.press_releases.id;


--
-- TOC entry 278 (class 1259 OID 717628)
-- Name: senate_agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senate_agenda (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.senate_agenda OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 717633)
-- Name: senate_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.senate_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.senate_agenda_id_seq OWNER TO postgres;

--
-- TOC entry 8354 (class 0 OID 0)
-- Dependencies: 279
-- Name: senate_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.senate_agenda_id_seq OWNED BY public.senate_agenda.id;


--
-- TOC entry 280 (class 1259 OID 717634)
-- Name: senate_minutes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senate_minutes (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);


ALTER TABLE public.senate_minutes OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 717639)
-- Name: senate_minutes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.senate_minutes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.senate_minutes_id_seq OWNER TO postgres;

--
-- TOC entry 8355 (class 0 OID 0)
-- Dependencies: 281
-- Name: senate_minutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.senate_minutes_id_seq OWNED BY public.senate_minutes.id;


--
-- TOC entry 282 (class 1259 OID 717640)
-- Name: shops; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shops (
    id integer NOT NULL,
    name character varying(255),
    owner character varying(255),
    contact character varying(255),
    location text
);


ALTER TABLE public.shops OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 717645)
-- Name: shops_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shops_id_seq OWNER TO postgres;

--
-- TOC entry 8356 (class 0 OID 0)
-- Dependencies: 283
-- Name: shops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shops_id_seq OWNED BY public.shops.id;


--
-- TOC entry 287 (class 1259 OID 863324)
-- Name: tenders; Type: TABLE; Schema: public; Owner: superAdmin
--

CREATE TABLE public.tenders (
    id uuid NOT NULL,
    tender_no character varying(100) NOT NULL,
    title text,
    description text,
    advertisement_date timestamp with time zone NOT NULL,
    closing_date timestamp with time zone NOT NULL,
    category character varying(50) NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL,
    type character varying(50) NOT NULL,
    attachments jsonb DEFAULT '[]'::jsonb,
    department character varying(100) NOT NULL,
    estimated_value numeric(15,2),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "importantUpdate" text
);


ALTER TABLE public.tenders OWNER TO "superAdmin";

--
-- TOC entry 4916 (class 2604 OID 717653)
-- Name: Carousels id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Carousels" ALTER COLUMN id SET DEFAULT nextval('public."Carousels_id_seq"'::regclass);


--
-- TOC entry 4917 (class 2604 OID 717654)
-- Name: Downloads id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Downloads" ALTER COLUMN id SET DEFAULT nextval('public."Downloads_id_seq"'::regclass);


--
-- TOC entry 4919 (class 2604 OID 717655)
-- Name: FacultyPics id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."FacultyPics" ALTER COLUMN id SET DEFAULT nextval('public."FacultyPics_id_seq"'::regclass);


--
-- TOC entry 4920 (class 2604 OID 717656)
-- Name: GymkhanaNotifications id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."GymkhanaNotifications" ALTER COLUMN id SET DEFAULT nextval('public."GymkhanaNotifications_id_seq"'::regclass);


--
-- TOC entry 4922 (class 2604 OID 717657)
-- Name: Marquees id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Marquees" ALTER COLUMN id SET DEFAULT nextval('public."Marquees_id_seq"'::regclass);


--
-- TOC entry 4924 (class 2604 OID 717658)
-- Name: News id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."News" ALTER COLUMN id SET DEFAULT nextval('public."News_id_seq"'::regclass);


--
-- TOC entry 4926 (class 2604 OID 717659)
-- Name: Notices id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Notices" ALTER COLUMN id SET DEFAULT nextval('public."Notices_id_seq"'::regclass);


--
-- TOC entry 4928 (class 2604 OID 717660)
-- Name: RedAnnouncements id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."RedAnnouncements" ALTER COLUMN id SET DEFAULT nextval('public."RedAnnouncements_id_seq"'::regclass);


--
-- TOC entry 4930 (class 2604 OID 717661)
-- Name: academic_calander id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_calander ALTER COLUMN id SET DEFAULT nextval('public.academic_calander_id_seq'::regclass);


--
-- TOC entry 4931 (class 2604 OID 717662)
-- Name: achievements id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);


--
-- TOC entry 4933 (class 2604 OID 717663)
-- Name: annual_account id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annual_account ALTER COLUMN id SET DEFAULT nextval('public.annual_account_id_seq'::regclass);


--
-- TOC entry 4934 (class 2604 OID 717664)
-- Name: annual_report id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annual_report ALTER COLUMN id SET DEFAULT nextval('public.annual_report_id_seq'::regclass);


--
-- TOC entry 4935 (class 2604 OID 717665)
-- Name: bog_agenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bog_agenda ALTER COLUMN id SET DEFAULT nextval('public.bog_agenda_id_seq'::regclass);


--
-- TOC entry 4936 (class 2604 OID 717666)
-- Name: bog_minutes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bog_minutes ALTER COLUMN id SET DEFAULT nextval('public.bog_minutes_id_seq'::regclass);


--
-- TOC entry 4937 (class 2604 OID 717667)
-- Name: bwc_agenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bwc_agenda ALTER COLUMN id SET DEFAULT nextval('public.bwg_agenda_id_seq'::regclass);


--
-- TOC entry 4938 (class 2604 OID 717668)
-- Name: bwc_minutes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bwc_minutes ALTER COLUMN id SET DEFAULT nextval('public.bwg_minutes_id_seq'::regclass);


--
-- TOC entry 4964 (class 2604 OID 786967)
-- Name: convocations id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.convocations ALTER COLUMN id SET DEFAULT nextval('public.convocations_id_seq'::regclass);


--
-- TOC entry 4941 (class 2604 OID 717669)
-- Name: counselling id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counselling ALTER COLUMN id SET DEFAULT nextval('public.counselling_id_seq'::regclass);


--
-- TOC entry 4942 (class 2604 OID 717670)
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- TOC entry 4943 (class 2604 OID 717671)
-- Name: eventImages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."eventImages" ALTER COLUMN id SET DEFAULT nextval('public.event_images_id_seq'::regclass);


--
-- TOC entry 4944 (class 2604 OID 717672)
-- Name: events id; Type: DEFAULT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- TOC entry 4945 (class 2604 OID 717673)
-- Name: external_circulars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_circulars ALTER COLUMN id SET DEFAULT nextval('public.external_circulars_id_seq'::regclass);


--
-- TOC entry 4947 (class 2604 OID 717674)
-- Name: fc_agenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fc_agenda ALTER COLUMN id SET DEFAULT nextval('public.fc_agenda_id_seq'::regclass);


--
-- TOC entry 4948 (class 2604 OID 717675)
-- Name: fc_minutes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fc_minutes ALTER COLUMN id SET DEFAULT nextval('public.fc_minutes_id_seq'::regclass);


--
-- TOC entry 4949 (class 2604 OID 717676)
-- Name: grievance_redressal_cell id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grievance_redressal_cell ALTER COLUMN id SET DEFAULT nextval('public.grievance_redressal_cell_id_seq'::regclass);


--
-- TOC entry 4950 (class 2604 OID 717677)
-- Name: hostels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hostels ALTER COLUMN id SET DEFAULT nextval('public.hostels_id_seq'::regclass);


--
-- TOC entry 4951 (class 2604 OID 717678)
-- Name: internal_circulars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internal_circulars ALTER COLUMN id SET DEFAULT nextval('public.internal_circulars_id_seq'::regclass);


--
-- TOC entry 4952 (class 2604 OID 717679)
-- Name: non_faculty_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_faculty_info ALTER COLUMN id SET DEFAULT nextval('public.non_faculty_info_id_seq'::regclass);


--
-- TOC entry 4955 (class 2604 OID 717680)
-- Name: press_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.press_releases ALTER COLUMN id SET DEFAULT nextval('public.press_releases_id_seq'::regclass);


--
-- TOC entry 4956 (class 2604 OID 717681)
-- Name: senate_agenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senate_agenda ALTER COLUMN id SET DEFAULT nextval('public.senate_agenda_id_seq'::regclass);


--
-- TOC entry 4957 (class 2604 OID 717682)
-- Name: senate_minutes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senate_minutes ALTER COLUMN id SET DEFAULT nextval('public.senate_minutes_id_seq'::regclass);


--
-- TOC entry 4958 (class 2604 OID 717683)
-- Name: shops id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shops_id_seq'::regclass);


--
-- TOC entry 8246 (class 0 OID 717437)
-- Dependencies: 219
-- Data for Name: Carousels; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."Carousels" (id, title, subtext, image_url, link, "createdAt", "updatedAt") FROM stdin;
23	LHTC	Lecture Hall and Tutorial Complex	https://www.iiitdmj.ac.in/img/slides/LHTC1.jpg	https://www.iiitdmj.ac.in/college_tour.html	2025-01-30 11:45:16.262+05:30	2025-01-30 11:46:30.829+05:30
24	TARANG	The Annual Cultural Festival of PDPM IIITDM Jabalpur 	https://www.iiitdmj.ac.in/img/tour/img-3.jpg	https://www.iiitdmj.ac.in/college_tour.html	2025-01-30 11:52:31.142+05:30	2025-01-30 11:52:31.142+05:30
25	JENESYS	International Relations Collaboration with JAPAN	https://www.iiitdmj.ac.in/img/gallery/large/pic_10.jpg	https://jaif.asean.org/jaif-component/jenesys-programme/	2025-01-30 12:01:34.216+05:30	2025-01-30 12:26:59.354+05:30
20	Jagrati	An Initiative by IIITians.	http://13.201.19.145:5000/public/WebsiteImages/Home/Jagriti.jpg	https://www.iiitdmj.ac.in/jagriti_tour.html	2024-12-03 23:16:43.407+05:30	2024-12-23 14:35:00.996+05:30
22	DEW	Design And Engineering Workshop In Collaboration With Japan	http://13.201.19.145:5000/public/WebsiteImages/Home/Des1.jpg	https://www.iiitdmj.ac.in/dew.iiitdmj.ac.in/Home.html	2024-12-10 00:33:47.684+05:30	2025-01-30 11:41:50.543+05:30
\.


--
-- TOC entry 8248 (class 0 OID 717443)
-- Dependencies: 221
-- Data for Name: Downloads; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."Downloads" (id, downloads, items, "createdAt", "updatedAt") FROM stdin;
29	Login Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/loginform.doc", "title": "Login Form For Student"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/form%20for%20new%20login%20id_employee.pdf", "title": "Login Form for Employee"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
30	Leave and Attendance Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/Leave%20Application%20Form%20IIITDM%20Jabalpur.pdf", "title": "Leave Application Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Joining%20report%20IIITDM.pdf", "title": "Joining from Leave Form (English)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Joining%20report%20IIITDM_hindi.pdf", "title": "Joining from Leave Form (Hindi)"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
31	Travel and Transportation Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/LTC%20form.pdf", "title": "LTC Form (English)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/LTC%20form_hindi.pdf", "title": "LTC Form (Hindi)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/TA%20form.pdf", "title": "TA Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Railway%20Reservation%20Form.pdf", "title": "Railway Reservation Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Vehicle%20Requisition%20Slip.pdf", "title": "Vehicle Requisition Slip"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/AIR%20TICKET%20BOOKING%20FROM%20BALMER%20LAWRIE%20%20FOR%20LTC.pdf", "title": "Air ticket booking requisition form for LTC"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/AIR%20TICKET%20BOOKING%20FROM%20BALMER%20LAWRIE%20%20FOR%20OFFICIAL.pdf", "title": "Air ticket booking requisition form for Official booking"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Auto%20Fare%20Claim%20Form.pdf", "title": "Auto fare claim form"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
32	Medical Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/medical%20claim%20form.pdf", "title": "Medical Claim Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Medcine%20Requistion%20Form.pdf", "title": "Medicine Requisition Form"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
33	Finance and Reimbursement Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/CPDA%20Adjustment_Reimbursement%20Form.pdf", "title": "CPDA Adjustment_Reimbursement Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/CPDA%20Advance%20Form%20new%20%20.pdf", "title": "CPDA Advance Form in English"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/CPDA%20Advance%20Form%20New%202021Hindi.pdf", "title": "CPDA Advance Form in Hindi"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Advance_Form_hindi.pdf", "title": "Advance Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Festival%20Advance%20form.doc", "title": "Festival Advance Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/CA%20Form.pdf", "title": "Conveyance Allowance(CA) Form"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
34	Administrative Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/Staff%20I-card%20form.pdf", "title": "Staff I-Card form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/iwd.jpg", "title": "IWD form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Indent%20Form.pdf", "title": "Indent Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Indent%20form%20Hindi.pdf", "title": "Indent Form Hindi"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Declaration.pdf", "title": "Family Declaration Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/CERTIFICATE%20OF%20TRANSFER%20OF%20CHARGE.pdf", "title": "Certificate of transfer of Charge (English)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/CERTIFICATE%20OF%20TRANSFER%20OF%20CHARGE_hindi.pdf", "title": "Certificate of transfer of Charge (Hindi)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Rajbhasha%20Quarterly%20Return.pdf", "title": "Rajbhasha Quarterly Return"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
35	Facility Management Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/APPLICATION%20QUARTER.pdf", "title": "Quarter Allotment Application (English)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/APPLICATION%20QUARTER_hindi.pdf", "title": "Quarter Allotment Application (Hindi)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Cleanliness%20report%20format.pdf", "title": "Cleanliness report format"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/VH-Requisition-Form-New.pdf", "title": "VH Requisition Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/VH%20Food%20Requisition%20Form%20.doc", "title": "VH Food Requisition Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Booking-Requisition%20Form%20for%20the%20Virtual%20class%20room.pdf", "title": "Booking / Requisition Form for the Virtual class room"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
36	Purchase and Inventory Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/Proprietary%20Certificate.pdf", "title": "Proprietary Certificate Form (English)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Proprietary%20Certificate_hindi.pdf", "title": "Proprietary Certificate Form (Hindi)"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Requisition-Slip%20for%20Stationery%20items.pdf", "title": "Requisition-Slip for Stationery items"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
37	Library Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/Book%20Indent%20Form.pdf", "title": "Book Indent Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Bulk%20book%20issue%20Form.pdf", "title": "Bulk book issue Form"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Journal%20Indent%20Form.pdf", "title": "Journal Indent Form"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
38	Workshop Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/New%20Job%20Order%20Form%20for%20Central%20Workshop.docx", "title": "Central Workshop Job Order Form"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
39	Communication and Advertisement Forms	[{"url": "https://www.iiitdmj.ac.in/downloads/forms/reimbursement%20%20telephone%20format.pdf", "title": "Form for reimbursement of Telephone/Mobile/Broadband/Data Card charges"}, {"url": "https://www.iiitdmj.ac.in/downloads/forms/Requisition%20for%20publishing%20Advt.pdf", "title": "Requisition form for publishing Advt"}]	2024-12-27 01:15:01.02517+05:30	2024-12-27 01:15:01.02517+05:30
40	TEst	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-23-24.php\\",\\"title\\":\\"PhD Admissions started\\"},{\\"url\\":\\"https://www.iiitdmj.ac.in/saaz.iiitdmj.ac.in/\\",\\"title\\":\\"Tender Created For Testing Purpose\\"}]"	2024-12-27 01:16:08.872+05:30	2024-12-27 01:16:19.183+05:30
41	TEST111	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-23-24.php\\",\\"title\\":\\"PhD Admissions started\\"}]"	2025-01-10 22:47:53.408+05:30	2025-01-10 22:47:53.408+05:30
42	Test	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-23-24.php\\",\\"title\\":\\"hsh\\"},{\\"url\\":\\"http://13.201.19.145:5000/\\",\\"title\\":\\"bdh\\"}]"	2025-04-15 12:48:11.574+05:30	2025-04-15 12:48:11.574+05:30
\.


--
-- TOC entry 8250 (class 0 OID 717450)
-- Dependencies: 223
-- Data for Name: FacultyPics; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."FacultyPics" (id, fac_id, profile_pic, "createdAt", "updatedAt") FROM stdin;
7	5318	http://faculty.iiitdmj.ac.in/proPic/1486987342.jpg	2025-02-07 00:51:16.583+05:30	2025-02-07 00:51:16.583+05:30
9	5332	http://faculty.iiitdmj.ac.in/proPic/1486987196.jpg	2025-02-07 00:51:57.361+05:30	2025-02-07 00:51:57.361+05:30
10	5343	http://faculty.iiitdmj.ac.in/proPic/1489052043.jpg	2025-02-07 00:52:22.513+05:30	2025-02-07 00:52:22.513+05:30
11	5357	http://faculty.iiitdmj.ac.in/proPic/1487051324.jpg	2025-02-07 00:52:41.966+05:30	2025-02-07 00:52:41.966+05:30
13	5374	http://faculty.iiitdmj.ac.in/proPic/Durgesh.jpg	2025-02-07 00:53:23.347+05:30	2025-02-07 00:53:23.347+05:30
14	5384	http://faculty.iiitdmj.ac.in/proPic/NeelamPic.jpg	2025-02-07 00:53:53.582+05:30	2025-02-07 00:53:53.582+05:30
15	5388	http://faculty.iiitdmj.ac.in/proPic/Avinash%20Pandey.jpg	2025-02-07 00:54:04.914+05:30	2025-02-07 00:54:04.914+05:30
16	6734	http://cse.iiitdmj.ac.in/assets/img/faculty/Ashish%20Singh%20Parihar.jpg	2025-04-14 14:43:24.364+05:30	2025-04-14 14:43:24.364+05:30
17	6725	http://cse.iiitdmj.ac.in/assets/img/faculty/Akshay%20Pandey.jpg	2025-04-14 14:47:38.463+05:30	2025-04-14 14:47:38.463+05:30
18	5355	http://cse.iiitdmj.ac.in/assets/img/faculty/mkbajpai.jpg	2025-04-14 14:49:18.238+05:30	2025-04-14 14:49:18.238+05:30
19	5364	http://cse.iiitdmj.ac.in/assets/img/faculty/munesh.jpg	2025-04-14 14:50:06.382+05:30	2025-04-14 14:50:06.382+05:30
20	6735	http://cse.iiitdmj.ac.in/assets/img/faculty/Nitish%20pic.jpg	2025-04-14 15:02:45.057+05:30	2025-04-14 15:02:45.057+05:30
21	6722	http://cse.iiitdmj.ac.in/assets/img/faculty/Ranjeet%20K.%20Ranjan.jpg	2025-04-14 15:03:36.623+05:30	2025-04-14 15:03:36.623+05:30
22	6723	http://faculty.iiitdmj.ac.in/proPic/ARR.jpg	2025-04-14 15:04:47.294+05:30	2025-04-14 15:04:47.294+05:30
23	5340	http://faculty.iiitdmj.ac.in/proPic/1487049957.jpg	2025-04-14 15:05:50.947+05:30	2025-04-14 15:05:50.947+05:30
24	5381	http://faculty.iiitdmj.ac.in/proPic/1595169249.jpg	2025-04-14 15:06:21.666+05:30	2025-04-14 15:06:21.666+05:30
25	5377	http://faculty.iiitdmj.ac.in/proPic/amrita.jpg	2025-04-14 15:06:52.946+05:30	2025-04-14 15:06:52.946+05:30
26	5333	http://faculty.iiitdmj.ac.in/proPic/1504001250.jpg	2025-04-14 15:07:21.551+05:30	2025-04-14 15:07:21.551+05:30
27	5326	http://faculty.iiitdmj.ac.in/proPic/1502090712.jpg	2025-04-14 15:07:53.905+05:30	2025-04-14 15:07:53.905+05:30
28	5339	http://faculty.iiitdmj.ac.in/proPic/bhupen.jpeg	2025-04-14 15:08:32.079+05:30	2025-04-14 15:08:32.079+05:30
29	5359	http://faculty.iiitdmj.ac.in/proPic/1487051489.jpg	2025-04-14 15:09:02.244+05:30	2025-04-14 15:09:02.244+05:30
30	5321	http://faculty.iiitdmj.ac.in/proPic/1486987580.jpg	2025-04-14 15:09:38.724+05:30	2025-04-14 15:09:38.724+05:30
31	6731	http://faculty.iiitdmj.ac.in/proPic/Dr.%20Dip%20Prakash%20Samajdar.jpg	2025-04-14 15:10:05.301+05:30	2025-04-14 15:10:05.301+05:30
32	7595	http://faculty.iiitdmj.ac.in/proPic/Gowthaman%20S.jpg	2025-04-14 15:10:36.939+05:30	2025-04-14 15:10:36.939+05:30
33	5341	http://faculty.iiitdmj.ac.in/proPic/1487050004.jpg	2025-04-14 15:11:07.882+05:30	2025-04-14 15:11:07.882+05:30
34	5362	http://faculty.iiitdmj.ac.in/proPic/1713162593.jpg	2025-04-14 15:11:38.453+05:30	2025-04-14 15:11:38.453+05:30
35	5366	http://faculty.iiitdmj.ac.in/proPic/jamfarheen.jpg	2025-04-14 15:12:15.081+05:30	2025-04-14 15:12:15.081+05:30
36	7597	http://faculty.iiitdmj.ac.in/proPic/JK.jpg	2025-04-14 15:12:44.657+05:30	2025-04-14 15:12:44.657+05:30
37	5385	http://faculty.iiitdmj.ac.in/proPic/Koushik%20Dutta.jpg	2025-04-14 15:13:27.087+05:30	2025-04-14 15:13:27.087+05:30
38	5342	http://faculty.iiitdmj.ac.in/proPic/1487050047.jpg	2025-04-14 15:13:53.705+05:30	2025-04-14 15:13:53.705+05:30
39	5335	http://faculty.iiitdmj.ac.in/proPic/MZ%20Ansari%20IIITDMJ.jpg	2025-04-14 15:14:17.276+05:30	2025-04-14 15:14:17.276+05:30
40	5344	http://faculty.iiitdmj.ac.in/proPic/1487050151.jpg	2025-04-14 15:14:39.497+05:30	2025-04-14 15:14:39.497+05:30
41	6733	http://faculty.iiitdmj.ac.in/proPic/MKT.jpg	2025-04-14 15:15:00.758+05:30	2025-04-14 15:15:00.758+05:30
42	5356	http://faculty.iiitdmj.ac.in/proPic/1514894509.jpg	2025-04-14 15:15:25.248+05:30	2025-04-14 15:15:25.248+05:30
43	5380	http://faculty.iiitdmj.ac.in/proPic/manu.jpg	2025-04-14 15:15:51.094+05:30	2025-04-14 15:15:51.094+05:30
44	5351	http://faculty.iiitdmj.ac.in/proPic/1534848210.jpg	2025-04-14 15:16:12.521+05:30	2025-04-14 15:16:12.521+05:30
45	5338	http://faculty.iiitdmj.ac.in/proPic/1487049858.jpg	2025-04-14 15:16:36.362+05:30	2025-04-14 15:16:36.362+05:30
46	5353	http://faculty.iiitdmj.ac.in/proPic/1550592616.jpg	2025-04-14 15:17:03.34+05:30	2025-04-14 15:17:03.34+05:30
47	5352	http://faculty.iiitdmj.ac.in/proPic/1502256871.jpg	2025-04-14 15:17:27.898+05:30	2025-04-14 15:17:27.898+05:30
48	5345	http://faculty.iiitdmj.ac.in/proPic/1487050233.jpg	2025-04-14 15:17:48.615+05:30	2025-04-14 15:17:48.615+05:30
49	5331	http://faculty.iiitdmj.ac.in/proPic/1503565013.jpg	2025-04-14 15:18:13.685+05:30	2025-04-14 15:18:13.685+05:30
50	5382	http://faculty.iiitdmj.ac.in/proPic/Pankaj%20Photo.jpg	2025-04-14 15:18:40.697+05:30	2025-04-14 15:18:40.697+05:30
51	6726	http://faculty.iiitdmj.ac.in/proPic/Dr.%20P.Kundu.jpg	2025-04-14 15:19:22.377+05:30	2025-04-14 15:19:22.377+05:30
52	5363	http://faculty.iiitdmj.ac.in/proPic/Ponappa,K.JPG	2025-04-14 15:19:47.594+05:30	2025-04-14 15:19:47.594+05:30
53	5319	http://faculty.iiitdmj.ac.in/proPic/1486987253.jpg	2025-04-14 15:20:13.766+05:30	2025-04-14 15:20:13.766+05:30
54	5325	http://faculty.iiitdmj.ac.in/proPic/dr.prabir.jpg	2025-04-14 15:20:40.643+05:30	2025-04-14 15:20:40.643+05:30
55	5320	http://faculty.iiitdmj.ac.in/proPic/1498814917.JPG	2025-04-14 15:21:06.526+05:30	2025-04-14 15:21:06.526+05:30
56	5328	http://faculty.iiitdmj.ac.in/proPic/PTandon2-Gray-Background.jpg	2025-04-14 15:21:36.94+05:30	2025-04-14 15:21:36.94+05:30
57	5378	http://faculty.iiitdmj.ac.in/proPic/Dr%20PRaikwal.jpg	2025-04-14 15:21:59.7+05:30	2025-04-14 15:21:59.7+05:30
58	6732	http://faculty.iiitdmj.ac.in/proPic/RP.jpg	2025-04-14 15:22:31.537+05:30	2025-04-14 15:22:31.537+05:30
59	6729	http://faculty.iiitdmj.ac.in/proPic/sachin-kumar.png	2025-04-14 15:23:10.209+05:30	2025-04-14 15:23:10.209+05:30
60	5349	http://faculty.iiitdmj.ac.in/proPic/1501666699.jpg	2025-04-14 15:23:33.265+05:30	2025-04-14 15:23:33.265+05:30
61	5365	http://faculty.iiitdmj.ac.in/proPic/1487051082.jpg	2025-04-14 15:23:53.113+05:30	2025-04-14 15:23:53.113+05:30
62	5322	http://faculty.iiitdmj.ac.in/proPic/sns_photo.jpg	2025-04-14 15:24:16.415+05:30	2025-04-14 15:24:16.415+05:30
63	6724	http://faculty.iiitdmj.ac.in/proPic/Dr.%20Satish%20Kumar%20Tiwari.jpeg	2025-04-14 15:24:41.378+05:30	2025-04-14 15:24:41.378+05:30
64	6728	http://faculty.iiitdmj.ac.in/proPic/Shivansh%20Mishra.png	2025-04-14 15:25:13.924+05:30	2025-04-14 15:25:13.924+05:30
65	5372	http://faculty.iiitdmj.ac.in/proPic/1498823827.jpg	2025-04-14 15:25:34.497+05:30	2025-04-14 15:25:34.497+05:30
66	5337	http://faculty.iiitdmj.ac.in/proPic/1487049817.jpg	2025-04-14 15:25:59.525+05:30	2025-04-14 15:25:59.525+05:30
67	5346	http://faculty.iiitdmj.ac.in/proPic/1487050287.jpg	2025-04-14 15:27:32.945+05:30	2025-04-14 15:27:32.945+05:30
68	5323	http://faculty.iiitdmj.ac.in/proPic/1486987141.jpg	2025-04-14 15:28:04.957+05:30	2025-04-14 15:28:04.957+05:30
69	6727	http://faculty.iiitdmj.ac.in/proPic/Dr.SKC.jpg	2025-04-14 15:28:26.205+05:30	2025-04-14 15:28:26.205+05:30
70	5329	http://faculty.iiitdmj.ac.in/proPic/1486987296.jpg	2025-04-14 15:28:48.304+05:30	2025-04-14 15:28:48.304+05:30
71	5390	http://faculty.iiitdmj.ac.in/proPic/1556264171.jpg	2025-04-14 15:29:10.551+05:30	2025-04-14 15:29:10.551+05:30
72	5360	http://faculty.iiitdmj.ac.in/proPic/1504160445.jpg	2025-04-14 15:29:33.142+05:30	2025-04-14 15:29:33.142+05:30
74	5367	http://faculty.iiitdmj.ac.in/proPic/tushar.png	2025-04-14 15:30:09.42+05:30	2025-04-14 15:30:09.42+05:30
75	5334	http://faculty.iiitdmj.ac.in/proPic/1487050775.jpg	2025-04-14 15:30:39.463+05:30	2025-04-14 15:30:39.463+05:30
76	5330	http://faculty.iiitdmj.ac.in/proPic/vkg.jpg	2025-04-14 15:31:04.158+05:30	2025-04-14 15:31:04.158+05:30
77	5354	http://faculty.iiitdmj.ac.in/proPic/1487051401.jpg	2025-04-14 15:31:31.836+05:30	2025-04-14 15:31:31.836+05:30
78	5327	http://faculty.iiitdmj.ac.in/proPic/1486987173.jpg	2025-04-15 12:42:31.88+05:30	2025-04-15 12:42:31.88+05:30
\.


--
-- TOC entry 8252 (class 0 OID 717454)
-- Dependencies: 225
-- Data for Name: GymkhanaNotifications; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."GymkhanaNotifications" (id, title, link, status, "createdAt", "updatedAt") FROM stdin;
1	New SAC Inauguration Today	https://www.iiitdmj.ac.in/	ACTIVE	2025-02-06 16:26:14.748+05:30	2025-02-06 16:26:14.748+05:30
\.


--
-- TOC entry 8254 (class 0 OID 717461)
-- Dependencies: 227
-- Data for Name: Marquees; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."Marquees" (id, title, link, "createdAt", "updatedAt", status) FROM stdin;
7	NIRF-2024	https://www.iiitdmj.ac.in/nirf.iiitdmj.ac.in/	2025-01-26 17:58:36.351+05:30	2025-01-26 17:58:36.351+05:30	ACTIVE
9	List of shortlisted/Not Shortlisted Candidates for the Post of Junior Assistant. Advt. No. 25/2023	https://www.iiitdmj.ac.in/non_teaching.php	2025-01-26 17:59:51.088+05:30	2025-01-26 17:59:51.088+05:30	ACTIVE
8	ARIIA Reports	https://www.iiitdmj.ac.in/ariia.php	2025-01-26 17:59:04.388+05:30	2025-04-15 12:44:42.135+05:30	ARCHIVED
\.


--
-- TOC entry 8256 (class 0 OID 717468)
-- Dependencies: 229
-- Data for Name: News; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."News" (id, title, excerpt, content, image_url, link, "createdAt", "updatedAt", status) FROM stdin;
5	Design Workshop 9.0	<strong> Date: 07-09 October 2024 </strong> The Workshop deals with Augmented Healthcare	<strong> Date: 07-09 October 2024 </strong> The Workshop deals with Augmented Healthcare, Quality of Life & Well-being, Brain-Computer Interface, Neuroprosthetics, Wearable Computing and Ubiquitous Computing, Cognitive Augmentation of Human Enhancement, Lifestyle Disease Management, AI in Healthcare, Medical Robotics, AR/VR Systems, IoT for Healthcare, IoT Devices, Sensors and Actuators, Ethical, Security and Medical Aspects of Augmented Humanity. The aim of the workshop is to train the healthcare professionals to contribute in the making of gadgets that augment human power.	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/dew.iiitdmj.ac.in/Home.html	2024-10-26 16:23:22.495141+05:30	2024-12-02 16:42:44.075+05:30	ACTIVE
19	 AICTE ATAL one Week Offline Faculty Development Programme on "IoT, Robotics & Smart Sensors"	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/downloads/Reverie_brochure.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 19:58:56.996+05:30	ACTIVE
17	National Workshop On Research Methods and Methodology in English Studies (RMME)	This\tworkshop\taims\tto\texplore\tthe\tdiverse\tmethods\tand\tmethodologies\tthat\tunderpin\t\r\nresearch\tin\t English\t Studies,\t spanning\t literary\t analysis,\t cultural\t studies,\t and\t critical\t\r\ntheory.	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	https://www.iiitdmj.ac.in/assets/img/large/image3/4O6A5358.JPG	https://www.iiitdmj.ac.in/downloads/Poster-RMME-2024.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 20:22:41.981+05:30	ACTIVE
15	 AICTE ATAL one Week Offline Faculty Development Programme on "IoT, Robotics & Smart Sensors"	The institute conducts educational and\r\nresearch programs leading to the degree of <strong>(B.Tech.), (M.Tech.),\r\n(B. Des.), (M. Des.) and (PhD.) in various subject domains.</strong>		https://www.iiitdmj.ac.in/assets/img/large/image3/4O6A5358.JPG	https://www.iiitdmj.ac.in/downloads/AICTE-ATAL-FDP-Brochure-2025.pdf	2024-12-03 00:50:21.961+05:30	2025-01-29 20:19:50.655+05:30	ACTIVE
20	Reverie — IIITDMJ's first-ever animation workshop	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	https://www.iiitdmj.ac.in/img/slides/space-day.jpg	https://www.iiitdmj.ac.in/downloads/Reverie_brochure.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 20:24:43.061+05:30	ACTIVE
22	Academia-Industry Workshop	The Academia-Industry workshop, jointly organized by <strong> PDPM Indian Institute of Information Technology, Design and Manufacturing, Jabalpur (IIITDM Jabalpur), </strong> Armoured Vehicles Nigam Limited (AVNL) (formerly Vehicle Factory Jabalpur) and MP Industrial Development Corporation (MPIDC), aims to strengthen the collaborative efforts between industry, academicians, and professional bodies.	The Academia-Industry workshop, jointly organized by <strong> PDPM Indian Institute of Information Technology, Design and Manufacturing, Jabalpur (IIITDM Jabalpur), </strong> Armoured Vehicles Nigam Limited (AVNL) (formerly Vehicle Factory Jabalpur) and MP Industrial Development Corporation (MPIDC), aims to strengthen the collaborative efforts between industry, academicians, and professional bodies.	https://www.iiitdmj.ac.in/assets/img/large/image3/4O6A5358.JPG	https://www.iiitdmj.ac.in/others/workshops/Academia-Industry-Workshop-2024/	2024-10-26 16:15:51.645885+05:30	2025-01-29 20:29:20.461+05:30	ACTIVE
23	National Workshop on Recent Advancements in Semiconductor Devices(NWRASD)-2024	The Institute offers undergraduate, postgraduate and PhD programmes in Computer Science and Engineering, Electronics and Communication Engineering, Mechanical Engineering, Design and PhD programmes in Mathematics, Physics\r\nand Literature.	The Institute offers undergraduate, postgraduate and PhD programmes in Computer Science and Engineering, Electronics and Communication Engineering, Mechanical Engineering, Design and PhD programmes in Mathematics, Physics\r\nand Literature.	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/downloads/NWRASD-2024.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 20:31:53.398+05:30	ACTIVE
16	High-End Workshop(Karyashala) on 5G and B5G Wireless Technologies with Simulations and Hands-on Training on MIMO Prototyping System	Under the aegis of <strong> SERB's Accelerate Vigyan Scheme </strong> a high-end workshop on “5G & B5G Wireless Technologies with Simulations and Handson Training on MIMO Prototyping System” is being organised at PDPM IIIITDM Jabalpur between 10 to16 June 2024.	Under the aegis of <strong> SERB's Accelerate Vigyan Scheme </strong> a high-end workshop on “5G & B5G Wireless Technologies with Simulations and Handson Training on MIMO Prototyping System” is being organised at PDPM IIIITDM Jabalpur between 10 to16 June 2024	 https://www.iiitdmj.ac.in/img/slides/space-day.jpg	https://www.iiitdmj.ac.in/downloads/poster_karyashala_2024.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 20:34:32.056+05:30	ACTIVE
25	NEP 2020: A workshop on Development of Model Curriculum & Content for Computer Science and Engineering	<strong>Vidya Bharati Uchcha Shiksha Sansthan (VBUSS) </strong> is a voluntary organization working in the field of education with focus on policy implementation and structural reforms in India's Higher Education landscape since 1952	<strong>Vidya Bharati Uchcha Shiksha Sansthan (VBUSS) </strong> is a voluntary organization working in the field of education with focus on policy implementation and structural reforms in India's Higher Education landscape since 1952	https://www.iiitdmj.ac.in/assets/img/large/image3/4O6A5358.JPG	https://www.iiitdmj.ac.in/downloads/NEP-2020-workshop.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 21:02:14.42+05:30	ACTIVE
30	Skill Development Workshop on "Monitoring Drones: How Tools are Evolving to Track Drone Activities in Real Time"	Animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	Animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/downloads/Broucher-DMFA-25072023.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 21:16:41.459+05:30	ACTIVE
27	FDP on Advanced Semiconductor Devices	Online Faculty Development Programme Advanced Semiconductor Material and Devices Organized by <strong> School of Electronics Engineering (SENSE).</strong>	Online Faculty Development Programme Advanced Semiconductor Material and Devices Organized by <strong> School of Electronics Engineering (SENSE).</strong>	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/downloads/FDP%20Advanced%20Semiconductor%20Devices%20IIITDMJ.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 21:10:30.062+05:30	ACTIVE
28	GIAN course: Development of Theory and Technologies for Hybrid Metal Forming Processes	Students pursuing B.Tech./M.Tech./MS/M.Sc./Ph.D. degrees in any discipline or members of Faculty of any department from <strong> academic and technical institutions.</strong>	Students pursuing B.Tech./M.Tech./MS/M.Sc./Ph.D. degrees in any discipline or members of Faculty of any department from <strong> academic and technical institutions.</strong>	https://www.iiitdmj.ac.in/img/slides/space-day.jpg	https://www.iiitdmj.ac.in/downloads/GIAN%20Brochure%20Hybrid%20Manufacturing%20Pesin%20November%202023.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 21:12:19.541+05:30	ACTIVE
29	GOND art workshop by Shri Dilip Shyam Ji under aegis of Virasat: SPIC MACAY heritage chapter PDPM IIITDM Jabalpur	The final day of the 4-day long GOND art workshop by Shri Dilip Shyam Ji concluded with great zest on 2nd November 2023. It saw the presence of Honorable Director sir Prof Bhartendu Kumar Singh, Dean Students’ Dr Mukesh K Roy, Registrar Mrs Swapnali Gadekar and Faculty in charge of Virasat - <strong> The SPIC MACAY heritage chapter </strong> of PDPM IIITDM Jabalpur.	The final day of the 4-day long GOND art workshop by Shri Dilip Shyam Ji concluded with great zest on 2nd November 2023. It saw the presence of Honorable Director sir Prof Bhartendu Kumar Singh, Dean Students’ Dr Mukesh K Roy, Registrar Mrs Swapnali Gadekar and Faculty in charge of Virasat - <strong> The SPIC MACAY heritage chapter </strong> of PDPM IIITDM Jabalpur.	https://www.iiitdmj.ac.in/img/slides/spic-macay1.jpg	https://www.iiitdmj.ac.in/img/slides/spic-macay1.jpg	2024-10-26 16:15:51.645885+05:30	2025-01-29 21:15:15.023+05:30	ACTIVE
35	Reverie animation workshop	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	First animation workshop of IIITDMJ hosted by Design Department in collaboration with <strong> Dixa Barooh and  Shantanu Mishra </strong> <strong> Date November 8-19, 2024 (online mode) Last Date of Online Registration: Nov 05, 2024 </strong>	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/downloads/Reverie_brochure.pdf	2024-10-26 16:15:51.645885+05:30	2024-12-02 16:42:33.584+05:30	ACTIVE
18	High-End Workshop on Advanced Energy Materials for Next Generation Solar Cells	Since its inception IIITDM Jabalpur has been playing a vital role in producing quality human resources for contribution in India’s mission on inclusive and sustainable growth.	Since its inception IIITDM Jabalpur has been playing a vital role in producing quality human resources for contribution in India’s mission on inclusive and sustainable growth.	https://www.iiitdmj.ac.in/img/slides/fiw-1.jpg	http://iiitdmj.ac.in/downloads/SERB-Karyashala-Brochure-may27-june02-2024.pdf	2024-10-26 16:15:51.645885+05:30	2025-01-29 20:58:21.552+05:30	ACTIVE
\.


--
-- TOC entry 8258 (class 0 OID 717475)
-- Dependencies: 231
-- Data for Name: Notices; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."Notices" (id, title, excerpt, content, link, "createdAt", "updatedAt", status) FROM stdin;
1	Workshop Registration Deadline Extended	The registration deadline for the Design Workshop 9.0 has been extended.	The deadline for registration for the upcoming Design Workshop 9.0 focusing on healthcare and augmented technologies has been extended to October 3, 2024. Dont miss the opportunity to participate in this interactive event!	https://www.iiitdmj.ac.in/workshop/register	2024-10-26 16:51:52.587209+05:30	2024-10-26 16:51:52.587209+05:30	ACTIVE
2	New Library Hours Announced	The IIITDMJ library will have new operating hours starting November 1, 2024.	Please note that starting from November 1, 2024, the IIITDMJ library will follow new operating hours. The library will now be open from 8 AM to 8 PM on weekdays and 10 AM to 4 PM on weekends.	https://www.iiitdmj.ac.in/library/hours	2024-10-26 16:52:07.486667+05:30	2024-10-26 16:52:07.486667+05:30	ACTIVE
3	Upcoming Placement Drive	A placement drive for final-year students will be held on November 5, 2024.	All final-year students are encouraged to register for the placement drive that will take place on November 5, 2024. Leading companies from the tech and engineering sectors will be participating.	https://www.iiitdmj.ac.in/placements/drive2024	2024-10-26 16:52:17.454339+05:30	2024-10-26 16:52:17.454339+05:30	ACTIVE
4	Scholarship Applications Now Open	Applications for the merit-based scholarship are open till December 1, 2024.	Students can now apply for the merit-based scholarship for the academic year 2024-2025. The application form is available on the universitys official website, and the deadline is December 1, 2024.	https://www.iiitdmj.ac.in/scholarships/apply	2024-10-26 16:52:36.313079+05:30	2024-10-26 16:52:36.313079+05:30	ACTIVE
\.


--
-- TOC entry 8260 (class 0 OID 717482)
-- Dependencies: 233
-- Data for Name: RedAnnouncements; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public."RedAnnouncements" (id, title, link, "createdAt", "updatedAt", status) FROM stdin;
11	Anti-Ragging Committee and Squad	https://www.iiitdmj.ac.in/downloads/Anti-Ragging-Committee-and-Squad-2024.pdf	2025-01-26 18:00:18.166+05:30	2025-01-26 18:00:18.166+05:30	ACTIVE
12	Ph.D. Admission	https://www.iiitdmj.ac.in/admission.iiitdmj.ac.in/PhD%20Admission.php	2025-01-26 18:01:57.202+05:30	2025-01-26 18:01:57.202+05:30	ACTIVE
13	M,Tech. Adnission	https://www.iiitdmj.ac.in/admission.iiitdmj.ac.in/PG%20Admission.php	2025-01-26 18:02:27.866+05:30	2025-01-26 18:02:27.866+05:30	ACTIVE
14	Information for B.Design 2025 aspirants	https://www.uceed.iitb.ac.in/2025/	2025-01-26 18:03:03.509+05:30	2025-01-26 18:03:03.509+05:30	ACTIVE
15	Test	https://www.iiitdmj.ac.in/	2025-02-07 01:29:06.594+05:30	2025-02-07 01:29:06.594+05:30	ACTIVE
\.


--
-- TOC entry 8262 (class 0 OID 717489)
-- Dependencies: 235
-- Data for Name: academic_calander; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.academic_calander (id, name, href) FROM stdin;
1	Academic Calander 2024-25	https://docs.google.com/spreadsheets/d/1RnZRpNyfrGkmhabC4mPIt21-yQKlnjhq/edit?usp=sharing&ouid=113133116229916491804&rtpof=true&sd=true
2	Academic Calander 2025-26	https://docs.google.com/spreadsheets/d/1RnZRpNyfrGkmhabC4mPIt21-yQKlnjhq/edit?gid=880831739#gid=880831739
\.


--
-- TOC entry 8264 (class 0 OID 717495)
-- Dependencies: 237
-- Data for Name: achievements; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public.achievements (id, title, excerpt, content, image_url, link, "createdAt", "updatedAt", status) FROM stdin;
1	Dr. Manu Srivastava in top 2% of Scientists list.	Congratulations to Dr. Manu Srivastava of Mechanical Engineering for being ranked in the top 2% of scientists list released by Stanford University-2024.	Congratulations to Dr. Manu Srivastava of Mechanical Engineering for being ranked in the top 2% of scientists list released by Stanford University-2024.	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://elsevier.digitalcommonsdata.com/datasets/btchxktzyw/7	2024-10-26 16:35:24.321505+05:30	2024-12-03 00:27:34.738+05:30	ACTIVE
3	Missing Girl penned by Dr. Mamta Anand into Library of Congress.	The book Missing Girl- Geometry of Creation Essays and Poems written by Dr. Mamta Anand has been selected and included in the largest Library and research reservoir of the world, Library of Congress, Washington DC USA.	The book Missing Girl- Geometry of Creation Essays and Poems written by Dr. Mamta Anand has been selected and included in the largest Library and research reservoir of the world, Library of Congress, Washington DC USA.	https://www.iiitdmj.ac.in/img/slides/fiw-1.jpg	https://catalog.loc.gov/vwebv/holdingsInfo?searchId=25161&recCount=25&recPointer=0&bibId=23128897	2024-10-26 16:42:44.627246+05:30	2024-12-03 00:27:49.129+05:30	ACTIVE
2	Dr. Himansu Sekhar Nanda listed among 2024 Emerging Investigators of Journal of Materials Chemistry.	Congratulations to Dr. Himansu Sekhar Nanda, Principal Investigator, Biomaterials and Biomanufacturing Laboratory for being listed among 2024 Emerging Investigators of Journal of Materials Chemistry B by Royal Society of Chemistry, UK.	Congratulations to Dr. Himansu Sekhar Nanda, Principal Investigator, Biomaterials and Biomanufacturing Laboratory for being listed among 2024 Emerging Investigators of Journal of Materials Chemistry B by Royal Society of Chemistry, UK and the paper titled "Design and Development of 3D Printed Shape Memory Triphasic Polymer-Ceramic Bioactive Scaffolds for Bone Tissue Engineering" published by him in JMCB is one among the articles of Themed collection "2024 Emerging Investigators of Journal of Materials Chemistry B".	https://www.iiitdmj.ac.in/img/slides/fiw-1.jpg	https://pubs.rsc.org/en/journals/articlecollectionlanding?sercode=tb&themeid=8010f79a-983a-4efb-ad52-dbc0885b83fe	2024-10-26 16:38:46.60338+05:30	2024-12-03 00:27:59.863+05:30	ACTIVE
4	Second Place in the prestigious SKY MANEUVER event at Cognizance.	Chetan (22bme021), Broteen (22bsm014), Charan (22bcs132), Sanjay (22bme050), Visishta (22bcs129) of the AeroFabrication Club secured Second Place in the prestigious SKY MANEUVER event at Cognizance, IIT Roorkees Techfest during March 15-17, 2024.	Chetan (22bme021), Broteen (22bsm014), Charan (22bcs132), Sanjay (22bme050), Visishta (22bcs129) of the AeroFabrication Club secured Second Place in the prestigious SKY MANEUVER event at Cognizance, IIT Roorkees Techfest during March 15-17, 2024.	https://www.iiitdmj.ac.in/img/slides/cd2024.jpg	https://www.iiitdmj.ac.in/downloads/acheivmnt/result%20iit%20roorkee.png	2024-10-26 16:47:00.768721+05:30	2024-12-03 00:28:07.936+05:30	ACTIVE
6	tesr			\N	https://www.youtube.com/	2024-12-03 00:50:12.832+05:30	2024-12-23 14:15:42.889+05:30	CANCELLED
\.


--
-- TOC entry 8266 (class 0 OID 717502)
-- Dependencies: 239
-- Data for Name: annual_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.annual_account (id, name, href) FROM stdin;
1	Annual Account 2021-22 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202021-22%20(English).pdf
2	Annual Account 2021-22 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202021-22%20(Hindi).pdf
3	Annual Account 2022-23 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202022-23%20(English).pdf
4	Annual Account 2022-23 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202022-23%20(Hindi).pdf
5	Annual Account 2020-21 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202020-21%20(English).pdf
6	Annual Account 2020-21 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202020-21%20(Hindi).pdf
7	Annual Account 2019-20 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202019-20%20(English).pdf
8	Annual Account 2019-20 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202019-20%20(Hindi).pdf
9	Annual Account 2018-19 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202018-19%20(English).pdf
10	Annual Account 2018-19 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202018-19%20(Hindi).pdf
11	Annual Account 2017-18 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202017-18%20(English).pdf
12	Annual Account 2017-18 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202017-18%20(Hindi).pdf
13	Annual Account 2016-17 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202016-17%20(English).pdf
14	Annual Account 2016-17 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202016-17%20(Hindi).pdf
15	Annual Account 2015-16 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202015-16%20(English).pdf
16	Annual Account 2015-16 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202015-16%20(Hindi).pdf
17	Annual Account 2014-15 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202014-15%20(English).pdf
18	Annual Account 2014-15 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202014-15%20(Hindi).pdf
19	Annual Account 2013-14 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202013-14%20(English).pdf
20	Annual Account 2013-14 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202013-14%20(Hindi).pdf
21	Annual Account 2012-13 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202012-13%20(English).pdf
22	Annual Account 2012-13 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202012-13%20(Hindi).pdf
23	Annual Account 2011-12 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202011-12%20(English).pdf
24	Annual Account 2011-12 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Account/Annual%20Account%202011-12%20(Hindi).pdf
\.


--
-- TOC entry 8268 (class 0 OID 717508)
-- Dependencies: 241
-- Data for Name: annual_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.annual_report (id, name, href) FROM stdin;
1	Annual Report 2021-22 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202021-22%20(English).pdf
2	Annual Report 2021-22 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202021-22%20(Hindi).pdf
3	Annual Report 2022-23 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202022-23%20(English).pdf
4	Annual Report 2022-23 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202022-23%20(Hindi).pdf
5	Annual Report 2020-21 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202020-21%20(English).pdf
6	Annual Report 2020-21 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202020-21%20(Hindi).pdf
7	Annual Report 2019-20 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202019-20%20(English).pdf
8	Annual Report 2019-20 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202019-20%20(Hindi).pdf
9	Annual Report 2018-19 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202018-19%20(English).pdf
10	Annual Report 2018-19 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202018-19%20(Hindi).pdf
11	Annual Report 2017-18 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202017-18%20(English).pdf
12	Annual Report 2017-18 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202017-18%20(Hindi).pdf
13	Annual Report 2016-17 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202016-17%20(English).pdf
14	Annual Report 2016-17 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202016-17%20(Hindi).pdf
15	Annual Report 2015-16 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202015-16%20(English).pdf
16	Annual Report 2015-16 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202015-16%20(Hindi).pdf
17	Annual Report 2014-15 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202014-15%20(English).pdf
18	Annual Report 2014-15 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202014-15%20(Hindi).pdf
19	Annual Report 2013-14 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202013-14%20(English).pdf
20	Annual Report 2013-14 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202013-14%20(Hindi).pdf
21	Annual Report 2012-13 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202012-13%20(English).pdf
22	Annual Report 2012-13 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202012-13%20(Hindi).pdf
23	Annual Report 2011-12 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202011-12%20(English).pdf
24	Annual Report 2011-12 (Hindi)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202011-12%20(Hindi).pdf
25	Annual Report 2010-11 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202010-11%20(English).pdf
26	Annual Report 2009-10 (English)	https://www.iiitdmj.ac.in/downloads/Annual%20Report/Annual%20Report%202009-10%20(English).pdf
\.


--
-- TOC entry 8270 (class 0 OID 717514)
-- Dependencies: 243
-- Data for Name: bog_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bog_agenda (id, name, href) FROM stdin;
1	Agenda notes - 1st meeting of the BOG held on February 6, 2005	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/1st%20meeting/
2	Agenda notes - 2nd meeting of the BOG held on June 4, 2005	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%202nd%20meeting%20of%20the%20BOG%20held%20on%20June%204,%202005.pdf
3	Agenda notes - 3rd meeting of the BOG held on September 16, 2005	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/3rd%20meeting/
4	Agenda notes- 4th meeting of the BOG held on February 13, 2006	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%204th%20meeting%20of%20the%20BOG%20held%20on%20February%2013,%202006.pdf
5	Agenda notes- 5th meeting of BOG held on August 4, 2006	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/5th%20meeting/
6	Agenda notes- 6th meeting of BOG held on January 3, 2007	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%206th%20meeting%20of%20BOG%20held%20on%20January%203,%202007.pdf
7	Agenda notes- 7th meeting of BOG held on May 11, 2007	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/7th_meeting/
8	Agenda notes- 8th meeting of the BOG held on November 20, 2007	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%208th%20meeting%20of%20the%20BOG%20held%20on%20November%2020,%202007.pdf
9	Agenda notes- 9th meeting of the BOG held on July 8 2008	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%209th%20meeting%20of%20the%20BOG%20held%20on%20July%208%202008.pdf
10	Agenda notes- 10th meeting of the BOG held on November 7, 2008	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%2010th%20meeting%20of%20the%20BOG%20held%20on%20November%207,%202008.pdf
11	Agenda notes- 11th meeting of the BOG held on January 5, 2009	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%2011th%20meeting%20of%20the%20BOG%20held%20on%20January%205,%202009.pdf
12	Agenda notes - 12th meeting of BOG held on March 23, 2009	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/12th%20meeting/
13	Agenda notes - 13th meeting of BOG held on July 20, 2009	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/13th%20meeting/
14	Agenda notes - 14th meeting of BOG held on February 25, 2010	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/14th%20meeting/
15	Agenda notes - 15th meeting of BOG held on July 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/15th%20meeting/
16	Agenda notes - 16th meeting of BOG held on December 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/16th%20meeting/
17	Agenda notes - 17th meeting of BOG held on March 21, 2011	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/17th%20meeting/
18	Agenda notes - 18th meeting of the BOG held on 30 June 2011	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/18th%20meeting/
19	Agenda notes - 19th meeting of BOG held on January 9, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/19th%20meeting/
20	Agenda Notes - 20th meeting of BOG held on February 24, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes-%2020th%20meeting%20of%20BOG%20held%20on%20February%2024,%202012..pdf
21	Agenda notes - 21st meeting of BOG held on July 5, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%2021st%20meeting%20of%20BOG%20held%20on%20July%205,%202012/
22	Agenda notes - 22nd meeting of BOG held on December 5, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%2022nd%20meeting%20of%20BOG%20held%20on%20December%205,%202012/
23	Agenda notes - 23rd meeting of BOG held on March 1, 2013	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%2023rd%20meeting%20of%20BOG%20held%20on%20March%201,%202013.pdf
24	Agenda notes - 24th meeting of BOG held on Jul 24, 2013	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%2024th%20meeting%20of%20BOG%20held%20on%20Jul%2024,%202013/
25	Agenda notes - 25th meeting of BOG held on October 11, 2013 	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes-%2025th%20meeting%20of%20BOG%20held%20on%20October%2011,%202013..pdf
26	Recruitment & Service Rules 2013(in Hindi)	https://www.iiitdmj.ac.in/administration/downloads/IIITDM%20Service%20Rules%20in%20Hindi.pdf
27	Agenda notes - 26th meeting of BOG held on February 03, 2014	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%2026th%20meeting%20of%20BOG%20held%20on%20February%2003,%202014.pdf
28	Agenda Notes- 27th meeting of BOG held on July 24, 2014	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes-%2027th%20meeting%20of%20BOG%20held%20on%20July%2024,%202014/
29	Agenda Notes- 28th meeting of BOG held on Jan 30, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes-28th%20BOG%20meeting%20-held%20on%2030%20Jan%202015/
30	Agenda Notes- 29th meeting of BOG held on May 11, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda-%2029th%20BOG%20meeting%20held%20on%20May%2011,%202015/
31	Agenda notes - 30th BOG meeting held on August 1, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20notes%20-%2030th%20BOG%20meeting%20held%20on%20August%201,%202015.pdf
32	Agenda Notes- 31th meeting of BOG held on Dec 07, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda-%2031th%20BOG%20meeting%20held%20on%20Dec%2007,%202015/
33	Agenda Notes - 32nd meeting of BOG held on May 20, 2016	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda-%2032nd%20BOG%20meeting%20held%20on%20May%2020,%202016/
34	Agenda Notes - 33rd meeting of BOG held on September 01, 2016	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/BOG%2033rd%20%20Agenda.pdf
35	Agenda Notes - 34th meeting of BOG held on December 06, 2016	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/BOG%2034/
36	Agenda Notes - 35th meeting of BOG held on March 06, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/PDPM-IIITDM%20Agenda%20of%2035th%20BOG%20Meeting.pdf
37	Agenda Notes - 36th meeting of BOG held on May 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes%20-%2036th%20meeting%20of%20BOG%20held%20on%20May%2028,%202017.pdf
38	Agenda Notes - 37th meeting of BOG held on August 15, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes%20-%2037th%20meeting%20of%20BOG%20held%20on%20August%2015,%202017.pdf
39	Agenda Notes - 38th meeting of BOG held on November 18, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20of%2038th%20BOG%20meeting%20held%20on%20November%2018,%202017.pdf
40	AGenda - 500 KW Solar Power Plant in the Campus January 11, 2019	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/500%20KW%20Solar%20Power%20Plant/
41	Agenda Notes - 39th meeting of BOG held on May 22, 2019	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%2039th%20BOG/
42	Agenda Notes - 40th meeting of BOG held on September 23, 2019	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes%20-%2040th%20meeting%20of%20BOG%20held%20on%20September%20%2023,%202019.pdf
43	Agenda Notes - 41st meeting of BOG held on January 8, 2020	https://www.iiitdmj.ac.in/administration/downloads/BOG%20Agenda/Agenda%20Notes%20-%2041st%20meeting%20of%20BOG%20held%20on%20January%208,%202020.pdf
\.


--
-- TOC entry 8272 (class 0 OID 717520)
-- Dependencies: 245
-- Data for Name: bog_minutes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bog_minutes (id, name, href) FROM stdin;
1	Minutes of the 1th meeting of the Board of Governors held on February 06, 2005	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_1th%20Minutes.pdf
2	Minutes of the 2nd meeting of the Board of Governors held on June 06, 2005	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_02nd%20Minutes.pdf
3	Minutes of the 3rd meeting of the Board of Governors held on September 16, 2005	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_3rd%20Minutes.pdf
4	Minutes of the 4th meeting of the Board of Governors held on February 13, 2006	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_4th%20Minutes.pdf
5	Minutes of the 5th meeting of the Board of Governors held on August 04, 2006	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_5th%20Minutes.pdf
6	Minutes of the 6th meeting of the Board of Governors held on January 03, 2007	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_6th%20Minutes.pdf
7	Minutes of the 7th meeting of the Board of Governors held on May 11, 2007	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_7th%20Minutes.pdf
8	Minutes of the 8th meeting of the Board of Governors held on November 20, 2007	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_8th%20Minutes.pdf
9	Minutes of the 9th meeting of the Board of Governors held on July 08, 2008	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_9th%20Minutes.pdf
10	Minutes of the 10th meeting of the Board of Governors held on November 07, 2008	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_10th%20Minutes.pdf
11	Minutes of the 11th meeting of the Board of Governors held on January 05, 2009	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_11th%20Minutes.pdf
12	Minutes of the 12th meeting of the Board of Governors held on March 23, 2009	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_12th%20Minutes.pdf
13	Minutes of the 13th meeting of the Board of Governors held on July 20, 2009	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_13th%20Minutes.pdf
14	Minutes of the 14th meeting of the Board of Governors held on February 25, 2010	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_14th%20Minutes.pdf
15	Minutes of the 15th meeting of the Board of Governors held on July 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_15th%20Minutes.pdf
16	Minutes of the 16th meeting of the Board of Governors held on December 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_16th%20Minutes.pdf
17	Minutes of the 17th meeting of the Board of Governors held on March 21, 2011	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_17th%20Minutes.pdf
18	Minutes of the 18th meeting of the Board of Governors held on June 30, 2011	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_18th%20Minutes.pdf
19	Minutes of the 19th meeting of the Board of Governors held on January 09, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_19th%20Minutes.pdf
20	Minutes of the 20th meeting of the Board of Governors held on February 24, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_20th%20Minutes.pdf
21	Minutes of the 21th meeting of the Board of Governors held on July 05, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_21th%20Minutes.pdf
22	Minutes of the 22nd meeting of the Board of Governors held on December 05, 2012	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_22th%20Minutes.pdf
23	Minutes of the 23rd meeting of the Board of Governors held on March 01, 2013	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_23th%20Minutes.pdf
24	Minutes of the 24th meeting of the Board of Governors held on July 24, 2013	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/BOG_24th%20Minutes.pdf
25	Minutes of the 25th meeting of the Board of Governors held on October 11, 2013	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2025th%20meeting%20of%20BOG%20held%20on%20October%2011,%202013.pdf
26	Minutes of the 26th meeting of the Board of Governors held on February 03, 2014	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2026th%20BOG%20meeting.pdf
27	Minutes of the 27th meeting of the Board of Governors held on July 24, 2014	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%20BOG%2027th%20meeting%20held%20on%20July%2024%202014%20.pdf
28	Minutes of the 28th meeting of the Board of Governors held on January 30, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%20BOG%2028th%20meeting%20held%20on%20January%2030%202015%20.pdf
29	Minutes of the 29th meeting of the Board of Governors held on May 11, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2029th%20BOG%20meeting%20held%20on%20May%2011,%202015.pdf
30	Minutes of the 30th meeting of the Board of Governors held on August 1, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2030th%20BOG%20meeting%20held%20on%20August%201,%202015.pdf
31	Minutes of the 31th meeting of the Board of Governors held on December 7, 2015	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20BOG%2031%20meeting%20held%20on%20December%207,%202015.pdf
32	Minutes of the 32nd BOG meeting held on May 20, 2016	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2032nd%20Meeting%20of%20BOG%20held%20on%20May%2020,%202016.pdf
33	Minutes of the 33nd BOG meeting held on September 1, 2016	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2033rd%20meeting%20of%20the%20BOG%20held%20on%20September%201,%202016.pdf
34	Annexure-I(Minutes of the 33nd BOG meeting held on September 1, 2016)	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Ordinances%20of%20PDPM-IIITDM%20Jabalpur.pdf
35	Minutes of the 34th BOG meeting held on Dec 06, 2016	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2034th%20meeting%20of%20the%20BOG%20held%20on%20Dec%2006,2016.pdf
36	Minutes of the 35th BOG meeting held on March 06, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2035th%20meeting%20of%20the%20BOG%20held%20on%20March%2006,%202017.pdf
37	Annexure-A(Minutes of the 35th BOG meeting held on March 06, 2017)	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Annexure%20'A'%20%20Modified%20Recruitment%20rules%20for%20Design%20Faculty_35_Meeting.pdf
38	Annexure-B(Minutes of the 35th BOG meeting held on March 06, 2017)	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Annexure%20-%20'B'%20Proforma%20for%20Faculty%20Performance%20Appraisa%20l_35_Meeting.pdf
39	Minutes of the 36th BOG meeting held on May 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2036th%20meeting%20of%20the%20Board%20of%20Governors%20held%20on%20May%2028,%202017.pdf
40	Minutes of the 37th meeting of the BOG held on August 15, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2037th%20meeting/Minutes%20of%2037th%20meeting%20of%20the%20BOG%20held%20on%20August%2015,2017.pdf
41	Annexure-I(Minutes of the 37th meeting of the BOG held on August 15, 2017)	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2037th%20meeting/37th%20BOG%20-%20Annexure%20-%20I.pdf
42	Annexure-II(Minutes of the 37th meeting of the BOG held on August 15, 2017)	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2037th%20meeting/37th%20BOG%20-%20Annexure%20-%20II.pdf
43	Annexure-III(Minutes of the 37th meeting of the BOG held on August 15, 2017)	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2037th%20meeting/37th%20BOG%20-%20Annexure%20-%20III.pdf
44	Minutes of the 38th meeting of the BOG held on November 18, 2017	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2038th%20meeting%20of%20the%20BOG%20held%20on%20November%2018,%202017.pdf
45	Minutes of the 39th meeting of the BOG held on May 22, 2019	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2039th%20BOG%20meeting%20held%20on%20May%2022,%202019.pdf
46	Minutes of the 40th meeting of the BOG held on September 23, 2019	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2040th%20meeting%20of%20the%20BOG%20held%20on%20September%2023,%202019.pdf
47	Minutes of the 41th meeting of the BOG held on January 8, 2020	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2041st%20meeting%20of%20the%20BOG%20held%20on%20January%208,%202020.pdf
48	Minutes of the 42th meeting of the BOG held on June 26, 2020	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2042nd%20meeting%20of%20the%20BOG%20held%20on%20June%2026,%202020.pdf
49	Minutes of the 43rd meeting of the BOG held on August 25, 2020	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2043rd%20meeting%20of%20the%20BOG%20held%20on%20August%2025,%202020.pdf
50	Minutes of the 44th meeting of the BOG held on July 14, 2021	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2044th%20meeting%20of%20the%20BOG%20held%20on%20July%2014,%202021.pdf
51	Minutes of the 45th meeting of the BOG held on November 18, 2021	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2045th%20meeting%20of%20the%20BOG%20held%20on%20November%2018,%202021.pdf
52	Minutes of the 46th meeting of the BOG held on March 04, 2022	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2046th%20meeting%20of%20the%20BOG%20held%20on%20March%204,%202022.pdf
53	Minutes of the 47th meeting of the BOG held on July 19, 2022	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%20BOG%2047th%20meeting%20(c).pdf
54	Minutes of the 48th meeting of the BOG held on january 15, 2023	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2048th%20meeting%20of%20BoG%20held%20on%2015-01-2023..pdf
55	Minutes of the 49th meeting of the BOG held on May 09, 2023	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2049th%20meeting%20of%20the%20BOG%20held%20on%20May%209,%202023.pdf
56	Minutes of the 50th meeting of the BOG held on Sep 13, 2023	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2050th%20meeting%20of%20the%20BOG%20held%20on%20september13,2023.pdf
57	Minutes of the 51th meeting of the BOG held on December 27, 2023	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%2051th%20meeting%20of%20the%20BOG%20held%20on%20dec27,2023.pdf
58	Minutes of the 52nd meeting of the BOG held on May 7, 2024	https://www.iiitdmj.ac.in/administration/downloads/BOG%20minutes/Minutes%20of%20the%2052nd%20meeting%20of%20the%20BOG%20held%20on%20May%207,%202024.pdf
\.


--
-- TOC entry 8274 (class 0 OID 717526)
-- Dependencies: 247
-- Data for Name: bwc_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bwc_agenda (id, name, href) FROM stdin;
1	Agenda-2005 1st (01st) meeting of B&WC-June 04, 2005	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2005%201st%20(01st)%20meeting%20of%20B&WC-June%2004,%202005.pdf
2	Agenda-2005 2nd (02nd) meeting of B&WC-September 16, 2005	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2005%202nd%20(02nd)%20meeting%20of%20B&WC-September%2016,%202005.pdf
3	Agenda-2006 1st (3rd) meeting of B&WC-July 14, 2006	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2006%201st%20(3rd)%20meeting%20of%20B&WC-July%2014,%202006.pdf
4	Agenda-2006-07 2nd (04th) meeting of B&WC-February 09, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2006-07%202nd%20(04th)%20meeting%20of%20B&WC-February%2009,%202007.pdf
5	Agenda-2007 1st (05th) meeting of B&WC-May 10, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2007%201st%20(05th)%20meeting%20of%20B&WC-May%2010,%202007.pdf
6	Agenda-2007 2nd (06th) meeting of B&WC-July 06, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2007%202nd%20(06th)%20meeting%20of%20B&WC-July%2006,%202007.pdf
7	Agenda-2007 3rd (07th) meeting of B&WC-November 19, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2007%203rd%20(07th)%20meeting%20of%20B&WC-November%2019,%202007.pdf
8	Agenda-2008 1st (08th) meeting of B&WC-October 13, 2008	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2008%201st%20(08th)%20meeting%20of%20B&WC-October%2013,%202008.pdf
9	Agenda-2009 1st (10th) meeting of B&WC-February 18, 2009	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2009%201st%20(10th)%20meeting%20of%20B&WC-February%2018,%202009.pdf
10	Agenda-2009 2nd (11th) meeting of B&WC-July 18, 2009	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2009%202nd%20(11th)%20meeting%20of%20B&WC-July%2018,%202009.pdf
11	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2009%202nd%20(11th)%20meeting%20of%20B&WC-July%2018,%202009.pdf	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2009%20special%20(09th)%20meeting%20of%20B&WC-January%2005,%202009.pdf
12	Agenda-2010 1st (12th) meeting of B&WC-February 21, 2010	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2010%201st%20(12th)%20meeting%20of%20B&WC-February%2021,%202010.pdf
13	Agenda-2010 2nd (13th) meeting of B&WC-July 24, 2010	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2010%202nd%20(13th)%20meeting%20of%20B&WC-July%2024,%202010.pdf
14	Agenda-2010 3rd (14th) meeting of B&WC-November 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2010%203rd%20(14th)%20meeting%20of%20B&WC-November%2027,%202010.pdf
15	Agenda-2011 1st (15th) meeting of B&WC-June 21, 2011	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2011%201st%20(15th)%20meeting%20of%20B&WC-June%2021,%202011.pdf
16	Agenda-2012 1st (16th) meeting of B&WC-January 07, 2012	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2012%201st%20(16th)%20meeting%20of%20B&WC-January%2007,%202012.pdf
17	Agenda-2012 2nd (17th) meeting of B&WC-June 30, 2012	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2012%202nd%20(17th)%20meeting%20of%20B&WC-June%2030,%202012.pdf
18	Agenda-2013 1st (18th) meeting of B&WC-February 02, 2013	https://www.iiitdmj.ac.in/administration/downloads/bwc%20agenda/Agenda-2013%201st%20(18th)%20meeting%20of%20B&WC-February%2002,%202013.pdf
19	Agenda-2013 2nd (19th) meeting of B&WC-28 February 28, 2013	Agenda-2013 2nd (19th) meeting of B&WC-28 February 28, 2013
20	Agenda-2014 1st (20th) meeting of B&WC-January 06, 2014	Agenda-2014 1st (20th) meeting of B&WC-January 06, 2014
21	Agenda-2015 1st (21st) meeting of B&WC-August 01, 2015	Agenda-2015 1st (21st) meeting of B&WC-August 01, 2015
22	Agenda-2016 1st (22nd) meeting of B&WC-May 03, 2016	Agenda-2016 1st (22nd) meeting of B&WC-May 03, 2016
23	Agenda-2016 2nd (23rd) meeting of B&WC-Nov 22, 2016	Agenda-2016 2nd (23rd) meeting of B&WC-Nov 22, 2016
24	Agenda-2017 (24th) meeting of B&WC-April 26, 2017.pdf	Agenda-2017 (24th) meeting of B&WC-April 26, 2017.pdf
\.


--
-- TOC entry 8275 (class 0 OID 717531)
-- Dependencies: 248
-- Data for Name: bwc_minutes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bwc_minutes (id, name, href) FROM stdin;
1	Minutes of 2005-01st (01st B&WC) meeting held on June 04, 2005	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202005-01st%20(01st%20B&WC)%20meeting%20held%20on%20June%2004,%202005.pdf
2	Minutes of 2005-02nd (02nd B&WC) meeting held on September 16, 2005	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202005-02nd%20(02nd%20B&WC)%20meeting%20held%20on%20September%2016,%202005.pdf
3	Minutes of 2006-01st (03rd B&WC) meeting held on July 14, 2006	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202006-01st%20(03rd%20B&WC)%20meeting%20held%20on%20July%2014,%202006.pdf
4	Minutes of 2006-07-02nd (04th B&WC) meeting held on February 09, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202006-07-02nd%20(04th%20B&WC)%20meeting%20held%20on%20February%2009,%202007.pdf
5	Minutes of 2007-01st (05th B&WC) meeting held on May 10, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202007-01st%20(05th%20B&WC)%20meeting%20held%20on%20May%2010,%202007.pdf
6	Minutes of 2007-02nd (06th B&WC) meeting held on July 06, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202007-02nd%20(06th%20B&WC)%20meeting%20held%20on%20July%2006,%202007.pdf
7	Minutes of 2007-03rd (07th B&WC) meeting held on November 19, 2007	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202007-03rd%20(07th%20B&WC)%20meeting%20held%20on%20November%2019,%202007.pdf
8	Minutes of 2008-01st (08th B&WC) meeting held on October 13, 2008	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202008-01st%20(08th%20B&WC)%20meeting%20held%20on%20October%2013,%202008.pdf
9	Minutes of 2009-01st (10th B&WC) meeting held on February 18, 2009	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202009-01st%20(10th%20B&WC)%20meeting%20held%20on%20February%2018,%202009.pdf
10	Minutes of 2009-02nd (11th B&WC) meeting held on July 18, 2009	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202009-02nd%20(11th%20B&WC)%20meeting%20held%20on%20July%2018,%202009.pdf
11	Minutes of 2009-special (09th B&WC) meeting held on January 05, 2009	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202009-special%20(09th%20B&WC)%20meeting%20held%20on%20January%2005,%202009.pdf
12	Minutes of 2010-01st (12th B&WC) meeting held on February 21, 2010	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202010-01st%20(12th%20B&WC)%20meeting%20held%20on%20February%2021,%202010.pdf
13	Minutes of 2010-02nd (13th B&WC) meeting held on July 24, 2010	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202010-02nd%20(13th%20B&WC)%20meeting%20held%20on%20July%2024,%202010.pdf
14	Minutes of 2010-03rd (14th B&WC) meeting held on November 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202010-03rd%20(14th%20B&WC)%20meeting%20held%20on%20November%2027,%202010.pdf
15	Minutes of 2011-01st (15th B&WC) meeting held on June 21, 2011	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202011-01st%20(15th%20B&WC)%20meeting%20held%20on%20June%2021,%202011.pdf
16	Minutes of 2012-01st (16th B&WC) meeting held on January 07, 2012	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202012-01st%20(16th%20B&WC)%20meeting%20held%20on%20January%2007,%202012.pdf
17	Minutes of 2012-02nd (17th B&WC) meeting held on June 30, 2012	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202012-02nd%20(17th%20B&WC)%20meeting%20held%20on%20June%2030,%202012.pdf
18	Minutes of 2013-01st (18th B&WC) meeting held on February 02, 2013	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202013-01st%20(18th%20B&WC)%20meeting%20held%20on%20February%2002,%202013.pdf
19	Minutes of 2013-02nd (19th B&WC) meeting held on February 28, 2013	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202013-02nd%20(19th%20B&WC)%20meeting%20held%20on%20February%2028,%202013.pdf
20	Minutes of 2014-01st (20th B&WC) meeting held on January 06, 2014	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202014-01st%20(20th%20B&WC)%20meeting%20held%20on%20January%2006,%202014.pdf
21	Minutes of 2015-01st (21st B&WC) meeting held on August 01, 2015	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202015-01st%20(21st%20B&WC)%20meeting%20held%20on%20August%2001,%202015.pdf
22	Minutes of 2016-01st (22nd B&WC) meeting held on May 03, 2016	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202016-01st%20(22nd%20B&WC)%20meeting%20held%20on%20May%2003,%202016.pdf
23	Minutes of 2016-02nd (23rd B&WC) meeting held on Nov 22, 2016	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%202016-02nd%20(23rd%20B&WC)%20meeting%20held%20on%20Nov%2022,%202016.pdf
24	Minutes of the 24th B&WC held on April 26, 2017	https://www.iiitdmj.ac.in/administration/downloads/bwc%20minutes/Minutes%20of%20the%2024th%20B&WC%20held%20on%20April%2026,%202017.pdf
\.


--
-- TOC entry 8278 (class 0 OID 717538)
-- Dependencies: 251
-- Data for Name: calendars; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public.calendars (id, calendar_no, title, closing_date, "createdAt", "updatedAt", status, attachments) FROM stdin;
d030bdc1-372a-49e6-bfd0-543c7e1a411d	2023	Calendar For Year 2023	2024-01-01 05:30:00+05:30	2024-12-11 23:12:59.103+05:30	2024-12-11 23:15:58.415+05:30	CANCELLED	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-23-24.php\\",\\"title\\":\\"Calendar 23-24\\"}]"
2eb43aab-f1f1-4d6a-90ab-1365a9d1f1b4	2022	Calendar For Year 2022	2023-01-02 05:30:00+05:30	2024-12-11 23:14:12.761+05:30	2024-12-11 23:16:50.833+05:30	ARCHIVED	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-22-23.php\\",\\"title\\":\\"Calendar 22-23\\"}]"
ec7aa432-3286-433d-9670-384b81d7f51f	2021	Calendar For Year 2021	2022-01-02 05:30:00+05:30	2024-12-11 23:18:38.894+05:30	2024-12-11 23:18:38.894+05:30	ARCHIVED	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-21-22.php\\",\\"title\\":\\"Calendar 21-22\\"}]"
8a90546f-acda-4699-ad27-534593178901	2020	Calendar For Year 2020	2021-01-02 05:30:00+05:30	2024-12-11 23:19:25.18+05:30	2024-12-11 23:19:25.18+05:30	ARCHIVED	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old.php\\",\\"title\\":\\"Calendar 20-21\\"}]"
93500b0e-6800-4d7d-84c2-a8c66f6a22b9	2024	Calendar For Year 2024	2025-12-11 05:30:00+05:30	2024-12-11 23:04:43.414+05:30	2024-12-26 23:32:27.896+05:30	ACTIVE	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-new-24-25.pdf\\",\\"title\\":\\"Calendar 24-25\\"}]"
11da98da-e23f-4bc1-82c7-71bba2782ab0	20225	Calendar For Year 2024	2024-12-28 05:30:00+05:30	2024-12-26 23:58:27.202+05:30	2024-12-26 23:58:27.202+05:30	ARCHIVED	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/academics/calendar-old-23-24.php\\",\\"title\\":\\"PhD Admissions started\\"}]"
\.


--
-- TOC entry 8313 (class 0 OID 786964)
-- Dependencies: 286
-- Data for Name: convocations; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public.convocations (id, name, data, location, graduating_students, medal_awardees, guidelines, description, read_more, media, background_image, "createdAt", "updatedAt") FROM stdin;
1	Convocation 25	25/7/2025	IIITDMJ L104	[{"title":"2022","link":"https://www.iiitdmj.ac.in/"},{"title":"2021","link":"https://www.iiitdmj.ac.in/"}]	[{"title":"PhD Admissions started","link":"https://www.iiitdmj.ac.in/"},{"title":"Tender Created For Testing Purpose","link":"https://www.iiitdmj.ac.in"}]	[{"title":"test2","link":"https://www.youtube.com/"},{"title":"Calendar For Year 2024","link":"www.linkedin.com/in/harshit-srivastava-609647255"}]	TESTSTSTShttps://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0254.JPGhttps://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0254.JPG https://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0254.JPG https://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0254.JPGTST TSTETSTSTSTS Lremione ipsus		["https://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0206.JPG","https://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0209.JPG"]	https://www.iiitdmj.ac.in/img/gallery/convo-2019/large/_DSC0254.JPG	2025-04-23 20:07:18.904+05:30	2025-04-23 21:01:25.626+05:30
\.


--
-- TOC entry 8279 (class 0 OID 717545)
-- Dependencies: 252
-- Data for Name: counselling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.counselling (id, role, name, roll_no, batch, email, student_type) FROM stdin;
1	PG Coordinator	Ankita Nemu	20PNPO01	PhD	20PNPO01@iiitdmj.ac.in	\N
2	UG Coordinator	Hritik Ranjan	21bcs102	B.Tech 2021, CSE	21bcs102@iiitdmj.ac.in	\N
3	UG Co-Coordinator	Md.Aiyub Hussain	21bec069	B.Tech 2021, ECE	21bec069@iiitdmj.ac.in	\N
4	PG Member	Divyansh Tiwari	22MECV01	M.Tech	22MECV01@iiitdmj.ac.in	\N
5	PG Member	Sukanta Halder	21PNMO03	PhD	21PNMO03@iiitdmj.ac.in	\N
6	PG Member	Puspendu Adhikari	22MDS011	M.Des	22MDS011@iiitdmj.ac.in	\N
7	PG Member	Babban Kumar	21PNPO01	PhD	21PNPO01@iiitdmj.ac.in	\N
8	PG Member	Dwitiya Sarkar	21PDEO01	PhD	21PDEO01@iiitdmj.ac.in	\N
9	PG Member	Himanshi Shinde	21PDEO03	PhD	21PDEO03@iiitdmj.ac.in	\N
10	PG Member	Kotti Akhila Priya	21PNPO02	PhD	akhila.kotti@iiitdmj.ac.in	\N
11	PG Member	Anjali Agrawal	20MECC01	PhD	20MECC01@iiitdmj.ac.in	\N
12	PG Member	Sakshi Patel	21IDSO03	PhD	21IDSO03@iiitdmj.ac.in	\N
13	PG Member	Arundhati Dharia	22MDS001	M.Des	22MDS001@iiitdmj.ac.in	\N
14	PG Member	Akash Patnaik	20PECO01	PhD	20PECO01@iiitdmj.ac.in	\N
15	PG Member	Shubham Sharma	1915607	PhD	shub.srma@iiitdmj.ac.in	\N
16	UG Member	Vedant Vijaykumar Bande	21bcs238	B.Tech 2021, CSE	21bcs238@iiitdmj.ac.in	\N
17	UG Member	Varun Raj	21bcs236	B.Tech 2021, CSE	21bcs236@iiitdmj.ac.in	\N
18	UG Member	Jesvia Susan Varghese	21bcsd01	B.Tech 2021, CSE	21bcsd01@iiitdmj.ac.in	\N
19	UG Member	Saumy Aryan	21bcs187	B.Tech 2021, CSE	21bcs187@iiitdmj.ac.in	\N
20	UG Member	Himanshu	21bec053	B.Tech 2021, ECE	21bec053@iiitdmj.ac.in	\N
21	UG Member	Sparsh Ranjan	21bcs205	B.Tech 2021, CSE	21bcs205@iiitdmj.ac.in	\N
22	UG Member	Pallavi Sarkar	21bds029	B.Des 2021, Design	21bds029@iiitdmj.ac.in	\N
23	UG Member	Mridul Deep	21bsm037	B.Tech 2021, ME	21bsm037@iiitdmj.ac.in	\N
24	UG Member	Gauri Singhal	21bme018	B.Tech 2021, ME	21bme018@iiitdmj.ac.in	\N
25	UG Member	Deepanshu Kumar	21bcs072	B.Tech 2021, CSE	21bcs072@iiitdmj.ac.in	\N
26	UG Member	Gaurang Bhutani	21bcs085	B.Tech 2021, CSE	21bcs085@iiitdmj.ac.in	\N
27	UG Member	Harsh Bansal	21bcs093	B.Tech 2021, CSE	21bcs093@iiitdmj.ac.in	\N
28	UG Member	Rameshwar Paryani	21bcs171	B.Tech 2021, CSE	21bcs171@iiitdmj.ac.in	\N
29	UG Member	Shreya Varshney	21bds047	B.Des 2021, Design	21bds047@iiitdmj.ac.in	\N
32	Governer, BOG	Harshit Srivastava	4545	UG	harshitsrv2004@gmail.com	ug
35	UG Member	test1	21b1212cs072	B.Tech 2021, CSE	12121	ug
36	UG Member	test2	21bcs111085	B.Tech 2021, CSE	21bcs085@iiitdmj.ac.in	ug
\.


--
-- TOC entry 8281 (class 0 OID 717551)
-- Dependencies: 254
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (id, name, role) FROM stdin;
1	Dr. G S Sandhu (MD)	Medical Specialist
2	Dr. Arvind Nath Gupta (MD)	Pead.
3	Dr. Ranjana Gupta	Gyane.
4	Dr. Sabiha Khan	ENT
5	Dr. Hemant Singh	Pead.
7	Dr. Jogendri Pathariya	Counsellor
6	Dr. Abhay Shrivastava	Ortho
\.


--
-- TOC entry 8283 (class 0 OID 717557)
-- Dependencies: 256
-- Data for Name: eventImages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."eventImages" (id, event_id, image_path, "createdAt", "updatedAt") FROM stdin;
21	14	https://www.youtube.com/watch?v=7i9D_3Uzzgc	2025-01-30	2025-01-30
22	8	https://res.cloudinary.com/djy2jlthj/image/upload/w_600,q_50/v1726496962/Saaz%20Events/Tarang%20%2723/Band%20Wars/IMG_2917_copy.jpg	2025-01-30	2025-01-30
23	8	https://res.cloudinary.com/djy2jlthj/image/upload/w_600,q_50/v1726496922/Saaz%20Events/Tarang%20%2723/Copy_of_IMG_0068_copy.jpg	2025-01-30	2025-01-30
24	8	https://res.cloudinary.com/djy2jlthj/image/upload/w_600,q_50/v1726496950/Saaz%20Events/Tarang%20%2723/Band%20Wars/IMG_2619_copy.jpg	2025-01-30	2025-01-30
16	14	http://13.201.19.145:5000/public/WebsiteImages/Events/Ganesh%20Chaturti/2.jpg	2025-01-30	2025-01-30
17	14	http://13.201.19.145:5000/public/WebsiteImages/Events/Ganesh%20Chaturti/1.jpg	2025-01-30	2025-01-30
18	14	http://13.201.19.145:5000/public/WebsiteImages/Events/Ganesh%20Chaturti/3.jpg	2025-01-30	2025-01-30
19	14	http://13.201.19.145:5000/public/WebsiteImages/Events/Ganesh%20Chaturti/4.jpg	2025-01-30	2025-01-30
20	14	http://13.201.19.145:5000/public/WebsiteImages/Events/Ganesh%20Chaturti/5.jpg	2025-01-30	2025-01-30
\.


--
-- TOC entry 8285 (class 0 OID 717561)
-- Dependencies: 258
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public.events (id, name, date, location, external_link, cover_image, "createdAt", "updatedAt", description) FROM stdin;
8	Tarang	2024-11-10	College Auditorium	https://external-link.com/tarang	https://res.cloudinary.com/djy2jlthj/image/upload/v1726496959/Saaz%20Events/Tarang%20%2723/Band%20Wars/IMG_2334_copy.jpg	2024-11-04	2025-01-30	Tarang is the annual cultural fest of PDPM IIITDM Jabalpur.
14	Ganesh Chaturthi	2024-11-04	H1 hostel, Central Park		http://13.201.19.145:5000/public/WebsiteImages/Events/Ganesh%20Chaturti/1.jpg	2025-01-28	2025-01-28	Every year IIITDM Jabalpur celebrates the auspicious event of Ganesh Chaturthi followed by a grand Visarjan.\r\nThe Event attracts a footfall of 600+ students, with prashads served and other music/dance events.
\.


--
-- TOC entry 8287 (class 0 OID 717567)
-- Dependencies: 260
-- Data for Name: external_circulars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.external_circulars (id, name, href) FROM stdin;
1	IIT IIM Tamilnadu Scholarship Instruction to Institution dated-13.01.2021	https://www.iiitdmj.ac.in/downloads/external-circulars/IIT%20IIM%20Tamilnadu%20Scholarship%20%20Instruction%20to%20Institution%2013.01.2021.pdf
2	Merit List of 1000 Selected Students for the year 2020-21 ("National Fellowship and Scholarship for Higher Education of ST Students Scheme (earlier known as Top Class Scholarship Scheme)	https://tribal.nic.in/downloads/results/Merit%20list-NFSS-2020-21.pdf
3	Frequently Asked Questions for Students.	https://www.iiitdmj.ac.in/downloads/FAQs%20for%20Students.pdf
4	Power Point Presentation For NSP Portal students registration Process.	https://www.iiitdmj.ac.in/downloads/external-circulars/IIT%20IIM%20Tamilnadu%20Scholarship%20%20Instruction%20to%20Institution%2013.01.2021.pdf
5	Re-activation of the National Scholarship Portal (NSP 2.0) for inviting Applications (Fresh and Renewal both) under "National Fellowship and Scholarship for Higher Education for ST Students" for the financial year 2021-22	https://www.iiitdmj.ac.in/downloads/Letter%20for%20Institutes%20for%20NSP.pdf
\.


--
-- TOC entry 8289 (class 0 OID 717573)
-- Dependencies: 262
-- Data for Name: faculty_positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty_positions (id, position_type, role, imp, email) FROM stdin;
5332	board_of_governors	Member	2	\N
5319	board_of_governors	Member	2	\N
5424	finance_committee	Member	2	\N
5424	director	Director	1	director@iiitdmj.ac.in
5330	dean	Professor In-charge (Academic)	1	dean.acad@iiitdmj.ac.in
5338	dean	Faculty-in-Charge (Student Affairs)	2	dean.s@iiitdmj.ac.in
5332	dean	Professor In-charge (Research, Sponsored Projects & Consultancy)	3	dean.research@iiitdmj.ac.in
5349	dean	Associate Professor In-charge (Academic)	4	\N
5325	hod	Design	2	headdesign@iiitdmj.ac.in
5351	hod	ECE	3	headece@iiitdmj.ac.in
5335	hod	ME	4	headme@iiitdmj.ac.in
5342	hod	NS	5	headns@iiitdmj.ac.in
5344	hod	Liberal Arts	6	headla@iiitdmj.ac.in
5359	councelling_cell	Head	1	\N
5333	training&placement	Chairman	1	\N
5328	IIC	Professor In-charge	1	\N
5328	alumni_cell	Professor In-charge	1	\N
5360	communication_cell	Professor In-charge	1	\N
5424	building_works	Chairperson (Ex-Officio)	1	\N
5330	deans_acad	Professor In-charge (Academic)	1	\N
5349	deans_acad	Associate Professor In-charge (Academic)	2	\N
5338	deans_students	Faculty-in-Charge (Student Affairs)	1	dean.s@iiitdmj.ac.in
5338	gymkhana	Faculty-in-Charge (Student Affairs)	1	dean.s@iiitdmj.ac.in
5385	gymkhana	Associate Cultural Counselor	2	\N
5381	gymkhana	Science & Technology Counsellor	5	\N
5330	councelling_cell	Member	1	\N
5328	councelling_cell	Member	1	\N
5367	councelling_cell	Member	1	\N
5384	councelling_cell	Member	1	\N
5424	board_of_governors	Member	2	
29	board_of_governors	Member	1	
5318	finance_committee	test role	1	admin@gmail.com
5318	hod	HOD CSE	6	22bcs105@iiitdmj.ac.in
\.


--
-- TOC entry 8290 (class 0 OID 717579)
-- Dependencies: 263
-- Data for Name: fc_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fc_agenda (id, name, href) FROM stdin;
1	Agenda of 1st meeting of the Finance Committee held on June 04, 2005	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%201st%20meeting%20of%20the%20Finance%20Committee%20held%20on%20June%2004,%202005.pdf
2	Agenda of 2nd meeting of the Finance Committee held on September 16, 2005	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%202th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20September%2016,%202005.pdf
3	Agenda of 3rd meeting of the Finance Committee held on February 13, 2006	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%203rd%20meeting%20of%20the%20Finance%20Committee%20held%20on%20February%2013,%202006.pdf
4	Agenda of 4th meeting of the Finance Committee held on 25th July 2006	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%204th%20meeting%20of%20the%20Finance%20Committee%20held%20on%2025th%20July%202006.pdf
5	Agenda of 5th meeting of the Finance Committee held on January 03, 2007	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%205th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20January%2003,%202007.pdf
6	Agenda of 6th meeting of the Finance Committee held on May 11, 2007	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%206%20th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20May%2011,%202007.pdf
7	Agenda of 7th meeting of the Finance Committee held on November 20, 2007	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%207%20th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20November%2020,%202007.pdf
8	Agenda of 8th meeting of the Finance Committee held on 7th Nov 2008	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%208th%20meeting%20of%20the%20Finance%20Committee%20held%20on%207th%20Nov%202008.pdf
9	Agenda of 9th meeting of the Finance Committee held on July 22, 2008	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%209%20th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20July%2022,%202008.pdf
10	Agenda of 10th meeting of the Finance Committee held on January 05, 2009	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2010th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20January%2005,%202009.pdf
11	Agenda of 11th meeting of the Finance Committee held on March 23, 2009	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2011th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20March%2023,%202009.pdf
12	Agenda of 12th meeting of the Finance Committee held on July 20, 2009	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2012th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20July%2020,%202009.pdf
13	Agenda of 13th meeting of the Finance Committee held on February 25, 2010	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2013th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20February%2025,%202010.pdf
14	Agenda of 14th meeting of the Finance Committee held on July 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2014th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20July%2027,%202010.pdf
15	Agenda of 15th meeting of the Finance Committee held on December 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2015th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20December%2027,%202010.pdf
16	Agenda of 17th meeting of the Finance Committee held on June 30, 2011	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2017th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20June%2030,%202011.pdf
17	Agenda of 18th meeting of the Finance Committee held on January 9, 2012	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2018th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20January%209,%202012.pdf
18	Agenda of 19th meeting of the Finance Committee held on July 05, 2012	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2019th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20July%2005,%202012.pdf
19	Agenda of 20th meeting of the Finance Committee held on March 01, 2013	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2020th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20March%2001,%202013.pdf
20	Agenda of 21st meeting of the Finance Committee held on July 24, 2013	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2021st%20meeting%20of%20the%20Finance%20Committee%20held%20on%20July%2024,%202013.pdf
21	Agenda of 22nd meeting of the Finance Committee held on October 11, 2013	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2022nd%20meeting%20of%20the%20Finance%20Committee%20held%20on%20October%2011,%202013.pdf
22	Agenda of 23rd meeting of the Finance Committee held on February 03, 2014	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2023rd%20meeting%20of%20the%20Finance%20Committee%20held%20on%20February%2003,%202014.pdf
23	Agenda of 24th meeting of the Finance Committee held on January 30, 2015	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2024th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20January%2030,%202015.pdf
24	Agenda of 25th meeting of the Finance Committee held on May 11, 2015	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20of%2025th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20May%2011,%202015.pdf
25	Agenda of 26th meeting of the Finance Committee held on Dec 07, 2015	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/agenda%2026%20th%20fc.pdf
26	Agenda of 27th meeting of the Finance Committee held on May 20, 2016	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%2027th%20FC.pdf
27	Agenda of 28th meeting of the Finance Committee held on December 06, 2016	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%2028th%20FC.pdf
28	Agenda of 29th meeting of the Finance Committee held on May 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20Notes%2029%20th%20Meeting.pdf
29	Agenda of 30th meeting of the Finance Committee held on November 18, 2017	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/Agenda%20Notes%2030th%20Meeting%20FC.pdf
30	Agenda - 500 kw Solar Power Plant In Institute's campus December 18, 2018	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20agenda/500%20kw%20Solar%20Power/
\.


--
-- TOC entry 8292 (class 0 OID 717585)
-- Dependencies: 265
-- Data for Name: fc_minutes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fc_minutes (id, name, href) FROM stdin;
1	Minutes of 1st meeting of the Finance Committee held on June 04, 2005	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%201st%20meeting.pdf
2	Minutes of 2nd meeting of the Finance Committee held on September 16, 2005	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%202nd%20meeting.pdf
3	Minutes of 3rd meeting of the Finance Committee held on February 13, 2006	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_3rd_meeting.pdf
4	Minutes of 4th meeting of the Finance Committee held on July 25, 2006	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_4th_meeting.pdf
5	Minutes of 5th meeting of the Finance Committee held on January 03, 2007	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_5th_meeting.pdf
6	Minutes of 6th meeting of the Finance Committee held on May 11, 2007	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_6th_meeting.pdf
7	Minutes of 7th meeting of the Finance Committee held on November 20, 2007	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_7th_meeting.pdf
8	Minutes of 8th meeting of the Finance Committee held on November 17, 2008	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_8th_meeting.pdf
9	Minutes of 9th meeting of the Finance Committee held on July 22, 2008	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_9th_meeting.pdf
10	Minutes of 10th meeting of the Finance Committee held on January 05, 2009	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_10th_meeting.pdf
11	Minutes of 11th meeting of the Finance Committee held on March 23, 2009	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_11th_meeting.pdf
12	Minutes of 12th meeting of the Finance Committee held on July 20, 2009	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_12th_meeting.pdf
13	Minutes of 13th meeting of the Finance Committee held on February 25, 2010	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes_of_13th_meeting.pdf
14	Minutes of 14th meeting of the Finance Committee held on July 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2014th%20meeting.pdf
15	Minutes of 15th meeting of the Finance Committee held on December 27, 2010	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/FC_2010_3rd_27-12-2010.pdf
16	Minutes of 16th meeting of the Finance Committee held on February 03, 2011	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/FC_2011_1st_03-02-2011.pdf
17	Minutes of 17th meeting of the Finance Committee held on June 30, 2011	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/FC_2011_2nd_30-06-2011.pdf
18	Minutes of 18th meeting of the Finance Committee held on January 9, 2012	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/FC_2012_1st_09-01-2012.pdf
19	Minutes of 19th meeting of the Finance Committee held on July 05, 2012	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2019th%20meeting.pdf
20	Minutes of 20th meeting of the Finance Committee held on March 01, 2013	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2020th%20meeting.pdf
21	Minutes of 21st meeting of the Finance Committee held on July 24, 2013	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/FC_21st%20Minutes.pdf
22	Minutes of 22nd meeting of the Finance Committee held on October 11, 2013	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/22nd%20meeting%20FC_11-10-2013.pdf
23	Minutes of 23rd meeting of the Finance Committee held on February 03, 2014	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/23rd%20meeting%20FC_03-02-2014.pdf
24	Minutes of 24th meeting of the Finance Committee held on January 30, 2015	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2024th%20FC%20meeting.pdf
25	Minutes of 25th meeting of the Finance Committee held on May 11, 2015	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes-%2025th%20meeting%20of%20FC%20held%20on%20May%2011,%202015.pdf
26	Minutes of 26th meeting of the Finance Committee held on Dec 07, 2015	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/26TH%20FC%20MINUTES%20.pdf
27	Minutes of 27th meeting of the Finance Committee held on May 20, 2016	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2027th%20Finance%20Commitee%20Meeting.pdf
28	Minutes of 28th meeting of the Finance Committee held on December 06, 2016	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2028th%20Finance%20Commitee%20Meeting.pdf
29	Minutes of 29th meeting of the Finance Committee held on May 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/29%20FC%20MINUTES.pdf
30	Minutes of 30th meeting of the Finance Committee held on November 18, 2017	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/30FC%20Minutes.pdf
31	Minutes of 34th meeting of the Finance Committee held on July 13, 2021	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/30FC%20Minutes.pdf
32	Minutes of 35th meeting of the Finance Committee held on November 18, 2021	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2035th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20November%2018,%202021.pdf
33	Minutes of 36th meeting of the Finance Committee held on March 3, 2022	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2036th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20March%203,%202022.PDF
34	Minutes of 37th meeting of the Finance Committee held on July 19, 2022	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2037th%20meeting%20of%20the%20Finance%20Committee%20held%20on%20July%2019,%202022.pdf
35	Minutes of 38th meeting of the Finance Committee held on January 15, 2023	https://www.iiitdmj.ac.in/administration/downloads/finance%20comm%20minutes/Minutes%20of%2038th%20Finance%20Committee%20meeting%20held%20on%20January%2015,%202023.pdf
\.


--
-- TOC entry 8294 (class 0 OID 717591)
-- Dependencies: 267
-- Data for Name: grievance_redressal_cell; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grievance_redressal_cell (id, name, href) FROM stdin;
1	Notification regarding Grievance Redressal Cell dated 18.07.2022	https://www.iiitdmj.ac.in/downloads/Notification%20regarding%20Grievance%20Redressal%20Cell%20dated%2018.07.2022.pdf
2	Notification regarding Grievance Redressal Mechanism of the Institute, Dated: January 16, 2023	https://www.iiitdmj.ac.in/downloads/Notification%20regarding%20Grievance%20Redressal%20Mechanism%20of%20the%20Institute.pdf
\.


--
-- TOC entry 8296 (class 0 OID 717597)
-- Dependencies: 269
-- Data for Name: hostels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hostels (id, name, role, href) FROM stdin;
1	Dr. Mukesh Kumar Roy	Faculty-in-Charge (Student Affairs)	\N
2	Dr. Sujoy Mukherjee	Chief Warden	\N
3	Dr. Ponappa K.	Warden, Vasishtha Hostel (HALL-I)	https://www.iiitdmj.ac.in/hall1.iiitdmj.ac.in/
4	Dr. Avinash Chandra Pandey	Warden, Aryabhatta Hostel (HALL-III)	https://www.iiitdmj.ac.in/hall3.iiitdmj.ac.in/
5	Dr. Pankaj Sharma	Warden, Vivekananda Hostel (HALL-IV)	https://www.iiitdmj.ac.in/hall4.iiitdmj.ac.in/
6	Dr. Pankaj Sharma	Warden, Vivekananda Hostel (HALL-IV)	https://www.iiitdmj.ac.in/hall4.iiitdmj.ac.in/
7	Dr. Ponappa K.	Warden, Nagarjuna Hostel  (PG Married)	\N
8	Dr. Tushar Chaudhary	Warden, Panini Hostel (PG Unmarried)	https://www.iiitdmj.ac.in/panini.iiitdmj.ac.in/
9	Dr. Manu Srivastava	Warden, Maa Saraswati Girls Hostel	https://www.iiitdmj.ac.in/maasaraswati.iiitdmj.ac.in/
10	Dr. Neelam Dayal	Associate Warden, Maa Saraswati Girls Hostel	https://www.iiitdmj.ac.in/maasaraswati.iiitdmj.ac.in/
\.


--
-- TOC entry 8298 (class 0 OID 717603)
-- Dependencies: 271
-- Data for Name: internal_circulars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internal_circulars (id, name, href) FROM stdin;
1	46th Senate 2021	https://www.iiitdmj.ac.in/downloads/internal-circulars/46th%20Senate%202021/
2	47th Senate 2021	https://www.iiitdmj.ac.in/downloads/internal-circulars/47th%20Senate%202021/
3	48th Senate 2021	https://www.iiitdmj.ac.in/downloads/internal-circulars/48th%20Senate%202021/
4	49th Senate 2022, 28 Feb, 2022	https://www.iiitdmj.ac.in/downloads/internal-circulars/49th%20Senate%202022/
5	Letter regarding M.Tech/M.Des Thesis Grades, dated-23.08.2021	https://www.iiitdmj.ac.in/downloads/internal-circulars/Letter-M.Tech-M.Des-Thesis-Grades.pdf
6	Notification regarding Procedure for conducting Thesis Defence , dated-12.10.2021	https://www.iiitdmj.ac.in/downloads/internal-circulars/Notification%20and%20Procedure%20for%20Conducting%20Thesis%20Defense.pdf
7	Notification regarding Procedure for Thesis defense-PhD students, dated-28.01.2022	https://www.iiitdmj.ac.in/downloads/internal-circulars/1690%20-%20Procedure%20for%20thesis%20defense%20in%20case%20of%20PhD%20students%20of%20the%20Institute.pdf
8	Notification regarding commencement of offline classes for UG students, dated-03.03.2022	https://www.iiitdmj.ac.in/downloads/internal-circulars/NOTIFICATION.pdf
9	Notification regarding Offline Classes for UG students, dated-16.03.2022	https://www.iiitdmj.ac.in/downloads/internal-circulars/Regarding%20offline%20classes.pdf
10	Notification regarding No Dues Clearance Process for graduating, dated-22.10.2024	https://www.iiitdmj.ac.in/downloads/internal-circulars/Regarding%20No%20dues%20clearance%20process%20for%20graduating%20students.pdf
\.


--
-- TOC entry 8311 (class 0 OID 720647)
-- Dependencies: 284
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public.jobs (id, "advertTitle", "jobType", "applicationOpeningDate", status, "additionalInformation", positions, "shortlistedCandidates", "importantLinks", misc, "createdAt", "updatedAt", "readMore") FROM stdin;
cd9c2584-5592-4334-a68e-bc3259ad4c97	Faculty Postions Advert	Faculty Positions	2025-04-10 05:30:00+05:30	ACTIVE	[{"link": "https://www.iiitdmj.ac.in/", "title": "PhD Admissions started"}, {"link": "https://www.iiitdmj.ac.in", "title": "test2"}]	[{"Type": "TEST", "Level": "LEVEL 1", "Title": "Regustrar", "AdvertNo": "123", "AdvertDate": "2025-04-21", "Department": "CSE"}]	[{"Title": "CSE Faculty", "links": [{"link": "https://github.com/HrxSrv/", "title": "Calendar For Year 2024"}]}]	[{"link": "https://github.com/HrxSrv/", "title": "M-Tech Admissions started"}, {"link": "https://www.iiitdmj.ac.in", "title": "Tender Created For Testing Purpose"}]	TETSTSTS	2025-04-20 21:11:52.417+05:30	2025-04-23 21:14:39.086+05:30	https://www.google.com
cd9c2584-5592-4334-a68e-bc3259ad4c95	Faculty Postions Advert	Faculty Positions	2025-04-10 05:30:00+05:30	ACTIVE	[{"link": "https://www.iiitdmj.ac.in/", "title": "PhD Admissions started"}, {"link": "https://www.iiitdmj.ac.in", "title": "test2"}]	[{"Type": "TEST", "Level": "LEVEL 1", "Title": "Regustrar", "AdvertNo": "123", "AdvertDate": "2025-04-21", "Department": "CSE"}]	[{"Title": "CSE Faculty", "links": [{"link": "https://github.com/HrxSrv/", "title": "Calendar For Year 2024"}]}]	[{"link": "https://github.com/HrxSrv/", "title": "M-Tech Admissions started"}, {"link": "https://www.iiitdmj.ac.in", "title": "Tender Created For Testing Purpose"}]	TETSTSTS	2025-04-20 21:11:52.417+05:30	2025-04-23 21:14:23.475+05:30	https://www.google.com
cd9c2584-5592-4334-a68e-bc3259ad4c96	Faculty Postions Advert	Faculty Positions	2025-04-10 05:30:00+05:30	ACTIVE	[{"link": "https://www.iiitdmj.ac.in/", "title": "PhD Admissions started"}, {"link": "https://www.iiitdmj.ac.in", "title": "test2"}]	[{"Type": "TEST", "Level": "LEVEL 1", "Title": "Regustrar", "AdvertNo": "123", "AdvertDate": "2025-04-21", "Department": "CSE"}]	[{"Title": "CSE Faculty", "links": [{"link": "https://github.com/HrxSrv/", "title": "Calendar For Year 2024"}]}]	[{"link": "https://github.com/HrxSrv/", "title": "M-Tech Admissions started"}, {"link": "https://www.iiitdmj.ac.in", "title": "Tender Created For Testing Purpose"}]	TETSTSTS	2025-04-20 21:11:52.417+05:30	2025-04-23 21:17:25.912+05:30	https://www.google.com
5b3a53b7-b430-488e-b659-7701bce82662	Advertisement for the post of Managing Associate in Electronics and ICT Academy (Phase II)	Project Vacancies	2025-04-21 05:30:00+05:30	ACTIVE	[{"link": "https://www.iiitdmj.ac.in/jobs/download/JRF/Third-Call-Managing-Associate-Staff-appointment-April-2025.pdf", "title": "Advertisement Link"}]	[{"Type": "", "Level": "", "Title": "Managing Associate", "AdvertNo": "No: IIITDMJ/E&ICT- II/2025/03", "AdvertDate": "2025-04-11", "Department": "E&ICT"}]	[]	[{"link": "https://forms.gle/ejT6MXnwsVCkq1Qh9", "title": "Application form"}]	Submission Deadline for Application Form: Monday April 28, 2025 (by 0500 pm)	2025-04-21 16:36:06.265+05:30	2025-04-24 11:59:45.322+05:30	\N
7ed4c2b8-81b8-4000-9110-a267cff5b352	ADVERTISEMENT FOR THE NON TEACHING POST - Dated: 22/12/2023	Non Teaching	2023-12-22 05:30:00+05:30	ACTIVE	[{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/Non-Teaching-Advertisement-dec-2023.pdf", "title": "Advertisement Link"}]	[]	[{"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Registrar", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Registrar.pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Registrar"}]}, {"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Assistant Registrar", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Assistant%20Registrar.pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Assistant Registrar"}]}, {"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Senior Technical Officer", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Senior%20Technical%20Officer.pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Senior Technical Officer"}]}, {"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Technical Officer (ECE)", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Technical%20Officer%20(ECE).pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Technical Officer (ECE)"}]}, {"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Technical Officer (Design)", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Technical%20Officer%20(Design).pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Technical Officer (Design)"}]}, {"Title": " List of Shortlisted-Nonshortlisted Candidate for the Post of Medical officer", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Medical%20officer.pdf", "title": " List of Shortlisted-Nonshortlisted Candidate for the Post of Medical officer"}]}, {"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Male Staff Nurse", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Male%20Staff%20Nurse.pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Male Staff Nurse"}]}, {"Title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Junior Technician", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidate%20for%20the%20Post%20of%20Junior%20Technician.pdf", "title": "List of Shortlisted-Nonshortlisted Candidate for the Post of Junior Technician"}]}, {"Title": "List of shortlisted/Not Shortlisted Candidates for the Post of Junior Assistant", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/List%20of%20Shortlisted-Nonshortlisted%20Candidates%20for%20the%20post%20of%20Junior%20Assistant%20(Advt.%20No.%2025-2023)%20.pdf", "title": "List of shortlisted/Not Shortlisted Candidates for the Post of Junior Assistant"}]}]	[{"link": "https://iiitdmjnt.samarth.edu.in/", "title": "Apply Online"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/General%20Instructions%20for%20applying%20online%20-%20Non-Teaching%20advertisement-29-12-2023.pdf", "title": "General Instructions for applying on Samarth portal"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/Addendum-Non-Teaching-posts-16-01-2024.pdf", "title": "Addendum"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Non-teaching/22122023/Important%20Instruction%20regarding%20EWS-OBC%20Certificate.pdf", "title": "Important Instructions for EWS/OBC Certificates."}]		2025-04-24 10:40:23.167+05:30	2025-04-24 12:00:00.565+05:30	\N
e8766eab-303d-4073-8b1d-fa0b9f5013ff	ADVERTISEMENT FOR THE FACULTY POSITIONS	Faculty Positions	2025-04-10 05:30:00+05:30	ACTIVE	[{"link": "https://iiitdmjrec.samarth.edu.in/", "title": "Apply Online"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Faculty/04102023/General%20Instructions%20for%20applying%20online.pdf", "title": "General Instructions for applying on Samarth portal"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Faculty/04102023/Important%20Notice%20regarding%20Faculty%20Recruitment%20advertisements%20dated%2004-10-2023.pdf", "title": "Important Notice"}]	[]	[{"Title": "Candidates Shortlisted for the post of Assistant Professor (Design) level -12 against Advt. No. 06/2023", "links": [{"link": "https://www.iiitdmj.ac.in/jobs/download/Faculty/04102023/design/Upload%20list%20of%20ASSISTANT%20PROFESSOR%20(Design)%20Level%20-12%20AGAINST%20ADVT%2006-2023.pdf", "title": "Candidates Shortlisted for the post of Assistant Professor (Design) level -12 against Advt. No. 06/2023"}]}, {"Title": "Candidates Shortlisted for the Post of Assistant Professor (C.S.E.) level -12 ", "links": [{"link": "https://www.iiitdmj.ac.in/downloads/Upload%20list%20of%20ASSISTANT%20PROFESSOR%20(C.S.E.)%20Level%20-12%20AGAINST%20ADVT%2001-2023.pdf", "title": "Candidates Shortlisted for the Post of Assistant Professor (C.S.E.) level -12 against Advt. No. 01/2023 dated 04.10.2023"}]}]	[{"link": "https://www.iiitdmj.ac.in/jobs/download/Faculty/04102023/Assistant-Professor-Grade-I(Level-12)-2-Online-final.pdf", "title": "Assistant Professor Grade-I (level-12)"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Faculty/04102023/Assistant-Professor-Grade-II(level-11)-Final.pdf", "title": "Assistant Professor Grade-II (level-11) (on contract)"}, {"link": "https://www.iiitdmj.ac.in/jobs/download/Faculty/04102023/Assistant-Professor-Grade-II(level-10)-Final.pdf", "title": "Assistant Professor Grade-II (level-10) (on contract)"}]	Applicants are requested to keep visiting the website of the Institute (www.iiitdmj.ac.in) from time to time\r\nfor information, updates etc. Updates, if any, will be published on the website only and not in newspapers.	2025-04-23 17:24:54.024+05:30	2025-04-24 10:00:17.17+05:30	\N
\.


--
-- TOC entry 8300 (class 0 OID 717609)
-- Dependencies: 273
-- Data for Name: non_faculty_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.non_faculty_info (id, first_name, last_name, email, address, phone_no, profile_picture, user_type) FROM stdin;
4	Ms. Tulika	Pandey	tulikapandey@gov.in	Scientist G & Group Coordinator, Ministry of Electronics & Information Technology, Room No. 4058, Electronics Niketan 6 CGO Complex, New Delhi- 110003	1124364740	\N	false
11	Shri Rajeev Kumar	Singh	rajeev.singhkumar@wipro.com	Global Head Talent Acquisition, Wipro Ltd., 118 Crescent,Forest Trail, Bhugaon, District-Pune 412115	\N	\N	false
17	Shri Atul Kumar	Pandey	atul.pandey@iiti.ac.in	Project Engineer-cum-Estate Officer, Indian Institute of Technology Indore, Khandwa Road, Simrol, Indore - 453 552	\N	\N	false
18	Er. Jayant K.	Gupta	sebhopalcpwd@gmail.com	SE (Civil), CPWD, Bhopal	\N	\N	false
19	Er. Sunil	Trivedi	secityjabalpur@gmail.com	SE (Electrical), MPPKVVCL	\N	\N	false
34	Aayesha Begam	Mansoori	ayesha@iiitdmj.ac.in	Electronics & Communication Engineering	\N	\N	false
35	Abhishek	Bawane	abhishekb@iiitdmj.ac.in	Purchase and Store	\N	\N	false
36	Adesh	Kumar	adesh@iiitdmj.ac.in	Finance and Accounts	\N	\N	false
37	Aishwarya	Pradhan	aishwarya@iiitdmj.ac.in	Mechanical Engineering	\N	\N	false
38	Akhilesh	Srivastava	akhil@iiitdmj.ac.in	Electronics & Communication Engineering	\N	\N	false
39	Alok	Kulkarni	alok@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
40	Aloysius	Beenu Michael	michael@iiitdmj.ac.in	Registrar Secretariat	\N	\N	false
41	Anil	Kumar	anil@iiitdmj.ac.in	Placement Cell	\N	\N	false
42	Anup	Bajpai	anupb@iiitdmj.ac.in	Mechanical Engineering	\N	\N	false
43	Anup Kumar	Gupta	ak@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
44	Anupam	Shukla	anupam@iiitdmj.ac.in	Mechanical Engineering	\N	\N	false
45	Ashok	Kumar	ashokk@iiitdmj.ac.in	On Lien	\N	\N	false
46	Bharti	Kewat	bharti@iiitdmj.ac.in	Electronics & Communication Engineering	\N	\N	false
47	Dev Krishna	Jha	devj@iiitdmj.ac.in	Junior Superintendent	\N	\N	false
48	Ganesh Prashad	Kashyap	ganesh@iiitdmj.ac.in	General Administration	\N	\N	false
49	Ghanshyam	Meshram	shyam@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
50	Jitendra Bahadur	Singh	jbsingh@iiitdmj.ac.in	Security & Central Mess	\N	\N	false
51	Kamlesh Singh	Warkade	kamlesh@iiitdmj.ac.in	General Administration	\N	\N	false
52	Kanhaiya Lal	Barmaiya	klb@iiitdmj.ac.in	Establishment/RTI	\N	\N	false
53	Manoj	Tigga	manoj@iiitdmj.ac.in	Mechanical Engineering	\N	\N	false
54	Mayank	Sharma	mayanksharma@iiitdmj.ac.in	Institute Works Department	\N	\N	false
55	Mayur S.	Mungole	mayur@iiitdmj.ac.in	Mechatronics	\N	\N	false
56	Megha	Kushwah	megha@iiitdmj.ac.in	Library	\N	\N	false
57	Milind P	Bobde	milind@iiitdmj.ac.in	Institute Works Department	\N	\N	false
58	Modh. Izrael	Khan	izrael@iiitdmj.ac.in	Directorate	\N	\N	false
59	Neha	Sharma	nehasharma@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
60	Nishant	Karda	nkarda@iiitdmj.ac.in	Registrar Secretariat	\N	\N	false
61	Om	Prakash	\N	Institute Works Department	\N	\N	false
62	Pankaj	Prajapati	pankaj@iiitdmj.ac.in	Establishment	\N	\N	false
63	Piyush Kumar	Usrethe	piyush@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
64	Piyush	Jain	piyushjain@iiitdmj.ac.in	Institute Works Department	\N	\N	false
65	Prashant	Agnihotri	prashanta@iiitdmj.ac.in	Office of the PIC RSPC	\N	\N	false
66	Praveen Kumar	Armo	praveen@iiitdmj.ac.in	Internal Audit	\N	\N	false
67	Rahul Kumar	Deshmukh	drahul@iiitdmj.ac.in	General Administration	\N	\N	false
68	Rajesh	\N	krajesh@iiitdmj.ac.in	Student Affairs	\N	\N	false
69	Rajesh	Kumar	rajeshk@iiitdmj.ac.in	Finance and Accounts	\N	\N	false
70	Rakesh Kumar	Mishra	rmishra@iiitdmj.ac.in	Institute Works Department	\N	\N	false
71	Richard	Saberio	richard@iiitdmj.ac.in	Academics	\N	\N	false
72	Robinson George	Markam	robin@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
73	Sandeep	Awasthi	sawasthi@iiitdmj.ac.in	Academics and Student Affairs	\N	\N	false
74	Santosh Kumar	Gouda	skgauda@iiitdmj.ac.in	Institute Works Department	\N	\N	false
75	Sapana S.	Tayade	\N	Library	\N	\N	false
76	Savita	Shah	\N	PHC	\N	\N	false
2	Shri Sanjay	Dubey	\N	Additional Chief Secretary, Department of Science and Technology, Government of MP, Mantralaya - 462004, Bhopal	\N	https://www.iiitdmj.ac.in/administration/BOG/sanjay%20dubey.jpg	false
9	Ms. Swapnali D.	Gadekar	registrar@iiitdmj.ac.in,swapnali@iiitdmj.ac.in	Acting Registrar, PDPM IIITDM Jabalpur	7612794021	https://www.iiitdmj.ac.in/administration/BOG/swapnali.jpg	false
12	Mr. Rizwan	Ahmed	rizwan@iiitdmj.ac.in	\N	7612794032	https://www.iiitdmj.ac.in/assets/img/office_administration/rizwan.jpg	false
13	Mr. Santosh	Mahobia	santosh@iiitdmj.ac.in	\N	7612794063	https://www.iiitdmj.ac.in/assets/img/office_administration/santosh.jpg	false
14	Mr. Shailesh	Sharma	shailesh@iiitdmj.ac.in	\N	7612794003	https://www.iiitdmj.ac.in/assets/img/office_administration/shailesh.jpg	false
15	Mrs. Priti	Patel	priti.patel@iiitdmj.ac.in	\N	7612794008	https://www.iiitdmj.ac.in/assets/img/office_administration/Priti-Patel.jpg	false
16	Mr. Omvir Singh	Bhadauria	omvir@iiitdmj.ac.in	\N	7612794143	https://www.iiitdmj.ac.in/assets/img/office_administration/Omvir.jpg	false
20	Mr. Pankaj	Prajapati	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/dean-acad/Mr.%20Pankaj-Prajapati.jpg	false
21	Mr. Richard	Saberio	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/dean-acad/Mr.%20Richard%20Saberio%20(Senior%20Assistant).JPG	false
22	Mr. Nitin	Tripathi	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/dean-acad/Mr.%20Nitin%20Tripathi%20(%20Office%20Assistant).jpg	false
23	Ms. Simran Kaur	Kalra	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/dean-acad/Ms.%20Simran%20Kaur%20Kalra%20(Office%20Assistant).jpeg	false
10	Shri Anil	Kumar	anil.k35@gov.in	Integrated Finance Division, Room No. 213-C, MHRD, Govt. of India ‘C’ Wing, Shastri Bhawan, New Delhi - 110001	1123387465		false
77	Simanta Kar	Gupta	simanta@iiitdmj.ac.in	Academics	\N	\N	false
78	Sunil	Jat	suniljat@iiitdmj.ac.in	Institute Works Department	\N	\N	false
79	Tabish	Khan	tabish@iiitdmj.ac.in	Computer Science & Engineering	\N	\N	false
80	Talib	Ahmed	talib@iiitdmj.ac.in	Directorate	\N	\N	false
81	Varun	Dubey	dvarun@iiitdmj.ac.in	Natural Science	\N	\N	false
1	Shri Deepak	Ghaisas	deepak.ghaisas@gencoval.com,info@gencoval.com	Gencoval Strategic Services Pvt. Ltd. 501, Windfall, Sahar Plaza Complex, Andheri, Kurla Road, Andheri (East), Mumbai – 400059	2242547001	https://www.iiitdmj.ac.in/administration/BOG/Shri%20Deepak%20Ghaisas.jpg	false
3	Smt. Saumya	Gupta	saumya.gupta@ias.nic.in	Joint Secretary (IIITs), Room No. 107-C, Shastri Bhawan, New Delhi	1123073687	https://www.iiitdmj.ac.in/administration/BOG/Smt.%20Saumya%20Gupta.jpg	false
5	Prof. Deepak Kumar	Srivastava	director.office@iimranchi.ac.in,office.ipc@iimranchi.ac.in	Director, IIM Ranchi, 5th, Floor, Suchana Bhawan Meur’s, Road, Audrey House Campus,, Jharkhand 834008	6512280113	https://www.iiitdmj.ac.in/administration/BOG/Shri%20Deepak%20Kumar%20Srivastava.jpg	false
6	Ms. Atreyee Borooah	Thekedath	atreyee@webcomindia.biz	Director, Web.com (India) Pvt. Ltd. 191, Maniram Dewan Road Chandmari, Guwahati- 781003-Assam	3612667017	https://www.iiitdmj.ac.in/administration/BOG/Ms.%20Atreyee%20Borooah%20Thekedath.jpg	false
7	Shri Prashant	Pole	prashantpole@gmail.com	Director, Disha Consultants, 1126, Besides Samadhan Hospital, Bhawani Prasad Tiwari Ward, (Near Telegraph Gate No. 3) Wright Town, Jabalpur – 482002	\N	https://www.iiitdmj.ac.in/administration/BOG/Shri%20Prashant%20Pole.jpg	false
8	Shri Subrahmanya	S. V.	svsenr@gmail.com	Former VC, Infosys Ltd. Bengaluru	\N	https://www.iiitdmj.ac.in/administration/BOG/Subramanya%20S%20V..jpg	false
24	Mr. Shashank	Patel	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/dean-acad/Mr.%20Shashank%20Patel%20(Office%20Assistant).jpeg	false
25	Mr. Irshad	Ahmed	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/dean-acad/Mr.%20Irshad%20Ahmed%20%20(Office%20Assistant).jpg	false
26	Shri Rajesh	Kanaujia	krajesh@iiitdmj.ac.in	\N	7612794174	http://www.iiitdmj.ac.in/students/rajesh.jpg	false
27	Ms. Aishwarya	Pradhan	aishwarya@iiitdmj.ac.in	\N	7612794174	http://www.iiitdmj.ac.in/students/aishwarya.jpg	false
28	Shri Amit	Kashyap	kashyapa@iiitdmj.ac.in	\N	7612794174	http://www.iiitdmj.ac.in/students/amit.jpg	false
29	Shri Monti	Jatav	\N	\N	\N	http://www.iiitdmj.ac.in/students/monty.png	false
30	Mr. Aditya	Sharma	adityasharma@iiitdmj.ac.in	\N	\N	https://www.iiitdmj.ac.in/assets/img/faculty/aditya-sharma.jpg	false
32	Dr. Dada Saheb	Ramteke	dsramteke@iiitdmj.ac.in	Condition monitoring, gear fault diagnosis, noise and vibration, signal processing, and machine learning	\N	https://www.iiitdmj.ac.in/assets/img/faculty/dsr.png	false
33	Shri R. P.	Dwivedi	\N	\N	\N	https://www.iiitdmj.ac.in/assets/img/office_administration/rpdwivedi.jpg	false
87	Harshit	Srivastava	harshitsrv2004@gmail.com	Paninni B/IIItdm/dumna/jabalpur/madhyapradesh, Jabalpur, 482005, India	7754876626	kk	false
\.


--
-- TOC entry 8302 (class 0 OID 717616)
-- Dependencies: 275
-- Data for Name: non_faculty_positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.non_faculty_positions (id, position_type, role, imp, email) FROM stdin;
2	board_of_governors	Member	2	\N
3	board_of_governors	Member	2	\N
4	board_of_governors	Member	2	\N
5	board_of_governors	Member	2	\N
6	board_of_governors	Member	2	\N
7	board_of_governors	Member	2	\N
8	board_of_governors	Member	2	\N
9	board_of_governors	Secretary, BOG	3	\N
1	finance_committee	Chairman, Finance Committee	1	\N
3	finance_committee	Member	2	\N
10	finance_committee	Member	2	\N
6	finance_committee	Member	2	\N
7	finance_committee	Member	2	\N
9	finance_committee	Secretary, Finance Committee	3	\N
9	registrar	Deputy Registrar	1	\N
9	registrar_f&a	Deputy Registrar	1	\N
12	audit	Deputy Registrar	1	\N
13	CPIO	Assistant Registrar	1	\N
14	RSPC	Assistant Registrar	1	\N
15	academics	Assistant Registrar	1	\N
16	training&placement	Placement Officer	2	\N
16	IIC	Assistant Registrar Cum Placement Officer	2	\N
17	building_works	Member	2	\N
7	building_works	Member	2	\N
18	building_works	Member	2	\N
19	building_works	Member	2	\N
9	building_works	Secretary (Ex-Officio)	3	\N
15	deans_acad	Assistant Registrar	3	\N
20	deans_acad	Senior Assistant	4	\N
21	deans_acad	Senior Assistant	4	\N
22	deans_acad	Office Assistant	5	\N
23	deans_acad	Office Assistant	5	\N
24	deans_acad	Office Assistant	5	\N
25	deans_acad	Office Assistant	5	\N
13	deans_students	Assistant Registrar (Students)	2	arsa@iiitdmj.ac.in
26	deans_students	Senior Assistant	3	\N
27	deans_students	Senior Assistant	3	\N
28	deans_students	Office Assistant	4	\N
29	deans_students	Peon	5	\N
30	research_staff	Technical Officer (Computer Science & Engineering)	1	\N
32	research_staff	Technical Officer (Mechanical Engineering)	1	\N
33	office_administration	Joint Registrar	1	\N
9	office_administration	Deputy Registrar (Finance & Accounts)	2	\N
12	office_administration	Deputy Registrar (Establishment, General Administration and Internal Audit)	2	\N
13	office_administration	Assistant Registrar (Student Affairs, Official Language Officer, CPIO)	3	\N
14	office_administration	Assistant Registrar (RSPC, P&S, Publicity Officer)	3	\N
15	office_administration	Assistant Registrar (Academics, Innovation & Incubation Cell and Patent & Copyright Cell, International Affairs)	3	\N
34	staff	Senior Technician	1	\N
35	staff	Junior Assistant	1	\N
36	staff	Senior Assistant	1	\N
37	staff	Junior Assistant	1	\N
38	staff	Senior Technician	1	\N
39	staff	Senior Technician	1	\N
40	staff	Junior Superintendent	1	\N
41	staff	Junior Superintendent	1	\N
42	staff	Senior Technician	1	\N
43	staff	Senior Technician	1	\N
44	staff	Senior Technician	1	\N
45	staff	Superintendent	1	\N
46	staff	Senior Technician	1	\N
47	staff	Junior Superintendent	1	\N
48	staff	Driver	1	\N
49	staff	Senior Technician	1	\N
50	staff	Senior Assistant	1	\N
51	staff	Senior Assistant	1	\N
52	staff	Junior Superintendent	1	\N
53	staff	Senior Technician	1	\N
54	staff	Junior Engineer(Civil)	1	\N
55	staff	Senior Technician	1	\N
56	staff	Junior Superintendent	1	\N
57	staff	Senior Technician	1	\N
58	staff	Driver	1	\N
59	staff	Junior Technician	1	\N
60	staff	Junior Superintendent	1	\N
61	staff	Clerk (On Contract)	1	\N
62	staff	Senior Assistant	1	\N
63	staff	Senior Technician	1	\N
64	staff	Junior Engineer (Civil)	1	\N
65	staff	Senior Assistant	1	\N
66	staff	Senior Assistant	1	\N
67	staff	Junior Assistant	1	\N
68	staff	Senior Assistant	1	\N
69	staff	Senior Assistant	1	\N
70	staff	Assistant Engineer (Civil)	1	\N
71	staff	Junior Assistant	1	\N
72	staff	Senior Technician	1	\N
73	staff	Junior Superintendent	1	\N
74	staff	Junior Engineer (Elec.)	1	\N
75	staff	Senior Assistant (Library)	1	\N
76	staff	Staff Nurse (on contact)	1	\N
77	staff	Senior Assistant	1	\N
78	staff	Asst. Engineer (Civil)	1	\N
79	staff	Senior Technician	1	\N
80	staff	Clerk (On Contract)	1	\N
81	staff	Senior Technician	1	\N
15	scholarship	Nodal Officer Scholarship/SPACS	1	\N
21	scholarship	Senior Assistant	2	\N
24	scholarship	Office Assistant	3	\N
1	board_of_governors	Chairman, BOG	1	
11	senate_special	\N	1	\N
\.


--
-- TOC entry 8303 (class 0 OID 717622)
-- Dependencies: 276
-- Data for Name: press_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.press_releases (id, name, href) FROM stdin;
1	International collaboration with USTP Philippines : IIITDM Jabalpur has signed an MoU and MoA with USTP Philippines (English)	https://www.iiitdmj.ac.in/downloads/Press%20Releases/2022/sep/Press%20release_Signing%20of%20MoU%20and%20MoA%20between%20IIITDM%20Jabalpur_English.pdf
2	International collaboration with USTP Philippines : IIITDM Jabalpur has signed an MoU and MoA with USTP Philippines (Hindi)	https://www.iiitdmj.ac.in/downloads/Press%20Releases/2022/sep/Updated_Press%20release_Signing%20of%20MoU%20and%20MoA%20between%20IIITDM%20Jabalpur_Hindi.pdf
\.


--
-- TOC entry 8305 (class 0 OID 717628)
-- Dependencies: 278
-- Data for Name: senate_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.senate_agenda (id, name, href) FROM stdin;
1	Seante Agenda December 20, 2012	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Seante%20Agenda%20December%2020,%202012
2	Senate Agenda April 6, 2013	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Senate%20Agenda%20April%206,%202013
3	Senate Agenda Jan 18-2014-Annexure 1	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Senate%20Agenda%20Jan%2018-2014-Annexure%201.pdf
4	Senate Agenda Jan 18-2014	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Senate%20Agenda%20Jan%2018-2014.pdf
5	Agenda notes- 29th meeting of the Senate held on May 12, 2014	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20notes-%2029th%20meeting%20of%20the%20Senate%20held%20on%20May%2012,%202014.pdf
6	Agenda notes- 30th meeting of the Senate held on June 23, 2014	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2030th%20senate%20meeting.pdf
7	Agenda notes- 32nd meeting of the Senate held on Jan 09, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2032nd%20senate%20meeting.pdf
8	Agenda notes of the 33rd senate meeting	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20notes%20of%20the%2033rd%20senate%20meeting.pdf
9	Annexure A of Agenda notes of the 33rd senate meeting	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Annexure%20'A'-33rd.pdf
10	Annexure B of Agenda notes of the 33rd senate meeting	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Annexure'B'-33rd.pdf
11	Agenda - 34th meeting of Senate held on May 9, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2034th%20meeting%20of%20Senate%20held%20on%20May%209,%202015.pdf
12	Agenda - 35th meeting of Senate held on July 31, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2035th%20meeting%20of%20Senate%20held%20on%20July%2031,%202015.pdf
13	Agenda - 36th meeting of Senate held on November 07, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20notes-%2036%20Senate%20meeting.pdf
14	Agenda - 37th meeting of Senate held on May 16, 2016	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2037th%20meeting%20of%20Senate%20held%20on%20May%2016,%202016
15	Agenda - 38th meeting of Senate held on August 12, 2016	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2038th%20meeting%20of%20Senate%20held%20on%20August%2012,%202016
16	Agenda - 39th meeting of Senate held on January 20, 2017	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2039th%20meeting%20of%20Senate%20held%20on%20January%2020,%202017
17	Agenda - 40th meeting of Senate held on July 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2040th%20meeting
18	Agenda of the 41st A Senate Meeting held on 11.09.2018	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20of%20the%2041st%20A%20Senate%20Meeting%20held%20on%2011.09.2018
19	Agenda of 42nd Senate meeting held on August 28, 2019	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20of%2042nd%20Senate%20meeting%20held%20on%20August%2028,%202019.pdf
20	Agenda - 43rd meeting of Senate held on January 08, 2020	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2043rd%20meeting%20of%20Senate%20held%20on%20January%2008,%202020.pdf
21	Agenda - 44th meeting of the senate held on May 23, 2020	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2044th%20meeting%20of%20the%20senate%20held%20on%20May%2023,%202020.pdf
22	Agenda - 46th meeting of the Senate held on January 15, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2046th%20meeting%20of%20the%20Senate%20held%20on%20January%2019,%202021.pdf
23	Agenda - 47th meeting of the Senate held on June 17, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2047th%20meeting%20of%20the%20Senate%20held%20on%20June%2017,%202021.pdf
24	Agenda - 48th meeting of the senate held on November 9, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2048th%20meeting%20of%20the%20senate%20held%20on%20November%209,%202021.pdf
25	Agenda - 49th meeting of the senate held on February 28, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2049th%20meeting%20of%20the%20senate%20held%20on%20February%2028,%202022.pdf
26	Agenda - 50th meeting of the senate held on July 16, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20agenda/Agenda%20-%2050th%20meeting%20of%20the%20senate%20held%20on%20July%2016,%202022.PDF
\.


--
-- TOC entry 8307 (class 0 OID 717634)
-- Dependencies: 280
-- Data for Name: senate_minutes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.senate_minutes (id, name, href) FROM stdin;
1	Minutes of the Senate meeting held on September 10, 2005	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/minutes%20of%20the%20Senate%20meeting%20held%20on%20September%2010,%202005.pdf
2	Minutes of the Senate meeting held on January 11, 2006	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/minutes%20of%20the%20Senate%20meeting%20held%20on%20January%2011,%202006.pdf
3	Minutes SENATE 2009-10 1st Meeting held on 20.02.10	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Meeting%20of%20the%20Senate%202009-2010%20(2).pdf
4	Minutes_SENATE_2010-11_1st_24.12.10	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes_SENATE_2010-11_1st_24.12.10.pdf
5	Minutes_SENATE_2010-11_2nd_12.03.2011	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes_SENATE_2010-11_2nd_12.03.2011.pdf
6	Minutes_SENATE_2010-11_special_06.05.2011	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes_SENATE_2010-11_special_06.05.2011.pdf
7	Minutes_SENATE_2010-11_3rd_17.06.2011	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/minutes_SENATE_2010-11_3rd_17.06.2012.pdf
8	Minutes  Special Senate Meeting - Jan 6, 2012	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/minutes%20-%20special%20senate%20meeting%20-%20jan%206,%202012.pdf
9	Minutes of the Senate 2011-12-1st Meeting	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/minutes%20of%20the%20Senate%20%202011-12-1st%20meeting.pdf
10	Senate Minutes- 2nd meeting - 24 March 2012	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/senate%20minutes-%202nd%20meeting%20-%2024%20March%202012.pdf
11	Minutes of 2011-12_3rd Senate Meeting Held on 18 june 2012	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%202011-12_3rd%20Senate%20Meeting%20Held%20on%2018%20june%202012.pdf
12	Minutes_SENATE_2012-13_First Meeting 8_9_12	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes_SENATE_8_9_12.pdf
13	Minutes of 2012-13-Senate 2nd meeting held on 20-12-1012	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%202012-13-Senate%202nd%20meeting%20held%20on%2020-12-1012.pdf
14	Resolution passed by the SENATE by circulation	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Resolution%20passed%20by%20the%20SENATE%20by%20circulation.pdf
15	Minutes of Special Senate held on 10-01-2013	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20Special%20Senate%20held%20on%2010-01-2013.pdf
16	Minutes of 2012_13_3rd Senate held on 06_04_2013	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%202012_13_3rd%20Senate%20held%20on%2006_04_2013.pdf
17	Minutes of Special Senate Meeting held on 16_05_2013	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20Special%20Senate%20Meeting%20held%20on%2016_05_2013.pdf
18	Minutes of 2012-13_4th Senate Held on July 01,2013	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%202012-13_4th%20Senate%20Held%20on%20July%2001,2013.pdf
19	Minutes of 2013-14 1st Senate Meeting Held on 27 September 2013	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%202013-14%201st%20Senate%20Meeting%20Held%20on%2027%20September%202013.pdf
20	Minutes of SENATE 2013-14 2nd meeting held on January 18, 2014	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20SENATE%202013-14%20%202nd%20meeting%20held%20on%20January%2018,2014.pdf
21	Minutes- 29th meeting of Senate held on May 12, 2014	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes-%2029th%20meeting%20of%20Senate%20held%20on%20May%2012,%202014.pdf
22	Minutes- 30th meeting of Senate held on june 23, 2014   ( List of Degree Awardees for Convocation 2014 )	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/list%20of%20degree%20awardees%20for%20convocation%202014.pdf
23	Minutes of 31st meeting (Special Senate) held on August 1 2014	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2031st%20meeting%20%20(Special%20Senate)%20held%20on%20August%201%20%202014%20.pdf
24	Minutes of 32nd Senate meeting held on January 9, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2032nd%20Senate%20meeting%20held%20on%20January%209,%202015.pdf
25	Annexure-II of Minutes of 32nd Senate meeting held on January 9, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure-II%20of%20Minutes%20of%2032nd%20Senate%20meeting%20held%20on%20January%20%209,%202015.pdf
26	Minutes of the 33rd senate meeting held on January 28 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20the%2033rd%20senate%20meeting%20held%20on%20January%2028%20%202015%20(c).pdf
27	Minutes- 34th senate meeting held on May 9, 2015 (c)	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes-%2034th%20senate%20meeting%20held%20on%20May%209,%202015%20(c).pdf
28	Minutes- 35th senate meeting held on July 31, 2015 (c)	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes-%2035th%20senate%20meeting%20held%20on%20July%2031,%202015%20(c).pdf
29	Minutes of 36th meeting- November 7, 2015	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2036th%20meeting-%20November%207,%202015%20(c).pdf
30	Recommendations of the Senate members - resolution by circulation- Jan 21 2016	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/recommendations%20of%20the%20Senate%20members%20-%20resolution%20by%20circulation-%20Jan%2021%202016.pdf
31	Minutes of the 37th meeting of the Senate May 16, 2016	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/minutes%20of%20the%2037th%20meeting%20of%20the%20Senate.pdf
32	Minutes of 38th senate meeting held on Aug 12, 2016	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2038th%20senate%20meeting%20held%20on%20Aug%2012,%202016.PDF
33	Minutes of 39th meeting of the Senate held on January 20, 2017	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2039th%20meeting%20of%20the%20Senate%20held%20on%20January%2020,%202017.pdf
34	Minutes of 40th meeting of the Senate held on July 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2040th%20meeting%20of%20the%20Senate%20held%20on%20July%2028,%202017.pdf
35	Annexure- I of Minutes of 40th meeting of the Senate held on July 28, 2017	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure-%20I,%20minutes%20of%2040th%20meeting%20of%20the%20Senate%20held%20on%20July%2028,%202017.pdf
36	Minutes of the 41A special meeting of the Senate held on September 11, 2018	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20the%2041A%20special%20meeting%20of%20the%20Senate%20held%20on%20September%2011,%202018.pdf
37	Minutes of 42nd meeting of the Senate held on August 28, 2019	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2042nd%20meeting%20of%20the%20Senate%20held%20on%20August%2028,%202019.pdf
38	Minutes of 43rd meeting of the Senate held on January 8, 2020	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2043rd%20meeting%20of%20the%20Senate%20held%20on%20January%208,%202020.pdf
39	Minutes of 44th meeting of the Senate held on May 23, 2020	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2044th%20meeting%20of%20the%20Senate%20held%20on%20May%2023,%202020.pdf
40	Minutes of 45th meeting of the Senate held on August 6 , 2020	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2045th%20meeting%20of%20the%20Senate%20held%20on%20August%206%20,%202020.pdf
41	Minutes of 46th meeting of the Senate held on January 19, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2046th%20meeting%20of%20the%20Senate%20held%20on%20January%2019,%202021.pdf
42	Annexure 1 of Minutes of 46th meeting of the Senate held on January 19, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure-I_%2046%20Senate_BDes%20Curriculum%20NEW%202020.pdf
43	Minutes of 47th meeting of the Senate held on June 17, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2047th%20meeting%20of%20the%20Senate%20held%20on%20June%2017,%202021.pdf
44	Minutes of the 48th meeting of the Senate held on November 9, 2021	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2048th%20meeting%20of%20the%20Senate%20held%20on%20November%209,%202021.pdf
45	Minutes of the 49th meeting of the Senate held on February 28, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%2049th%20meeting%20of%20the%20Senate%20held%20on%20February%2028,%202022.pdf
46	Minutes of the 50th meeting of the Senate held on July 16, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20the%2050th%20meeting%20of%20the%20Senate%20held%20on%20July%2016,%202022.pdf
47	Minutes of the 51st meeting of the Senate held on October 12, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20the%2051st%20Meeting%20of%20the%20Senate%20held%20on%20October%2012,%202022.pdf
48	Annexure 1 (PhD manual) of Minutes of the 51st meeting of the Senate held on October 12, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure%201_PhD%20manual_Minutes51.pdf
49	Annexure 2 (List of additional Degree Awardees) of Minutes of the 51st meeting of the Senate held on October 12, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure%202_List%20of%20additional%20Degree%20Awardees_Minutes51.pdf
50	Annexure 3 (New PDC Format) of Minutes of the 51st meeting of the Senate held on October 12, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure%203_New%20PDC%20Format_Minutes51.pdf
51	Annexure 4 (Liberal Arts Mandate) of Minutes of the 51st meeting of the Senate held on October 12, 2022	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure%204_Liberal%20Arts%20Mandate_Minutes51.pdf
52	Minutes of the 52nd meeting of the Senate held on July 27, 2023	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Minutes%20of%20the%2052nd%20meeting%20of%20the%20Senate%20held%20on%20July%2027,%202023.pdf
53	Annexure-I of Minutes of the 52nd meeting of the Senate held on July 27, 2023	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure-I_list%20of%20ratifications_52-meetings.pdf
54	Annexure-II of Minutes of the 52nd meeting of the Senate held on July 27, 2023	https://www.iiitdmj.ac.in/administration/downloads/senate%20minutes/Annexure-II_Guidelines%20for%20hiring%20adjunct%20faculty_52-meetings.pdf
\.


--
-- TOC entry 8309 (class 0 OID 717640)
-- Dependencies: 282
-- Data for Name: shops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shops (id, name, owner, contact, location) FROM stdin;
1	Non- Veg & Breakfast Corner	Kesar Jayka	8839794160, 9302077118	Near Vasishtha Hostel (Hall-1)
2	Fruit & Fruit Juice/ Vegetables	Gulzar Vegetable & Fruit	8827662337	Near Vasishtha Hostel (Hall-1)
3	Stationery Shop	Metro Traders	9827442116	Near Vasishtha Hostel (Hall-1)
4	Grocery Shop	Bakery Shop & Catering	9907173003	Near Vasishtha Hostel (Hall-1)
5	Tea/Coffee Shop [NESCAFE]	Ravi Provision Stores	9425152766	Near Vasishtha Hostel (Hall-1)
6	Barber Shop	Ashirwad Mens Parlour	9630507101, 6262210246	Ground Floor Hall-1 (Vasishtha Hostel)
7	Laundry Shop	Manoj Rajak	9329892077	Ground Floor Hall-1 (Vashishta Hostel)
\.


--
-- TOC entry 8314 (class 0 OID 863324)
-- Dependencies: 287
-- Data for Name: tenders; Type: TABLE DATA; Schema: public; Owner: superAdmin
--

COPY public.tenders (id, tender_no, title, description, advertisement_date, closing_date, category, status, type, attachments, department, estimated_value, "createdAt", "updatedAt", "importantUpdate") FROM stdin;
0276ea73-13d3-42a7-91f8-562601899903	NIQ NO: IIITDMJ/B&W/24/09/230	Provision of Dump yard at back side of Admin block	Schedule of Quantities	2024-09-05 00:00:00+05:30	2024-09-26 00:00:00+05:30	CONSTRUCTION	ARCHIVED	NIQ	\N	B&W Department	30000.00	\N	2024-11-11 15:24:22.065+05:30	\N
13d173db-43ab-4c04-921d-a1596f75c16c	IIITDMJ/LIB/EOI/04/2024/03	Empanelment of Book Suppliers/distributors/publishers	Financial Bids for Empanelment	2024-04-29 00:00:00+05:30	2024-05-30 00:00:00+05:30	SUPPLY	ARCHIVED	EOI	\N	Library Department	120000.00	\N	\N	\N
2c0fd91a-30b8-4972-9ca8-00d2bdb4c201	EOI No.:IIITDMJ/DSA/EOI/2024/02/188	EOI for running various shops	Non-Veg & Breakfast Corner, Grocery, Fruits & Juice/Vegetables, Stationery, Tea/Coffee Shop	2024-02-14 00:00:00+05:30	2024-03-01 00:00:00+05:30	SERVICES	ARCHIVED	EOI	\N	DSA Department	60000.00	\N	\N	\N
30782d71-cf7f-429f-94c3-9d2056a04cc8	NIQ NO: IIITDMJ/B&W/24/05/227	SITC of 33KV outdoor type VCB breaker	33kv yard for Power House at PDPM IIITDM Jabalpur	2024-05-02 00:00:00+05:30	2024-05-13 00:00:00+05:30	PROCUREMENT	ARCHIVED	NIQ	\N	Power House	100000.00	\N	\N	\N
46d240fe-aaeb-4254-a931-ff20c24ebed3	BID NO: GEM/2024/B/4901422	Professional Training Services (Version 2)	\N	2024-06-24 00:00:00+05:30	2024-07-15 00:00:00+05:30	SERVICES	ARCHIVED	TENDER	\N	Training Department	150000.00	\N	2024-11-11 15:24:22.065+05:30	\N
65352f13-84c1-4bb1-9c4c-f987e85bd5f4	NIQ NO: IIITDMJ/B&W/24/06/229	Providing and fixing SS sink and SS duct at Central Mess	Schedule of Quantities	2024-06-19 00:00:00+05:30	2024-07-03 00:00:00+05:30	CONSTRUCTION	ARCHIVED	NIQ	\N	B&W Department	45000.00	\N	2024-11-11 15:24:22.065+05:30	\N
dc79f1b3-d9a2-465a-99dc-e76ea59ebaad	EOI No.:IIITDMJ/PCC/IPR/2024/01	Empanelment of Intellectual Property Firms	Corrigendum 1, Corrigendum 2	2024-06-03 00:00:00+05:30	2024-06-21 00:00:00+05:30	SERVICES	ARCHIVED	EOI	\N	PCC/IPR Department	200000.00	\N	\N	\N
45d5ce95-e67c-4ec2-9c07-cade0fb8e202	BID NO: GEM/2024/B/5548656	Procurement of Answer sheets and Stationary items	Answer Copies, Pages, Envelopes, Letterhead, File, Drawing Sheets	2024-10-28 05:30:00+05:30	2024-11-18 05:30:00+05:30	PROCUREMENT	ARCHIVED	TENDER	"[]"	Procurement Department	50000.00	\N	2024-12-20 01:01:03.815+05:30	\N
5e952e0a-0975-4f8c-8d35-b7b862934d98	NIQ NO: IIITDMJ/B&W/25/01/232	Provision of Aluminium partition of RSPC area behind central dispatch office Admin building IIITDMJ		2025-04-24 05:30:00+05:30	2025-05-25 05:30:00+05:30	PROCUREMENT	ARCHIVED	NIQ	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/downloads/Tenders/Tender-2025/NIQ-232.pdf\\",\\"title\\":\\"NIQ-232\\"},{\\"url\\":\\"https://www.iiitdmj.ac.in/downloads/Tenders/Tender-2025/Schedule%20of%20Quantity%20-%20Aluminium%20Partition%20RSPC.pdf\\",\\"title\\":\\"Schedule of Quantities\\"}]"	Procurement Department	0.00	2025-04-24 10:18:08.636+05:30	2025-07-16 12:05:46.116+05:30	The quotations will be received up to dt. 18.02.2025 at 3:00 P.M. which will be opened on\r\nsame day at 4:00 P.M. 
cc8d4b74-a245-4064-ae1f-1abbb5525f7e	IIITDMJ/DSA/12/2024/786	Expression of interest For running BEAUTY PARLOUR SHOP		2025-04-24 05:30:00+05:30	2025-05-27 05:30:00+05:30	SERVICES	ARCHIVED	TENDER	"[{\\"url\\":\\"https://www.iiitdmj.ac.in/downloads/Tenders/Tender-2024/EOI_%20Hostel-Beauty-Parlour-Shop.pdf\\",\\"title\\":\\"EOI BEAUTY PARLOUR SHOP\\"}]"	Procurement Department	0.00	2025-04-24 10:32:11.651+05:30	2025-07-16 12:05:46.116+05:30	Last date has been extended till May 28, 2025.
\.


--
-- TOC entry 8357 (class 0 OID 0)
-- Dependencies: 220
-- Name: Carousels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."Carousels_id_seq"', 25, true);


--
-- TOC entry 8358 (class 0 OID 0)
-- Dependencies: 222
-- Name: Downloads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."Downloads_id_seq"', 42, true);


--
-- TOC entry 8359 (class 0 OID 0)
-- Dependencies: 224
-- Name: FacultyPics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."FacultyPics_id_seq"', 78, true);


--
-- TOC entry 8360 (class 0 OID 0)
-- Dependencies: 226
-- Name: GymkhanaNotifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."GymkhanaNotifications_id_seq"', 1, true);


--
-- TOC entry 8361 (class 0 OID 0)
-- Dependencies: 228
-- Name: Marquees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."Marquees_id_seq"', 9, true);


--
-- TOC entry 8362 (class 0 OID 0)
-- Dependencies: 230
-- Name: News_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."News_id_seq"', 60, true);


--
-- TOC entry 8363 (class 0 OID 0)
-- Dependencies: 232
-- Name: Notices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."Notices_id_seq"', 6, true);


--
-- TOC entry 8364 (class 0 OID 0)
-- Dependencies: 234
-- Name: RedAnnouncements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public."RedAnnouncements_id_seq"', 15, true);


--
-- TOC entry 8365 (class 0 OID 0)
-- Dependencies: 236
-- Name: academic_calander_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academic_calander_id_seq', 2, true);


--
-- TOC entry 8366 (class 0 OID 0)
-- Dependencies: 238
-- Name: achievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public.achievements_id_seq', 6, true);


--
-- TOC entry 8367 (class 0 OID 0)
-- Dependencies: 240
-- Name: annual_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.annual_account_id_seq', 24, true);


--
-- TOC entry 8368 (class 0 OID 0)
-- Dependencies: 242
-- Name: annual_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.annual_report_id_seq', 26, true);


--
-- TOC entry 8369 (class 0 OID 0)
-- Dependencies: 244
-- Name: bog_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bog_agenda_id_seq', 1, false);


--
-- TOC entry 8370 (class 0 OID 0)
-- Dependencies: 246
-- Name: bog_minutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bog_minutes_id_seq', 1, false);


--
-- TOC entry 8371 (class 0 OID 0)
-- Dependencies: 249
-- Name: bwg_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bwg_agenda_id_seq', 24, true);


--
-- TOC entry 8372 (class 0 OID 0)
-- Dependencies: 250
-- Name: bwg_minutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bwg_minutes_id_seq', 24, true);


--
-- TOC entry 8373 (class 0 OID 0)
-- Dependencies: 285
-- Name: convocations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public.convocations_id_seq', 1, true);


--
-- TOC entry 8374 (class 0 OID 0)
-- Dependencies: 253
-- Name: counselling_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.counselling_id_seq', 37, true);


--
-- TOC entry 8375 (class 0 OID 0)
-- Dependencies: 255
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctors_id_seq', 21, true);


--
-- TOC entry 8376 (class 0 OID 0)
-- Dependencies: 257
-- Name: event_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_images_id_seq', 25, true);


--
-- TOC entry 8377 (class 0 OID 0)
-- Dependencies: 259
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superAdmin
--

SELECT pg_catalog.setval('public.events_id_seq', 13, true);


--
-- TOC entry 8378 (class 0 OID 0)
-- Dependencies: 261
-- Name: external_circulars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.external_circulars_id_seq', 5, true);


--
-- TOC entry 8379 (class 0 OID 0)
-- Dependencies: 264
-- Name: fc_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fc_agenda_id_seq', 1, false);


--
-- TOC entry 8380 (class 0 OID 0)
-- Dependencies: 266
-- Name: fc_minutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fc_minutes_id_seq', 1, false);


--
-- TOC entry 8381 (class 0 OID 0)
-- Dependencies: 268
-- Name: grievance_redressal_cell_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grievance_redressal_cell_id_seq', 2, true);


--
-- TOC entry 8382 (class 0 OID 0)
-- Dependencies: 270
-- Name: hostels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hostels_id_seq', 12, true);


--
-- TOC entry 8383 (class 0 OID 0)
-- Dependencies: 272
-- Name: internal_circulars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.internal_circulars_id_seq', 10, true);


--
-- TOC entry 8384 (class 0 OID 0)
-- Dependencies: 274
-- Name: non_faculty_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.non_faculty_info_id_seq', 87, true);


--
-- TOC entry 8385 (class 0 OID 0)
-- Dependencies: 277
-- Name: press_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.press_releases_id_seq', 8, true);


--
-- TOC entry 8386 (class 0 OID 0)
-- Dependencies: 279
-- Name: senate_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.senate_agenda_id_seq', 26, true);


--
-- TOC entry 8387 (class 0 OID 0)
-- Dependencies: 281
-- Name: senate_minutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.senate_minutes_id_seq', 54, true);


--
-- TOC entry 8388 (class 0 OID 0)
-- Dependencies: 283
-- Name: shops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shops_id_seq', 11, true);


--
-- TOC entry 4972 (class 2606 OID 717685)
-- Name: Carousels Carousels_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Carousels"
    ADD CONSTRAINT "Carousels_pkey" PRIMARY KEY (id);


--
-- TOC entry 4974 (class 2606 OID 717687)
-- Name: Downloads Downloads_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Downloads"
    ADD CONSTRAINT "Downloads_pkey" PRIMARY KEY (id);


--
-- TOC entry 4976 (class 2606 OID 717689)
-- Name: FacultyPics FacultyPics_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."FacultyPics"
    ADD CONSTRAINT "FacultyPics_pkey" PRIMARY KEY (id);


--
-- TOC entry 4978 (class 2606 OID 717691)
-- Name: GymkhanaNotifications GymkhanaNotifications_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."GymkhanaNotifications"
    ADD CONSTRAINT "GymkhanaNotifications_pkey" PRIMARY KEY (id);


--
-- TOC entry 4980 (class 2606 OID 717693)
-- Name: Marquees Marquees_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Marquees"
    ADD CONSTRAINT "Marquees_pkey" PRIMARY KEY (id);


--
-- TOC entry 4982 (class 2606 OID 717695)
-- Name: News News_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."News"
    ADD CONSTRAINT "News_pkey" PRIMARY KEY (id);


--
-- TOC entry 4984 (class 2606 OID 717697)
-- Name: Notices Notices_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."Notices"
    ADD CONSTRAINT "Notices_pkey" PRIMARY KEY (id);


--
-- TOC entry 4986 (class 2606 OID 717699)
-- Name: RedAnnouncements RedAnnouncements_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public."RedAnnouncements"
    ADD CONSTRAINT "RedAnnouncements_pkey" PRIMARY KEY (id);


--
-- TOC entry 4988 (class 2606 OID 717701)
-- Name: academic_calander academic_calander_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_calander
    ADD CONSTRAINT academic_calander_pkey PRIMARY KEY (id, name);


--
-- TOC entry 4990 (class 2606 OID 717703)
-- Name: achievements achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 4992 (class 2606 OID 717705)
-- Name: annual_account annual_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annual_account
    ADD CONSTRAINT annual_account_pkey PRIMARY KEY (id, name);


--
-- TOC entry 4994 (class 2606 OID 717707)
-- Name: annual_report annual_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.annual_report
    ADD CONSTRAINT annual_report_pkey PRIMARY KEY (id, name);


--
-- TOC entry 4996 (class 2606 OID 717709)
-- Name: bog_agenda bog_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bog_agenda
    ADD CONSTRAINT bog_agenda_pkey PRIMARY KEY (id, name);


--
-- TOC entry 4998 (class 2606 OID 717711)
-- Name: bog_minutes bog_minutes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bog_minutes
    ADD CONSTRAINT bog_minutes_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5000 (class 2606 OID 717713)
-- Name: bwc_agenda bwg_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bwc_agenda
    ADD CONSTRAINT bwg_agenda_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5002 (class 2606 OID 717715)
-- Name: bwc_minutes bwg_minutes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bwc_minutes
    ADD CONSTRAINT bwg_minutes_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5004 (class 2606 OID 917474)
-- Name: calendars calendars_calendar_no_key; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key UNIQUE (calendar_no);


--
-- TOC entry 5006 (class 2606 OID 917476)
-- Name: calendars calendars_calendar_no_key1; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key1 UNIQUE (calendar_no);


--
-- TOC entry 5008 (class 2606 OID 917478)
-- Name: calendars calendars_calendar_no_key10; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key10 UNIQUE (calendar_no);


--
-- TOC entry 5010 (class 2606 OID 917480)
-- Name: calendars calendars_calendar_no_key100; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key100 UNIQUE (calendar_no);


--
-- TOC entry 5012 (class 2606 OID 917482)
-- Name: calendars calendars_calendar_no_key101; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key101 UNIQUE (calendar_no);


--
-- TOC entry 5014 (class 2606 OID 917484)
-- Name: calendars calendars_calendar_no_key102; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key102 UNIQUE (calendar_no);


--
-- TOC entry 5016 (class 2606 OID 917486)
-- Name: calendars calendars_calendar_no_key103; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key103 UNIQUE (calendar_no);


--
-- TOC entry 5018 (class 2606 OID 917488)
-- Name: calendars calendars_calendar_no_key104; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key104 UNIQUE (calendar_no);


--
-- TOC entry 5020 (class 2606 OID 917490)
-- Name: calendars calendars_calendar_no_key105; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key105 UNIQUE (calendar_no);


--
-- TOC entry 5022 (class 2606 OID 917492)
-- Name: calendars calendars_calendar_no_key106; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key106 UNIQUE (calendar_no);


--
-- TOC entry 5024 (class 2606 OID 917494)
-- Name: calendars calendars_calendar_no_key107; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key107 UNIQUE (calendar_no);


--
-- TOC entry 5026 (class 2606 OID 917496)
-- Name: calendars calendars_calendar_no_key108; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key108 UNIQUE (calendar_no);


--
-- TOC entry 5028 (class 2606 OID 917498)
-- Name: calendars calendars_calendar_no_key109; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key109 UNIQUE (calendar_no);


--
-- TOC entry 5030 (class 2606 OID 917500)
-- Name: calendars calendars_calendar_no_key11; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key11 UNIQUE (calendar_no);


--
-- TOC entry 5032 (class 2606 OID 917502)
-- Name: calendars calendars_calendar_no_key110; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key110 UNIQUE (calendar_no);


--
-- TOC entry 5034 (class 2606 OID 917504)
-- Name: calendars calendars_calendar_no_key111; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key111 UNIQUE (calendar_no);


--
-- TOC entry 5036 (class 2606 OID 917506)
-- Name: calendars calendars_calendar_no_key112; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key112 UNIQUE (calendar_no);


--
-- TOC entry 5038 (class 2606 OID 917508)
-- Name: calendars calendars_calendar_no_key113; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key113 UNIQUE (calendar_no);


--
-- TOC entry 5040 (class 2606 OID 917510)
-- Name: calendars calendars_calendar_no_key114; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key114 UNIQUE (calendar_no);


--
-- TOC entry 5042 (class 2606 OID 917512)
-- Name: calendars calendars_calendar_no_key115; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key115 UNIQUE (calendar_no);


--
-- TOC entry 5044 (class 2606 OID 917514)
-- Name: calendars calendars_calendar_no_key116; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key116 UNIQUE (calendar_no);


--
-- TOC entry 5046 (class 2606 OID 917516)
-- Name: calendars calendars_calendar_no_key117; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key117 UNIQUE (calendar_no);


--
-- TOC entry 5048 (class 2606 OID 917518)
-- Name: calendars calendars_calendar_no_key118; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key118 UNIQUE (calendar_no);


--
-- TOC entry 5050 (class 2606 OID 917520)
-- Name: calendars calendars_calendar_no_key119; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key119 UNIQUE (calendar_no);


--
-- TOC entry 5052 (class 2606 OID 917522)
-- Name: calendars calendars_calendar_no_key12; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key12 UNIQUE (calendar_no);


--
-- TOC entry 5054 (class 2606 OID 917524)
-- Name: calendars calendars_calendar_no_key120; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key120 UNIQUE (calendar_no);


--
-- TOC entry 5056 (class 2606 OID 917526)
-- Name: calendars calendars_calendar_no_key121; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key121 UNIQUE (calendar_no);


--
-- TOC entry 5058 (class 2606 OID 917528)
-- Name: calendars calendars_calendar_no_key122; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key122 UNIQUE (calendar_no);


--
-- TOC entry 5060 (class 2606 OID 917530)
-- Name: calendars calendars_calendar_no_key123; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key123 UNIQUE (calendar_no);


--
-- TOC entry 5062 (class 2606 OID 917532)
-- Name: calendars calendars_calendar_no_key124; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key124 UNIQUE (calendar_no);


--
-- TOC entry 5064 (class 2606 OID 917534)
-- Name: calendars calendars_calendar_no_key125; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key125 UNIQUE (calendar_no);


--
-- TOC entry 5066 (class 2606 OID 917536)
-- Name: calendars calendars_calendar_no_key126; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key126 UNIQUE (calendar_no);


--
-- TOC entry 5068 (class 2606 OID 917538)
-- Name: calendars calendars_calendar_no_key127; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key127 UNIQUE (calendar_no);


--
-- TOC entry 5070 (class 2606 OID 917540)
-- Name: calendars calendars_calendar_no_key128; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key128 UNIQUE (calendar_no);


--
-- TOC entry 5072 (class 2606 OID 917542)
-- Name: calendars calendars_calendar_no_key129; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key129 UNIQUE (calendar_no);


--
-- TOC entry 5074 (class 2606 OID 917544)
-- Name: calendars calendars_calendar_no_key13; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key13 UNIQUE (calendar_no);


--
-- TOC entry 5076 (class 2606 OID 917546)
-- Name: calendars calendars_calendar_no_key130; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key130 UNIQUE (calendar_no);


--
-- TOC entry 5078 (class 2606 OID 917548)
-- Name: calendars calendars_calendar_no_key131; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key131 UNIQUE (calendar_no);


--
-- TOC entry 5080 (class 2606 OID 917550)
-- Name: calendars calendars_calendar_no_key132; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key132 UNIQUE (calendar_no);


--
-- TOC entry 5082 (class 2606 OID 917552)
-- Name: calendars calendars_calendar_no_key133; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key133 UNIQUE (calendar_no);


--
-- TOC entry 5084 (class 2606 OID 917554)
-- Name: calendars calendars_calendar_no_key134; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key134 UNIQUE (calendar_no);


--
-- TOC entry 5086 (class 2606 OID 917556)
-- Name: calendars calendars_calendar_no_key135; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key135 UNIQUE (calendar_no);


--
-- TOC entry 5088 (class 2606 OID 917558)
-- Name: calendars calendars_calendar_no_key136; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key136 UNIQUE (calendar_no);


--
-- TOC entry 5090 (class 2606 OID 917560)
-- Name: calendars calendars_calendar_no_key137; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key137 UNIQUE (calendar_no);


--
-- TOC entry 5092 (class 2606 OID 917562)
-- Name: calendars calendars_calendar_no_key138; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key138 UNIQUE (calendar_no);


--
-- TOC entry 5094 (class 2606 OID 917566)
-- Name: calendars calendars_calendar_no_key139; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key139 UNIQUE (calendar_no);


--
-- TOC entry 5096 (class 2606 OID 917568)
-- Name: calendars calendars_calendar_no_key14; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key14 UNIQUE (calendar_no);


--
-- TOC entry 5098 (class 2606 OID 917570)
-- Name: calendars calendars_calendar_no_key140; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key140 UNIQUE (calendar_no);


--
-- TOC entry 5100 (class 2606 OID 917572)
-- Name: calendars calendars_calendar_no_key141; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key141 UNIQUE (calendar_no);


--
-- TOC entry 5102 (class 2606 OID 917574)
-- Name: calendars calendars_calendar_no_key142; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key142 UNIQUE (calendar_no);


--
-- TOC entry 5104 (class 2606 OID 917578)
-- Name: calendars calendars_calendar_no_key143; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key143 UNIQUE (calendar_no);


--
-- TOC entry 5106 (class 2606 OID 917580)
-- Name: calendars calendars_calendar_no_key144; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key144 UNIQUE (calendar_no);


--
-- TOC entry 5108 (class 2606 OID 917582)
-- Name: calendars calendars_calendar_no_key145; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key145 UNIQUE (calendar_no);


--
-- TOC entry 5110 (class 2606 OID 917584)
-- Name: calendars calendars_calendar_no_key146; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key146 UNIQUE (calendar_no);


--
-- TOC entry 5112 (class 2606 OID 917586)
-- Name: calendars calendars_calendar_no_key147; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key147 UNIQUE (calendar_no);


--
-- TOC entry 5114 (class 2606 OID 917588)
-- Name: calendars calendars_calendar_no_key148; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key148 UNIQUE (calendar_no);


--
-- TOC entry 5116 (class 2606 OID 917590)
-- Name: calendars calendars_calendar_no_key149; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key149 UNIQUE (calendar_no);


--
-- TOC entry 5118 (class 2606 OID 917592)
-- Name: calendars calendars_calendar_no_key15; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key15 UNIQUE (calendar_no);


--
-- TOC entry 5120 (class 2606 OID 917594)
-- Name: calendars calendars_calendar_no_key150; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key150 UNIQUE (calendar_no);


--
-- TOC entry 5122 (class 2606 OID 917774)
-- Name: calendars calendars_calendar_no_key151; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key151 UNIQUE (calendar_no);


--
-- TOC entry 5124 (class 2606 OID 917776)
-- Name: calendars calendars_calendar_no_key152; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key152 UNIQUE (calendar_no);


--
-- TOC entry 5126 (class 2606 OID 917778)
-- Name: calendars calendars_calendar_no_key153; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key153 UNIQUE (calendar_no);


--
-- TOC entry 5128 (class 2606 OID 917780)
-- Name: calendars calendars_calendar_no_key154; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key154 UNIQUE (calendar_no);


--
-- TOC entry 5130 (class 2606 OID 917782)
-- Name: calendars calendars_calendar_no_key155; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key155 UNIQUE (calendar_no);


--
-- TOC entry 5132 (class 2606 OID 917784)
-- Name: calendars calendars_calendar_no_key156; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key156 UNIQUE (calendar_no);


--
-- TOC entry 5134 (class 2606 OID 917786)
-- Name: calendars calendars_calendar_no_key157; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key157 UNIQUE (calendar_no);


--
-- TOC entry 5136 (class 2606 OID 917788)
-- Name: calendars calendars_calendar_no_key158; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key158 UNIQUE (calendar_no);


--
-- TOC entry 5138 (class 2606 OID 917790)
-- Name: calendars calendars_calendar_no_key159; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key159 UNIQUE (calendar_no);


--
-- TOC entry 5140 (class 2606 OID 917792)
-- Name: calendars calendars_calendar_no_key16; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key16 UNIQUE (calendar_no);


--
-- TOC entry 5142 (class 2606 OID 917794)
-- Name: calendars calendars_calendar_no_key160; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key160 UNIQUE (calendar_no);


--
-- TOC entry 5144 (class 2606 OID 917796)
-- Name: calendars calendars_calendar_no_key161; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key161 UNIQUE (calendar_no);


--
-- TOC entry 5146 (class 2606 OID 917798)
-- Name: calendars calendars_calendar_no_key162; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key162 UNIQUE (calendar_no);


--
-- TOC entry 5148 (class 2606 OID 917800)
-- Name: calendars calendars_calendar_no_key163; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key163 UNIQUE (calendar_no);


--
-- TOC entry 5150 (class 2606 OID 917802)
-- Name: calendars calendars_calendar_no_key164; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key164 UNIQUE (calendar_no);


--
-- TOC entry 5152 (class 2606 OID 917804)
-- Name: calendars calendars_calendar_no_key165; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key165 UNIQUE (calendar_no);


--
-- TOC entry 5154 (class 2606 OID 917806)
-- Name: calendars calendars_calendar_no_key166; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key166 UNIQUE (calendar_no);


--
-- TOC entry 5156 (class 2606 OID 917808)
-- Name: calendars calendars_calendar_no_key167; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key167 UNIQUE (calendar_no);


--
-- TOC entry 5158 (class 2606 OID 917810)
-- Name: calendars calendars_calendar_no_key168; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key168 UNIQUE (calendar_no);


--
-- TOC entry 5160 (class 2606 OID 917812)
-- Name: calendars calendars_calendar_no_key169; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key169 UNIQUE (calendar_no);


--
-- TOC entry 5162 (class 2606 OID 917814)
-- Name: calendars calendars_calendar_no_key17; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key17 UNIQUE (calendar_no);


--
-- TOC entry 5164 (class 2606 OID 917816)
-- Name: calendars calendars_calendar_no_key170; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key170 UNIQUE (calendar_no);


--
-- TOC entry 5166 (class 2606 OID 917818)
-- Name: calendars calendars_calendar_no_key171; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key171 UNIQUE (calendar_no);


--
-- TOC entry 5168 (class 2606 OID 917820)
-- Name: calendars calendars_calendar_no_key172; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key172 UNIQUE (calendar_no);


--
-- TOC entry 5170 (class 2606 OID 917822)
-- Name: calendars calendars_calendar_no_key173; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key173 UNIQUE (calendar_no);


--
-- TOC entry 5172 (class 2606 OID 917824)
-- Name: calendars calendars_calendar_no_key174; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key174 UNIQUE (calendar_no);


--
-- TOC entry 5174 (class 2606 OID 917826)
-- Name: calendars calendars_calendar_no_key175; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key175 UNIQUE (calendar_no);


--
-- TOC entry 5176 (class 2606 OID 917828)
-- Name: calendars calendars_calendar_no_key176; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key176 UNIQUE (calendar_no);


--
-- TOC entry 5178 (class 2606 OID 917830)
-- Name: calendars calendars_calendar_no_key177; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key177 UNIQUE (calendar_no);


--
-- TOC entry 5180 (class 2606 OID 917832)
-- Name: calendars calendars_calendar_no_key178; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key178 UNIQUE (calendar_no);


--
-- TOC entry 5182 (class 2606 OID 917834)
-- Name: calendars calendars_calendar_no_key179; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key179 UNIQUE (calendar_no);


--
-- TOC entry 5184 (class 2606 OID 917836)
-- Name: calendars calendars_calendar_no_key18; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key18 UNIQUE (calendar_no);


--
-- TOC entry 5186 (class 2606 OID 917838)
-- Name: calendars calendars_calendar_no_key180; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key180 UNIQUE (calendar_no);


--
-- TOC entry 5188 (class 2606 OID 917840)
-- Name: calendars calendars_calendar_no_key181; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key181 UNIQUE (calendar_no);


--
-- TOC entry 5190 (class 2606 OID 917842)
-- Name: calendars calendars_calendar_no_key182; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key182 UNIQUE (calendar_no);


--
-- TOC entry 5192 (class 2606 OID 917844)
-- Name: calendars calendars_calendar_no_key183; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key183 UNIQUE (calendar_no);


--
-- TOC entry 5194 (class 2606 OID 917846)
-- Name: calendars calendars_calendar_no_key184; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key184 UNIQUE (calendar_no);


--
-- TOC entry 5196 (class 2606 OID 917848)
-- Name: calendars calendars_calendar_no_key185; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key185 UNIQUE (calendar_no);


--
-- TOC entry 5198 (class 2606 OID 917882)
-- Name: calendars calendars_calendar_no_key186; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key186 UNIQUE (calendar_no);


--
-- TOC entry 5200 (class 2606 OID 917884)
-- Name: calendars calendars_calendar_no_key187; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key187 UNIQUE (calendar_no);


--
-- TOC entry 5202 (class 2606 OID 917886)
-- Name: calendars calendars_calendar_no_key188; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key188 UNIQUE (calendar_no);


--
-- TOC entry 5204 (class 2606 OID 917888)
-- Name: calendars calendars_calendar_no_key189; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key189 UNIQUE (calendar_no);


--
-- TOC entry 5206 (class 2606 OID 917890)
-- Name: calendars calendars_calendar_no_key19; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key19 UNIQUE (calendar_no);


--
-- TOC entry 5208 (class 2606 OID 917892)
-- Name: calendars calendars_calendar_no_key190; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key190 UNIQUE (calendar_no);


--
-- TOC entry 5210 (class 2606 OID 917894)
-- Name: calendars calendars_calendar_no_key191; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key191 UNIQUE (calendar_no);


--
-- TOC entry 5212 (class 2606 OID 917896)
-- Name: calendars calendars_calendar_no_key192; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key192 UNIQUE (calendar_no);


--
-- TOC entry 5214 (class 2606 OID 917898)
-- Name: calendars calendars_calendar_no_key193; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key193 UNIQUE (calendar_no);


--
-- TOC entry 5216 (class 2606 OID 917900)
-- Name: calendars calendars_calendar_no_key194; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key194 UNIQUE (calendar_no);


--
-- TOC entry 5218 (class 2606 OID 917902)
-- Name: calendars calendars_calendar_no_key195; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key195 UNIQUE (calendar_no);


--
-- TOC entry 5220 (class 2606 OID 917904)
-- Name: calendars calendars_calendar_no_key196; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key196 UNIQUE (calendar_no);


--
-- TOC entry 5222 (class 2606 OID 917906)
-- Name: calendars calendars_calendar_no_key197; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key197 UNIQUE (calendar_no);


--
-- TOC entry 5224 (class 2606 OID 917908)
-- Name: calendars calendars_calendar_no_key198; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key198 UNIQUE (calendar_no);


--
-- TOC entry 5226 (class 2606 OID 917910)
-- Name: calendars calendars_calendar_no_key199; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key199 UNIQUE (calendar_no);


--
-- TOC entry 5228 (class 2606 OID 917912)
-- Name: calendars calendars_calendar_no_key2; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key2 UNIQUE (calendar_no);


--
-- TOC entry 5230 (class 2606 OID 917914)
-- Name: calendars calendars_calendar_no_key20; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key20 UNIQUE (calendar_no);


--
-- TOC entry 5232 (class 2606 OID 917916)
-- Name: calendars calendars_calendar_no_key200; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key200 UNIQUE (calendar_no);


--
-- TOC entry 5234 (class 2606 OID 917918)
-- Name: calendars calendars_calendar_no_key201; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key201 UNIQUE (calendar_no);


--
-- TOC entry 5236 (class 2606 OID 917920)
-- Name: calendars calendars_calendar_no_key202; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key202 UNIQUE (calendar_no);


--
-- TOC entry 5238 (class 2606 OID 917922)
-- Name: calendars calendars_calendar_no_key203; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key203 UNIQUE (calendar_no);


--
-- TOC entry 5240 (class 2606 OID 917924)
-- Name: calendars calendars_calendar_no_key204; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key204 UNIQUE (calendar_no);


--
-- TOC entry 5242 (class 2606 OID 917926)
-- Name: calendars calendars_calendar_no_key205; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key205 UNIQUE (calendar_no);


--
-- TOC entry 5244 (class 2606 OID 917928)
-- Name: calendars calendars_calendar_no_key206; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key206 UNIQUE (calendar_no);


--
-- TOC entry 5246 (class 2606 OID 917930)
-- Name: calendars calendars_calendar_no_key207; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key207 UNIQUE (calendar_no);


--
-- TOC entry 5248 (class 2606 OID 917932)
-- Name: calendars calendars_calendar_no_key208; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key208 UNIQUE (calendar_no);


--
-- TOC entry 5250 (class 2606 OID 917934)
-- Name: calendars calendars_calendar_no_key209; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key209 UNIQUE (calendar_no);


--
-- TOC entry 5252 (class 2606 OID 917936)
-- Name: calendars calendars_calendar_no_key21; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key21 UNIQUE (calendar_no);


--
-- TOC entry 5254 (class 2606 OID 917938)
-- Name: calendars calendars_calendar_no_key210; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key210 UNIQUE (calendar_no);


--
-- TOC entry 5256 (class 2606 OID 917940)
-- Name: calendars calendars_calendar_no_key211; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key211 UNIQUE (calendar_no);


--
-- TOC entry 5258 (class 2606 OID 917942)
-- Name: calendars calendars_calendar_no_key212; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key212 UNIQUE (calendar_no);


--
-- TOC entry 5260 (class 2606 OID 917944)
-- Name: calendars calendars_calendar_no_key213; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key213 UNIQUE (calendar_no);


--
-- TOC entry 5262 (class 2606 OID 917946)
-- Name: calendars calendars_calendar_no_key214; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key214 UNIQUE (calendar_no);


--
-- TOC entry 5264 (class 2606 OID 917948)
-- Name: calendars calendars_calendar_no_key215; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key215 UNIQUE (calendar_no);


--
-- TOC entry 5266 (class 2606 OID 917952)
-- Name: calendars calendars_calendar_no_key216; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key216 UNIQUE (calendar_no);


--
-- TOC entry 5268 (class 2606 OID 917954)
-- Name: calendars calendars_calendar_no_key217; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key217 UNIQUE (calendar_no);


--
-- TOC entry 5270 (class 2606 OID 917956)
-- Name: calendars calendars_calendar_no_key218; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key218 UNIQUE (calendar_no);


--
-- TOC entry 5272 (class 2606 OID 917958)
-- Name: calendars calendars_calendar_no_key219; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key219 UNIQUE (calendar_no);


--
-- TOC entry 5274 (class 2606 OID 917960)
-- Name: calendars calendars_calendar_no_key22; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key22 UNIQUE (calendar_no);


--
-- TOC entry 5276 (class 2606 OID 917962)
-- Name: calendars calendars_calendar_no_key220; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key220 UNIQUE (calendar_no);


--
-- TOC entry 5278 (class 2606 OID 917964)
-- Name: calendars calendars_calendar_no_key221; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key221 UNIQUE (calendar_no);


--
-- TOC entry 5280 (class 2606 OID 917966)
-- Name: calendars calendars_calendar_no_key222; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key222 UNIQUE (calendar_no);


--
-- TOC entry 5282 (class 2606 OID 917968)
-- Name: calendars calendars_calendar_no_key223; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key223 UNIQUE (calendar_no);


--
-- TOC entry 5284 (class 2606 OID 917970)
-- Name: calendars calendars_calendar_no_key224; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key224 UNIQUE (calendar_no);


--
-- TOC entry 5286 (class 2606 OID 917972)
-- Name: calendars calendars_calendar_no_key225; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key225 UNIQUE (calendar_no);


--
-- TOC entry 5288 (class 2606 OID 917974)
-- Name: calendars calendars_calendar_no_key226; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key226 UNIQUE (calendar_no);


--
-- TOC entry 5290 (class 2606 OID 917976)
-- Name: calendars calendars_calendar_no_key227; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key227 UNIQUE (calendar_no);


--
-- TOC entry 5292 (class 2606 OID 917978)
-- Name: calendars calendars_calendar_no_key228; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key228 UNIQUE (calendar_no);


--
-- TOC entry 5294 (class 2606 OID 917980)
-- Name: calendars calendars_calendar_no_key229; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key229 UNIQUE (calendar_no);


--
-- TOC entry 5296 (class 2606 OID 917982)
-- Name: calendars calendars_calendar_no_key23; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key23 UNIQUE (calendar_no);


--
-- TOC entry 5298 (class 2606 OID 917984)
-- Name: calendars calendars_calendar_no_key230; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key230 UNIQUE (calendar_no);


--
-- TOC entry 5300 (class 2606 OID 917986)
-- Name: calendars calendars_calendar_no_key231; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key231 UNIQUE (calendar_no);


--
-- TOC entry 5302 (class 2606 OID 917988)
-- Name: calendars calendars_calendar_no_key232; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key232 UNIQUE (calendar_no);


--
-- TOC entry 5304 (class 2606 OID 917990)
-- Name: calendars calendars_calendar_no_key233; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key233 UNIQUE (calendar_no);


--
-- TOC entry 5306 (class 2606 OID 917992)
-- Name: calendars calendars_calendar_no_key234; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key234 UNIQUE (calendar_no);


--
-- TOC entry 5308 (class 2606 OID 917994)
-- Name: calendars calendars_calendar_no_key235; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key235 UNIQUE (calendar_no);


--
-- TOC entry 5310 (class 2606 OID 917996)
-- Name: calendars calendars_calendar_no_key236; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key236 UNIQUE (calendar_no);


--
-- TOC entry 5312 (class 2606 OID 917998)
-- Name: calendars calendars_calendar_no_key237; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key237 UNIQUE (calendar_no);


--
-- TOC entry 5314 (class 2606 OID 918000)
-- Name: calendars calendars_calendar_no_key238; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key238 UNIQUE (calendar_no);


--
-- TOC entry 5316 (class 2606 OID 918002)
-- Name: calendars calendars_calendar_no_key239; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key239 UNIQUE (calendar_no);


--
-- TOC entry 5318 (class 2606 OID 918004)
-- Name: calendars calendars_calendar_no_key24; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key24 UNIQUE (calendar_no);


--
-- TOC entry 5320 (class 2606 OID 918006)
-- Name: calendars calendars_calendar_no_key240; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key240 UNIQUE (calendar_no);


--
-- TOC entry 5322 (class 2606 OID 918008)
-- Name: calendars calendars_calendar_no_key241; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key241 UNIQUE (calendar_no);


--
-- TOC entry 5324 (class 2606 OID 918010)
-- Name: calendars calendars_calendar_no_key242; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key242 UNIQUE (calendar_no);


--
-- TOC entry 5326 (class 2606 OID 918012)
-- Name: calendars calendars_calendar_no_key243; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key243 UNIQUE (calendar_no);


--
-- TOC entry 5328 (class 2606 OID 917608)
-- Name: calendars calendars_calendar_no_key244; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key244 UNIQUE (calendar_no);


--
-- TOC entry 5330 (class 2606 OID 917610)
-- Name: calendars calendars_calendar_no_key245; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key245 UNIQUE (calendar_no);


--
-- TOC entry 5332 (class 2606 OID 917612)
-- Name: calendars calendars_calendar_no_key246; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key246 UNIQUE (calendar_no);


--
-- TOC entry 5334 (class 2606 OID 917614)
-- Name: calendars calendars_calendar_no_key247; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key247 UNIQUE (calendar_no);


--
-- TOC entry 5336 (class 2606 OID 917616)
-- Name: calendars calendars_calendar_no_key248; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key248 UNIQUE (calendar_no);


--
-- TOC entry 5338 (class 2606 OID 917618)
-- Name: calendars calendars_calendar_no_key249; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key249 UNIQUE (calendar_no);


--
-- TOC entry 5340 (class 2606 OID 917620)
-- Name: calendars calendars_calendar_no_key25; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key25 UNIQUE (calendar_no);


--
-- TOC entry 5342 (class 2606 OID 917622)
-- Name: calendars calendars_calendar_no_key250; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key250 UNIQUE (calendar_no);


--
-- TOC entry 5344 (class 2606 OID 917624)
-- Name: calendars calendars_calendar_no_key251; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key251 UNIQUE (calendar_no);


--
-- TOC entry 5346 (class 2606 OID 917626)
-- Name: calendars calendars_calendar_no_key252; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key252 UNIQUE (calendar_no);


--
-- TOC entry 5348 (class 2606 OID 917628)
-- Name: calendars calendars_calendar_no_key253; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key253 UNIQUE (calendar_no);


--
-- TOC entry 5350 (class 2606 OID 917630)
-- Name: calendars calendars_calendar_no_key254; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key254 UNIQUE (calendar_no);


--
-- TOC entry 5352 (class 2606 OID 917632)
-- Name: calendars calendars_calendar_no_key255; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key255 UNIQUE (calendar_no);


--
-- TOC entry 5354 (class 2606 OID 917634)
-- Name: calendars calendars_calendar_no_key256; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key256 UNIQUE (calendar_no);


--
-- TOC entry 5356 (class 2606 OID 917636)
-- Name: calendars calendars_calendar_no_key257; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key257 UNIQUE (calendar_no);


--
-- TOC entry 5358 (class 2606 OID 917638)
-- Name: calendars calendars_calendar_no_key258; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key258 UNIQUE (calendar_no);


--
-- TOC entry 5360 (class 2606 OID 917640)
-- Name: calendars calendars_calendar_no_key259; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key259 UNIQUE (calendar_no);


--
-- TOC entry 5362 (class 2606 OID 917642)
-- Name: calendars calendars_calendar_no_key26; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key26 UNIQUE (calendar_no);


--
-- TOC entry 5364 (class 2606 OID 917644)
-- Name: calendars calendars_calendar_no_key260; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key260 UNIQUE (calendar_no);


--
-- TOC entry 5366 (class 2606 OID 918062)
-- Name: calendars calendars_calendar_no_key261; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key261 UNIQUE (calendar_no);


--
-- TOC entry 5368 (class 2606 OID 917472)
-- Name: calendars calendars_calendar_no_key262; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key262 UNIQUE (calendar_no);


--
-- TOC entry 5370 (class 2606 OID 918064)
-- Name: calendars calendars_calendar_no_key263; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key263 UNIQUE (calendar_no);


--
-- TOC entry 5372 (class 2606 OID 917708)
-- Name: calendars calendars_calendar_no_key264; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key264 UNIQUE (calendar_no);


--
-- TOC entry 5374 (class 2606 OID 918066)
-- Name: calendars calendars_calendar_no_key265; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key265 UNIQUE (calendar_no);


--
-- TOC entry 5376 (class 2606 OID 917706)
-- Name: calendars calendars_calendar_no_key266; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key266 UNIQUE (calendar_no);


--
-- TOC entry 5378 (class 2606 OID 918068)
-- Name: calendars calendars_calendar_no_key267; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key267 UNIQUE (calendar_no);


--
-- TOC entry 5380 (class 2606 OID 917704)
-- Name: calendars calendars_calendar_no_key268; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key268 UNIQUE (calendar_no);


--
-- TOC entry 5382 (class 2606 OID 918070)
-- Name: calendars calendars_calendar_no_key269; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key269 UNIQUE (calendar_no);


--
-- TOC entry 5384 (class 2606 OID 917646)
-- Name: calendars calendars_calendar_no_key27; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key27 UNIQUE (calendar_no);


--
-- TOC entry 5386 (class 2606 OID 917702)
-- Name: calendars calendars_calendar_no_key270; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key270 UNIQUE (calendar_no);


--
-- TOC entry 5388 (class 2606 OID 917950)
-- Name: calendars calendars_calendar_no_key271; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key271 UNIQUE (calendar_no);


--
-- TOC entry 5390 (class 2606 OID 917700)
-- Name: calendars calendars_calendar_no_key272; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key272 UNIQUE (calendar_no);


--
-- TOC entry 5392 (class 2606 OID 917698)
-- Name: calendars calendars_calendar_no_key273; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key273 UNIQUE (calendar_no);


--
-- TOC entry 5394 (class 2606 OID 918072)
-- Name: calendars calendars_calendar_no_key274; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key274 UNIQUE (calendar_no);


--
-- TOC entry 5396 (class 2606 OID 918074)
-- Name: calendars calendars_calendar_no_key275; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key275 UNIQUE (calendar_no);


--
-- TOC entry 5398 (class 2606 OID 917696)
-- Name: calendars calendars_calendar_no_key276; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key276 UNIQUE (calendar_no);


--
-- TOC entry 5400 (class 2606 OID 917694)
-- Name: calendars calendars_calendar_no_key277; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key277 UNIQUE (calendar_no);


--
-- TOC entry 5402 (class 2606 OID 917604)
-- Name: calendars calendars_calendar_no_key278; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key278 UNIQUE (calendar_no);


--
-- TOC entry 5404 (class 2606 OID 917602)
-- Name: calendars calendars_calendar_no_key279; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key279 UNIQUE (calendar_no);


--
-- TOC entry 5406 (class 2606 OID 917648)
-- Name: calendars calendars_calendar_no_key28; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key28 UNIQUE (calendar_no);


--
-- TOC entry 5408 (class 2606 OID 917606)
-- Name: calendars calendars_calendar_no_key280; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key280 UNIQUE (calendar_no);


--
-- TOC entry 5410 (class 2606 OID 917600)
-- Name: calendars calendars_calendar_no_key281; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key281 UNIQUE (calendar_no);


--
-- TOC entry 5412 (class 2606 OID 917598)
-- Name: calendars calendars_calendar_no_key282; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key282 UNIQUE (calendar_no);


--
-- TOC entry 5414 (class 2606 OID 918078)
-- Name: calendars calendars_calendar_no_key283; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key283 UNIQUE (calendar_no);


--
-- TOC entry 5416 (class 2606 OID 917596)
-- Name: calendars calendars_calendar_no_key284; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key284 UNIQUE (calendar_no);


--
-- TOC entry 5418 (class 2606 OID 918080)
-- Name: calendars calendars_calendar_no_key285; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key285 UNIQUE (calendar_no);


--
-- TOC entry 5420 (class 2606 OID 918082)
-- Name: calendars calendars_calendar_no_key286; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key286 UNIQUE (calendar_no);


--
-- TOC entry 5422 (class 2606 OID 918084)
-- Name: calendars calendars_calendar_no_key287; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key287 UNIQUE (calendar_no);


--
-- TOC entry 5424 (class 2606 OID 917689)
-- Name: calendars calendars_calendar_no_key288; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key288 UNIQUE (calendar_no);


--
-- TOC entry 5426 (class 2606 OID 917687)
-- Name: calendars calendars_calendar_no_key289; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key289 UNIQUE (calendar_no);


--
-- TOC entry 5428 (class 2606 OID 917650)
-- Name: calendars calendars_calendar_no_key29; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key29 UNIQUE (calendar_no);


--
-- TOC entry 5430 (class 2606 OID 917576)
-- Name: calendars calendars_calendar_no_key290; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key290 UNIQUE (calendar_no);


--
-- TOC entry 5432 (class 2606 OID 917685)
-- Name: calendars calendars_calendar_no_key291; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key291 UNIQUE (calendar_no);


--
-- TOC entry 5434 (class 2606 OID 918086)
-- Name: calendars calendars_calendar_no_key292; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key292 UNIQUE (calendar_no);


--
-- TOC entry 5436 (class 2606 OID 918088)
-- Name: calendars calendars_calendar_no_key293; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key293 UNIQUE (calendar_no);


--
-- TOC entry 5438 (class 2606 OID 918090)
-- Name: calendars calendars_calendar_no_key294; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key294 UNIQUE (calendar_no);


--
-- TOC entry 5440 (class 2606 OID 917683)
-- Name: calendars calendars_calendar_no_key295; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key295 UNIQUE (calendar_no);


--
-- TOC entry 5442 (class 2606 OID 918092)
-- Name: calendars calendars_calendar_no_key296; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key296 UNIQUE (calendar_no);


--
-- TOC entry 5444 (class 2606 OID 918094)
-- Name: calendars calendars_calendar_no_key297; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key297 UNIQUE (calendar_no);


--
-- TOC entry 5446 (class 2606 OID 917681)
-- Name: calendars calendars_calendar_no_key298; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key298 UNIQUE (calendar_no);


--
-- TOC entry 5448 (class 2606 OID 917679)
-- Name: calendars calendars_calendar_no_key299; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key299 UNIQUE (calendar_no);


--
-- TOC entry 5450 (class 2606 OID 917652)
-- Name: calendars calendars_calendar_no_key3; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key3 UNIQUE (calendar_no);


--
-- TOC entry 5452 (class 2606 OID 917654)
-- Name: calendars calendars_calendar_no_key30; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key30 UNIQUE (calendar_no);


--
-- TOC entry 5454 (class 2606 OID 917564)
-- Name: calendars calendars_calendar_no_key300; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key300 UNIQUE (calendar_no);


--
-- TOC entry 5456 (class 2606 OID 917677)
-- Name: calendars calendars_calendar_no_key301; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key301 UNIQUE (calendar_no);


--
-- TOC entry 5458 (class 2606 OID 917675)
-- Name: calendars calendars_calendar_no_key302; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key302 UNIQUE (calendar_no);


--
-- TOC entry 5460 (class 2606 OID 917673)
-- Name: calendars calendars_calendar_no_key303; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key303 UNIQUE (calendar_no);


--
-- TOC entry 5462 (class 2606 OID 918096)
-- Name: calendars calendars_calendar_no_key304; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key304 UNIQUE (calendar_no);


--
-- TOC entry 5464 (class 2606 OID 917670)
-- Name: calendars calendars_calendar_no_key305; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key305 UNIQUE (calendar_no);


--
-- TOC entry 5466 (class 2606 OID 917874)
-- Name: calendars calendars_calendar_no_key306; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key306 UNIQUE (calendar_no);


--
-- TOC entry 5468 (class 2606 OID 917668)
-- Name: calendars calendars_calendar_no_key307; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key307 UNIQUE (calendar_no);


--
-- TOC entry 5470 (class 2606 OID 917666)
-- Name: calendars calendars_calendar_no_key308; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key308 UNIQUE (calendar_no);


--
-- TOC entry 5472 (class 2606 OID 917730)
-- Name: calendars calendars_calendar_no_key309; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key309 UNIQUE (calendar_no);


--
-- TOC entry 5474 (class 2606 OID 917656)
-- Name: calendars calendars_calendar_no_key31; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key31 UNIQUE (calendar_no);


--
-- TOC entry 5476 (class 2606 OID 917664)
-- Name: calendars calendars_calendar_no_key310; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key310 UNIQUE (calendar_no);


--
-- TOC entry 5478 (class 2606 OID 918076)
-- Name: calendars calendars_calendar_no_key311; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key311 UNIQUE (calendar_no);


--
-- TOC entry 5480 (class 2606 OID 918098)
-- Name: calendars calendars_calendar_no_key312; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key312 UNIQUE (calendar_no);


--
-- TOC entry 5482 (class 2606 OID 918100)
-- Name: calendars calendars_calendar_no_key313; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key313 UNIQUE (calendar_no);


--
-- TOC entry 5484 (class 2606 OID 917470)
-- Name: calendars calendars_calendar_no_key314; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key314 UNIQUE (calendar_no);


--
-- TOC entry 5486 (class 2606 OID 918102)
-- Name: calendars calendars_calendar_no_key315; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key315 UNIQUE (calendar_no);


--
-- TOC entry 5488 (class 2606 OID 918104)
-- Name: calendars calendars_calendar_no_key316; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key316 UNIQUE (calendar_no);


--
-- TOC entry 5490 (class 2606 OID 918106)
-- Name: calendars calendars_calendar_no_key317; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key317 UNIQUE (calendar_no);


--
-- TOC entry 5492 (class 2606 OID 918108)
-- Name: calendars calendars_calendar_no_key318; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key318 UNIQUE (calendar_no);


--
-- TOC entry 5494 (class 2606 OID 918110)
-- Name: calendars calendars_calendar_no_key319; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key319 UNIQUE (calendar_no);


--
-- TOC entry 5496 (class 2606 OID 917658)
-- Name: calendars calendars_calendar_no_key32; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key32 UNIQUE (calendar_no);


--
-- TOC entry 5498 (class 2606 OID 917468)
-- Name: calendars calendars_calendar_no_key320; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key320 UNIQUE (calendar_no);


--
-- TOC entry 5500 (class 2606 OID 918112)
-- Name: calendars calendars_calendar_no_key321; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key321 UNIQUE (calendar_no);


--
-- TOC entry 5502 (class 2606 OID 917466)
-- Name: calendars calendars_calendar_no_key322; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key322 UNIQUE (calendar_no);


--
-- TOC entry 5504 (class 2606 OID 917464)
-- Name: calendars calendars_calendar_no_key323; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key323 UNIQUE (calendar_no);


--
-- TOC entry 5506 (class 2606 OID 918114)
-- Name: calendars calendars_calendar_no_key324; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key324 UNIQUE (calendar_no);


--
-- TOC entry 5508 (class 2606 OID 917462)
-- Name: calendars calendars_calendar_no_key325; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key325 UNIQUE (calendar_no);


--
-- TOC entry 5510 (class 2606 OID 917460)
-- Name: calendars calendars_calendar_no_key326; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key326 UNIQUE (calendar_no);


--
-- TOC entry 5512 (class 2606 OID 917660)
-- Name: calendars calendars_calendar_no_key33; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key33 UNIQUE (calendar_no);


--
-- TOC entry 5514 (class 2606 OID 917662)
-- Name: calendars calendars_calendar_no_key34; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key34 UNIQUE (calendar_no);


--
-- TOC entry 5516 (class 2606 OID 917710)
-- Name: calendars calendars_calendar_no_key35; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key35 UNIQUE (calendar_no);


--
-- TOC entry 5518 (class 2606 OID 917712)
-- Name: calendars calendars_calendar_no_key36; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key36 UNIQUE (calendar_no);


--
-- TOC entry 5520 (class 2606 OID 917714)
-- Name: calendars calendars_calendar_no_key37; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key37 UNIQUE (calendar_no);


--
-- TOC entry 5522 (class 2606 OID 917716)
-- Name: calendars calendars_calendar_no_key38; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key38 UNIQUE (calendar_no);


--
-- TOC entry 5524 (class 2606 OID 917718)
-- Name: calendars calendars_calendar_no_key39; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key39 UNIQUE (calendar_no);


--
-- TOC entry 5526 (class 2606 OID 917720)
-- Name: calendars calendars_calendar_no_key4; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key4 UNIQUE (calendar_no);


--
-- TOC entry 5528 (class 2606 OID 917722)
-- Name: calendars calendars_calendar_no_key40; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key40 UNIQUE (calendar_no);


--
-- TOC entry 5530 (class 2606 OID 917724)
-- Name: calendars calendars_calendar_no_key41; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key41 UNIQUE (calendar_no);


--
-- TOC entry 5532 (class 2606 OID 917726)
-- Name: calendars calendars_calendar_no_key42; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key42 UNIQUE (calendar_no);


--
-- TOC entry 5534 (class 2606 OID 917728)
-- Name: calendars calendars_calendar_no_key43; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key43 UNIQUE (calendar_no);


--
-- TOC entry 5536 (class 2606 OID 917732)
-- Name: calendars calendars_calendar_no_key44; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key44 UNIQUE (calendar_no);


--
-- TOC entry 5538 (class 2606 OID 917734)
-- Name: calendars calendars_calendar_no_key45; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key45 UNIQUE (calendar_no);


--
-- TOC entry 5540 (class 2606 OID 917736)
-- Name: calendars calendars_calendar_no_key46; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key46 UNIQUE (calendar_no);


--
-- TOC entry 5542 (class 2606 OID 917738)
-- Name: calendars calendars_calendar_no_key47; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key47 UNIQUE (calendar_no);


--
-- TOC entry 5544 (class 2606 OID 917740)
-- Name: calendars calendars_calendar_no_key48; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key48 UNIQUE (calendar_no);


--
-- TOC entry 5546 (class 2606 OID 917742)
-- Name: calendars calendars_calendar_no_key49; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key49 UNIQUE (calendar_no);


--
-- TOC entry 5548 (class 2606 OID 917744)
-- Name: calendars calendars_calendar_no_key5; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key5 UNIQUE (calendar_no);


--
-- TOC entry 5550 (class 2606 OID 917746)
-- Name: calendars calendars_calendar_no_key50; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key50 UNIQUE (calendar_no);


--
-- TOC entry 5552 (class 2606 OID 917748)
-- Name: calendars calendars_calendar_no_key51; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key51 UNIQUE (calendar_no);


--
-- TOC entry 5554 (class 2606 OID 917750)
-- Name: calendars calendars_calendar_no_key52; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key52 UNIQUE (calendar_no);


--
-- TOC entry 5556 (class 2606 OID 917752)
-- Name: calendars calendars_calendar_no_key53; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key53 UNIQUE (calendar_no);


--
-- TOC entry 5558 (class 2606 OID 917754)
-- Name: calendars calendars_calendar_no_key54; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key54 UNIQUE (calendar_no);


--
-- TOC entry 5560 (class 2606 OID 917756)
-- Name: calendars calendars_calendar_no_key55; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key55 UNIQUE (calendar_no);


--
-- TOC entry 5562 (class 2606 OID 917758)
-- Name: calendars calendars_calendar_no_key56; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key56 UNIQUE (calendar_no);


--
-- TOC entry 5564 (class 2606 OID 917760)
-- Name: calendars calendars_calendar_no_key57; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key57 UNIQUE (calendar_no);


--
-- TOC entry 5566 (class 2606 OID 917762)
-- Name: calendars calendars_calendar_no_key58; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key58 UNIQUE (calendar_no);


--
-- TOC entry 5568 (class 2606 OID 917764)
-- Name: calendars calendars_calendar_no_key59; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key59 UNIQUE (calendar_no);


--
-- TOC entry 5570 (class 2606 OID 917766)
-- Name: calendars calendars_calendar_no_key6; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key6 UNIQUE (calendar_no);


--
-- TOC entry 5572 (class 2606 OID 917768)
-- Name: calendars calendars_calendar_no_key60; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key60 UNIQUE (calendar_no);


--
-- TOC entry 5574 (class 2606 OID 917770)
-- Name: calendars calendars_calendar_no_key61; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key61 UNIQUE (calendar_no);


--
-- TOC entry 5576 (class 2606 OID 917772)
-- Name: calendars calendars_calendar_no_key62; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key62 UNIQUE (calendar_no);


--
-- TOC entry 5578 (class 2606 OID 917691)
-- Name: calendars calendars_calendar_no_key63; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key63 UNIQUE (calendar_no);


--
-- TOC entry 5580 (class 2606 OID 917850)
-- Name: calendars calendars_calendar_no_key64; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key64 UNIQUE (calendar_no);


--
-- TOC entry 5582 (class 2606 OID 917852)
-- Name: calendars calendars_calendar_no_key65; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key65 UNIQUE (calendar_no);


--
-- TOC entry 5584 (class 2606 OID 917854)
-- Name: calendars calendars_calendar_no_key66; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key66 UNIQUE (calendar_no);


--
-- TOC entry 5586 (class 2606 OID 917856)
-- Name: calendars calendars_calendar_no_key67; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key67 UNIQUE (calendar_no);


--
-- TOC entry 5588 (class 2606 OID 917858)
-- Name: calendars calendars_calendar_no_key68; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key68 UNIQUE (calendar_no);


--
-- TOC entry 5590 (class 2606 OID 917860)
-- Name: calendars calendars_calendar_no_key69; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key69 UNIQUE (calendar_no);


--
-- TOC entry 5592 (class 2606 OID 917862)
-- Name: calendars calendars_calendar_no_key7; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key7 UNIQUE (calendar_no);


--
-- TOC entry 5594 (class 2606 OID 917864)
-- Name: calendars calendars_calendar_no_key70; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key70 UNIQUE (calendar_no);


--
-- TOC entry 5596 (class 2606 OID 917866)
-- Name: calendars calendars_calendar_no_key71; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key71 UNIQUE (calendar_no);


--
-- TOC entry 5598 (class 2606 OID 917868)
-- Name: calendars calendars_calendar_no_key72; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key72 UNIQUE (calendar_no);


--
-- TOC entry 5600 (class 2606 OID 917870)
-- Name: calendars calendars_calendar_no_key73; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key73 UNIQUE (calendar_no);


--
-- TOC entry 5602 (class 2606 OID 917872)
-- Name: calendars calendars_calendar_no_key74; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key74 UNIQUE (calendar_no);


--
-- TOC entry 5604 (class 2606 OID 917876)
-- Name: calendars calendars_calendar_no_key75; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key75 UNIQUE (calendar_no);


--
-- TOC entry 5606 (class 2606 OID 917878)
-- Name: calendars calendars_calendar_no_key76; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key76 UNIQUE (calendar_no);


--
-- TOC entry 5608 (class 2606 OID 917880)
-- Name: calendars calendars_calendar_no_key77; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key77 UNIQUE (calendar_no);


--
-- TOC entry 5610 (class 2606 OID 918014)
-- Name: calendars calendars_calendar_no_key78; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key78 UNIQUE (calendar_no);


--
-- TOC entry 5612 (class 2606 OID 918016)
-- Name: calendars calendars_calendar_no_key79; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key79 UNIQUE (calendar_no);


--
-- TOC entry 5614 (class 2606 OID 918018)
-- Name: calendars calendars_calendar_no_key8; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key8 UNIQUE (calendar_no);


--
-- TOC entry 5616 (class 2606 OID 918020)
-- Name: calendars calendars_calendar_no_key80; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key80 UNIQUE (calendar_no);


--
-- TOC entry 5618 (class 2606 OID 918022)
-- Name: calendars calendars_calendar_no_key81; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key81 UNIQUE (calendar_no);


--
-- TOC entry 5620 (class 2606 OID 918024)
-- Name: calendars calendars_calendar_no_key82; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key82 UNIQUE (calendar_no);


--
-- TOC entry 5622 (class 2606 OID 918026)
-- Name: calendars calendars_calendar_no_key83; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key83 UNIQUE (calendar_no);


--
-- TOC entry 5624 (class 2606 OID 918028)
-- Name: calendars calendars_calendar_no_key84; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key84 UNIQUE (calendar_no);


--
-- TOC entry 5626 (class 2606 OID 918030)
-- Name: calendars calendars_calendar_no_key85; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key85 UNIQUE (calendar_no);


--
-- TOC entry 5628 (class 2606 OID 918032)
-- Name: calendars calendars_calendar_no_key86; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key86 UNIQUE (calendar_no);


--
-- TOC entry 5630 (class 2606 OID 918034)
-- Name: calendars calendars_calendar_no_key87; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key87 UNIQUE (calendar_no);


--
-- TOC entry 5632 (class 2606 OID 918036)
-- Name: calendars calendars_calendar_no_key88; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key88 UNIQUE (calendar_no);


--
-- TOC entry 5634 (class 2606 OID 918038)
-- Name: calendars calendars_calendar_no_key89; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key89 UNIQUE (calendar_no);


--
-- TOC entry 5636 (class 2606 OID 918040)
-- Name: calendars calendars_calendar_no_key9; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key9 UNIQUE (calendar_no);


--
-- TOC entry 5638 (class 2606 OID 918042)
-- Name: calendars calendars_calendar_no_key90; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key90 UNIQUE (calendar_no);


--
-- TOC entry 5640 (class 2606 OID 918044)
-- Name: calendars calendars_calendar_no_key91; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key91 UNIQUE (calendar_no);


--
-- TOC entry 5642 (class 2606 OID 918046)
-- Name: calendars calendars_calendar_no_key92; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key92 UNIQUE (calendar_no);


--
-- TOC entry 5644 (class 2606 OID 918048)
-- Name: calendars calendars_calendar_no_key93; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key93 UNIQUE (calendar_no);


--
-- TOC entry 5646 (class 2606 OID 918050)
-- Name: calendars calendars_calendar_no_key94; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key94 UNIQUE (calendar_no);


--
-- TOC entry 5648 (class 2606 OID 918052)
-- Name: calendars calendars_calendar_no_key95; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key95 UNIQUE (calendar_no);


--
-- TOC entry 5650 (class 2606 OID 918054)
-- Name: calendars calendars_calendar_no_key96; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key96 UNIQUE (calendar_no);


--
-- TOC entry 5652 (class 2606 OID 918056)
-- Name: calendars calendars_calendar_no_key97; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key97 UNIQUE (calendar_no);


--
-- TOC entry 5654 (class 2606 OID 918058)
-- Name: calendars calendars_calendar_no_key98; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key98 UNIQUE (calendar_no);


--
-- TOC entry 5656 (class 2606 OID 918060)
-- Name: calendars calendars_calendar_no_key99; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_calendar_no_key99 UNIQUE (calendar_no);


--
-- TOC entry 5658 (class 2606 OID 718239)
-- Name: calendars calendars_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.calendars
    ADD CONSTRAINT calendars_pkey PRIMARY KEY (id);


--
-- TOC entry 5699 (class 2606 OID 786975)
-- Name: convocations convocations_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.convocations
    ADD CONSTRAINT convocations_pkey PRIMARY KEY (id);


--
-- TOC entry 5660 (class 2606 OID 718241)
-- Name: counselling counselling_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counselling
    ADD CONSTRAINT counselling_pkey PRIMARY KEY (roll_no);


--
-- TOC entry 5662 (class 2606 OID 718243)
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);


--
-- TOC entry 5664 (class 2606 OID 718245)
-- Name: eventImages event_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."eventImages"
    ADD CONSTRAINT event_images_pkey PRIMARY KEY (id);


--
-- TOC entry 5666 (class 2606 OID 718247)
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- TOC entry 5668 (class 2606 OID 718249)
-- Name: external_circulars external_circulars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_circulars
    ADD CONSTRAINT external_circulars_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5670 (class 2606 OID 718251)
-- Name: faculty_positions faculty_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty_positions
    ADD CONSTRAINT faculty_positions_pkey PRIMARY KEY (id, position_type);


--
-- TOC entry 5672 (class 2606 OID 718253)
-- Name: fc_agenda fc_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fc_agenda
    ADD CONSTRAINT fc_agenda_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5674 (class 2606 OID 718255)
-- Name: fc_minutes fc_minutes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fc_minutes
    ADD CONSTRAINT fc_minutes_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5676 (class 2606 OID 718257)
-- Name: grievance_redressal_cell grievance_redressal_cell_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grievance_redressal_cell
    ADD CONSTRAINT grievance_redressal_cell_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5678 (class 2606 OID 718259)
-- Name: hostels hostels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hostels
    ADD CONSTRAINT hostels_pkey PRIMARY KEY (id);


--
-- TOC entry 5680 (class 2606 OID 718261)
-- Name: internal_circulars internal_circulars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internal_circulars
    ADD CONSTRAINT internal_circulars_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5696 (class 2606 OID 720658)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5682 (class 2606 OID 718263)
-- Name: non_faculty_info non_faculty_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_faculty_info
    ADD CONSTRAINT non_faculty_info_pkey PRIMARY KEY (id);


--
-- TOC entry 5684 (class 2606 OID 718265)
-- Name: non_faculty_positions non_faculty_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_faculty_positions
    ADD CONSTRAINT non_faculty_positions_pkey PRIMARY KEY (id, position_type);


--
-- TOC entry 5686 (class 2606 OID 718267)
-- Name: press_releases press_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.press_releases
    ADD CONSTRAINT press_releases_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5688 (class 2606 OID 718269)
-- Name: senate_agenda senate_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senate_agenda
    ADD CONSTRAINT senate_agenda_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5690 (class 2606 OID 718271)
-- Name: senate_minutes senate_minutes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senate_minutes
    ADD CONSTRAINT senate_minutes_pkey PRIMARY KEY (id, name);


--
-- TOC entry 5692 (class 2606 OID 718273)
-- Name: shops shops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);


--
-- TOC entry 5702 (class 2606 OID 863332)
-- Name: tenders tenders_pkey; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_pkey PRIMARY KEY (id);


--
-- TOC entry 5706 (class 2606 OID 919942)
-- Name: tenders tenders_tender_no_key; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key UNIQUE (tender_no);


--
-- TOC entry 5708 (class 2606 OID 919944)
-- Name: tenders tenders_tender_no_key1; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1 UNIQUE (tender_no);


--
-- TOC entry 5710 (class 2606 OID 919946)
-- Name: tenders tenders_tender_no_key10; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key10 UNIQUE (tender_no);


--
-- TOC entry 5712 (class 2606 OID 919948)
-- Name: tenders tenders_tender_no_key100; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key100 UNIQUE (tender_no);


--
-- TOC entry 5714 (class 2606 OID 919950)
-- Name: tenders tenders_tender_no_key1000; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1000 UNIQUE (tender_no);


--
-- TOC entry 5716 (class 2606 OID 919952)
-- Name: tenders tenders_tender_no_key1001; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1001 UNIQUE (tender_no);


--
-- TOC entry 5718 (class 2606 OID 919954)
-- Name: tenders tenders_tender_no_key1002; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1002 UNIQUE (tender_no);


--
-- TOC entry 5720 (class 2606 OID 919956)
-- Name: tenders tenders_tender_no_key1003; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1003 UNIQUE (tender_no);


--
-- TOC entry 5722 (class 2606 OID 919958)
-- Name: tenders tenders_tender_no_key1004; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1004 UNIQUE (tender_no);


--
-- TOC entry 5724 (class 2606 OID 919960)
-- Name: tenders tenders_tender_no_key1005; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1005 UNIQUE (tender_no);


--
-- TOC entry 5726 (class 2606 OID 919962)
-- Name: tenders tenders_tender_no_key1006; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1006 UNIQUE (tender_no);


--
-- TOC entry 5728 (class 2606 OID 919964)
-- Name: tenders tenders_tender_no_key1007; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1007 UNIQUE (tender_no);


--
-- TOC entry 5730 (class 2606 OID 919966)
-- Name: tenders tenders_tender_no_key1008; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1008 UNIQUE (tender_no);


--
-- TOC entry 5732 (class 2606 OID 919968)
-- Name: tenders tenders_tender_no_key1009; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1009 UNIQUE (tender_no);


--
-- TOC entry 5734 (class 2606 OID 919970)
-- Name: tenders tenders_tender_no_key101; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key101 UNIQUE (tender_no);


--
-- TOC entry 5736 (class 2606 OID 919972)
-- Name: tenders tenders_tender_no_key1010; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1010 UNIQUE (tender_no);


--
-- TOC entry 5738 (class 2606 OID 919974)
-- Name: tenders tenders_tender_no_key1011; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1011 UNIQUE (tender_no);


--
-- TOC entry 5740 (class 2606 OID 919976)
-- Name: tenders tenders_tender_no_key1012; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1012 UNIQUE (tender_no);


--
-- TOC entry 5742 (class 2606 OID 919978)
-- Name: tenders tenders_tender_no_key1013; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1013 UNIQUE (tender_no);


--
-- TOC entry 5744 (class 2606 OID 919980)
-- Name: tenders tenders_tender_no_key1014; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1014 UNIQUE (tender_no);


--
-- TOC entry 5746 (class 2606 OID 919982)
-- Name: tenders tenders_tender_no_key1015; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1015 UNIQUE (tender_no);


--
-- TOC entry 5748 (class 2606 OID 919984)
-- Name: tenders tenders_tender_no_key1016; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1016 UNIQUE (tender_no);


--
-- TOC entry 5750 (class 2606 OID 919986)
-- Name: tenders tenders_tender_no_key1017; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1017 UNIQUE (tender_no);


--
-- TOC entry 5752 (class 2606 OID 919988)
-- Name: tenders tenders_tender_no_key1018; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1018 UNIQUE (tender_no);


--
-- TOC entry 5754 (class 2606 OID 919990)
-- Name: tenders tenders_tender_no_key1019; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1019 UNIQUE (tender_no);


--
-- TOC entry 5756 (class 2606 OID 919992)
-- Name: tenders tenders_tender_no_key102; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key102 UNIQUE (tender_no);


--
-- TOC entry 5758 (class 2606 OID 919994)
-- Name: tenders tenders_tender_no_key1020; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1020 UNIQUE (tender_no);


--
-- TOC entry 5760 (class 2606 OID 919996)
-- Name: tenders tenders_tender_no_key1021; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1021 UNIQUE (tender_no);


--
-- TOC entry 5762 (class 2606 OID 919998)
-- Name: tenders tenders_tender_no_key1022; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1022 UNIQUE (tender_no);


--
-- TOC entry 5764 (class 2606 OID 920000)
-- Name: tenders tenders_tender_no_key1023; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1023 UNIQUE (tender_no);


--
-- TOC entry 5766 (class 2606 OID 920002)
-- Name: tenders tenders_tender_no_key1024; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1024 UNIQUE (tender_no);


--
-- TOC entry 5768 (class 2606 OID 920004)
-- Name: tenders tenders_tender_no_key1025; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1025 UNIQUE (tender_no);


--
-- TOC entry 5770 (class 2606 OID 920006)
-- Name: tenders tenders_tender_no_key1026; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1026 UNIQUE (tender_no);


--
-- TOC entry 5772 (class 2606 OID 920008)
-- Name: tenders tenders_tender_no_key1027; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1027 UNIQUE (tender_no);


--
-- TOC entry 5774 (class 2606 OID 920010)
-- Name: tenders tenders_tender_no_key1028; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1028 UNIQUE (tender_no);


--
-- TOC entry 5776 (class 2606 OID 920012)
-- Name: tenders tenders_tender_no_key1029; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1029 UNIQUE (tender_no);


--
-- TOC entry 5778 (class 2606 OID 920014)
-- Name: tenders tenders_tender_no_key103; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key103 UNIQUE (tender_no);


--
-- TOC entry 5780 (class 2606 OID 920016)
-- Name: tenders tenders_tender_no_key1030; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1030 UNIQUE (tender_no);


--
-- TOC entry 5782 (class 2606 OID 920234)
-- Name: tenders tenders_tender_no_key1031; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1031 UNIQUE (tender_no);


--
-- TOC entry 5784 (class 2606 OID 920236)
-- Name: tenders tenders_tender_no_key1032; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1032 UNIQUE (tender_no);


--
-- TOC entry 5786 (class 2606 OID 920238)
-- Name: tenders tenders_tender_no_key1033; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1033 UNIQUE (tender_no);


--
-- TOC entry 5788 (class 2606 OID 920240)
-- Name: tenders tenders_tender_no_key1034; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1034 UNIQUE (tender_no);


--
-- TOC entry 5790 (class 2606 OID 920242)
-- Name: tenders tenders_tender_no_key1035; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1035 UNIQUE (tender_no);


--
-- TOC entry 5792 (class 2606 OID 920244)
-- Name: tenders tenders_tender_no_key1036; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1036 UNIQUE (tender_no);


--
-- TOC entry 5794 (class 2606 OID 920246)
-- Name: tenders tenders_tender_no_key1037; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1037 UNIQUE (tender_no);


--
-- TOC entry 5796 (class 2606 OID 920248)
-- Name: tenders tenders_tender_no_key1038; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1038 UNIQUE (tender_no);


--
-- TOC entry 5798 (class 2606 OID 920250)
-- Name: tenders tenders_tender_no_key1039; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1039 UNIQUE (tender_no);


--
-- TOC entry 5800 (class 2606 OID 920252)
-- Name: tenders tenders_tender_no_key104; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key104 UNIQUE (tender_no);


--
-- TOC entry 5802 (class 2606 OID 920254)
-- Name: tenders tenders_tender_no_key1040; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1040 UNIQUE (tender_no);


--
-- TOC entry 5804 (class 2606 OID 920256)
-- Name: tenders tenders_tender_no_key1041; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1041 UNIQUE (tender_no);


--
-- TOC entry 5806 (class 2606 OID 920258)
-- Name: tenders tenders_tender_no_key1042; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1042 UNIQUE (tender_no);


--
-- TOC entry 5808 (class 2606 OID 920260)
-- Name: tenders tenders_tender_no_key1043; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1043 UNIQUE (tender_no);


--
-- TOC entry 5810 (class 2606 OID 920262)
-- Name: tenders tenders_tender_no_key1044; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1044 UNIQUE (tender_no);


--
-- TOC entry 5812 (class 2606 OID 920264)
-- Name: tenders tenders_tender_no_key1045; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1045 UNIQUE (tender_no);


--
-- TOC entry 5814 (class 2606 OID 920266)
-- Name: tenders tenders_tender_no_key1046; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1046 UNIQUE (tender_no);


--
-- TOC entry 5816 (class 2606 OID 920268)
-- Name: tenders tenders_tender_no_key1047; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1047 UNIQUE (tender_no);


--
-- TOC entry 5818 (class 2606 OID 920270)
-- Name: tenders tenders_tender_no_key1048; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1048 UNIQUE (tender_no);


--
-- TOC entry 5820 (class 2606 OID 920272)
-- Name: tenders tenders_tender_no_key1049; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1049 UNIQUE (tender_no);


--
-- TOC entry 5822 (class 2606 OID 920274)
-- Name: tenders tenders_tender_no_key105; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key105 UNIQUE (tender_no);


--
-- TOC entry 5824 (class 2606 OID 920276)
-- Name: tenders tenders_tender_no_key1050; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1050 UNIQUE (tender_no);


--
-- TOC entry 5826 (class 2606 OID 919770)
-- Name: tenders tenders_tender_no_key1051; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1051 UNIQUE (tender_no);


--
-- TOC entry 5828 (class 2606 OID 919772)
-- Name: tenders tenders_tender_no_key1052; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1052 UNIQUE (tender_no);


--
-- TOC entry 5830 (class 2606 OID 919774)
-- Name: tenders tenders_tender_no_key1053; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1053 UNIQUE (tender_no);


--
-- TOC entry 5832 (class 2606 OID 919776)
-- Name: tenders tenders_tender_no_key1054; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1054 UNIQUE (tender_no);


--
-- TOC entry 5834 (class 2606 OID 919778)
-- Name: tenders tenders_tender_no_key1055; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1055 UNIQUE (tender_no);


--
-- TOC entry 5836 (class 2606 OID 919780)
-- Name: tenders tenders_tender_no_key1056; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1056 UNIQUE (tender_no);


--
-- TOC entry 5838 (class 2606 OID 919782)
-- Name: tenders tenders_tender_no_key1057; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1057 UNIQUE (tender_no);


--
-- TOC entry 5840 (class 2606 OID 919914)
-- Name: tenders tenders_tender_no_key1058; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1058 UNIQUE (tender_no);


--
-- TOC entry 5842 (class 2606 OID 919918)
-- Name: tenders tenders_tender_no_key1059; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1059 UNIQUE (tender_no);


--
-- TOC entry 5844 (class 2606 OID 919920)
-- Name: tenders tenders_tender_no_key106; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key106 UNIQUE (tender_no);


--
-- TOC entry 5846 (class 2606 OID 919922)
-- Name: tenders tenders_tender_no_key1060; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1060 UNIQUE (tender_no);


--
-- TOC entry 5848 (class 2606 OID 919924)
-- Name: tenders tenders_tender_no_key1061; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1061 UNIQUE (tender_no);


--
-- TOC entry 5850 (class 2606 OID 919926)
-- Name: tenders tenders_tender_no_key1062; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1062 UNIQUE (tender_no);


--
-- TOC entry 5852 (class 2606 OID 919928)
-- Name: tenders tenders_tender_no_key1063; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1063 UNIQUE (tender_no);


--
-- TOC entry 5854 (class 2606 OID 919930)
-- Name: tenders tenders_tender_no_key1064; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1064 UNIQUE (tender_no);


--
-- TOC entry 5856 (class 2606 OID 919932)
-- Name: tenders tenders_tender_no_key1065; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1065 UNIQUE (tender_no);


--
-- TOC entry 5858 (class 2606 OID 919934)
-- Name: tenders tenders_tender_no_key1066; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1066 UNIQUE (tender_no);


--
-- TOC entry 5860 (class 2606 OID 919936)
-- Name: tenders tenders_tender_no_key1067; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1067 UNIQUE (tender_no);


--
-- TOC entry 5862 (class 2606 OID 919938)
-- Name: tenders tenders_tender_no_key1068; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1068 UNIQUE (tender_no);


--
-- TOC entry 5864 (class 2606 OID 919940)
-- Name: tenders tenders_tender_no_key1069; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1069 UNIQUE (tender_no);


--
-- TOC entry 5866 (class 2606 OID 920278)
-- Name: tenders tenders_tender_no_key107; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key107 UNIQUE (tender_no);


--
-- TOC entry 5868 (class 2606 OID 920280)
-- Name: tenders tenders_tender_no_key1070; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1070 UNIQUE (tender_no);


--
-- TOC entry 5870 (class 2606 OID 920282)
-- Name: tenders tenders_tender_no_key1071; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1071 UNIQUE (tender_no);


--
-- TOC entry 5872 (class 2606 OID 920284)
-- Name: tenders tenders_tender_no_key1072; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1072 UNIQUE (tender_no);


--
-- TOC entry 5874 (class 2606 OID 920286)
-- Name: tenders tenders_tender_no_key1073; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1073 UNIQUE (tender_no);


--
-- TOC entry 5876 (class 2606 OID 920288)
-- Name: tenders tenders_tender_no_key1074; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1074 UNIQUE (tender_no);


--
-- TOC entry 5878 (class 2606 OID 920290)
-- Name: tenders tenders_tender_no_key1075; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1075 UNIQUE (tender_no);


--
-- TOC entry 5880 (class 2606 OID 920292)
-- Name: tenders tenders_tender_no_key1076; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1076 UNIQUE (tender_no);


--
-- TOC entry 5882 (class 2606 OID 920294)
-- Name: tenders tenders_tender_no_key1077; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1077 UNIQUE (tender_no);


--
-- TOC entry 5884 (class 2606 OID 920296)
-- Name: tenders tenders_tender_no_key1078; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1078 UNIQUE (tender_no);


--
-- TOC entry 5886 (class 2606 OID 920298)
-- Name: tenders tenders_tender_no_key1079; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1079 UNIQUE (tender_no);


--
-- TOC entry 5888 (class 2606 OID 920300)
-- Name: tenders tenders_tender_no_key108; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key108 UNIQUE (tender_no);


--
-- TOC entry 5890 (class 2606 OID 920302)
-- Name: tenders tenders_tender_no_key1080; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1080 UNIQUE (tender_no);


--
-- TOC entry 5892 (class 2606 OID 920304)
-- Name: tenders tenders_tender_no_key1081; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1081 UNIQUE (tender_no);


--
-- TOC entry 5894 (class 2606 OID 920306)
-- Name: tenders tenders_tender_no_key1082; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1082 UNIQUE (tender_no);


--
-- TOC entry 5896 (class 2606 OID 920308)
-- Name: tenders tenders_tender_no_key1083; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1083 UNIQUE (tender_no);


--
-- TOC entry 5898 (class 2606 OID 920310)
-- Name: tenders tenders_tender_no_key1084; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1084 UNIQUE (tender_no);


--
-- TOC entry 5900 (class 2606 OID 920312)
-- Name: tenders tenders_tender_no_key1085; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1085 UNIQUE (tender_no);


--
-- TOC entry 5902 (class 2606 OID 920314)
-- Name: tenders tenders_tender_no_key1086; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1086 UNIQUE (tender_no);


--
-- TOC entry 5904 (class 2606 OID 920316)
-- Name: tenders tenders_tender_no_key1087; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1087 UNIQUE (tender_no);


--
-- TOC entry 5906 (class 2606 OID 920318)
-- Name: tenders tenders_tender_no_key1088; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1088 UNIQUE (tender_no);


--
-- TOC entry 5908 (class 2606 OID 920320)
-- Name: tenders tenders_tender_no_key1089; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1089 UNIQUE (tender_no);


--
-- TOC entry 5910 (class 2606 OID 920322)
-- Name: tenders tenders_tender_no_key109; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key109 UNIQUE (tender_no);


--
-- TOC entry 5912 (class 2606 OID 920324)
-- Name: tenders tenders_tender_no_key1090; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1090 UNIQUE (tender_no);


--
-- TOC entry 5914 (class 2606 OID 920326)
-- Name: tenders tenders_tender_no_key1091; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1091 UNIQUE (tender_no);


--
-- TOC entry 5916 (class 2606 OID 920328)
-- Name: tenders tenders_tender_no_key1092; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1092 UNIQUE (tender_no);


--
-- TOC entry 5918 (class 2606 OID 920330)
-- Name: tenders tenders_tender_no_key1093; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1093 UNIQUE (tender_no);


--
-- TOC entry 5920 (class 2606 OID 920332)
-- Name: tenders tenders_tender_no_key1094; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1094 UNIQUE (tender_no);


--
-- TOC entry 5922 (class 2606 OID 920334)
-- Name: tenders tenders_tender_no_key1095; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1095 UNIQUE (tender_no);


--
-- TOC entry 5924 (class 2606 OID 920336)
-- Name: tenders tenders_tender_no_key1096; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1096 UNIQUE (tender_no);


--
-- TOC entry 5926 (class 2606 OID 920338)
-- Name: tenders tenders_tender_no_key1097; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1097 UNIQUE (tender_no);


--
-- TOC entry 5928 (class 2606 OID 920340)
-- Name: tenders tenders_tender_no_key1098; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1098 UNIQUE (tender_no);


--
-- TOC entry 5930 (class 2606 OID 920342)
-- Name: tenders tenders_tender_no_key1099; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1099 UNIQUE (tender_no);


--
-- TOC entry 5932 (class 2606 OID 920344)
-- Name: tenders tenders_tender_no_key11; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key11 UNIQUE (tender_no);


--
-- TOC entry 5934 (class 2606 OID 920346)
-- Name: tenders tenders_tender_no_key110; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key110 UNIQUE (tender_no);


--
-- TOC entry 5936 (class 2606 OID 920348)
-- Name: tenders tenders_tender_no_key1100; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1100 UNIQUE (tender_no);


--
-- TOC entry 5938 (class 2606 OID 920350)
-- Name: tenders tenders_tender_no_key1101; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1101 UNIQUE (tender_no);


--
-- TOC entry 5940 (class 2606 OID 920352)
-- Name: tenders tenders_tender_no_key1102; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1102 UNIQUE (tender_no);


--
-- TOC entry 5942 (class 2606 OID 920354)
-- Name: tenders tenders_tender_no_key1103; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1103 UNIQUE (tender_no);


--
-- TOC entry 5944 (class 2606 OID 920356)
-- Name: tenders tenders_tender_no_key1104; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1104 UNIQUE (tender_no);


--
-- TOC entry 5946 (class 2606 OID 920358)
-- Name: tenders tenders_tender_no_key1105; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1105 UNIQUE (tender_no);


--
-- TOC entry 5948 (class 2606 OID 920360)
-- Name: tenders tenders_tender_no_key1106; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1106 UNIQUE (tender_no);


--
-- TOC entry 5950 (class 2606 OID 920362)
-- Name: tenders tenders_tender_no_key1107; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1107 UNIQUE (tender_no);


--
-- TOC entry 5952 (class 2606 OID 920364)
-- Name: tenders tenders_tender_no_key1108; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1108 UNIQUE (tender_no);


--
-- TOC entry 5954 (class 2606 OID 920366)
-- Name: tenders tenders_tender_no_key1109; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1109 UNIQUE (tender_no);


--
-- TOC entry 5956 (class 2606 OID 920368)
-- Name: tenders tenders_tender_no_key111; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key111 UNIQUE (tender_no);


--
-- TOC entry 5958 (class 2606 OID 920370)
-- Name: tenders tenders_tender_no_key1110; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1110 UNIQUE (tender_no);


--
-- TOC entry 5960 (class 2606 OID 920372)
-- Name: tenders tenders_tender_no_key1111; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1111 UNIQUE (tender_no);


--
-- TOC entry 5962 (class 2606 OID 920374)
-- Name: tenders tenders_tender_no_key1112; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1112 UNIQUE (tender_no);


--
-- TOC entry 5964 (class 2606 OID 920376)
-- Name: tenders tenders_tender_no_key1113; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1113 UNIQUE (tender_no);


--
-- TOC entry 5966 (class 2606 OID 920378)
-- Name: tenders tenders_tender_no_key1114; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1114 UNIQUE (tender_no);


--
-- TOC entry 5968 (class 2606 OID 920380)
-- Name: tenders tenders_tender_no_key1115; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1115 UNIQUE (tender_no);


--
-- TOC entry 5970 (class 2606 OID 920382)
-- Name: tenders tenders_tender_no_key1116; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1116 UNIQUE (tender_no);


--
-- TOC entry 5972 (class 2606 OID 920384)
-- Name: tenders tenders_tender_no_key1117; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1117 UNIQUE (tender_no);


--
-- TOC entry 5974 (class 2606 OID 920386)
-- Name: tenders tenders_tender_no_key1118; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1118 UNIQUE (tender_no);


--
-- TOC entry 5976 (class 2606 OID 920388)
-- Name: tenders tenders_tender_no_key1119; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1119 UNIQUE (tender_no);


--
-- TOC entry 5978 (class 2606 OID 920390)
-- Name: tenders tenders_tender_no_key112; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key112 UNIQUE (tender_no);


--
-- TOC entry 5980 (class 2606 OID 920392)
-- Name: tenders tenders_tender_no_key1120; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1120 UNIQUE (tender_no);


--
-- TOC entry 5982 (class 2606 OID 920394)
-- Name: tenders tenders_tender_no_key1121; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1121 UNIQUE (tender_no);


--
-- TOC entry 5984 (class 2606 OID 920396)
-- Name: tenders tenders_tender_no_key1122; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1122 UNIQUE (tender_no);


--
-- TOC entry 5986 (class 2606 OID 920398)
-- Name: tenders tenders_tender_no_key1123; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1123 UNIQUE (tender_no);


--
-- TOC entry 5988 (class 2606 OID 920400)
-- Name: tenders tenders_tender_no_key1124; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1124 UNIQUE (tender_no);


--
-- TOC entry 5990 (class 2606 OID 920402)
-- Name: tenders tenders_tender_no_key1125; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1125 UNIQUE (tender_no);


--
-- TOC entry 5992 (class 2606 OID 920404)
-- Name: tenders tenders_tender_no_key1126; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1126 UNIQUE (tender_no);


--
-- TOC entry 5994 (class 2606 OID 920406)
-- Name: tenders tenders_tender_no_key1127; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1127 UNIQUE (tender_no);


--
-- TOC entry 5996 (class 2606 OID 920408)
-- Name: tenders tenders_tender_no_key1128; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1128 UNIQUE (tender_no);


--
-- TOC entry 5998 (class 2606 OID 920410)
-- Name: tenders tenders_tender_no_key1129; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1129 UNIQUE (tender_no);


--
-- TOC entry 6000 (class 2606 OID 920412)
-- Name: tenders tenders_tender_no_key113; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key113 UNIQUE (tender_no);


--
-- TOC entry 6002 (class 2606 OID 920414)
-- Name: tenders tenders_tender_no_key1130; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1130 UNIQUE (tender_no);


--
-- TOC entry 6004 (class 2606 OID 920416)
-- Name: tenders tenders_tender_no_key1131; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1131 UNIQUE (tender_no);


--
-- TOC entry 6006 (class 2606 OID 920418)
-- Name: tenders tenders_tender_no_key1132; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1132 UNIQUE (tender_no);


--
-- TOC entry 6008 (class 2606 OID 920420)
-- Name: tenders tenders_tender_no_key1133; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1133 UNIQUE (tender_no);


--
-- TOC entry 6010 (class 2606 OID 920422)
-- Name: tenders tenders_tender_no_key1134; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1134 UNIQUE (tender_no);


--
-- TOC entry 6012 (class 2606 OID 920424)
-- Name: tenders tenders_tender_no_key1135; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1135 UNIQUE (tender_no);


--
-- TOC entry 6014 (class 2606 OID 920426)
-- Name: tenders tenders_tender_no_key1136; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1136 UNIQUE (tender_no);


--
-- TOC entry 6016 (class 2606 OID 920428)
-- Name: tenders tenders_tender_no_key1137; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1137 UNIQUE (tender_no);


--
-- TOC entry 6018 (class 2606 OID 920430)
-- Name: tenders tenders_tender_no_key1138; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1138 UNIQUE (tender_no);


--
-- TOC entry 6020 (class 2606 OID 920432)
-- Name: tenders tenders_tender_no_key1139; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1139 UNIQUE (tender_no);


--
-- TOC entry 6022 (class 2606 OID 920434)
-- Name: tenders tenders_tender_no_key114; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key114 UNIQUE (tender_no);


--
-- TOC entry 6024 (class 2606 OID 920436)
-- Name: tenders tenders_tender_no_key1140; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1140 UNIQUE (tender_no);


--
-- TOC entry 6026 (class 2606 OID 920438)
-- Name: tenders tenders_tender_no_key1141; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1141 UNIQUE (tender_no);


--
-- TOC entry 6028 (class 2606 OID 920440)
-- Name: tenders tenders_tender_no_key1142; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1142 UNIQUE (tender_no);


--
-- TOC entry 6030 (class 2606 OID 920442)
-- Name: tenders tenders_tender_no_key1143; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1143 UNIQUE (tender_no);


--
-- TOC entry 6032 (class 2606 OID 920444)
-- Name: tenders tenders_tender_no_key1144; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1144 UNIQUE (tender_no);


--
-- TOC entry 6034 (class 2606 OID 920446)
-- Name: tenders tenders_tender_no_key1145; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1145 UNIQUE (tender_no);


--
-- TOC entry 6036 (class 2606 OID 920448)
-- Name: tenders tenders_tender_no_key1146; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1146 UNIQUE (tender_no);


--
-- TOC entry 6038 (class 2606 OID 920450)
-- Name: tenders tenders_tender_no_key1147; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1147 UNIQUE (tender_no);


--
-- TOC entry 6040 (class 2606 OID 920452)
-- Name: tenders tenders_tender_no_key1148; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1148 UNIQUE (tender_no);


--
-- TOC entry 6042 (class 2606 OID 920454)
-- Name: tenders tenders_tender_no_key1149; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1149 UNIQUE (tender_no);


--
-- TOC entry 6044 (class 2606 OID 920456)
-- Name: tenders tenders_tender_no_key115; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key115 UNIQUE (tender_no);


--
-- TOC entry 6046 (class 2606 OID 920458)
-- Name: tenders tenders_tender_no_key1150; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1150 UNIQUE (tender_no);


--
-- TOC entry 6048 (class 2606 OID 920460)
-- Name: tenders tenders_tender_no_key1151; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1151 UNIQUE (tender_no);


--
-- TOC entry 6050 (class 2606 OID 920462)
-- Name: tenders tenders_tender_no_key1152; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1152 UNIQUE (tender_no);


--
-- TOC entry 6052 (class 2606 OID 920464)
-- Name: tenders tenders_tender_no_key1153; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1153 UNIQUE (tender_no);


--
-- TOC entry 6054 (class 2606 OID 920466)
-- Name: tenders tenders_tender_no_key1154; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1154 UNIQUE (tender_no);


--
-- TOC entry 6056 (class 2606 OID 920468)
-- Name: tenders tenders_tender_no_key1155; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1155 UNIQUE (tender_no);


--
-- TOC entry 6058 (class 2606 OID 920470)
-- Name: tenders tenders_tender_no_key1156; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1156 UNIQUE (tender_no);


--
-- TOC entry 6060 (class 2606 OID 920472)
-- Name: tenders tenders_tender_no_key1157; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1157 UNIQUE (tender_no);


--
-- TOC entry 6062 (class 2606 OID 920474)
-- Name: tenders tenders_tender_no_key1158; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1158 UNIQUE (tender_no);


--
-- TOC entry 6064 (class 2606 OID 920476)
-- Name: tenders tenders_tender_no_key1159; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1159 UNIQUE (tender_no);


--
-- TOC entry 6066 (class 2606 OID 920478)
-- Name: tenders tenders_tender_no_key116; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key116 UNIQUE (tender_no);


--
-- TOC entry 6068 (class 2606 OID 920480)
-- Name: tenders tenders_tender_no_key1160; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1160 UNIQUE (tender_no);


--
-- TOC entry 6070 (class 2606 OID 920482)
-- Name: tenders tenders_tender_no_key1161; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1161 UNIQUE (tender_no);


--
-- TOC entry 6072 (class 2606 OID 920484)
-- Name: tenders tenders_tender_no_key1162; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1162 UNIQUE (tender_no);


--
-- TOC entry 6074 (class 2606 OID 920486)
-- Name: tenders tenders_tender_no_key1163; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1163 UNIQUE (tender_no);


--
-- TOC entry 6076 (class 2606 OID 920488)
-- Name: tenders tenders_tender_no_key1164; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1164 UNIQUE (tender_no);


--
-- TOC entry 6078 (class 2606 OID 920490)
-- Name: tenders tenders_tender_no_key1165; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1165 UNIQUE (tender_no);


--
-- TOC entry 6080 (class 2606 OID 920492)
-- Name: tenders tenders_tender_no_key1166; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1166 UNIQUE (tender_no);


--
-- TOC entry 6082 (class 2606 OID 920494)
-- Name: tenders tenders_tender_no_key1167; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1167 UNIQUE (tender_no);


--
-- TOC entry 6084 (class 2606 OID 920496)
-- Name: tenders tenders_tender_no_key1168; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1168 UNIQUE (tender_no);


--
-- TOC entry 6086 (class 2606 OID 920498)
-- Name: tenders tenders_tender_no_key1169; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1169 UNIQUE (tender_no);


--
-- TOC entry 6088 (class 2606 OID 920500)
-- Name: tenders tenders_tender_no_key117; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key117 UNIQUE (tender_no);


--
-- TOC entry 6090 (class 2606 OID 920502)
-- Name: tenders tenders_tender_no_key1170; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1170 UNIQUE (tender_no);


--
-- TOC entry 6092 (class 2606 OID 920504)
-- Name: tenders tenders_tender_no_key1171; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1171 UNIQUE (tender_no);


--
-- TOC entry 6094 (class 2606 OID 920506)
-- Name: tenders tenders_tender_no_key1172; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1172 UNIQUE (tender_no);


--
-- TOC entry 6096 (class 2606 OID 920508)
-- Name: tenders tenders_tender_no_key1173; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1173 UNIQUE (tender_no);


--
-- TOC entry 6098 (class 2606 OID 918122)
-- Name: tenders tenders_tender_no_key1174; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1174 UNIQUE (tender_no);


--
-- TOC entry 6100 (class 2606 OID 918124)
-- Name: tenders tenders_tender_no_key1175; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1175 UNIQUE (tender_no);


--
-- TOC entry 6102 (class 2606 OID 918126)
-- Name: tenders tenders_tender_no_key1176; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1176 UNIQUE (tender_no);


--
-- TOC entry 6104 (class 2606 OID 918128)
-- Name: tenders tenders_tender_no_key1177; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1177 UNIQUE (tender_no);


--
-- TOC entry 6106 (class 2606 OID 918130)
-- Name: tenders tenders_tender_no_key1178; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1178 UNIQUE (tender_no);


--
-- TOC entry 6108 (class 2606 OID 920232)
-- Name: tenders tenders_tender_no_key1179; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1179 UNIQUE (tender_no);


--
-- TOC entry 6110 (class 2606 OID 918132)
-- Name: tenders tenders_tender_no_key118; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key118 UNIQUE (tender_no);


--
-- TOC entry 6112 (class 2606 OID 919768)
-- Name: tenders tenders_tender_no_key1180; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1180 UNIQUE (tender_no);


--
-- TOC entry 6114 (class 2606 OID 919234)
-- Name: tenders tenders_tender_no_key1181; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1181 UNIQUE (tender_no);


--
-- TOC entry 6116 (class 2606 OID 919916)
-- Name: tenders tenders_tender_no_key1182; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1182 UNIQUE (tender_no);


--
-- TOC entry 6118 (class 2606 OID 919908)
-- Name: tenders tenders_tender_no_key1183; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1183 UNIQUE (tender_no);


--
-- TOC entry 6120 (class 2606 OID 919650)
-- Name: tenders tenders_tender_no_key1184; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1184 UNIQUE (tender_no);


--
-- TOC entry 6122 (class 2606 OID 919910)
-- Name: tenders tenders_tender_no_key1185; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1185 UNIQUE (tender_no);


--
-- TOC entry 6124 (class 2606 OID 919912)
-- Name: tenders tenders_tender_no_key1186; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1186 UNIQUE (tender_no);


--
-- TOC entry 6126 (class 2606 OID 918824)
-- Name: tenders tenders_tender_no_key1187; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1187 UNIQUE (tender_no);


--
-- TOC entry 6128 (class 2606 OID 918826)
-- Name: tenders tenders_tender_no_key1188; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1188 UNIQUE (tender_no);


--
-- TOC entry 6130 (class 2606 OID 918828)
-- Name: tenders tenders_tender_no_key1189; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1189 UNIQUE (tender_no);


--
-- TOC entry 6132 (class 2606 OID 918134)
-- Name: tenders tenders_tender_no_key119; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key119 UNIQUE (tender_no);


--
-- TOC entry 6134 (class 2606 OID 919294)
-- Name: tenders tenders_tender_no_key1190; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1190 UNIQUE (tender_no);


--
-- TOC entry 6136 (class 2606 OID 918830)
-- Name: tenders tenders_tender_no_key1191; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1191 UNIQUE (tender_no);


--
-- TOC entry 6138 (class 2606 OID 918864)
-- Name: tenders tenders_tender_no_key1192; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1192 UNIQUE (tender_no);


--
-- TOC entry 6140 (class 2606 OID 918326)
-- Name: tenders tenders_tender_no_key1193; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1193 UNIQUE (tender_no);


--
-- TOC entry 6142 (class 2606 OID 920510)
-- Name: tenders tenders_tender_no_key1194; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1194 UNIQUE (tender_no);


--
-- TOC entry 6144 (class 2606 OID 918120)
-- Name: tenders tenders_tender_no_key1195; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1195 UNIQUE (tender_no);


--
-- TOC entry 6146 (class 2606 OID 920512)
-- Name: tenders tenders_tender_no_key1196; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1196 UNIQUE (tender_no);


--
-- TOC entry 6148 (class 2606 OID 918136)
-- Name: tenders tenders_tender_no_key12; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key12 UNIQUE (tender_no);


--
-- TOC entry 6150 (class 2606 OID 918138)
-- Name: tenders tenders_tender_no_key120; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key120 UNIQUE (tender_no);


--
-- TOC entry 6152 (class 2606 OID 918140)
-- Name: tenders tenders_tender_no_key121; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key121 UNIQUE (tender_no);


--
-- TOC entry 6154 (class 2606 OID 918142)
-- Name: tenders tenders_tender_no_key122; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key122 UNIQUE (tender_no);


--
-- TOC entry 6156 (class 2606 OID 918144)
-- Name: tenders tenders_tender_no_key123; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key123 UNIQUE (tender_no);


--
-- TOC entry 6158 (class 2606 OID 918146)
-- Name: tenders tenders_tender_no_key124; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key124 UNIQUE (tender_no);


--
-- TOC entry 6160 (class 2606 OID 918148)
-- Name: tenders tenders_tender_no_key125; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key125 UNIQUE (tender_no);


--
-- TOC entry 6162 (class 2606 OID 918150)
-- Name: tenders tenders_tender_no_key126; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key126 UNIQUE (tender_no);


--
-- TOC entry 6164 (class 2606 OID 918152)
-- Name: tenders tenders_tender_no_key127; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key127 UNIQUE (tender_no);


--
-- TOC entry 6166 (class 2606 OID 918154)
-- Name: tenders tenders_tender_no_key128; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key128 UNIQUE (tender_no);


--
-- TOC entry 6168 (class 2606 OID 918156)
-- Name: tenders tenders_tender_no_key129; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key129 UNIQUE (tender_no);


--
-- TOC entry 6170 (class 2606 OID 918158)
-- Name: tenders tenders_tender_no_key13; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key13 UNIQUE (tender_no);


--
-- TOC entry 6172 (class 2606 OID 918160)
-- Name: tenders tenders_tender_no_key130; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key130 UNIQUE (tender_no);


--
-- TOC entry 6174 (class 2606 OID 918162)
-- Name: tenders tenders_tender_no_key131; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key131 UNIQUE (tender_no);


--
-- TOC entry 6176 (class 2606 OID 918164)
-- Name: tenders tenders_tender_no_key132; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key132 UNIQUE (tender_no);


--
-- TOC entry 6178 (class 2606 OID 918166)
-- Name: tenders tenders_tender_no_key133; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key133 UNIQUE (tender_no);


--
-- TOC entry 6180 (class 2606 OID 918168)
-- Name: tenders tenders_tender_no_key134; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key134 UNIQUE (tender_no);


--
-- TOC entry 6182 (class 2606 OID 918170)
-- Name: tenders tenders_tender_no_key135; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key135 UNIQUE (tender_no);


--
-- TOC entry 6184 (class 2606 OID 918172)
-- Name: tenders tenders_tender_no_key136; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key136 UNIQUE (tender_no);


--
-- TOC entry 6186 (class 2606 OID 918174)
-- Name: tenders tenders_tender_no_key137; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key137 UNIQUE (tender_no);


--
-- TOC entry 6188 (class 2606 OID 918176)
-- Name: tenders tenders_tender_no_key138; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key138 UNIQUE (tender_no);


--
-- TOC entry 6190 (class 2606 OID 918178)
-- Name: tenders tenders_tender_no_key139; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key139 UNIQUE (tender_no);


--
-- TOC entry 6192 (class 2606 OID 918180)
-- Name: tenders tenders_tender_no_key14; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key14 UNIQUE (tender_no);


--
-- TOC entry 6194 (class 2606 OID 918182)
-- Name: tenders tenders_tender_no_key140; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key140 UNIQUE (tender_no);


--
-- TOC entry 6196 (class 2606 OID 918184)
-- Name: tenders tenders_tender_no_key141; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key141 UNIQUE (tender_no);


--
-- TOC entry 6198 (class 2606 OID 918186)
-- Name: tenders tenders_tender_no_key142; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key142 UNIQUE (tender_no);


--
-- TOC entry 6200 (class 2606 OID 918188)
-- Name: tenders tenders_tender_no_key143; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key143 UNIQUE (tender_no);


--
-- TOC entry 6202 (class 2606 OID 918190)
-- Name: tenders tenders_tender_no_key144; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key144 UNIQUE (tender_no);


--
-- TOC entry 6204 (class 2606 OID 918192)
-- Name: tenders tenders_tender_no_key145; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key145 UNIQUE (tender_no);


--
-- TOC entry 6206 (class 2606 OID 918194)
-- Name: tenders tenders_tender_no_key146; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key146 UNIQUE (tender_no);


--
-- TOC entry 6208 (class 2606 OID 918196)
-- Name: tenders tenders_tender_no_key147; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key147 UNIQUE (tender_no);


--
-- TOC entry 6210 (class 2606 OID 918198)
-- Name: tenders tenders_tender_no_key148; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key148 UNIQUE (tender_no);


--
-- TOC entry 6212 (class 2606 OID 918200)
-- Name: tenders tenders_tender_no_key149; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key149 UNIQUE (tender_no);


--
-- TOC entry 6214 (class 2606 OID 918202)
-- Name: tenders tenders_tender_no_key15; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key15 UNIQUE (tender_no);


--
-- TOC entry 6216 (class 2606 OID 918204)
-- Name: tenders tenders_tender_no_key150; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key150 UNIQUE (tender_no);


--
-- TOC entry 6218 (class 2606 OID 918206)
-- Name: tenders tenders_tender_no_key151; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key151 UNIQUE (tender_no);


--
-- TOC entry 6220 (class 2606 OID 918208)
-- Name: tenders tenders_tender_no_key152; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key152 UNIQUE (tender_no);


--
-- TOC entry 6222 (class 2606 OID 918210)
-- Name: tenders tenders_tender_no_key153; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key153 UNIQUE (tender_no);


--
-- TOC entry 6224 (class 2606 OID 918212)
-- Name: tenders tenders_tender_no_key154; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key154 UNIQUE (tender_no);


--
-- TOC entry 6226 (class 2606 OID 918214)
-- Name: tenders tenders_tender_no_key155; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key155 UNIQUE (tender_no);


--
-- TOC entry 6228 (class 2606 OID 918216)
-- Name: tenders tenders_tender_no_key156; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key156 UNIQUE (tender_no);


--
-- TOC entry 6230 (class 2606 OID 918218)
-- Name: tenders tenders_tender_no_key157; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key157 UNIQUE (tender_no);


--
-- TOC entry 6232 (class 2606 OID 918220)
-- Name: tenders tenders_tender_no_key158; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key158 UNIQUE (tender_no);


--
-- TOC entry 6234 (class 2606 OID 918222)
-- Name: tenders tenders_tender_no_key159; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key159 UNIQUE (tender_no);


--
-- TOC entry 6236 (class 2606 OID 918224)
-- Name: tenders tenders_tender_no_key16; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key16 UNIQUE (tender_no);


--
-- TOC entry 6238 (class 2606 OID 918226)
-- Name: tenders tenders_tender_no_key160; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key160 UNIQUE (tender_no);


--
-- TOC entry 6240 (class 2606 OID 918228)
-- Name: tenders tenders_tender_no_key161; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key161 UNIQUE (tender_no);


--
-- TOC entry 6242 (class 2606 OID 918230)
-- Name: tenders tenders_tender_no_key162; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key162 UNIQUE (tender_no);


--
-- TOC entry 6244 (class 2606 OID 918232)
-- Name: tenders tenders_tender_no_key163; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key163 UNIQUE (tender_no);


--
-- TOC entry 6246 (class 2606 OID 918234)
-- Name: tenders tenders_tender_no_key164; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key164 UNIQUE (tender_no);


--
-- TOC entry 6248 (class 2606 OID 918236)
-- Name: tenders tenders_tender_no_key165; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key165 UNIQUE (tender_no);


--
-- TOC entry 6250 (class 2606 OID 918238)
-- Name: tenders tenders_tender_no_key166; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key166 UNIQUE (tender_no);


--
-- TOC entry 6252 (class 2606 OID 918250)
-- Name: tenders tenders_tender_no_key167; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key167 UNIQUE (tender_no);


--
-- TOC entry 6254 (class 2606 OID 918252)
-- Name: tenders tenders_tender_no_key168; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key168 UNIQUE (tender_no);


--
-- TOC entry 6256 (class 2606 OID 918254)
-- Name: tenders tenders_tender_no_key169; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key169 UNIQUE (tender_no);


--
-- TOC entry 6258 (class 2606 OID 918256)
-- Name: tenders tenders_tender_no_key17; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key17 UNIQUE (tender_no);


--
-- TOC entry 6260 (class 2606 OID 918258)
-- Name: tenders tenders_tender_no_key170; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key170 UNIQUE (tender_no);


--
-- TOC entry 6262 (class 2606 OID 918260)
-- Name: tenders tenders_tender_no_key171; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key171 UNIQUE (tender_no);


--
-- TOC entry 6264 (class 2606 OID 918262)
-- Name: tenders tenders_tender_no_key172; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key172 UNIQUE (tender_no);


--
-- TOC entry 6266 (class 2606 OID 918264)
-- Name: tenders tenders_tender_no_key173; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key173 UNIQUE (tender_no);


--
-- TOC entry 6268 (class 2606 OID 918266)
-- Name: tenders tenders_tender_no_key174; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key174 UNIQUE (tender_no);


--
-- TOC entry 6270 (class 2606 OID 918268)
-- Name: tenders tenders_tender_no_key175; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key175 UNIQUE (tender_no);


--
-- TOC entry 6272 (class 2606 OID 918270)
-- Name: tenders tenders_tender_no_key176; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key176 UNIQUE (tender_no);


--
-- TOC entry 6274 (class 2606 OID 918272)
-- Name: tenders tenders_tender_no_key177; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key177 UNIQUE (tender_no);


--
-- TOC entry 6276 (class 2606 OID 918274)
-- Name: tenders tenders_tender_no_key178; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key178 UNIQUE (tender_no);


--
-- TOC entry 6278 (class 2606 OID 918276)
-- Name: tenders tenders_tender_no_key179; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key179 UNIQUE (tender_no);


--
-- TOC entry 6280 (class 2606 OID 918278)
-- Name: tenders tenders_tender_no_key18; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key18 UNIQUE (tender_no);


--
-- TOC entry 6282 (class 2606 OID 918280)
-- Name: tenders tenders_tender_no_key180; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key180 UNIQUE (tender_no);


--
-- TOC entry 6284 (class 2606 OID 918282)
-- Name: tenders tenders_tender_no_key181; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key181 UNIQUE (tender_no);


--
-- TOC entry 6286 (class 2606 OID 918284)
-- Name: tenders tenders_tender_no_key182; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key182 UNIQUE (tender_no);


--
-- TOC entry 6288 (class 2606 OID 918286)
-- Name: tenders tenders_tender_no_key183; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key183 UNIQUE (tender_no);


--
-- TOC entry 6290 (class 2606 OID 918288)
-- Name: tenders tenders_tender_no_key184; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key184 UNIQUE (tender_no);


--
-- TOC entry 6292 (class 2606 OID 918290)
-- Name: tenders tenders_tender_no_key185; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key185 UNIQUE (tender_no);


--
-- TOC entry 6294 (class 2606 OID 918292)
-- Name: tenders tenders_tender_no_key186; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key186 UNIQUE (tender_no);


--
-- TOC entry 6296 (class 2606 OID 918294)
-- Name: tenders tenders_tender_no_key187; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key187 UNIQUE (tender_no);


--
-- TOC entry 6298 (class 2606 OID 918296)
-- Name: tenders tenders_tender_no_key188; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key188 UNIQUE (tender_no);


--
-- TOC entry 6300 (class 2606 OID 918298)
-- Name: tenders tenders_tender_no_key189; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key189 UNIQUE (tender_no);


--
-- TOC entry 6302 (class 2606 OID 918300)
-- Name: tenders tenders_tender_no_key19; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key19 UNIQUE (tender_no);


--
-- TOC entry 6304 (class 2606 OID 918302)
-- Name: tenders tenders_tender_no_key190; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key190 UNIQUE (tender_no);


--
-- TOC entry 6306 (class 2606 OID 918304)
-- Name: tenders tenders_tender_no_key191; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key191 UNIQUE (tender_no);


--
-- TOC entry 6308 (class 2606 OID 918306)
-- Name: tenders tenders_tender_no_key192; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key192 UNIQUE (tender_no);


--
-- TOC entry 6310 (class 2606 OID 918308)
-- Name: tenders tenders_tender_no_key193; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key193 UNIQUE (tender_no);


--
-- TOC entry 6312 (class 2606 OID 918310)
-- Name: tenders tenders_tender_no_key194; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key194 UNIQUE (tender_no);


--
-- TOC entry 6314 (class 2606 OID 918312)
-- Name: tenders tenders_tender_no_key195; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key195 UNIQUE (tender_no);


--
-- TOC entry 6316 (class 2606 OID 918314)
-- Name: tenders tenders_tender_no_key196; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key196 UNIQUE (tender_no);


--
-- TOC entry 6318 (class 2606 OID 918316)
-- Name: tenders tenders_tender_no_key197; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key197 UNIQUE (tender_no);


--
-- TOC entry 6320 (class 2606 OID 918318)
-- Name: tenders tenders_tender_no_key198; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key198 UNIQUE (tender_no);


--
-- TOC entry 6322 (class 2606 OID 918320)
-- Name: tenders tenders_tender_no_key199; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key199 UNIQUE (tender_no);


--
-- TOC entry 6324 (class 2606 OID 918322)
-- Name: tenders tenders_tender_no_key2; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key2 UNIQUE (tender_no);


--
-- TOC entry 6326 (class 2606 OID 918324)
-- Name: tenders tenders_tender_no_key20; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key20 UNIQUE (tender_no);


--
-- TOC entry 6328 (class 2606 OID 918328)
-- Name: tenders tenders_tender_no_key200; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key200 UNIQUE (tender_no);


--
-- TOC entry 6330 (class 2606 OID 918330)
-- Name: tenders tenders_tender_no_key201; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key201 UNIQUE (tender_no);


--
-- TOC entry 6332 (class 2606 OID 918332)
-- Name: tenders tenders_tender_no_key202; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key202 UNIQUE (tender_no);


--
-- TOC entry 6334 (class 2606 OID 918334)
-- Name: tenders tenders_tender_no_key203; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key203 UNIQUE (tender_no);


--
-- TOC entry 6336 (class 2606 OID 918336)
-- Name: tenders tenders_tender_no_key204; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key204 UNIQUE (tender_no);


--
-- TOC entry 6338 (class 2606 OID 918338)
-- Name: tenders tenders_tender_no_key205; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key205 UNIQUE (tender_no);


--
-- TOC entry 6340 (class 2606 OID 918340)
-- Name: tenders tenders_tender_no_key206; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key206 UNIQUE (tender_no);


--
-- TOC entry 6342 (class 2606 OID 918342)
-- Name: tenders tenders_tender_no_key207; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key207 UNIQUE (tender_no);


--
-- TOC entry 6344 (class 2606 OID 918344)
-- Name: tenders tenders_tender_no_key208; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key208 UNIQUE (tender_no);


--
-- TOC entry 6346 (class 2606 OID 918346)
-- Name: tenders tenders_tender_no_key209; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key209 UNIQUE (tender_no);


--
-- TOC entry 6348 (class 2606 OID 918348)
-- Name: tenders tenders_tender_no_key21; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key21 UNIQUE (tender_no);


--
-- TOC entry 6350 (class 2606 OID 918350)
-- Name: tenders tenders_tender_no_key210; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key210 UNIQUE (tender_no);


--
-- TOC entry 6352 (class 2606 OID 918352)
-- Name: tenders tenders_tender_no_key211; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key211 UNIQUE (tender_no);


--
-- TOC entry 6354 (class 2606 OID 918354)
-- Name: tenders tenders_tender_no_key212; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key212 UNIQUE (tender_no);


--
-- TOC entry 6356 (class 2606 OID 918356)
-- Name: tenders tenders_tender_no_key213; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key213 UNIQUE (tender_no);


--
-- TOC entry 6358 (class 2606 OID 918358)
-- Name: tenders tenders_tender_no_key214; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key214 UNIQUE (tender_no);


--
-- TOC entry 6360 (class 2606 OID 918360)
-- Name: tenders tenders_tender_no_key215; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key215 UNIQUE (tender_no);


--
-- TOC entry 6362 (class 2606 OID 918362)
-- Name: tenders tenders_tender_no_key216; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key216 UNIQUE (tender_no);


--
-- TOC entry 6364 (class 2606 OID 918364)
-- Name: tenders tenders_tender_no_key217; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key217 UNIQUE (tender_no);


--
-- TOC entry 6366 (class 2606 OID 918366)
-- Name: tenders tenders_tender_no_key218; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key218 UNIQUE (tender_no);


--
-- TOC entry 6368 (class 2606 OID 918368)
-- Name: tenders tenders_tender_no_key219; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key219 UNIQUE (tender_no);


--
-- TOC entry 6370 (class 2606 OID 918370)
-- Name: tenders tenders_tender_no_key22; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key22 UNIQUE (tender_no);


--
-- TOC entry 6372 (class 2606 OID 918372)
-- Name: tenders tenders_tender_no_key220; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key220 UNIQUE (tender_no);


--
-- TOC entry 6374 (class 2606 OID 918374)
-- Name: tenders tenders_tender_no_key221; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key221 UNIQUE (tender_no);


--
-- TOC entry 6376 (class 2606 OID 918376)
-- Name: tenders tenders_tender_no_key222; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key222 UNIQUE (tender_no);


--
-- TOC entry 6378 (class 2606 OID 918378)
-- Name: tenders tenders_tender_no_key223; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key223 UNIQUE (tender_no);


--
-- TOC entry 6380 (class 2606 OID 918380)
-- Name: tenders tenders_tender_no_key224; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key224 UNIQUE (tender_no);


--
-- TOC entry 6382 (class 2606 OID 918382)
-- Name: tenders tenders_tender_no_key225; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key225 UNIQUE (tender_no);


--
-- TOC entry 6384 (class 2606 OID 918384)
-- Name: tenders tenders_tender_no_key226; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key226 UNIQUE (tender_no);


--
-- TOC entry 6386 (class 2606 OID 918386)
-- Name: tenders tenders_tender_no_key227; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key227 UNIQUE (tender_no);


--
-- TOC entry 6388 (class 2606 OID 918388)
-- Name: tenders tenders_tender_no_key228; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key228 UNIQUE (tender_no);


--
-- TOC entry 6390 (class 2606 OID 918390)
-- Name: tenders tenders_tender_no_key229; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key229 UNIQUE (tender_no);


--
-- TOC entry 6392 (class 2606 OID 918392)
-- Name: tenders tenders_tender_no_key23; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key23 UNIQUE (tender_no);


--
-- TOC entry 6394 (class 2606 OID 918394)
-- Name: tenders tenders_tender_no_key230; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key230 UNIQUE (tender_no);


--
-- TOC entry 6396 (class 2606 OID 918396)
-- Name: tenders tenders_tender_no_key231; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key231 UNIQUE (tender_no);


--
-- TOC entry 6398 (class 2606 OID 918398)
-- Name: tenders tenders_tender_no_key232; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key232 UNIQUE (tender_no);


--
-- TOC entry 6400 (class 2606 OID 918400)
-- Name: tenders tenders_tender_no_key233; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key233 UNIQUE (tender_no);


--
-- TOC entry 6402 (class 2606 OID 918402)
-- Name: tenders tenders_tender_no_key234; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key234 UNIQUE (tender_no);


--
-- TOC entry 6404 (class 2606 OID 918404)
-- Name: tenders tenders_tender_no_key235; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key235 UNIQUE (tender_no);


--
-- TOC entry 6406 (class 2606 OID 918406)
-- Name: tenders tenders_tender_no_key236; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key236 UNIQUE (tender_no);


--
-- TOC entry 6408 (class 2606 OID 918408)
-- Name: tenders tenders_tender_no_key237; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key237 UNIQUE (tender_no);


--
-- TOC entry 6410 (class 2606 OID 918410)
-- Name: tenders tenders_tender_no_key238; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key238 UNIQUE (tender_no);


--
-- TOC entry 6412 (class 2606 OID 918412)
-- Name: tenders tenders_tender_no_key239; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key239 UNIQUE (tender_no);


--
-- TOC entry 6414 (class 2606 OID 918414)
-- Name: tenders tenders_tender_no_key24; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key24 UNIQUE (tender_no);


--
-- TOC entry 6416 (class 2606 OID 918416)
-- Name: tenders tenders_tender_no_key240; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key240 UNIQUE (tender_no);


--
-- TOC entry 6418 (class 2606 OID 918418)
-- Name: tenders tenders_tender_no_key241; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key241 UNIQUE (tender_no);


--
-- TOC entry 6420 (class 2606 OID 918420)
-- Name: tenders tenders_tender_no_key242; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key242 UNIQUE (tender_no);


--
-- TOC entry 6422 (class 2606 OID 918422)
-- Name: tenders tenders_tender_no_key243; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key243 UNIQUE (tender_no);


--
-- TOC entry 6424 (class 2606 OID 918424)
-- Name: tenders tenders_tender_no_key244; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key244 UNIQUE (tender_no);


--
-- TOC entry 6426 (class 2606 OID 918240)
-- Name: tenders tenders_tender_no_key245; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key245 UNIQUE (tender_no);


--
-- TOC entry 6428 (class 2606 OID 918242)
-- Name: tenders tenders_tender_no_key246; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key246 UNIQUE (tender_no);


--
-- TOC entry 6430 (class 2606 OID 918244)
-- Name: tenders tenders_tender_no_key247; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key247 UNIQUE (tender_no);


--
-- TOC entry 6432 (class 2606 OID 918246)
-- Name: tenders tenders_tender_no_key248; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key248 UNIQUE (tender_no);


--
-- TOC entry 6434 (class 2606 OID 918248)
-- Name: tenders tenders_tender_no_key249; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key249 UNIQUE (tender_no);


--
-- TOC entry 6436 (class 2606 OID 918426)
-- Name: tenders tenders_tender_no_key25; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key25 UNIQUE (tender_no);


--
-- TOC entry 6438 (class 2606 OID 918428)
-- Name: tenders tenders_tender_no_key250; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key250 UNIQUE (tender_no);


--
-- TOC entry 6440 (class 2606 OID 918430)
-- Name: tenders tenders_tender_no_key251; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key251 UNIQUE (tender_no);


--
-- TOC entry 6442 (class 2606 OID 918432)
-- Name: tenders tenders_tender_no_key252; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key252 UNIQUE (tender_no);


--
-- TOC entry 6444 (class 2606 OID 918434)
-- Name: tenders tenders_tender_no_key253; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key253 UNIQUE (tender_no);


--
-- TOC entry 6446 (class 2606 OID 918436)
-- Name: tenders tenders_tender_no_key254; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key254 UNIQUE (tender_no);


--
-- TOC entry 6448 (class 2606 OID 918438)
-- Name: tenders tenders_tender_no_key255; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key255 UNIQUE (tender_no);


--
-- TOC entry 6450 (class 2606 OID 918440)
-- Name: tenders tenders_tender_no_key256; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key256 UNIQUE (tender_no);


--
-- TOC entry 6452 (class 2606 OID 918442)
-- Name: tenders tenders_tender_no_key257; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key257 UNIQUE (tender_no);


--
-- TOC entry 6454 (class 2606 OID 918444)
-- Name: tenders tenders_tender_no_key258; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key258 UNIQUE (tender_no);


--
-- TOC entry 6456 (class 2606 OID 918446)
-- Name: tenders tenders_tender_no_key259; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key259 UNIQUE (tender_no);


--
-- TOC entry 6458 (class 2606 OID 918448)
-- Name: tenders tenders_tender_no_key26; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key26 UNIQUE (tender_no);


--
-- TOC entry 6460 (class 2606 OID 918450)
-- Name: tenders tenders_tender_no_key260; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key260 UNIQUE (tender_no);


--
-- TOC entry 6462 (class 2606 OID 918452)
-- Name: tenders tenders_tender_no_key261; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key261 UNIQUE (tender_no);


--
-- TOC entry 6464 (class 2606 OID 918454)
-- Name: tenders tenders_tender_no_key262; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key262 UNIQUE (tender_no);


--
-- TOC entry 6466 (class 2606 OID 918456)
-- Name: tenders tenders_tender_no_key263; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key263 UNIQUE (tender_no);


--
-- TOC entry 6468 (class 2606 OID 918458)
-- Name: tenders tenders_tender_no_key264; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key264 UNIQUE (tender_no);


--
-- TOC entry 6470 (class 2606 OID 918460)
-- Name: tenders tenders_tender_no_key265; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key265 UNIQUE (tender_no);


--
-- TOC entry 6472 (class 2606 OID 918462)
-- Name: tenders tenders_tender_no_key266; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key266 UNIQUE (tender_no);


--
-- TOC entry 6474 (class 2606 OID 918464)
-- Name: tenders tenders_tender_no_key267; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key267 UNIQUE (tender_no);


--
-- TOC entry 6476 (class 2606 OID 918466)
-- Name: tenders tenders_tender_no_key268; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key268 UNIQUE (tender_no);


--
-- TOC entry 6478 (class 2606 OID 918468)
-- Name: tenders tenders_tender_no_key269; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key269 UNIQUE (tender_no);


--
-- TOC entry 6480 (class 2606 OID 918470)
-- Name: tenders tenders_tender_no_key27; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key27 UNIQUE (tender_no);


--
-- TOC entry 6482 (class 2606 OID 918472)
-- Name: tenders tenders_tender_no_key270; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key270 UNIQUE (tender_no);


--
-- TOC entry 6484 (class 2606 OID 918474)
-- Name: tenders tenders_tender_no_key271; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key271 UNIQUE (tender_no);


--
-- TOC entry 6486 (class 2606 OID 918476)
-- Name: tenders tenders_tender_no_key272; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key272 UNIQUE (tender_no);


--
-- TOC entry 6488 (class 2606 OID 918478)
-- Name: tenders tenders_tender_no_key273; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key273 UNIQUE (tender_no);


--
-- TOC entry 6490 (class 2606 OID 918480)
-- Name: tenders tenders_tender_no_key274; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key274 UNIQUE (tender_no);


--
-- TOC entry 6492 (class 2606 OID 918482)
-- Name: tenders tenders_tender_no_key275; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key275 UNIQUE (tender_no);


--
-- TOC entry 6494 (class 2606 OID 918484)
-- Name: tenders tenders_tender_no_key276; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key276 UNIQUE (tender_no);


--
-- TOC entry 6496 (class 2606 OID 918486)
-- Name: tenders tenders_tender_no_key277; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key277 UNIQUE (tender_no);


--
-- TOC entry 6498 (class 2606 OID 918488)
-- Name: tenders tenders_tender_no_key278; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key278 UNIQUE (tender_no);


--
-- TOC entry 6500 (class 2606 OID 918490)
-- Name: tenders tenders_tender_no_key279; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key279 UNIQUE (tender_no);


--
-- TOC entry 6502 (class 2606 OID 918492)
-- Name: tenders tenders_tender_no_key28; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key28 UNIQUE (tender_no);


--
-- TOC entry 6504 (class 2606 OID 918494)
-- Name: tenders tenders_tender_no_key280; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key280 UNIQUE (tender_no);


--
-- TOC entry 6506 (class 2606 OID 918496)
-- Name: tenders tenders_tender_no_key281; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key281 UNIQUE (tender_no);


--
-- TOC entry 6508 (class 2606 OID 918498)
-- Name: tenders tenders_tender_no_key282; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key282 UNIQUE (tender_no);


--
-- TOC entry 6510 (class 2606 OID 918500)
-- Name: tenders tenders_tender_no_key283; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key283 UNIQUE (tender_no);


--
-- TOC entry 6512 (class 2606 OID 918502)
-- Name: tenders tenders_tender_no_key284; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key284 UNIQUE (tender_no);


--
-- TOC entry 6514 (class 2606 OID 918504)
-- Name: tenders tenders_tender_no_key285; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key285 UNIQUE (tender_no);


--
-- TOC entry 6516 (class 2606 OID 918506)
-- Name: tenders tenders_tender_no_key286; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key286 UNIQUE (tender_no);


--
-- TOC entry 6518 (class 2606 OID 918508)
-- Name: tenders tenders_tender_no_key287; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key287 UNIQUE (tender_no);


--
-- TOC entry 6520 (class 2606 OID 918510)
-- Name: tenders tenders_tender_no_key288; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key288 UNIQUE (tender_no);


--
-- TOC entry 6522 (class 2606 OID 918512)
-- Name: tenders tenders_tender_no_key289; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key289 UNIQUE (tender_no);


--
-- TOC entry 6524 (class 2606 OID 918514)
-- Name: tenders tenders_tender_no_key29; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key29 UNIQUE (tender_no);


--
-- TOC entry 6526 (class 2606 OID 918516)
-- Name: tenders tenders_tender_no_key290; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key290 UNIQUE (tender_no);


--
-- TOC entry 6528 (class 2606 OID 918518)
-- Name: tenders tenders_tender_no_key291; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key291 UNIQUE (tender_no);


--
-- TOC entry 6530 (class 2606 OID 918520)
-- Name: tenders tenders_tender_no_key292; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key292 UNIQUE (tender_no);


--
-- TOC entry 6532 (class 2606 OID 918522)
-- Name: tenders tenders_tender_no_key293; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key293 UNIQUE (tender_no);


--
-- TOC entry 6534 (class 2606 OID 918524)
-- Name: tenders tenders_tender_no_key294; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key294 UNIQUE (tender_no);


--
-- TOC entry 6536 (class 2606 OID 918526)
-- Name: tenders tenders_tender_no_key295; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key295 UNIQUE (tender_no);


--
-- TOC entry 6538 (class 2606 OID 918528)
-- Name: tenders tenders_tender_no_key296; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key296 UNIQUE (tender_no);


--
-- TOC entry 6540 (class 2606 OID 918530)
-- Name: tenders tenders_tender_no_key297; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key297 UNIQUE (tender_no);


--
-- TOC entry 6542 (class 2606 OID 918532)
-- Name: tenders tenders_tender_no_key298; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key298 UNIQUE (tender_no);


--
-- TOC entry 6544 (class 2606 OID 918534)
-- Name: tenders tenders_tender_no_key299; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key299 UNIQUE (tender_no);


--
-- TOC entry 6546 (class 2606 OID 918536)
-- Name: tenders tenders_tender_no_key3; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key3 UNIQUE (tender_no);


--
-- TOC entry 6548 (class 2606 OID 918640)
-- Name: tenders tenders_tender_no_key30; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key30 UNIQUE (tender_no);


--
-- TOC entry 6550 (class 2606 OID 918642)
-- Name: tenders tenders_tender_no_key300; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key300 UNIQUE (tender_no);


--
-- TOC entry 6552 (class 2606 OID 918644)
-- Name: tenders tenders_tender_no_key301; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key301 UNIQUE (tender_no);


--
-- TOC entry 6554 (class 2606 OID 918646)
-- Name: tenders tenders_tender_no_key302; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key302 UNIQUE (tender_no);


--
-- TOC entry 6556 (class 2606 OID 918648)
-- Name: tenders tenders_tender_no_key303; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key303 UNIQUE (tender_no);


--
-- TOC entry 6558 (class 2606 OID 918650)
-- Name: tenders tenders_tender_no_key304; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key304 UNIQUE (tender_no);


--
-- TOC entry 6560 (class 2606 OID 918652)
-- Name: tenders tenders_tender_no_key305; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key305 UNIQUE (tender_no);


--
-- TOC entry 6562 (class 2606 OID 918654)
-- Name: tenders tenders_tender_no_key306; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key306 UNIQUE (tender_no);


--
-- TOC entry 6564 (class 2606 OID 918656)
-- Name: tenders tenders_tender_no_key307; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key307 UNIQUE (tender_no);


--
-- TOC entry 6566 (class 2606 OID 918658)
-- Name: tenders tenders_tender_no_key308; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key308 UNIQUE (tender_no);


--
-- TOC entry 6568 (class 2606 OID 918660)
-- Name: tenders tenders_tender_no_key309; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key309 UNIQUE (tender_no);


--
-- TOC entry 6570 (class 2606 OID 918662)
-- Name: tenders tenders_tender_no_key31; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key31 UNIQUE (tender_no);


--
-- TOC entry 6572 (class 2606 OID 918664)
-- Name: tenders tenders_tender_no_key310; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key310 UNIQUE (tender_no);


--
-- TOC entry 6574 (class 2606 OID 918666)
-- Name: tenders tenders_tender_no_key311; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key311 UNIQUE (tender_no);


--
-- TOC entry 6576 (class 2606 OID 918668)
-- Name: tenders tenders_tender_no_key312; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key312 UNIQUE (tender_no);


--
-- TOC entry 6578 (class 2606 OID 918670)
-- Name: tenders tenders_tender_no_key313; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key313 UNIQUE (tender_no);


--
-- TOC entry 6580 (class 2606 OID 918672)
-- Name: tenders tenders_tender_no_key314; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key314 UNIQUE (tender_no);


--
-- TOC entry 6582 (class 2606 OID 918674)
-- Name: tenders tenders_tender_no_key315; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key315 UNIQUE (tender_no);


--
-- TOC entry 6584 (class 2606 OID 918676)
-- Name: tenders tenders_tender_no_key316; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key316 UNIQUE (tender_no);


--
-- TOC entry 6586 (class 2606 OID 918678)
-- Name: tenders tenders_tender_no_key317; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key317 UNIQUE (tender_no);


--
-- TOC entry 6588 (class 2606 OID 918680)
-- Name: tenders tenders_tender_no_key318; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key318 UNIQUE (tender_no);


--
-- TOC entry 6590 (class 2606 OID 918682)
-- Name: tenders tenders_tender_no_key319; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key319 UNIQUE (tender_no);


--
-- TOC entry 6592 (class 2606 OID 918684)
-- Name: tenders tenders_tender_no_key32; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key32 UNIQUE (tender_no);


--
-- TOC entry 6594 (class 2606 OID 918686)
-- Name: tenders tenders_tender_no_key320; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key320 UNIQUE (tender_no);


--
-- TOC entry 6596 (class 2606 OID 918688)
-- Name: tenders tenders_tender_no_key321; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key321 UNIQUE (tender_no);


--
-- TOC entry 6598 (class 2606 OID 918690)
-- Name: tenders tenders_tender_no_key322; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key322 UNIQUE (tender_no);


--
-- TOC entry 6600 (class 2606 OID 918692)
-- Name: tenders tenders_tender_no_key323; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key323 UNIQUE (tender_no);


--
-- TOC entry 6602 (class 2606 OID 918694)
-- Name: tenders tenders_tender_no_key324; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key324 UNIQUE (tender_no);


--
-- TOC entry 6604 (class 2606 OID 918696)
-- Name: tenders tenders_tender_no_key325; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key325 UNIQUE (tender_no);


--
-- TOC entry 6606 (class 2606 OID 918698)
-- Name: tenders tenders_tender_no_key326; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key326 UNIQUE (tender_no);


--
-- TOC entry 6608 (class 2606 OID 918700)
-- Name: tenders tenders_tender_no_key327; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key327 UNIQUE (tender_no);


--
-- TOC entry 6610 (class 2606 OID 918702)
-- Name: tenders tenders_tender_no_key328; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key328 UNIQUE (tender_no);


--
-- TOC entry 6612 (class 2606 OID 918704)
-- Name: tenders tenders_tender_no_key329; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key329 UNIQUE (tender_no);


--
-- TOC entry 6614 (class 2606 OID 918706)
-- Name: tenders tenders_tender_no_key33; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key33 UNIQUE (tender_no);


--
-- TOC entry 6616 (class 2606 OID 918708)
-- Name: tenders tenders_tender_no_key330; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key330 UNIQUE (tender_no);


--
-- TOC entry 6618 (class 2606 OID 918710)
-- Name: tenders tenders_tender_no_key331; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key331 UNIQUE (tender_no);


--
-- TOC entry 6620 (class 2606 OID 918712)
-- Name: tenders tenders_tender_no_key332; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key332 UNIQUE (tender_no);


--
-- TOC entry 6622 (class 2606 OID 918714)
-- Name: tenders tenders_tender_no_key333; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key333 UNIQUE (tender_no);


--
-- TOC entry 6624 (class 2606 OID 918716)
-- Name: tenders tenders_tender_no_key334; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key334 UNIQUE (tender_no);


--
-- TOC entry 6626 (class 2606 OID 918718)
-- Name: tenders tenders_tender_no_key335; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key335 UNIQUE (tender_no);


--
-- TOC entry 6628 (class 2606 OID 918720)
-- Name: tenders tenders_tender_no_key336; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key336 UNIQUE (tender_no);


--
-- TOC entry 6630 (class 2606 OID 918722)
-- Name: tenders tenders_tender_no_key337; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key337 UNIQUE (tender_no);


--
-- TOC entry 6632 (class 2606 OID 918724)
-- Name: tenders tenders_tender_no_key338; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key338 UNIQUE (tender_no);


--
-- TOC entry 6634 (class 2606 OID 918726)
-- Name: tenders tenders_tender_no_key339; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key339 UNIQUE (tender_no);


--
-- TOC entry 6636 (class 2606 OID 918728)
-- Name: tenders tenders_tender_no_key34; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key34 UNIQUE (tender_no);


--
-- TOC entry 6638 (class 2606 OID 918730)
-- Name: tenders tenders_tender_no_key340; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key340 UNIQUE (tender_no);


--
-- TOC entry 6640 (class 2606 OID 918732)
-- Name: tenders tenders_tender_no_key341; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key341 UNIQUE (tender_no);


--
-- TOC entry 6642 (class 2606 OID 918734)
-- Name: tenders tenders_tender_no_key342; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key342 UNIQUE (tender_no);


--
-- TOC entry 6644 (class 2606 OID 918736)
-- Name: tenders tenders_tender_no_key343; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key343 UNIQUE (tender_no);


--
-- TOC entry 6646 (class 2606 OID 918738)
-- Name: tenders tenders_tender_no_key344; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key344 UNIQUE (tender_no);


--
-- TOC entry 6648 (class 2606 OID 918740)
-- Name: tenders tenders_tender_no_key345; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key345 UNIQUE (tender_no);


--
-- TOC entry 6650 (class 2606 OID 918742)
-- Name: tenders tenders_tender_no_key346; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key346 UNIQUE (tender_no);


--
-- TOC entry 6652 (class 2606 OID 918744)
-- Name: tenders tenders_tender_no_key347; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key347 UNIQUE (tender_no);


--
-- TOC entry 6654 (class 2606 OID 918746)
-- Name: tenders tenders_tender_no_key348; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key348 UNIQUE (tender_no);


--
-- TOC entry 6656 (class 2606 OID 918748)
-- Name: tenders tenders_tender_no_key349; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key349 UNIQUE (tender_no);


--
-- TOC entry 6658 (class 2606 OID 918750)
-- Name: tenders tenders_tender_no_key35; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key35 UNIQUE (tender_no);


--
-- TOC entry 6660 (class 2606 OID 918752)
-- Name: tenders tenders_tender_no_key350; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key350 UNIQUE (tender_no);


--
-- TOC entry 6662 (class 2606 OID 918754)
-- Name: tenders tenders_tender_no_key351; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key351 UNIQUE (tender_no);


--
-- TOC entry 6664 (class 2606 OID 918756)
-- Name: tenders tenders_tender_no_key352; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key352 UNIQUE (tender_no);


--
-- TOC entry 6666 (class 2606 OID 918758)
-- Name: tenders tenders_tender_no_key353; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key353 UNIQUE (tender_no);


--
-- TOC entry 6668 (class 2606 OID 918760)
-- Name: tenders tenders_tender_no_key354; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key354 UNIQUE (tender_no);


--
-- TOC entry 6670 (class 2606 OID 918762)
-- Name: tenders tenders_tender_no_key355; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key355 UNIQUE (tender_no);


--
-- TOC entry 6672 (class 2606 OID 918764)
-- Name: tenders tenders_tender_no_key356; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key356 UNIQUE (tender_no);


--
-- TOC entry 6674 (class 2606 OID 918766)
-- Name: tenders tenders_tender_no_key357; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key357 UNIQUE (tender_no);


--
-- TOC entry 6676 (class 2606 OID 918768)
-- Name: tenders tenders_tender_no_key358; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key358 UNIQUE (tender_no);


--
-- TOC entry 6678 (class 2606 OID 918770)
-- Name: tenders tenders_tender_no_key359; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key359 UNIQUE (tender_no);


--
-- TOC entry 6680 (class 2606 OID 918772)
-- Name: tenders tenders_tender_no_key36; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key36 UNIQUE (tender_no);


--
-- TOC entry 6682 (class 2606 OID 918774)
-- Name: tenders tenders_tender_no_key360; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key360 UNIQUE (tender_no);


--
-- TOC entry 6684 (class 2606 OID 918776)
-- Name: tenders tenders_tender_no_key361; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key361 UNIQUE (tender_no);


--
-- TOC entry 6686 (class 2606 OID 918778)
-- Name: tenders tenders_tender_no_key362; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key362 UNIQUE (tender_no);


--
-- TOC entry 6688 (class 2606 OID 918780)
-- Name: tenders tenders_tender_no_key363; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key363 UNIQUE (tender_no);


--
-- TOC entry 6690 (class 2606 OID 918782)
-- Name: tenders tenders_tender_no_key364; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key364 UNIQUE (tender_no);


--
-- TOC entry 6692 (class 2606 OID 918784)
-- Name: tenders tenders_tender_no_key365; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key365 UNIQUE (tender_no);


--
-- TOC entry 6694 (class 2606 OID 918786)
-- Name: tenders tenders_tender_no_key366; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key366 UNIQUE (tender_no);


--
-- TOC entry 6696 (class 2606 OID 918788)
-- Name: tenders tenders_tender_no_key367; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key367 UNIQUE (tender_no);


--
-- TOC entry 6698 (class 2606 OID 918790)
-- Name: tenders tenders_tender_no_key368; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key368 UNIQUE (tender_no);


--
-- TOC entry 6700 (class 2606 OID 918792)
-- Name: tenders tenders_tender_no_key369; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key369 UNIQUE (tender_no);


--
-- TOC entry 6702 (class 2606 OID 918794)
-- Name: tenders tenders_tender_no_key37; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key37 UNIQUE (tender_no);


--
-- TOC entry 6704 (class 2606 OID 918796)
-- Name: tenders tenders_tender_no_key370; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key370 UNIQUE (tender_no);


--
-- TOC entry 6706 (class 2606 OID 918798)
-- Name: tenders tenders_tender_no_key371; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key371 UNIQUE (tender_no);


--
-- TOC entry 6708 (class 2606 OID 918800)
-- Name: tenders tenders_tender_no_key372; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key372 UNIQUE (tender_no);


--
-- TOC entry 6710 (class 2606 OID 918802)
-- Name: tenders tenders_tender_no_key373; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key373 UNIQUE (tender_no);


--
-- TOC entry 6712 (class 2606 OID 918804)
-- Name: tenders tenders_tender_no_key374; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key374 UNIQUE (tender_no);


--
-- TOC entry 6714 (class 2606 OID 918806)
-- Name: tenders tenders_tender_no_key375; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key375 UNIQUE (tender_no);


--
-- TOC entry 6716 (class 2606 OID 918808)
-- Name: tenders tenders_tender_no_key376; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key376 UNIQUE (tender_no);


--
-- TOC entry 6718 (class 2606 OID 918810)
-- Name: tenders tenders_tender_no_key377; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key377 UNIQUE (tender_no);


--
-- TOC entry 6720 (class 2606 OID 918812)
-- Name: tenders tenders_tender_no_key378; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key378 UNIQUE (tender_no);


--
-- TOC entry 6722 (class 2606 OID 918814)
-- Name: tenders tenders_tender_no_key379; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key379 UNIQUE (tender_no);


--
-- TOC entry 6724 (class 2606 OID 918816)
-- Name: tenders tenders_tender_no_key38; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key38 UNIQUE (tender_no);


--
-- TOC entry 6726 (class 2606 OID 918818)
-- Name: tenders tenders_tender_no_key380; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key380 UNIQUE (tender_no);


--
-- TOC entry 6728 (class 2606 OID 918820)
-- Name: tenders tenders_tender_no_key381; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key381 UNIQUE (tender_no);


--
-- TOC entry 6730 (class 2606 OID 918822)
-- Name: tenders tenders_tender_no_key382; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key382 UNIQUE (tender_no);


--
-- TOC entry 6732 (class 2606 OID 919296)
-- Name: tenders tenders_tender_no_key383; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key383 UNIQUE (tender_no);


--
-- TOC entry 6734 (class 2606 OID 919298)
-- Name: tenders tenders_tender_no_key384; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key384 UNIQUE (tender_no);


--
-- TOC entry 6736 (class 2606 OID 919300)
-- Name: tenders tenders_tender_no_key385; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key385 UNIQUE (tender_no);


--
-- TOC entry 6738 (class 2606 OID 919302)
-- Name: tenders tenders_tender_no_key386; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key386 UNIQUE (tender_no);


--
-- TOC entry 6740 (class 2606 OID 919304)
-- Name: tenders tenders_tender_no_key387; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key387 UNIQUE (tender_no);


--
-- TOC entry 6742 (class 2606 OID 919306)
-- Name: tenders tenders_tender_no_key388; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key388 UNIQUE (tender_no);


--
-- TOC entry 6744 (class 2606 OID 919308)
-- Name: tenders tenders_tender_no_key389; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key389 UNIQUE (tender_no);


--
-- TOC entry 6746 (class 2606 OID 919310)
-- Name: tenders tenders_tender_no_key39; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key39 UNIQUE (tender_no);


--
-- TOC entry 6748 (class 2606 OID 919312)
-- Name: tenders tenders_tender_no_key390; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key390 UNIQUE (tender_no);


--
-- TOC entry 6750 (class 2606 OID 919314)
-- Name: tenders tenders_tender_no_key391; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key391 UNIQUE (tender_no);


--
-- TOC entry 6752 (class 2606 OID 919316)
-- Name: tenders tenders_tender_no_key392; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key392 UNIQUE (tender_no);


--
-- TOC entry 6754 (class 2606 OID 919318)
-- Name: tenders tenders_tender_no_key393; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key393 UNIQUE (tender_no);


--
-- TOC entry 6756 (class 2606 OID 919320)
-- Name: tenders tenders_tender_no_key394; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key394 UNIQUE (tender_no);


--
-- TOC entry 6758 (class 2606 OID 919322)
-- Name: tenders tenders_tender_no_key395; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key395 UNIQUE (tender_no);


--
-- TOC entry 6760 (class 2606 OID 919324)
-- Name: tenders tenders_tender_no_key396; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key396 UNIQUE (tender_no);


--
-- TOC entry 6762 (class 2606 OID 919326)
-- Name: tenders tenders_tender_no_key397; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key397 UNIQUE (tender_no);


--
-- TOC entry 6764 (class 2606 OID 919328)
-- Name: tenders tenders_tender_no_key398; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key398 UNIQUE (tender_no);


--
-- TOC entry 6766 (class 2606 OID 919330)
-- Name: tenders tenders_tender_no_key399; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key399 UNIQUE (tender_no);


--
-- TOC entry 6768 (class 2606 OID 919332)
-- Name: tenders tenders_tender_no_key4; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key4 UNIQUE (tender_no);


--
-- TOC entry 6770 (class 2606 OID 919334)
-- Name: tenders tenders_tender_no_key40; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key40 UNIQUE (tender_no);


--
-- TOC entry 6772 (class 2606 OID 919336)
-- Name: tenders tenders_tender_no_key400; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key400 UNIQUE (tender_no);


--
-- TOC entry 6774 (class 2606 OID 919338)
-- Name: tenders tenders_tender_no_key401; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key401 UNIQUE (tender_no);


--
-- TOC entry 6776 (class 2606 OID 919340)
-- Name: tenders tenders_tender_no_key402; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key402 UNIQUE (tender_no);


--
-- TOC entry 6778 (class 2606 OID 919342)
-- Name: tenders tenders_tender_no_key403; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key403 UNIQUE (tender_no);


--
-- TOC entry 6780 (class 2606 OID 919344)
-- Name: tenders tenders_tender_no_key404; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key404 UNIQUE (tender_no);


--
-- TOC entry 6782 (class 2606 OID 919346)
-- Name: tenders tenders_tender_no_key405; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key405 UNIQUE (tender_no);


--
-- TOC entry 6784 (class 2606 OID 919348)
-- Name: tenders tenders_tender_no_key406; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key406 UNIQUE (tender_no);


--
-- TOC entry 6786 (class 2606 OID 919350)
-- Name: tenders tenders_tender_no_key407; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key407 UNIQUE (tender_no);


--
-- TOC entry 6788 (class 2606 OID 919352)
-- Name: tenders tenders_tender_no_key408; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key408 UNIQUE (tender_no);


--
-- TOC entry 6790 (class 2606 OID 919354)
-- Name: tenders tenders_tender_no_key409; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key409 UNIQUE (tender_no);


--
-- TOC entry 6792 (class 2606 OID 919356)
-- Name: tenders tenders_tender_no_key41; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key41 UNIQUE (tender_no);


--
-- TOC entry 6794 (class 2606 OID 919358)
-- Name: tenders tenders_tender_no_key410; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key410 UNIQUE (tender_no);


--
-- TOC entry 6796 (class 2606 OID 919360)
-- Name: tenders tenders_tender_no_key411; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key411 UNIQUE (tender_no);


--
-- TOC entry 6798 (class 2606 OID 919362)
-- Name: tenders tenders_tender_no_key412; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key412 UNIQUE (tender_no);


--
-- TOC entry 6800 (class 2606 OID 919364)
-- Name: tenders tenders_tender_no_key413; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key413 UNIQUE (tender_no);


--
-- TOC entry 6802 (class 2606 OID 919366)
-- Name: tenders tenders_tender_no_key414; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key414 UNIQUE (tender_no);


--
-- TOC entry 6804 (class 2606 OID 919368)
-- Name: tenders tenders_tender_no_key415; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key415 UNIQUE (tender_no);


--
-- TOC entry 6806 (class 2606 OID 919370)
-- Name: tenders tenders_tender_no_key416; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key416 UNIQUE (tender_no);


--
-- TOC entry 6808 (class 2606 OID 919372)
-- Name: tenders tenders_tender_no_key417; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key417 UNIQUE (tender_no);


--
-- TOC entry 6810 (class 2606 OID 919374)
-- Name: tenders tenders_tender_no_key418; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key418 UNIQUE (tender_no);


--
-- TOC entry 6812 (class 2606 OID 919376)
-- Name: tenders tenders_tender_no_key419; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key419 UNIQUE (tender_no);


--
-- TOC entry 6814 (class 2606 OID 919378)
-- Name: tenders tenders_tender_no_key42; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key42 UNIQUE (tender_no);


--
-- TOC entry 6816 (class 2606 OID 919380)
-- Name: tenders tenders_tender_no_key420; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key420 UNIQUE (tender_no);


--
-- TOC entry 6818 (class 2606 OID 919382)
-- Name: tenders tenders_tender_no_key421; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key421 UNIQUE (tender_no);


--
-- TOC entry 6820 (class 2606 OID 919384)
-- Name: tenders tenders_tender_no_key422; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key422 UNIQUE (tender_no);


--
-- TOC entry 6822 (class 2606 OID 919386)
-- Name: tenders tenders_tender_no_key423; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key423 UNIQUE (tender_no);


--
-- TOC entry 6824 (class 2606 OID 919388)
-- Name: tenders tenders_tender_no_key424; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key424 UNIQUE (tender_no);


--
-- TOC entry 6826 (class 2606 OID 919390)
-- Name: tenders tenders_tender_no_key425; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key425 UNIQUE (tender_no);


--
-- TOC entry 6828 (class 2606 OID 919392)
-- Name: tenders tenders_tender_no_key426; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key426 UNIQUE (tender_no);


--
-- TOC entry 6830 (class 2606 OID 919394)
-- Name: tenders tenders_tender_no_key427; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key427 UNIQUE (tender_no);


--
-- TOC entry 6832 (class 2606 OID 919396)
-- Name: tenders tenders_tender_no_key428; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key428 UNIQUE (tender_no);


--
-- TOC entry 6834 (class 2606 OID 919398)
-- Name: tenders tenders_tender_no_key429; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key429 UNIQUE (tender_no);


--
-- TOC entry 6836 (class 2606 OID 919400)
-- Name: tenders tenders_tender_no_key43; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key43 UNIQUE (tender_no);


--
-- TOC entry 6838 (class 2606 OID 919402)
-- Name: tenders tenders_tender_no_key430; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key430 UNIQUE (tender_no);


--
-- TOC entry 6840 (class 2606 OID 919404)
-- Name: tenders tenders_tender_no_key431; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key431 UNIQUE (tender_no);


--
-- TOC entry 6842 (class 2606 OID 919406)
-- Name: tenders tenders_tender_no_key432; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key432 UNIQUE (tender_no);


--
-- TOC entry 6844 (class 2606 OID 919408)
-- Name: tenders tenders_tender_no_key433; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key433 UNIQUE (tender_no);


--
-- TOC entry 6846 (class 2606 OID 919410)
-- Name: tenders tenders_tender_no_key434; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key434 UNIQUE (tender_no);


--
-- TOC entry 6848 (class 2606 OID 919412)
-- Name: tenders tenders_tender_no_key435; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key435 UNIQUE (tender_no);


--
-- TOC entry 6850 (class 2606 OID 919414)
-- Name: tenders tenders_tender_no_key436; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key436 UNIQUE (tender_no);


--
-- TOC entry 6852 (class 2606 OID 919416)
-- Name: tenders tenders_tender_no_key437; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key437 UNIQUE (tender_no);


--
-- TOC entry 6854 (class 2606 OID 919418)
-- Name: tenders tenders_tender_no_key438; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key438 UNIQUE (tender_no);


--
-- TOC entry 6856 (class 2606 OID 919420)
-- Name: tenders tenders_tender_no_key439; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key439 UNIQUE (tender_no);


--
-- TOC entry 6858 (class 2606 OID 919422)
-- Name: tenders tenders_tender_no_key44; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key44 UNIQUE (tender_no);


--
-- TOC entry 6860 (class 2606 OID 919424)
-- Name: tenders tenders_tender_no_key440; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key440 UNIQUE (tender_no);


--
-- TOC entry 6862 (class 2606 OID 919426)
-- Name: tenders tenders_tender_no_key441; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key441 UNIQUE (tender_no);


--
-- TOC entry 6864 (class 2606 OID 918538)
-- Name: tenders tenders_tender_no_key442; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key442 UNIQUE (tender_no);


--
-- TOC entry 6866 (class 2606 OID 918540)
-- Name: tenders tenders_tender_no_key443; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key443 UNIQUE (tender_no);


--
-- TOC entry 6868 (class 2606 OID 918542)
-- Name: tenders tenders_tender_no_key444; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key444 UNIQUE (tender_no);


--
-- TOC entry 6870 (class 2606 OID 918544)
-- Name: tenders tenders_tender_no_key445; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key445 UNIQUE (tender_no);


--
-- TOC entry 6872 (class 2606 OID 918546)
-- Name: tenders tenders_tender_no_key446; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key446 UNIQUE (tender_no);


--
-- TOC entry 6874 (class 2606 OID 918548)
-- Name: tenders tenders_tender_no_key447; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key447 UNIQUE (tender_no);


--
-- TOC entry 6876 (class 2606 OID 918550)
-- Name: tenders tenders_tender_no_key448; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key448 UNIQUE (tender_no);


--
-- TOC entry 6878 (class 2606 OID 918552)
-- Name: tenders tenders_tender_no_key449; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key449 UNIQUE (tender_no);


--
-- TOC entry 6880 (class 2606 OID 918554)
-- Name: tenders tenders_tender_no_key45; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key45 UNIQUE (tender_no);


--
-- TOC entry 6882 (class 2606 OID 918556)
-- Name: tenders tenders_tender_no_key450; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key450 UNIQUE (tender_no);


--
-- TOC entry 6884 (class 2606 OID 918558)
-- Name: tenders tenders_tender_no_key451; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key451 UNIQUE (tender_no);


--
-- TOC entry 6886 (class 2606 OID 918560)
-- Name: tenders tenders_tender_no_key452; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key452 UNIQUE (tender_no);


--
-- TOC entry 6888 (class 2606 OID 918562)
-- Name: tenders tenders_tender_no_key453; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key453 UNIQUE (tender_no);


--
-- TOC entry 6890 (class 2606 OID 918564)
-- Name: tenders tenders_tender_no_key454; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key454 UNIQUE (tender_no);


--
-- TOC entry 6892 (class 2606 OID 918566)
-- Name: tenders tenders_tender_no_key455; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key455 UNIQUE (tender_no);


--
-- TOC entry 6894 (class 2606 OID 918568)
-- Name: tenders tenders_tender_no_key456; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key456 UNIQUE (tender_no);


--
-- TOC entry 6896 (class 2606 OID 918570)
-- Name: tenders tenders_tender_no_key457; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key457 UNIQUE (tender_no);


--
-- TOC entry 6898 (class 2606 OID 918572)
-- Name: tenders tenders_tender_no_key458; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key458 UNIQUE (tender_no);


--
-- TOC entry 6900 (class 2606 OID 918574)
-- Name: tenders tenders_tender_no_key459; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key459 UNIQUE (tender_no);


--
-- TOC entry 6902 (class 2606 OID 918576)
-- Name: tenders tenders_tender_no_key46; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key46 UNIQUE (tender_no);


--
-- TOC entry 6904 (class 2606 OID 918578)
-- Name: tenders tenders_tender_no_key460; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key460 UNIQUE (tender_no);


--
-- TOC entry 6906 (class 2606 OID 918580)
-- Name: tenders tenders_tender_no_key461; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key461 UNIQUE (tender_no);


--
-- TOC entry 6908 (class 2606 OID 918582)
-- Name: tenders tenders_tender_no_key462; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key462 UNIQUE (tender_no);


--
-- TOC entry 6910 (class 2606 OID 918584)
-- Name: tenders tenders_tender_no_key463; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key463 UNIQUE (tender_no);


--
-- TOC entry 6912 (class 2606 OID 918586)
-- Name: tenders tenders_tender_no_key464; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key464 UNIQUE (tender_no);


--
-- TOC entry 6914 (class 2606 OID 918588)
-- Name: tenders tenders_tender_no_key465; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key465 UNIQUE (tender_no);


--
-- TOC entry 6916 (class 2606 OID 918590)
-- Name: tenders tenders_tender_no_key466; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key466 UNIQUE (tender_no);


--
-- TOC entry 6918 (class 2606 OID 918592)
-- Name: tenders tenders_tender_no_key467; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key467 UNIQUE (tender_no);


--
-- TOC entry 6920 (class 2606 OID 918594)
-- Name: tenders tenders_tender_no_key468; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key468 UNIQUE (tender_no);


--
-- TOC entry 6922 (class 2606 OID 918596)
-- Name: tenders tenders_tender_no_key469; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key469 UNIQUE (tender_no);


--
-- TOC entry 6924 (class 2606 OID 918598)
-- Name: tenders tenders_tender_no_key47; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key47 UNIQUE (tender_no);


--
-- TOC entry 6926 (class 2606 OID 918600)
-- Name: tenders tenders_tender_no_key470; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key470 UNIQUE (tender_no);


--
-- TOC entry 6928 (class 2606 OID 918602)
-- Name: tenders tenders_tender_no_key471; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key471 UNIQUE (tender_no);


--
-- TOC entry 6930 (class 2606 OID 918604)
-- Name: tenders tenders_tender_no_key472; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key472 UNIQUE (tender_no);


--
-- TOC entry 6932 (class 2606 OID 918606)
-- Name: tenders tenders_tender_no_key473; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key473 UNIQUE (tender_no);


--
-- TOC entry 6934 (class 2606 OID 918608)
-- Name: tenders tenders_tender_no_key474; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key474 UNIQUE (tender_no);


--
-- TOC entry 6936 (class 2606 OID 918610)
-- Name: tenders tenders_tender_no_key475; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key475 UNIQUE (tender_no);


--
-- TOC entry 6938 (class 2606 OID 918612)
-- Name: tenders tenders_tender_no_key476; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key476 UNIQUE (tender_no);


--
-- TOC entry 6940 (class 2606 OID 918614)
-- Name: tenders tenders_tender_no_key477; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key477 UNIQUE (tender_no);


--
-- TOC entry 6942 (class 2606 OID 918616)
-- Name: tenders tenders_tender_no_key478; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key478 UNIQUE (tender_no);


--
-- TOC entry 6944 (class 2606 OID 918618)
-- Name: tenders tenders_tender_no_key479; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key479 UNIQUE (tender_no);


--
-- TOC entry 6946 (class 2606 OID 918620)
-- Name: tenders tenders_tender_no_key48; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key48 UNIQUE (tender_no);


--
-- TOC entry 6948 (class 2606 OID 918622)
-- Name: tenders tenders_tender_no_key480; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key480 UNIQUE (tender_no);


--
-- TOC entry 6950 (class 2606 OID 918624)
-- Name: tenders tenders_tender_no_key481; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key481 UNIQUE (tender_no);


--
-- TOC entry 6952 (class 2606 OID 918626)
-- Name: tenders tenders_tender_no_key482; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key482 UNIQUE (tender_no);


--
-- TOC entry 6954 (class 2606 OID 918628)
-- Name: tenders tenders_tender_no_key483; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key483 UNIQUE (tender_no);


--
-- TOC entry 6956 (class 2606 OID 918630)
-- Name: tenders tenders_tender_no_key484; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key484 UNIQUE (tender_no);


--
-- TOC entry 6958 (class 2606 OID 918632)
-- Name: tenders tenders_tender_no_key485; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key485 UNIQUE (tender_no);


--
-- TOC entry 6960 (class 2606 OID 918634)
-- Name: tenders tenders_tender_no_key486; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key486 UNIQUE (tender_no);


--
-- TOC entry 6962 (class 2606 OID 918636)
-- Name: tenders tenders_tender_no_key487; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key487 UNIQUE (tender_no);


--
-- TOC entry 6964 (class 2606 OID 918638)
-- Name: tenders tenders_tender_no_key488; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key488 UNIQUE (tender_no);


--
-- TOC entry 6966 (class 2606 OID 918832)
-- Name: tenders tenders_tender_no_key489; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key489 UNIQUE (tender_no);


--
-- TOC entry 6968 (class 2606 OID 918834)
-- Name: tenders tenders_tender_no_key49; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key49 UNIQUE (tender_no);


--
-- TOC entry 6970 (class 2606 OID 918836)
-- Name: tenders tenders_tender_no_key490; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key490 UNIQUE (tender_no);


--
-- TOC entry 6972 (class 2606 OID 918838)
-- Name: tenders tenders_tender_no_key491; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key491 UNIQUE (tender_no);


--
-- TOC entry 6974 (class 2606 OID 918840)
-- Name: tenders tenders_tender_no_key492; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key492 UNIQUE (tender_no);


--
-- TOC entry 6976 (class 2606 OID 918842)
-- Name: tenders tenders_tender_no_key493; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key493 UNIQUE (tender_no);


--
-- TOC entry 6978 (class 2606 OID 918844)
-- Name: tenders tenders_tender_no_key494; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key494 UNIQUE (tender_no);


--
-- TOC entry 6980 (class 2606 OID 918846)
-- Name: tenders tenders_tender_no_key495; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key495 UNIQUE (tender_no);


--
-- TOC entry 6982 (class 2606 OID 918848)
-- Name: tenders tenders_tender_no_key496; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key496 UNIQUE (tender_no);


--
-- TOC entry 6984 (class 2606 OID 918850)
-- Name: tenders tenders_tender_no_key497; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key497 UNIQUE (tender_no);


--
-- TOC entry 6986 (class 2606 OID 918852)
-- Name: tenders tenders_tender_no_key498; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key498 UNIQUE (tender_no);


--
-- TOC entry 6988 (class 2606 OID 918854)
-- Name: tenders tenders_tender_no_key499; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key499 UNIQUE (tender_no);


--
-- TOC entry 6990 (class 2606 OID 918856)
-- Name: tenders tenders_tender_no_key5; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key5 UNIQUE (tender_no);


--
-- TOC entry 6992 (class 2606 OID 918858)
-- Name: tenders tenders_tender_no_key50; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key50 UNIQUE (tender_no);


--
-- TOC entry 6994 (class 2606 OID 918860)
-- Name: tenders tenders_tender_no_key500; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key500 UNIQUE (tender_no);


--
-- TOC entry 6996 (class 2606 OID 918862)
-- Name: tenders tenders_tender_no_key501; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key501 UNIQUE (tender_no);


--
-- TOC entry 6998 (class 2606 OID 918866)
-- Name: tenders tenders_tender_no_key502; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key502 UNIQUE (tender_no);


--
-- TOC entry 7000 (class 2606 OID 918868)
-- Name: tenders tenders_tender_no_key503; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key503 UNIQUE (tender_no);


--
-- TOC entry 7002 (class 2606 OID 918870)
-- Name: tenders tenders_tender_no_key504; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key504 UNIQUE (tender_no);


--
-- TOC entry 7004 (class 2606 OID 918872)
-- Name: tenders tenders_tender_no_key505; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key505 UNIQUE (tender_no);


--
-- TOC entry 7006 (class 2606 OID 918874)
-- Name: tenders tenders_tender_no_key506; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key506 UNIQUE (tender_no);


--
-- TOC entry 7008 (class 2606 OID 918876)
-- Name: tenders tenders_tender_no_key507; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key507 UNIQUE (tender_no);


--
-- TOC entry 7010 (class 2606 OID 918878)
-- Name: tenders tenders_tender_no_key508; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key508 UNIQUE (tender_no);


--
-- TOC entry 7012 (class 2606 OID 918880)
-- Name: tenders tenders_tender_no_key509; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key509 UNIQUE (tender_no);


--
-- TOC entry 7014 (class 2606 OID 918882)
-- Name: tenders tenders_tender_no_key51; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key51 UNIQUE (tender_no);


--
-- TOC entry 7016 (class 2606 OID 918884)
-- Name: tenders tenders_tender_no_key510; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key510 UNIQUE (tender_no);


--
-- TOC entry 7018 (class 2606 OID 918886)
-- Name: tenders tenders_tender_no_key511; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key511 UNIQUE (tender_no);


--
-- TOC entry 7020 (class 2606 OID 918888)
-- Name: tenders tenders_tender_no_key512; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key512 UNIQUE (tender_no);


--
-- TOC entry 7022 (class 2606 OID 918890)
-- Name: tenders tenders_tender_no_key513; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key513 UNIQUE (tender_no);


--
-- TOC entry 7024 (class 2606 OID 918892)
-- Name: tenders tenders_tender_no_key514; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key514 UNIQUE (tender_no);


--
-- TOC entry 7026 (class 2606 OID 918894)
-- Name: tenders tenders_tender_no_key515; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key515 UNIQUE (tender_no);


--
-- TOC entry 7028 (class 2606 OID 918896)
-- Name: tenders tenders_tender_no_key516; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key516 UNIQUE (tender_no);


--
-- TOC entry 7030 (class 2606 OID 918898)
-- Name: tenders tenders_tender_no_key517; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key517 UNIQUE (tender_no);


--
-- TOC entry 7032 (class 2606 OID 918900)
-- Name: tenders tenders_tender_no_key518; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key518 UNIQUE (tender_no);


--
-- TOC entry 7034 (class 2606 OID 918902)
-- Name: tenders tenders_tender_no_key519; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key519 UNIQUE (tender_no);


--
-- TOC entry 7036 (class 2606 OID 918904)
-- Name: tenders tenders_tender_no_key52; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key52 UNIQUE (tender_no);


--
-- TOC entry 7038 (class 2606 OID 918906)
-- Name: tenders tenders_tender_no_key520; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key520 UNIQUE (tender_no);


--
-- TOC entry 7040 (class 2606 OID 918908)
-- Name: tenders tenders_tender_no_key521; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key521 UNIQUE (tender_no);


--
-- TOC entry 7042 (class 2606 OID 918910)
-- Name: tenders tenders_tender_no_key522; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key522 UNIQUE (tender_no);


--
-- TOC entry 7044 (class 2606 OID 918912)
-- Name: tenders tenders_tender_no_key523; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key523 UNIQUE (tender_no);


--
-- TOC entry 7046 (class 2606 OID 918914)
-- Name: tenders tenders_tender_no_key524; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key524 UNIQUE (tender_no);


--
-- TOC entry 7048 (class 2606 OID 918916)
-- Name: tenders tenders_tender_no_key525; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key525 UNIQUE (tender_no);


--
-- TOC entry 7050 (class 2606 OID 918918)
-- Name: tenders tenders_tender_no_key526; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key526 UNIQUE (tender_no);


--
-- TOC entry 7052 (class 2606 OID 918920)
-- Name: tenders tenders_tender_no_key527; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key527 UNIQUE (tender_no);


--
-- TOC entry 7054 (class 2606 OID 918922)
-- Name: tenders tenders_tender_no_key528; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key528 UNIQUE (tender_no);


--
-- TOC entry 7056 (class 2606 OID 918924)
-- Name: tenders tenders_tender_no_key529; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key529 UNIQUE (tender_no);


--
-- TOC entry 7058 (class 2606 OID 918926)
-- Name: tenders tenders_tender_no_key53; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key53 UNIQUE (tender_no);


--
-- TOC entry 7060 (class 2606 OID 918928)
-- Name: tenders tenders_tender_no_key530; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key530 UNIQUE (tender_no);


--
-- TOC entry 7062 (class 2606 OID 918930)
-- Name: tenders tenders_tender_no_key531; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key531 UNIQUE (tender_no);


--
-- TOC entry 7064 (class 2606 OID 918932)
-- Name: tenders tenders_tender_no_key532; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key532 UNIQUE (tender_no);


--
-- TOC entry 7066 (class 2606 OID 918934)
-- Name: tenders tenders_tender_no_key533; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key533 UNIQUE (tender_no);


--
-- TOC entry 7068 (class 2606 OID 918936)
-- Name: tenders tenders_tender_no_key534; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key534 UNIQUE (tender_no);


--
-- TOC entry 7070 (class 2606 OID 918938)
-- Name: tenders tenders_tender_no_key535; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key535 UNIQUE (tender_no);


--
-- TOC entry 7072 (class 2606 OID 918940)
-- Name: tenders tenders_tender_no_key536; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key536 UNIQUE (tender_no);


--
-- TOC entry 7074 (class 2606 OID 918942)
-- Name: tenders tenders_tender_no_key537; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key537 UNIQUE (tender_no);


--
-- TOC entry 7076 (class 2606 OID 918944)
-- Name: tenders tenders_tender_no_key538; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key538 UNIQUE (tender_no);


--
-- TOC entry 7078 (class 2606 OID 918946)
-- Name: tenders tenders_tender_no_key539; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key539 UNIQUE (tender_no);


--
-- TOC entry 7080 (class 2606 OID 918948)
-- Name: tenders tenders_tender_no_key54; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key54 UNIQUE (tender_no);


--
-- TOC entry 7082 (class 2606 OID 918950)
-- Name: tenders tenders_tender_no_key540; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key540 UNIQUE (tender_no);


--
-- TOC entry 7084 (class 2606 OID 918952)
-- Name: tenders tenders_tender_no_key541; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key541 UNIQUE (tender_no);


--
-- TOC entry 7086 (class 2606 OID 918954)
-- Name: tenders tenders_tender_no_key542; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key542 UNIQUE (tender_no);


--
-- TOC entry 7088 (class 2606 OID 918956)
-- Name: tenders tenders_tender_no_key543; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key543 UNIQUE (tender_no);


--
-- TOC entry 7090 (class 2606 OID 918958)
-- Name: tenders tenders_tender_no_key544; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key544 UNIQUE (tender_no);


--
-- TOC entry 7092 (class 2606 OID 918960)
-- Name: tenders tenders_tender_no_key545; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key545 UNIQUE (tender_no);


--
-- TOC entry 7094 (class 2606 OID 918962)
-- Name: tenders tenders_tender_no_key546; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key546 UNIQUE (tender_no);


--
-- TOC entry 7096 (class 2606 OID 918964)
-- Name: tenders tenders_tender_no_key547; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key547 UNIQUE (tender_no);


--
-- TOC entry 7098 (class 2606 OID 918966)
-- Name: tenders tenders_tender_no_key548; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key548 UNIQUE (tender_no);


--
-- TOC entry 7100 (class 2606 OID 918968)
-- Name: tenders tenders_tender_no_key549; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key549 UNIQUE (tender_no);


--
-- TOC entry 7102 (class 2606 OID 918970)
-- Name: tenders tenders_tender_no_key55; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key55 UNIQUE (tender_no);


--
-- TOC entry 7104 (class 2606 OID 918972)
-- Name: tenders tenders_tender_no_key550; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key550 UNIQUE (tender_no);


--
-- TOC entry 7106 (class 2606 OID 918974)
-- Name: tenders tenders_tender_no_key551; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key551 UNIQUE (tender_no);


--
-- TOC entry 7108 (class 2606 OID 918976)
-- Name: tenders tenders_tender_no_key552; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key552 UNIQUE (tender_no);


--
-- TOC entry 7110 (class 2606 OID 918978)
-- Name: tenders tenders_tender_no_key553; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key553 UNIQUE (tender_no);


--
-- TOC entry 7112 (class 2606 OID 918980)
-- Name: tenders tenders_tender_no_key554; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key554 UNIQUE (tender_no);


--
-- TOC entry 7114 (class 2606 OID 918982)
-- Name: tenders tenders_tender_no_key555; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key555 UNIQUE (tender_no);


--
-- TOC entry 7116 (class 2606 OID 918984)
-- Name: tenders tenders_tender_no_key556; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key556 UNIQUE (tender_no);


--
-- TOC entry 7118 (class 2606 OID 918986)
-- Name: tenders tenders_tender_no_key557; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key557 UNIQUE (tender_no);


--
-- TOC entry 7120 (class 2606 OID 918988)
-- Name: tenders tenders_tender_no_key558; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key558 UNIQUE (tender_no);


--
-- TOC entry 7122 (class 2606 OID 918990)
-- Name: tenders tenders_tender_no_key559; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key559 UNIQUE (tender_no);


--
-- TOC entry 7124 (class 2606 OID 918992)
-- Name: tenders tenders_tender_no_key56; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key56 UNIQUE (tender_no);


--
-- TOC entry 7126 (class 2606 OID 918994)
-- Name: tenders tenders_tender_no_key560; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key560 UNIQUE (tender_no);


--
-- TOC entry 7128 (class 2606 OID 918996)
-- Name: tenders tenders_tender_no_key561; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key561 UNIQUE (tender_no);


--
-- TOC entry 7130 (class 2606 OID 918998)
-- Name: tenders tenders_tender_no_key562; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key562 UNIQUE (tender_no);


--
-- TOC entry 7132 (class 2606 OID 919000)
-- Name: tenders tenders_tender_no_key563; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key563 UNIQUE (tender_no);


--
-- TOC entry 7134 (class 2606 OID 919002)
-- Name: tenders tenders_tender_no_key564; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key564 UNIQUE (tender_no);


--
-- TOC entry 7136 (class 2606 OID 919004)
-- Name: tenders tenders_tender_no_key565; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key565 UNIQUE (tender_no);


--
-- TOC entry 7138 (class 2606 OID 919006)
-- Name: tenders tenders_tender_no_key566; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key566 UNIQUE (tender_no);


--
-- TOC entry 7140 (class 2606 OID 919008)
-- Name: tenders tenders_tender_no_key567; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key567 UNIQUE (tender_no);


--
-- TOC entry 7142 (class 2606 OID 919010)
-- Name: tenders tenders_tender_no_key568; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key568 UNIQUE (tender_no);


--
-- TOC entry 7144 (class 2606 OID 919012)
-- Name: tenders tenders_tender_no_key569; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key569 UNIQUE (tender_no);


--
-- TOC entry 7146 (class 2606 OID 919014)
-- Name: tenders tenders_tender_no_key57; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key57 UNIQUE (tender_no);


--
-- TOC entry 7148 (class 2606 OID 919016)
-- Name: tenders tenders_tender_no_key570; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key570 UNIQUE (tender_no);


--
-- TOC entry 7150 (class 2606 OID 919018)
-- Name: tenders tenders_tender_no_key571; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key571 UNIQUE (tender_no);


--
-- TOC entry 7152 (class 2606 OID 919020)
-- Name: tenders tenders_tender_no_key572; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key572 UNIQUE (tender_no);


--
-- TOC entry 7154 (class 2606 OID 919022)
-- Name: tenders tenders_tender_no_key573; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key573 UNIQUE (tender_no);


--
-- TOC entry 7156 (class 2606 OID 919024)
-- Name: tenders tenders_tender_no_key574; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key574 UNIQUE (tender_no);


--
-- TOC entry 7158 (class 2606 OID 919026)
-- Name: tenders tenders_tender_no_key575; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key575 UNIQUE (tender_no);


--
-- TOC entry 7160 (class 2606 OID 919028)
-- Name: tenders tenders_tender_no_key576; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key576 UNIQUE (tender_no);


--
-- TOC entry 7162 (class 2606 OID 919030)
-- Name: tenders tenders_tender_no_key577; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key577 UNIQUE (tender_no);


--
-- TOC entry 7164 (class 2606 OID 919032)
-- Name: tenders tenders_tender_no_key578; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key578 UNIQUE (tender_no);


--
-- TOC entry 7166 (class 2606 OID 919034)
-- Name: tenders tenders_tender_no_key579; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key579 UNIQUE (tender_no);


--
-- TOC entry 7168 (class 2606 OID 919036)
-- Name: tenders tenders_tender_no_key58; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key58 UNIQUE (tender_no);


--
-- TOC entry 7170 (class 2606 OID 919038)
-- Name: tenders tenders_tender_no_key580; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key580 UNIQUE (tender_no);


--
-- TOC entry 7172 (class 2606 OID 919040)
-- Name: tenders tenders_tender_no_key581; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key581 UNIQUE (tender_no);


--
-- TOC entry 7174 (class 2606 OID 919042)
-- Name: tenders tenders_tender_no_key582; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key582 UNIQUE (tender_no);


--
-- TOC entry 7176 (class 2606 OID 919044)
-- Name: tenders tenders_tender_no_key583; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key583 UNIQUE (tender_no);


--
-- TOC entry 7178 (class 2606 OID 919046)
-- Name: tenders tenders_tender_no_key584; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key584 UNIQUE (tender_no);


--
-- TOC entry 7180 (class 2606 OID 919048)
-- Name: tenders tenders_tender_no_key585; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key585 UNIQUE (tender_no);


--
-- TOC entry 7182 (class 2606 OID 919050)
-- Name: tenders tenders_tender_no_key586; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key586 UNIQUE (tender_no);


--
-- TOC entry 7184 (class 2606 OID 919052)
-- Name: tenders tenders_tender_no_key587; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key587 UNIQUE (tender_no);


--
-- TOC entry 7186 (class 2606 OID 919054)
-- Name: tenders tenders_tender_no_key588; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key588 UNIQUE (tender_no);


--
-- TOC entry 7188 (class 2606 OID 919056)
-- Name: tenders tenders_tender_no_key589; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key589 UNIQUE (tender_no);


--
-- TOC entry 7190 (class 2606 OID 919058)
-- Name: tenders tenders_tender_no_key59; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key59 UNIQUE (tender_no);


--
-- TOC entry 7192 (class 2606 OID 919060)
-- Name: tenders tenders_tender_no_key590; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key590 UNIQUE (tender_no);


--
-- TOC entry 7194 (class 2606 OID 919062)
-- Name: tenders tenders_tender_no_key591; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key591 UNIQUE (tender_no);


--
-- TOC entry 7196 (class 2606 OID 919064)
-- Name: tenders tenders_tender_no_key592; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key592 UNIQUE (tender_no);


--
-- TOC entry 7198 (class 2606 OID 919066)
-- Name: tenders tenders_tender_no_key593; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key593 UNIQUE (tender_no);


--
-- TOC entry 7200 (class 2606 OID 919068)
-- Name: tenders tenders_tender_no_key594; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key594 UNIQUE (tender_no);


--
-- TOC entry 7202 (class 2606 OID 919070)
-- Name: tenders tenders_tender_no_key595; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key595 UNIQUE (tender_no);


--
-- TOC entry 7204 (class 2606 OID 919072)
-- Name: tenders tenders_tender_no_key596; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key596 UNIQUE (tender_no);


--
-- TOC entry 7206 (class 2606 OID 919074)
-- Name: tenders tenders_tender_no_key597; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key597 UNIQUE (tender_no);


--
-- TOC entry 7208 (class 2606 OID 919076)
-- Name: tenders tenders_tender_no_key598; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key598 UNIQUE (tender_no);


--
-- TOC entry 7210 (class 2606 OID 919078)
-- Name: tenders tenders_tender_no_key599; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key599 UNIQUE (tender_no);


--
-- TOC entry 7212 (class 2606 OID 919080)
-- Name: tenders tenders_tender_no_key6; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key6 UNIQUE (tender_no);


--
-- TOC entry 7214 (class 2606 OID 919082)
-- Name: tenders tenders_tender_no_key60; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key60 UNIQUE (tender_no);


--
-- TOC entry 7216 (class 2606 OID 919084)
-- Name: tenders tenders_tender_no_key600; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key600 UNIQUE (tender_no);


--
-- TOC entry 7218 (class 2606 OID 919086)
-- Name: tenders tenders_tender_no_key601; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key601 UNIQUE (tender_no);


--
-- TOC entry 7220 (class 2606 OID 919088)
-- Name: tenders tenders_tender_no_key602; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key602 UNIQUE (tender_no);


--
-- TOC entry 7222 (class 2606 OID 919090)
-- Name: tenders tenders_tender_no_key603; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key603 UNIQUE (tender_no);


--
-- TOC entry 7224 (class 2606 OID 919092)
-- Name: tenders tenders_tender_no_key604; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key604 UNIQUE (tender_no);


--
-- TOC entry 7226 (class 2606 OID 919094)
-- Name: tenders tenders_tender_no_key605; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key605 UNIQUE (tender_no);


--
-- TOC entry 7228 (class 2606 OID 919096)
-- Name: tenders tenders_tender_no_key606; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key606 UNIQUE (tender_no);


--
-- TOC entry 7230 (class 2606 OID 919098)
-- Name: tenders tenders_tender_no_key607; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key607 UNIQUE (tender_no);


--
-- TOC entry 7232 (class 2606 OID 919100)
-- Name: tenders tenders_tender_no_key608; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key608 UNIQUE (tender_no);


--
-- TOC entry 7234 (class 2606 OID 919102)
-- Name: tenders tenders_tender_no_key609; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key609 UNIQUE (tender_no);


--
-- TOC entry 7236 (class 2606 OID 919104)
-- Name: tenders tenders_tender_no_key61; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key61 UNIQUE (tender_no);


--
-- TOC entry 7238 (class 2606 OID 919106)
-- Name: tenders tenders_tender_no_key610; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key610 UNIQUE (tender_no);


--
-- TOC entry 7240 (class 2606 OID 919108)
-- Name: tenders tenders_tender_no_key611; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key611 UNIQUE (tender_no);


--
-- TOC entry 7242 (class 2606 OID 919110)
-- Name: tenders tenders_tender_no_key612; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key612 UNIQUE (tender_no);


--
-- TOC entry 7244 (class 2606 OID 919112)
-- Name: tenders tenders_tender_no_key613; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key613 UNIQUE (tender_no);


--
-- TOC entry 7246 (class 2606 OID 919114)
-- Name: tenders tenders_tender_no_key614; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key614 UNIQUE (tender_no);


--
-- TOC entry 7248 (class 2606 OID 919116)
-- Name: tenders tenders_tender_no_key615; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key615 UNIQUE (tender_no);


--
-- TOC entry 7250 (class 2606 OID 919118)
-- Name: tenders tenders_tender_no_key616; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key616 UNIQUE (tender_no);


--
-- TOC entry 7252 (class 2606 OID 919120)
-- Name: tenders tenders_tender_no_key617; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key617 UNIQUE (tender_no);


--
-- TOC entry 7254 (class 2606 OID 919122)
-- Name: tenders tenders_tender_no_key618; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key618 UNIQUE (tender_no);


--
-- TOC entry 7256 (class 2606 OID 919124)
-- Name: tenders tenders_tender_no_key619; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key619 UNIQUE (tender_no);


--
-- TOC entry 7258 (class 2606 OID 919126)
-- Name: tenders tenders_tender_no_key62; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key62 UNIQUE (tender_no);


--
-- TOC entry 7260 (class 2606 OID 919128)
-- Name: tenders tenders_tender_no_key620; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key620 UNIQUE (tender_no);


--
-- TOC entry 7262 (class 2606 OID 919130)
-- Name: tenders tenders_tender_no_key621; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key621 UNIQUE (tender_no);


--
-- TOC entry 7264 (class 2606 OID 919132)
-- Name: tenders tenders_tender_no_key622; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key622 UNIQUE (tender_no);


--
-- TOC entry 7266 (class 2606 OID 919134)
-- Name: tenders tenders_tender_no_key623; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key623 UNIQUE (tender_no);


--
-- TOC entry 7268 (class 2606 OID 919136)
-- Name: tenders tenders_tender_no_key624; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key624 UNIQUE (tender_no);


--
-- TOC entry 7270 (class 2606 OID 919138)
-- Name: tenders tenders_tender_no_key625; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key625 UNIQUE (tender_no);


--
-- TOC entry 7272 (class 2606 OID 919140)
-- Name: tenders tenders_tender_no_key626; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key626 UNIQUE (tender_no);


--
-- TOC entry 7274 (class 2606 OID 919142)
-- Name: tenders tenders_tender_no_key627; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key627 UNIQUE (tender_no);


--
-- TOC entry 7276 (class 2606 OID 919144)
-- Name: tenders tenders_tender_no_key628; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key628 UNIQUE (tender_no);


--
-- TOC entry 7278 (class 2606 OID 919146)
-- Name: tenders tenders_tender_no_key629; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key629 UNIQUE (tender_no);


--
-- TOC entry 7280 (class 2606 OID 919148)
-- Name: tenders tenders_tender_no_key63; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key63 UNIQUE (tender_no);


--
-- TOC entry 7282 (class 2606 OID 919150)
-- Name: tenders tenders_tender_no_key630; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key630 UNIQUE (tender_no);


--
-- TOC entry 7284 (class 2606 OID 919152)
-- Name: tenders tenders_tender_no_key631; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key631 UNIQUE (tender_no);


--
-- TOC entry 7286 (class 2606 OID 919154)
-- Name: tenders tenders_tender_no_key632; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key632 UNIQUE (tender_no);


--
-- TOC entry 7288 (class 2606 OID 919156)
-- Name: tenders tenders_tender_no_key633; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key633 UNIQUE (tender_no);


--
-- TOC entry 7290 (class 2606 OID 919158)
-- Name: tenders tenders_tender_no_key634; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key634 UNIQUE (tender_no);


--
-- TOC entry 7292 (class 2606 OID 919160)
-- Name: tenders tenders_tender_no_key635; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key635 UNIQUE (tender_no);


--
-- TOC entry 7294 (class 2606 OID 919162)
-- Name: tenders tenders_tender_no_key636; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key636 UNIQUE (tender_no);


--
-- TOC entry 7296 (class 2606 OID 919164)
-- Name: tenders tenders_tender_no_key637; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key637 UNIQUE (tender_no);


--
-- TOC entry 7298 (class 2606 OID 919166)
-- Name: tenders tenders_tender_no_key638; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key638 UNIQUE (tender_no);


--
-- TOC entry 7300 (class 2606 OID 919168)
-- Name: tenders tenders_tender_no_key639; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key639 UNIQUE (tender_no);


--
-- TOC entry 7302 (class 2606 OID 919170)
-- Name: tenders tenders_tender_no_key64; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key64 UNIQUE (tender_no);


--
-- TOC entry 7304 (class 2606 OID 919172)
-- Name: tenders tenders_tender_no_key640; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key640 UNIQUE (tender_no);


--
-- TOC entry 7306 (class 2606 OID 919174)
-- Name: tenders tenders_tender_no_key641; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key641 UNIQUE (tender_no);


--
-- TOC entry 7308 (class 2606 OID 919176)
-- Name: tenders tenders_tender_no_key642; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key642 UNIQUE (tender_no);


--
-- TOC entry 7310 (class 2606 OID 919178)
-- Name: tenders tenders_tender_no_key643; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key643 UNIQUE (tender_no);


--
-- TOC entry 7312 (class 2606 OID 919180)
-- Name: tenders tenders_tender_no_key644; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key644 UNIQUE (tender_no);


--
-- TOC entry 7314 (class 2606 OID 919182)
-- Name: tenders tenders_tender_no_key645; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key645 UNIQUE (tender_no);


--
-- TOC entry 7316 (class 2606 OID 919184)
-- Name: tenders tenders_tender_no_key646; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key646 UNIQUE (tender_no);


--
-- TOC entry 7318 (class 2606 OID 919186)
-- Name: tenders tenders_tender_no_key647; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key647 UNIQUE (tender_no);


--
-- TOC entry 7320 (class 2606 OID 919188)
-- Name: tenders tenders_tender_no_key648; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key648 UNIQUE (tender_no);


--
-- TOC entry 7322 (class 2606 OID 919190)
-- Name: tenders tenders_tender_no_key649; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key649 UNIQUE (tender_no);


--
-- TOC entry 7324 (class 2606 OID 919192)
-- Name: tenders tenders_tender_no_key65; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key65 UNIQUE (tender_no);


--
-- TOC entry 7326 (class 2606 OID 919194)
-- Name: tenders tenders_tender_no_key650; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key650 UNIQUE (tender_no);


--
-- TOC entry 7328 (class 2606 OID 919196)
-- Name: tenders tenders_tender_no_key651; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key651 UNIQUE (tender_no);


--
-- TOC entry 7330 (class 2606 OID 919198)
-- Name: tenders tenders_tender_no_key652; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key652 UNIQUE (tender_no);


--
-- TOC entry 7332 (class 2606 OID 919200)
-- Name: tenders tenders_tender_no_key653; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key653 UNIQUE (tender_no);


--
-- TOC entry 7334 (class 2606 OID 919202)
-- Name: tenders tenders_tender_no_key654; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key654 UNIQUE (tender_no);


--
-- TOC entry 7336 (class 2606 OID 919204)
-- Name: tenders tenders_tender_no_key655; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key655 UNIQUE (tender_no);


--
-- TOC entry 7338 (class 2606 OID 919206)
-- Name: tenders tenders_tender_no_key656; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key656 UNIQUE (tender_no);


--
-- TOC entry 7340 (class 2606 OID 919208)
-- Name: tenders tenders_tender_no_key657; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key657 UNIQUE (tender_no);


--
-- TOC entry 7342 (class 2606 OID 919210)
-- Name: tenders tenders_tender_no_key658; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key658 UNIQUE (tender_no);


--
-- TOC entry 7344 (class 2606 OID 919212)
-- Name: tenders tenders_tender_no_key659; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key659 UNIQUE (tender_no);


--
-- TOC entry 7346 (class 2606 OID 919214)
-- Name: tenders tenders_tender_no_key66; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key66 UNIQUE (tender_no);


--
-- TOC entry 7348 (class 2606 OID 919216)
-- Name: tenders tenders_tender_no_key660; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key660 UNIQUE (tender_no);


--
-- TOC entry 7350 (class 2606 OID 919218)
-- Name: tenders tenders_tender_no_key661; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key661 UNIQUE (tender_no);


--
-- TOC entry 7352 (class 2606 OID 919220)
-- Name: tenders tenders_tender_no_key662; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key662 UNIQUE (tender_no);


--
-- TOC entry 7354 (class 2606 OID 919222)
-- Name: tenders tenders_tender_no_key663; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key663 UNIQUE (tender_no);


--
-- TOC entry 7356 (class 2606 OID 919224)
-- Name: tenders tenders_tender_no_key664; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key664 UNIQUE (tender_no);


--
-- TOC entry 7358 (class 2606 OID 919226)
-- Name: tenders tenders_tender_no_key665; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key665 UNIQUE (tender_no);


--
-- TOC entry 7360 (class 2606 OID 919228)
-- Name: tenders tenders_tender_no_key666; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key666 UNIQUE (tender_no);


--
-- TOC entry 7362 (class 2606 OID 919230)
-- Name: tenders tenders_tender_no_key667; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key667 UNIQUE (tender_no);


--
-- TOC entry 7364 (class 2606 OID 919232)
-- Name: tenders tenders_tender_no_key668; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key668 UNIQUE (tender_no);


--
-- TOC entry 7366 (class 2606 OID 919236)
-- Name: tenders tenders_tender_no_key669; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key669 UNIQUE (tender_no);


--
-- TOC entry 7368 (class 2606 OID 919238)
-- Name: tenders tenders_tender_no_key67; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key67 UNIQUE (tender_no);


--
-- TOC entry 7370 (class 2606 OID 919240)
-- Name: tenders tenders_tender_no_key670; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key670 UNIQUE (tender_no);


--
-- TOC entry 7372 (class 2606 OID 919242)
-- Name: tenders tenders_tender_no_key671; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key671 UNIQUE (tender_no);


--
-- TOC entry 7374 (class 2606 OID 919244)
-- Name: tenders tenders_tender_no_key672; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key672 UNIQUE (tender_no);


--
-- TOC entry 7376 (class 2606 OID 919246)
-- Name: tenders tenders_tender_no_key673; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key673 UNIQUE (tender_no);


--
-- TOC entry 7378 (class 2606 OID 919248)
-- Name: tenders tenders_tender_no_key674; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key674 UNIQUE (tender_no);


--
-- TOC entry 7380 (class 2606 OID 919250)
-- Name: tenders tenders_tender_no_key675; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key675 UNIQUE (tender_no);


--
-- TOC entry 7382 (class 2606 OID 919252)
-- Name: tenders tenders_tender_no_key676; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key676 UNIQUE (tender_no);


--
-- TOC entry 7384 (class 2606 OID 919254)
-- Name: tenders tenders_tender_no_key677; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key677 UNIQUE (tender_no);


--
-- TOC entry 7386 (class 2606 OID 919256)
-- Name: tenders tenders_tender_no_key678; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key678 UNIQUE (tender_no);


--
-- TOC entry 7388 (class 2606 OID 919258)
-- Name: tenders tenders_tender_no_key679; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key679 UNIQUE (tender_no);


--
-- TOC entry 7390 (class 2606 OID 919260)
-- Name: tenders tenders_tender_no_key68; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key68 UNIQUE (tender_no);


--
-- TOC entry 7392 (class 2606 OID 919262)
-- Name: tenders tenders_tender_no_key680; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key680 UNIQUE (tender_no);


--
-- TOC entry 7394 (class 2606 OID 919264)
-- Name: tenders tenders_tender_no_key681; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key681 UNIQUE (tender_no);


--
-- TOC entry 7396 (class 2606 OID 919266)
-- Name: tenders tenders_tender_no_key682; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key682 UNIQUE (tender_no);


--
-- TOC entry 7398 (class 2606 OID 919268)
-- Name: tenders tenders_tender_no_key683; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key683 UNIQUE (tender_no);


--
-- TOC entry 7400 (class 2606 OID 919270)
-- Name: tenders tenders_tender_no_key684; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key684 UNIQUE (tender_no);


--
-- TOC entry 7402 (class 2606 OID 919272)
-- Name: tenders tenders_tender_no_key685; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key685 UNIQUE (tender_no);


--
-- TOC entry 7404 (class 2606 OID 919274)
-- Name: tenders tenders_tender_no_key686; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key686 UNIQUE (tender_no);


--
-- TOC entry 7406 (class 2606 OID 919276)
-- Name: tenders tenders_tender_no_key687; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key687 UNIQUE (tender_no);


--
-- TOC entry 7408 (class 2606 OID 919278)
-- Name: tenders tenders_tender_no_key688; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key688 UNIQUE (tender_no);


--
-- TOC entry 7410 (class 2606 OID 919280)
-- Name: tenders tenders_tender_no_key689; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key689 UNIQUE (tender_no);


--
-- TOC entry 7412 (class 2606 OID 919282)
-- Name: tenders tenders_tender_no_key69; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key69 UNIQUE (tender_no);


--
-- TOC entry 7414 (class 2606 OID 919284)
-- Name: tenders tenders_tender_no_key690; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key690 UNIQUE (tender_no);


--
-- TOC entry 7416 (class 2606 OID 919286)
-- Name: tenders tenders_tender_no_key691; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key691 UNIQUE (tender_no);


--
-- TOC entry 7418 (class 2606 OID 919288)
-- Name: tenders tenders_tender_no_key692; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key692 UNIQUE (tender_no);


--
-- TOC entry 7420 (class 2606 OID 919290)
-- Name: tenders tenders_tender_no_key693; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key693 UNIQUE (tender_no);


--
-- TOC entry 7422 (class 2606 OID 919292)
-- Name: tenders tenders_tender_no_key694; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key694 UNIQUE (tender_no);


--
-- TOC entry 7424 (class 2606 OID 919428)
-- Name: tenders tenders_tender_no_key695; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key695 UNIQUE (tender_no);


--
-- TOC entry 7426 (class 2606 OID 919430)
-- Name: tenders tenders_tender_no_key696; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key696 UNIQUE (tender_no);


--
-- TOC entry 7428 (class 2606 OID 919432)
-- Name: tenders tenders_tender_no_key697; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key697 UNIQUE (tender_no);


--
-- TOC entry 7430 (class 2606 OID 919434)
-- Name: tenders tenders_tender_no_key698; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key698 UNIQUE (tender_no);


--
-- TOC entry 7432 (class 2606 OID 919436)
-- Name: tenders tenders_tender_no_key699; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key699 UNIQUE (tender_no);


--
-- TOC entry 7434 (class 2606 OID 919438)
-- Name: tenders tenders_tender_no_key7; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key7 UNIQUE (tender_no);


--
-- TOC entry 7436 (class 2606 OID 919440)
-- Name: tenders tenders_tender_no_key70; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key70 UNIQUE (tender_no);


--
-- TOC entry 7438 (class 2606 OID 919442)
-- Name: tenders tenders_tender_no_key700; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key700 UNIQUE (tender_no);


--
-- TOC entry 7440 (class 2606 OID 919444)
-- Name: tenders tenders_tender_no_key701; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key701 UNIQUE (tender_no);


--
-- TOC entry 7442 (class 2606 OID 919446)
-- Name: tenders tenders_tender_no_key702; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key702 UNIQUE (tender_no);


--
-- TOC entry 7444 (class 2606 OID 919448)
-- Name: tenders tenders_tender_no_key703; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key703 UNIQUE (tender_no);


--
-- TOC entry 7446 (class 2606 OID 919450)
-- Name: tenders tenders_tender_no_key704; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key704 UNIQUE (tender_no);


--
-- TOC entry 7448 (class 2606 OID 919452)
-- Name: tenders tenders_tender_no_key705; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key705 UNIQUE (tender_no);


--
-- TOC entry 7450 (class 2606 OID 919454)
-- Name: tenders tenders_tender_no_key706; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key706 UNIQUE (tender_no);


--
-- TOC entry 7452 (class 2606 OID 919456)
-- Name: tenders tenders_tender_no_key707; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key707 UNIQUE (tender_no);


--
-- TOC entry 7454 (class 2606 OID 919458)
-- Name: tenders tenders_tender_no_key708; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key708 UNIQUE (tender_no);


--
-- TOC entry 7456 (class 2606 OID 919460)
-- Name: tenders tenders_tender_no_key709; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key709 UNIQUE (tender_no);


--
-- TOC entry 7458 (class 2606 OID 919462)
-- Name: tenders tenders_tender_no_key71; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key71 UNIQUE (tender_no);


--
-- TOC entry 7460 (class 2606 OID 919464)
-- Name: tenders tenders_tender_no_key710; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key710 UNIQUE (tender_no);


--
-- TOC entry 7462 (class 2606 OID 919466)
-- Name: tenders tenders_tender_no_key711; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key711 UNIQUE (tender_no);


--
-- TOC entry 7464 (class 2606 OID 919468)
-- Name: tenders tenders_tender_no_key712; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key712 UNIQUE (tender_no);


--
-- TOC entry 7466 (class 2606 OID 919470)
-- Name: tenders tenders_tender_no_key713; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key713 UNIQUE (tender_no);


--
-- TOC entry 7468 (class 2606 OID 919472)
-- Name: tenders tenders_tender_no_key714; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key714 UNIQUE (tender_no);


--
-- TOC entry 7470 (class 2606 OID 919474)
-- Name: tenders tenders_tender_no_key715; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key715 UNIQUE (tender_no);


--
-- TOC entry 7472 (class 2606 OID 919476)
-- Name: tenders tenders_tender_no_key716; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key716 UNIQUE (tender_no);


--
-- TOC entry 7474 (class 2606 OID 919478)
-- Name: tenders tenders_tender_no_key717; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key717 UNIQUE (tender_no);


--
-- TOC entry 7476 (class 2606 OID 919480)
-- Name: tenders tenders_tender_no_key718; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key718 UNIQUE (tender_no);


--
-- TOC entry 7478 (class 2606 OID 919482)
-- Name: tenders tenders_tender_no_key719; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key719 UNIQUE (tender_no);


--
-- TOC entry 7480 (class 2606 OID 919484)
-- Name: tenders tenders_tender_no_key72; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key72 UNIQUE (tender_no);


--
-- TOC entry 7482 (class 2606 OID 919486)
-- Name: tenders tenders_tender_no_key720; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key720 UNIQUE (tender_no);


--
-- TOC entry 7484 (class 2606 OID 919488)
-- Name: tenders tenders_tender_no_key721; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key721 UNIQUE (tender_no);


--
-- TOC entry 7486 (class 2606 OID 919490)
-- Name: tenders tenders_tender_no_key722; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key722 UNIQUE (tender_no);


--
-- TOC entry 7488 (class 2606 OID 919492)
-- Name: tenders tenders_tender_no_key723; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key723 UNIQUE (tender_no);


--
-- TOC entry 7490 (class 2606 OID 919494)
-- Name: tenders tenders_tender_no_key724; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key724 UNIQUE (tender_no);


--
-- TOC entry 7492 (class 2606 OID 919496)
-- Name: tenders tenders_tender_no_key725; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key725 UNIQUE (tender_no);


--
-- TOC entry 7494 (class 2606 OID 919498)
-- Name: tenders tenders_tender_no_key726; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key726 UNIQUE (tender_no);


--
-- TOC entry 7496 (class 2606 OID 919500)
-- Name: tenders tenders_tender_no_key727; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key727 UNIQUE (tender_no);


--
-- TOC entry 7498 (class 2606 OID 919502)
-- Name: tenders tenders_tender_no_key728; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key728 UNIQUE (tender_no);


--
-- TOC entry 7500 (class 2606 OID 919504)
-- Name: tenders tenders_tender_no_key729; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key729 UNIQUE (tender_no);


--
-- TOC entry 7502 (class 2606 OID 919506)
-- Name: tenders tenders_tender_no_key73; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key73 UNIQUE (tender_no);


--
-- TOC entry 7504 (class 2606 OID 919508)
-- Name: tenders tenders_tender_no_key730; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key730 UNIQUE (tender_no);


--
-- TOC entry 7506 (class 2606 OID 919510)
-- Name: tenders tenders_tender_no_key731; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key731 UNIQUE (tender_no);


--
-- TOC entry 7508 (class 2606 OID 919512)
-- Name: tenders tenders_tender_no_key732; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key732 UNIQUE (tender_no);


--
-- TOC entry 7510 (class 2606 OID 919514)
-- Name: tenders tenders_tender_no_key733; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key733 UNIQUE (tender_no);


--
-- TOC entry 7512 (class 2606 OID 919516)
-- Name: tenders tenders_tender_no_key734; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key734 UNIQUE (tender_no);


--
-- TOC entry 7514 (class 2606 OID 919518)
-- Name: tenders tenders_tender_no_key735; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key735 UNIQUE (tender_no);


--
-- TOC entry 7516 (class 2606 OID 919520)
-- Name: tenders tenders_tender_no_key736; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key736 UNIQUE (tender_no);


--
-- TOC entry 7518 (class 2606 OID 919522)
-- Name: tenders tenders_tender_no_key737; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key737 UNIQUE (tender_no);


--
-- TOC entry 7520 (class 2606 OID 919524)
-- Name: tenders tenders_tender_no_key738; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key738 UNIQUE (tender_no);


--
-- TOC entry 7522 (class 2606 OID 919526)
-- Name: tenders tenders_tender_no_key739; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key739 UNIQUE (tender_no);


--
-- TOC entry 7524 (class 2606 OID 919528)
-- Name: tenders tenders_tender_no_key74; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key74 UNIQUE (tender_no);


--
-- TOC entry 7526 (class 2606 OID 919530)
-- Name: tenders tenders_tender_no_key740; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key740 UNIQUE (tender_no);


--
-- TOC entry 7528 (class 2606 OID 919532)
-- Name: tenders tenders_tender_no_key741; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key741 UNIQUE (tender_no);


--
-- TOC entry 7530 (class 2606 OID 919534)
-- Name: tenders tenders_tender_no_key742; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key742 UNIQUE (tender_no);


--
-- TOC entry 7532 (class 2606 OID 919536)
-- Name: tenders tenders_tender_no_key743; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key743 UNIQUE (tender_no);


--
-- TOC entry 7534 (class 2606 OID 919538)
-- Name: tenders tenders_tender_no_key744; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key744 UNIQUE (tender_no);


--
-- TOC entry 7536 (class 2606 OID 919540)
-- Name: tenders tenders_tender_no_key745; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key745 UNIQUE (tender_no);


--
-- TOC entry 7538 (class 2606 OID 919542)
-- Name: tenders tenders_tender_no_key746; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key746 UNIQUE (tender_no);


--
-- TOC entry 7540 (class 2606 OID 919544)
-- Name: tenders tenders_tender_no_key747; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key747 UNIQUE (tender_no);


--
-- TOC entry 7542 (class 2606 OID 919546)
-- Name: tenders tenders_tender_no_key748; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key748 UNIQUE (tender_no);


--
-- TOC entry 7544 (class 2606 OID 919548)
-- Name: tenders tenders_tender_no_key749; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key749 UNIQUE (tender_no);


--
-- TOC entry 7546 (class 2606 OID 919550)
-- Name: tenders tenders_tender_no_key75; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key75 UNIQUE (tender_no);


--
-- TOC entry 7548 (class 2606 OID 919552)
-- Name: tenders tenders_tender_no_key750; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key750 UNIQUE (tender_no);


--
-- TOC entry 7550 (class 2606 OID 919554)
-- Name: tenders tenders_tender_no_key751; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key751 UNIQUE (tender_no);


--
-- TOC entry 7552 (class 2606 OID 919556)
-- Name: tenders tenders_tender_no_key752; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key752 UNIQUE (tender_no);


--
-- TOC entry 7554 (class 2606 OID 919558)
-- Name: tenders tenders_tender_no_key753; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key753 UNIQUE (tender_no);


--
-- TOC entry 7556 (class 2606 OID 919560)
-- Name: tenders tenders_tender_no_key754; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key754 UNIQUE (tender_no);


--
-- TOC entry 7558 (class 2606 OID 919562)
-- Name: tenders tenders_tender_no_key755; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key755 UNIQUE (tender_no);


--
-- TOC entry 7560 (class 2606 OID 919564)
-- Name: tenders tenders_tender_no_key756; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key756 UNIQUE (tender_no);


--
-- TOC entry 7562 (class 2606 OID 919566)
-- Name: tenders tenders_tender_no_key757; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key757 UNIQUE (tender_no);


--
-- TOC entry 7564 (class 2606 OID 919568)
-- Name: tenders tenders_tender_no_key758; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key758 UNIQUE (tender_no);


--
-- TOC entry 7566 (class 2606 OID 919570)
-- Name: tenders tenders_tender_no_key759; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key759 UNIQUE (tender_no);


--
-- TOC entry 7568 (class 2606 OID 919572)
-- Name: tenders tenders_tender_no_key76; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key76 UNIQUE (tender_no);


--
-- TOC entry 7570 (class 2606 OID 919574)
-- Name: tenders tenders_tender_no_key760; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key760 UNIQUE (tender_no);


--
-- TOC entry 7572 (class 2606 OID 919576)
-- Name: tenders tenders_tender_no_key761; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key761 UNIQUE (tender_no);


--
-- TOC entry 7574 (class 2606 OID 919578)
-- Name: tenders tenders_tender_no_key762; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key762 UNIQUE (tender_no);


--
-- TOC entry 7576 (class 2606 OID 919580)
-- Name: tenders tenders_tender_no_key763; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key763 UNIQUE (tender_no);


--
-- TOC entry 7578 (class 2606 OID 919582)
-- Name: tenders tenders_tender_no_key764; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key764 UNIQUE (tender_no);


--
-- TOC entry 7580 (class 2606 OID 919584)
-- Name: tenders tenders_tender_no_key765; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key765 UNIQUE (tender_no);


--
-- TOC entry 7582 (class 2606 OID 919586)
-- Name: tenders tenders_tender_no_key766; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key766 UNIQUE (tender_no);


--
-- TOC entry 7584 (class 2606 OID 919588)
-- Name: tenders tenders_tender_no_key767; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key767 UNIQUE (tender_no);


--
-- TOC entry 7586 (class 2606 OID 919590)
-- Name: tenders tenders_tender_no_key768; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key768 UNIQUE (tender_no);


--
-- TOC entry 7588 (class 2606 OID 919592)
-- Name: tenders tenders_tender_no_key769; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key769 UNIQUE (tender_no);


--
-- TOC entry 7590 (class 2606 OID 919594)
-- Name: tenders tenders_tender_no_key77; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key77 UNIQUE (tender_no);


--
-- TOC entry 7592 (class 2606 OID 919596)
-- Name: tenders tenders_tender_no_key770; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key770 UNIQUE (tender_no);


--
-- TOC entry 7594 (class 2606 OID 919598)
-- Name: tenders tenders_tender_no_key771; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key771 UNIQUE (tender_no);


--
-- TOC entry 7596 (class 2606 OID 919600)
-- Name: tenders tenders_tender_no_key772; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key772 UNIQUE (tender_no);


--
-- TOC entry 7598 (class 2606 OID 919602)
-- Name: tenders tenders_tender_no_key773; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key773 UNIQUE (tender_no);


--
-- TOC entry 7600 (class 2606 OID 919604)
-- Name: tenders tenders_tender_no_key774; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key774 UNIQUE (tender_no);


--
-- TOC entry 7602 (class 2606 OID 919606)
-- Name: tenders tenders_tender_no_key775; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key775 UNIQUE (tender_no);


--
-- TOC entry 7604 (class 2606 OID 919608)
-- Name: tenders tenders_tender_no_key776; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key776 UNIQUE (tender_no);


--
-- TOC entry 7606 (class 2606 OID 919610)
-- Name: tenders tenders_tender_no_key777; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key777 UNIQUE (tender_no);


--
-- TOC entry 7608 (class 2606 OID 919612)
-- Name: tenders tenders_tender_no_key778; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key778 UNIQUE (tender_no);


--
-- TOC entry 7610 (class 2606 OID 919614)
-- Name: tenders tenders_tender_no_key779; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key779 UNIQUE (tender_no);


--
-- TOC entry 7612 (class 2606 OID 919616)
-- Name: tenders tenders_tender_no_key78; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key78 UNIQUE (tender_no);


--
-- TOC entry 7614 (class 2606 OID 919618)
-- Name: tenders tenders_tender_no_key780; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key780 UNIQUE (tender_no);


--
-- TOC entry 7616 (class 2606 OID 919620)
-- Name: tenders tenders_tender_no_key781; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key781 UNIQUE (tender_no);


--
-- TOC entry 7618 (class 2606 OID 919622)
-- Name: tenders tenders_tender_no_key782; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key782 UNIQUE (tender_no);


--
-- TOC entry 7620 (class 2606 OID 919624)
-- Name: tenders tenders_tender_no_key783; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key783 UNIQUE (tender_no);


--
-- TOC entry 7622 (class 2606 OID 919626)
-- Name: tenders tenders_tender_no_key784; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key784 UNIQUE (tender_no);


--
-- TOC entry 7624 (class 2606 OID 919628)
-- Name: tenders tenders_tender_no_key785; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key785 UNIQUE (tender_no);


--
-- TOC entry 7626 (class 2606 OID 919630)
-- Name: tenders tenders_tender_no_key786; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key786 UNIQUE (tender_no);


--
-- TOC entry 7628 (class 2606 OID 919632)
-- Name: tenders tenders_tender_no_key787; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key787 UNIQUE (tender_no);


--
-- TOC entry 7630 (class 2606 OID 919634)
-- Name: tenders tenders_tender_no_key788; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key788 UNIQUE (tender_no);


--
-- TOC entry 7632 (class 2606 OID 919636)
-- Name: tenders tenders_tender_no_key789; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key789 UNIQUE (tender_no);


--
-- TOC entry 7634 (class 2606 OID 919638)
-- Name: tenders tenders_tender_no_key79; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key79 UNIQUE (tender_no);


--
-- TOC entry 7636 (class 2606 OID 919640)
-- Name: tenders tenders_tender_no_key790; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key790 UNIQUE (tender_no);


--
-- TOC entry 7638 (class 2606 OID 919642)
-- Name: tenders tenders_tender_no_key791; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key791 UNIQUE (tender_no);


--
-- TOC entry 7640 (class 2606 OID 919644)
-- Name: tenders tenders_tender_no_key792; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key792 UNIQUE (tender_no);


--
-- TOC entry 7642 (class 2606 OID 919646)
-- Name: tenders tenders_tender_no_key793; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key793 UNIQUE (tender_no);


--
-- TOC entry 7644 (class 2606 OID 919648)
-- Name: tenders tenders_tender_no_key794; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key794 UNIQUE (tender_no);


--
-- TOC entry 7646 (class 2606 OID 919784)
-- Name: tenders tenders_tender_no_key795; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key795 UNIQUE (tender_no);


--
-- TOC entry 7648 (class 2606 OID 919786)
-- Name: tenders tenders_tender_no_key796; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key796 UNIQUE (tender_no);


--
-- TOC entry 7650 (class 2606 OID 919788)
-- Name: tenders tenders_tender_no_key797; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key797 UNIQUE (tender_no);


--
-- TOC entry 7652 (class 2606 OID 919790)
-- Name: tenders tenders_tender_no_key798; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key798 UNIQUE (tender_no);


--
-- TOC entry 7654 (class 2606 OID 919792)
-- Name: tenders tenders_tender_no_key799; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key799 UNIQUE (tender_no);


--
-- TOC entry 7656 (class 2606 OID 919794)
-- Name: tenders tenders_tender_no_key8; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key8 UNIQUE (tender_no);


--
-- TOC entry 7658 (class 2606 OID 919796)
-- Name: tenders tenders_tender_no_key80; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key80 UNIQUE (tender_no);


--
-- TOC entry 7660 (class 2606 OID 919798)
-- Name: tenders tenders_tender_no_key800; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key800 UNIQUE (tender_no);


--
-- TOC entry 7662 (class 2606 OID 919800)
-- Name: tenders tenders_tender_no_key801; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key801 UNIQUE (tender_no);


--
-- TOC entry 7664 (class 2606 OID 919802)
-- Name: tenders tenders_tender_no_key802; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key802 UNIQUE (tender_no);


--
-- TOC entry 7666 (class 2606 OID 919804)
-- Name: tenders tenders_tender_no_key803; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key803 UNIQUE (tender_no);


--
-- TOC entry 7668 (class 2606 OID 919806)
-- Name: tenders tenders_tender_no_key804; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key804 UNIQUE (tender_no);


--
-- TOC entry 7670 (class 2606 OID 919808)
-- Name: tenders tenders_tender_no_key805; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key805 UNIQUE (tender_no);


--
-- TOC entry 7672 (class 2606 OID 919810)
-- Name: tenders tenders_tender_no_key806; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key806 UNIQUE (tender_no);


--
-- TOC entry 7674 (class 2606 OID 919812)
-- Name: tenders tenders_tender_no_key807; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key807 UNIQUE (tender_no);


--
-- TOC entry 7676 (class 2606 OID 919814)
-- Name: tenders tenders_tender_no_key808; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key808 UNIQUE (tender_no);


--
-- TOC entry 7678 (class 2606 OID 919816)
-- Name: tenders tenders_tender_no_key809; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key809 UNIQUE (tender_no);


--
-- TOC entry 7680 (class 2606 OID 919818)
-- Name: tenders tenders_tender_no_key81; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key81 UNIQUE (tender_no);


--
-- TOC entry 7682 (class 2606 OID 919820)
-- Name: tenders tenders_tender_no_key810; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key810 UNIQUE (tender_no);


--
-- TOC entry 7684 (class 2606 OID 919822)
-- Name: tenders tenders_tender_no_key811; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key811 UNIQUE (tender_no);


--
-- TOC entry 7686 (class 2606 OID 919824)
-- Name: tenders tenders_tender_no_key812; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key812 UNIQUE (tender_no);


--
-- TOC entry 7688 (class 2606 OID 919826)
-- Name: tenders tenders_tender_no_key813; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key813 UNIQUE (tender_no);


--
-- TOC entry 7690 (class 2606 OID 919828)
-- Name: tenders tenders_tender_no_key814; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key814 UNIQUE (tender_no);


--
-- TOC entry 7692 (class 2606 OID 919830)
-- Name: tenders tenders_tender_no_key815; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key815 UNIQUE (tender_no);


--
-- TOC entry 7694 (class 2606 OID 919832)
-- Name: tenders tenders_tender_no_key816; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key816 UNIQUE (tender_no);


--
-- TOC entry 7696 (class 2606 OID 919834)
-- Name: tenders tenders_tender_no_key817; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key817 UNIQUE (tender_no);


--
-- TOC entry 7698 (class 2606 OID 919836)
-- Name: tenders tenders_tender_no_key818; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key818 UNIQUE (tender_no);


--
-- TOC entry 7700 (class 2606 OID 919838)
-- Name: tenders tenders_tender_no_key819; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key819 UNIQUE (tender_no);


--
-- TOC entry 7702 (class 2606 OID 919840)
-- Name: tenders tenders_tender_no_key82; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key82 UNIQUE (tender_no);


--
-- TOC entry 7704 (class 2606 OID 919842)
-- Name: tenders tenders_tender_no_key820; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key820 UNIQUE (tender_no);


--
-- TOC entry 7706 (class 2606 OID 919844)
-- Name: tenders tenders_tender_no_key821; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key821 UNIQUE (tender_no);


--
-- TOC entry 7708 (class 2606 OID 919846)
-- Name: tenders tenders_tender_no_key822; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key822 UNIQUE (tender_no);


--
-- TOC entry 7710 (class 2606 OID 919848)
-- Name: tenders tenders_tender_no_key823; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key823 UNIQUE (tender_no);


--
-- TOC entry 7712 (class 2606 OID 919850)
-- Name: tenders tenders_tender_no_key824; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key824 UNIQUE (tender_no);


--
-- TOC entry 7714 (class 2606 OID 919852)
-- Name: tenders tenders_tender_no_key825; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key825 UNIQUE (tender_no);


--
-- TOC entry 7716 (class 2606 OID 919854)
-- Name: tenders tenders_tender_no_key826; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key826 UNIQUE (tender_no);


--
-- TOC entry 7718 (class 2606 OID 919856)
-- Name: tenders tenders_tender_no_key827; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key827 UNIQUE (tender_no);


--
-- TOC entry 7720 (class 2606 OID 919858)
-- Name: tenders tenders_tender_no_key828; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key828 UNIQUE (tender_no);


--
-- TOC entry 7722 (class 2606 OID 919860)
-- Name: tenders tenders_tender_no_key829; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key829 UNIQUE (tender_no);


--
-- TOC entry 7724 (class 2606 OID 919862)
-- Name: tenders tenders_tender_no_key83; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key83 UNIQUE (tender_no);


--
-- TOC entry 7726 (class 2606 OID 919864)
-- Name: tenders tenders_tender_no_key830; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key830 UNIQUE (tender_no);


--
-- TOC entry 7728 (class 2606 OID 919866)
-- Name: tenders tenders_tender_no_key831; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key831 UNIQUE (tender_no);


--
-- TOC entry 7730 (class 2606 OID 919868)
-- Name: tenders tenders_tender_no_key832; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key832 UNIQUE (tender_no);


--
-- TOC entry 7732 (class 2606 OID 919870)
-- Name: tenders tenders_tender_no_key833; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key833 UNIQUE (tender_no);


--
-- TOC entry 7734 (class 2606 OID 919872)
-- Name: tenders tenders_tender_no_key834; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key834 UNIQUE (tender_no);


--
-- TOC entry 7736 (class 2606 OID 919874)
-- Name: tenders tenders_tender_no_key835; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key835 UNIQUE (tender_no);


--
-- TOC entry 7738 (class 2606 OID 919876)
-- Name: tenders tenders_tender_no_key836; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key836 UNIQUE (tender_no);


--
-- TOC entry 7740 (class 2606 OID 919878)
-- Name: tenders tenders_tender_no_key837; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key837 UNIQUE (tender_no);


--
-- TOC entry 7742 (class 2606 OID 919880)
-- Name: tenders tenders_tender_no_key838; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key838 UNIQUE (tender_no);


--
-- TOC entry 7744 (class 2606 OID 919882)
-- Name: tenders tenders_tender_no_key839; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key839 UNIQUE (tender_no);


--
-- TOC entry 7746 (class 2606 OID 919884)
-- Name: tenders tenders_tender_no_key84; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key84 UNIQUE (tender_no);


--
-- TOC entry 7748 (class 2606 OID 919886)
-- Name: tenders tenders_tender_no_key840; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key840 UNIQUE (tender_no);


--
-- TOC entry 7750 (class 2606 OID 919888)
-- Name: tenders tenders_tender_no_key841; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key841 UNIQUE (tender_no);


--
-- TOC entry 7752 (class 2606 OID 919890)
-- Name: tenders tenders_tender_no_key842; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key842 UNIQUE (tender_no);


--
-- TOC entry 7754 (class 2606 OID 919892)
-- Name: tenders tenders_tender_no_key843; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key843 UNIQUE (tender_no);


--
-- TOC entry 7756 (class 2606 OID 919894)
-- Name: tenders tenders_tender_no_key844; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key844 UNIQUE (tender_no);


--
-- TOC entry 7758 (class 2606 OID 919896)
-- Name: tenders tenders_tender_no_key845; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key845 UNIQUE (tender_no);


--
-- TOC entry 7760 (class 2606 OID 919898)
-- Name: tenders tenders_tender_no_key846; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key846 UNIQUE (tender_no);


--
-- TOC entry 7762 (class 2606 OID 919900)
-- Name: tenders tenders_tender_no_key847; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key847 UNIQUE (tender_no);


--
-- TOC entry 7764 (class 2606 OID 919902)
-- Name: tenders tenders_tender_no_key848; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key848 UNIQUE (tender_no);


--
-- TOC entry 7766 (class 2606 OID 919904)
-- Name: tenders tenders_tender_no_key849; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key849 UNIQUE (tender_no);


--
-- TOC entry 7768 (class 2606 OID 919906)
-- Name: tenders tenders_tender_no_key85; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key85 UNIQUE (tender_no);


--
-- TOC entry 7770 (class 2606 OID 919652)
-- Name: tenders tenders_tender_no_key850; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key850 UNIQUE (tender_no);


--
-- TOC entry 7772 (class 2606 OID 919654)
-- Name: tenders tenders_tender_no_key851; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key851 UNIQUE (tender_no);


--
-- TOC entry 7774 (class 2606 OID 919656)
-- Name: tenders tenders_tender_no_key852; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key852 UNIQUE (tender_no);


--
-- TOC entry 7776 (class 2606 OID 919658)
-- Name: tenders tenders_tender_no_key853; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key853 UNIQUE (tender_no);


--
-- TOC entry 7778 (class 2606 OID 919660)
-- Name: tenders tenders_tender_no_key854; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key854 UNIQUE (tender_no);


--
-- TOC entry 7780 (class 2606 OID 919662)
-- Name: tenders tenders_tender_no_key855; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key855 UNIQUE (tender_no);


--
-- TOC entry 7782 (class 2606 OID 919664)
-- Name: tenders tenders_tender_no_key856; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key856 UNIQUE (tender_no);


--
-- TOC entry 7784 (class 2606 OID 919666)
-- Name: tenders tenders_tender_no_key857; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key857 UNIQUE (tender_no);


--
-- TOC entry 7786 (class 2606 OID 919668)
-- Name: tenders tenders_tender_no_key858; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key858 UNIQUE (tender_no);


--
-- TOC entry 7788 (class 2606 OID 919670)
-- Name: tenders tenders_tender_no_key859; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key859 UNIQUE (tender_no);


--
-- TOC entry 7790 (class 2606 OID 919672)
-- Name: tenders tenders_tender_no_key86; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key86 UNIQUE (tender_no);


--
-- TOC entry 7792 (class 2606 OID 919674)
-- Name: tenders tenders_tender_no_key860; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key860 UNIQUE (tender_no);


--
-- TOC entry 7794 (class 2606 OID 919676)
-- Name: tenders tenders_tender_no_key861; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key861 UNIQUE (tender_no);


--
-- TOC entry 7796 (class 2606 OID 919678)
-- Name: tenders tenders_tender_no_key862; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key862 UNIQUE (tender_no);


--
-- TOC entry 7798 (class 2606 OID 919680)
-- Name: tenders tenders_tender_no_key863; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key863 UNIQUE (tender_no);


--
-- TOC entry 7800 (class 2606 OID 919682)
-- Name: tenders tenders_tender_no_key864; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key864 UNIQUE (tender_no);


--
-- TOC entry 7802 (class 2606 OID 919684)
-- Name: tenders tenders_tender_no_key865; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key865 UNIQUE (tender_no);


--
-- TOC entry 7804 (class 2606 OID 919686)
-- Name: tenders tenders_tender_no_key866; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key866 UNIQUE (tender_no);


--
-- TOC entry 7806 (class 2606 OID 919688)
-- Name: tenders tenders_tender_no_key867; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key867 UNIQUE (tender_no);


--
-- TOC entry 7808 (class 2606 OID 919690)
-- Name: tenders tenders_tender_no_key868; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key868 UNIQUE (tender_no);


--
-- TOC entry 7810 (class 2606 OID 919692)
-- Name: tenders tenders_tender_no_key869; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key869 UNIQUE (tender_no);


--
-- TOC entry 7812 (class 2606 OID 919694)
-- Name: tenders tenders_tender_no_key87; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key87 UNIQUE (tender_no);


--
-- TOC entry 7814 (class 2606 OID 919696)
-- Name: tenders tenders_tender_no_key870; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key870 UNIQUE (tender_no);


--
-- TOC entry 7816 (class 2606 OID 919698)
-- Name: tenders tenders_tender_no_key871; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key871 UNIQUE (tender_no);


--
-- TOC entry 7818 (class 2606 OID 919700)
-- Name: tenders tenders_tender_no_key872; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key872 UNIQUE (tender_no);


--
-- TOC entry 7820 (class 2606 OID 919702)
-- Name: tenders tenders_tender_no_key873; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key873 UNIQUE (tender_no);


--
-- TOC entry 7822 (class 2606 OID 919704)
-- Name: tenders tenders_tender_no_key874; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key874 UNIQUE (tender_no);


--
-- TOC entry 7824 (class 2606 OID 919706)
-- Name: tenders tenders_tender_no_key875; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key875 UNIQUE (tender_no);


--
-- TOC entry 7826 (class 2606 OID 919708)
-- Name: tenders tenders_tender_no_key876; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key876 UNIQUE (tender_no);


--
-- TOC entry 7828 (class 2606 OID 919710)
-- Name: tenders tenders_tender_no_key877; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key877 UNIQUE (tender_no);


--
-- TOC entry 7830 (class 2606 OID 919712)
-- Name: tenders tenders_tender_no_key878; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key878 UNIQUE (tender_no);


--
-- TOC entry 7832 (class 2606 OID 919714)
-- Name: tenders tenders_tender_no_key879; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key879 UNIQUE (tender_no);


--
-- TOC entry 7834 (class 2606 OID 919716)
-- Name: tenders tenders_tender_no_key88; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key88 UNIQUE (tender_no);


--
-- TOC entry 7836 (class 2606 OID 919718)
-- Name: tenders tenders_tender_no_key880; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key880 UNIQUE (tender_no);


--
-- TOC entry 7838 (class 2606 OID 919720)
-- Name: tenders tenders_tender_no_key881; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key881 UNIQUE (tender_no);


--
-- TOC entry 7840 (class 2606 OID 919722)
-- Name: tenders tenders_tender_no_key882; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key882 UNIQUE (tender_no);


--
-- TOC entry 7842 (class 2606 OID 919724)
-- Name: tenders tenders_tender_no_key883; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key883 UNIQUE (tender_no);


--
-- TOC entry 7844 (class 2606 OID 919726)
-- Name: tenders tenders_tender_no_key884; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key884 UNIQUE (tender_no);


--
-- TOC entry 7846 (class 2606 OID 919728)
-- Name: tenders tenders_tender_no_key885; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key885 UNIQUE (tender_no);


--
-- TOC entry 7848 (class 2606 OID 919730)
-- Name: tenders tenders_tender_no_key886; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key886 UNIQUE (tender_no);


--
-- TOC entry 7850 (class 2606 OID 919732)
-- Name: tenders tenders_tender_no_key887; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key887 UNIQUE (tender_no);


--
-- TOC entry 7852 (class 2606 OID 919734)
-- Name: tenders tenders_tender_no_key888; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key888 UNIQUE (tender_no);


--
-- TOC entry 7854 (class 2606 OID 919736)
-- Name: tenders tenders_tender_no_key889; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key889 UNIQUE (tender_no);


--
-- TOC entry 7856 (class 2606 OID 919738)
-- Name: tenders tenders_tender_no_key89; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key89 UNIQUE (tender_no);


--
-- TOC entry 7858 (class 2606 OID 919740)
-- Name: tenders tenders_tender_no_key890; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key890 UNIQUE (tender_no);


--
-- TOC entry 7860 (class 2606 OID 919742)
-- Name: tenders tenders_tender_no_key891; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key891 UNIQUE (tender_no);


--
-- TOC entry 7862 (class 2606 OID 919744)
-- Name: tenders tenders_tender_no_key892; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key892 UNIQUE (tender_no);


--
-- TOC entry 7864 (class 2606 OID 919746)
-- Name: tenders tenders_tender_no_key893; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key893 UNIQUE (tender_no);


--
-- TOC entry 7866 (class 2606 OID 919748)
-- Name: tenders tenders_tender_no_key894; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key894 UNIQUE (tender_no);


--
-- TOC entry 7868 (class 2606 OID 919750)
-- Name: tenders tenders_tender_no_key895; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key895 UNIQUE (tender_no);


--
-- TOC entry 7870 (class 2606 OID 919752)
-- Name: tenders tenders_tender_no_key896; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key896 UNIQUE (tender_no);


--
-- TOC entry 7872 (class 2606 OID 919754)
-- Name: tenders tenders_tender_no_key897; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key897 UNIQUE (tender_no);


--
-- TOC entry 7874 (class 2606 OID 919756)
-- Name: tenders tenders_tender_no_key898; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key898 UNIQUE (tender_no);


--
-- TOC entry 7876 (class 2606 OID 919758)
-- Name: tenders tenders_tender_no_key899; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key899 UNIQUE (tender_no);


--
-- TOC entry 7878 (class 2606 OID 919760)
-- Name: tenders tenders_tender_no_key9; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key9 UNIQUE (tender_no);


--
-- TOC entry 7880 (class 2606 OID 919762)
-- Name: tenders tenders_tender_no_key90; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key90 UNIQUE (tender_no);


--
-- TOC entry 7882 (class 2606 OID 919764)
-- Name: tenders tenders_tender_no_key900; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key900 UNIQUE (tender_no);


--
-- TOC entry 7884 (class 2606 OID 919766)
-- Name: tenders tenders_tender_no_key901; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key901 UNIQUE (tender_no);


--
-- TOC entry 7886 (class 2606 OID 920018)
-- Name: tenders tenders_tender_no_key902; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key902 UNIQUE (tender_no);


--
-- TOC entry 7888 (class 2606 OID 920020)
-- Name: tenders tenders_tender_no_key903; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key903 UNIQUE (tender_no);


--
-- TOC entry 7890 (class 2606 OID 920022)
-- Name: tenders tenders_tender_no_key904; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key904 UNIQUE (tender_no);


--
-- TOC entry 7892 (class 2606 OID 920024)
-- Name: tenders tenders_tender_no_key905; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key905 UNIQUE (tender_no);


--
-- TOC entry 7894 (class 2606 OID 920026)
-- Name: tenders tenders_tender_no_key906; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key906 UNIQUE (tender_no);


--
-- TOC entry 7896 (class 2606 OID 920028)
-- Name: tenders tenders_tender_no_key907; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key907 UNIQUE (tender_no);


--
-- TOC entry 7898 (class 2606 OID 920030)
-- Name: tenders tenders_tender_no_key908; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key908 UNIQUE (tender_no);


--
-- TOC entry 7900 (class 2606 OID 920032)
-- Name: tenders tenders_tender_no_key909; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key909 UNIQUE (tender_no);


--
-- TOC entry 7902 (class 2606 OID 920034)
-- Name: tenders tenders_tender_no_key91; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key91 UNIQUE (tender_no);


--
-- TOC entry 7904 (class 2606 OID 920036)
-- Name: tenders tenders_tender_no_key910; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key910 UNIQUE (tender_no);


--
-- TOC entry 7906 (class 2606 OID 920038)
-- Name: tenders tenders_tender_no_key911; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key911 UNIQUE (tender_no);


--
-- TOC entry 7908 (class 2606 OID 920040)
-- Name: tenders tenders_tender_no_key912; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key912 UNIQUE (tender_no);


--
-- TOC entry 7910 (class 2606 OID 920042)
-- Name: tenders tenders_tender_no_key913; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key913 UNIQUE (tender_no);


--
-- TOC entry 7912 (class 2606 OID 920044)
-- Name: tenders tenders_tender_no_key914; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key914 UNIQUE (tender_no);


--
-- TOC entry 7914 (class 2606 OID 920046)
-- Name: tenders tenders_tender_no_key915; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key915 UNIQUE (tender_no);


--
-- TOC entry 7916 (class 2606 OID 920048)
-- Name: tenders tenders_tender_no_key916; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key916 UNIQUE (tender_no);


--
-- TOC entry 7918 (class 2606 OID 920050)
-- Name: tenders tenders_tender_no_key917; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key917 UNIQUE (tender_no);


--
-- TOC entry 7920 (class 2606 OID 920052)
-- Name: tenders tenders_tender_no_key918; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key918 UNIQUE (tender_no);


--
-- TOC entry 7922 (class 2606 OID 920054)
-- Name: tenders tenders_tender_no_key919; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key919 UNIQUE (tender_no);


--
-- TOC entry 7924 (class 2606 OID 920056)
-- Name: tenders tenders_tender_no_key92; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key92 UNIQUE (tender_no);


--
-- TOC entry 7926 (class 2606 OID 920058)
-- Name: tenders tenders_tender_no_key920; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key920 UNIQUE (tender_no);


--
-- TOC entry 7928 (class 2606 OID 920060)
-- Name: tenders tenders_tender_no_key921; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key921 UNIQUE (tender_no);


--
-- TOC entry 7930 (class 2606 OID 920062)
-- Name: tenders tenders_tender_no_key922; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key922 UNIQUE (tender_no);


--
-- TOC entry 7932 (class 2606 OID 920064)
-- Name: tenders tenders_tender_no_key923; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key923 UNIQUE (tender_no);


--
-- TOC entry 7934 (class 2606 OID 920066)
-- Name: tenders tenders_tender_no_key924; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key924 UNIQUE (tender_no);


--
-- TOC entry 7936 (class 2606 OID 920068)
-- Name: tenders tenders_tender_no_key925; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key925 UNIQUE (tender_no);


--
-- TOC entry 7938 (class 2606 OID 920070)
-- Name: tenders tenders_tender_no_key926; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key926 UNIQUE (tender_no);


--
-- TOC entry 7940 (class 2606 OID 920072)
-- Name: tenders tenders_tender_no_key927; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key927 UNIQUE (tender_no);


--
-- TOC entry 7942 (class 2606 OID 920074)
-- Name: tenders tenders_tender_no_key928; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key928 UNIQUE (tender_no);


--
-- TOC entry 7944 (class 2606 OID 920076)
-- Name: tenders tenders_tender_no_key929; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key929 UNIQUE (tender_no);


--
-- TOC entry 7946 (class 2606 OID 920078)
-- Name: tenders tenders_tender_no_key93; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key93 UNIQUE (tender_no);


--
-- TOC entry 7948 (class 2606 OID 920080)
-- Name: tenders tenders_tender_no_key930; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key930 UNIQUE (tender_no);


--
-- TOC entry 7950 (class 2606 OID 920082)
-- Name: tenders tenders_tender_no_key931; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key931 UNIQUE (tender_no);


--
-- TOC entry 7952 (class 2606 OID 920084)
-- Name: tenders tenders_tender_no_key932; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key932 UNIQUE (tender_no);


--
-- TOC entry 7954 (class 2606 OID 920086)
-- Name: tenders tenders_tender_no_key933; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key933 UNIQUE (tender_no);


--
-- TOC entry 7956 (class 2606 OID 920088)
-- Name: tenders tenders_tender_no_key934; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key934 UNIQUE (tender_no);


--
-- TOC entry 7958 (class 2606 OID 920090)
-- Name: tenders tenders_tender_no_key935; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key935 UNIQUE (tender_no);


--
-- TOC entry 7960 (class 2606 OID 920092)
-- Name: tenders tenders_tender_no_key936; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key936 UNIQUE (tender_no);


--
-- TOC entry 7962 (class 2606 OID 920094)
-- Name: tenders tenders_tender_no_key937; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key937 UNIQUE (tender_no);


--
-- TOC entry 7964 (class 2606 OID 920096)
-- Name: tenders tenders_tender_no_key938; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key938 UNIQUE (tender_no);


--
-- TOC entry 7966 (class 2606 OID 920098)
-- Name: tenders tenders_tender_no_key939; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key939 UNIQUE (tender_no);


--
-- TOC entry 7968 (class 2606 OID 920100)
-- Name: tenders tenders_tender_no_key94; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key94 UNIQUE (tender_no);


--
-- TOC entry 7970 (class 2606 OID 920102)
-- Name: tenders tenders_tender_no_key940; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key940 UNIQUE (tender_no);


--
-- TOC entry 7972 (class 2606 OID 920104)
-- Name: tenders tenders_tender_no_key941; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key941 UNIQUE (tender_no);


--
-- TOC entry 7974 (class 2606 OID 920106)
-- Name: tenders tenders_tender_no_key942; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key942 UNIQUE (tender_no);


--
-- TOC entry 7976 (class 2606 OID 920108)
-- Name: tenders tenders_tender_no_key943; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key943 UNIQUE (tender_no);


--
-- TOC entry 7978 (class 2606 OID 920110)
-- Name: tenders tenders_tender_no_key944; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key944 UNIQUE (tender_no);


--
-- TOC entry 7980 (class 2606 OID 920112)
-- Name: tenders tenders_tender_no_key945; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key945 UNIQUE (tender_no);


--
-- TOC entry 7982 (class 2606 OID 920114)
-- Name: tenders tenders_tender_no_key946; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key946 UNIQUE (tender_no);


--
-- TOC entry 7984 (class 2606 OID 920116)
-- Name: tenders tenders_tender_no_key947; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key947 UNIQUE (tender_no);


--
-- TOC entry 7986 (class 2606 OID 920118)
-- Name: tenders tenders_tender_no_key948; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key948 UNIQUE (tender_no);


--
-- TOC entry 7988 (class 2606 OID 920120)
-- Name: tenders tenders_tender_no_key949; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key949 UNIQUE (tender_no);


--
-- TOC entry 7990 (class 2606 OID 920122)
-- Name: tenders tenders_tender_no_key95; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key95 UNIQUE (tender_no);


--
-- TOC entry 7992 (class 2606 OID 920124)
-- Name: tenders tenders_tender_no_key950; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key950 UNIQUE (tender_no);


--
-- TOC entry 7994 (class 2606 OID 920126)
-- Name: tenders tenders_tender_no_key951; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key951 UNIQUE (tender_no);


--
-- TOC entry 7996 (class 2606 OID 920128)
-- Name: tenders tenders_tender_no_key952; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key952 UNIQUE (tender_no);


--
-- TOC entry 7998 (class 2606 OID 920130)
-- Name: tenders tenders_tender_no_key953; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key953 UNIQUE (tender_no);


--
-- TOC entry 8000 (class 2606 OID 920132)
-- Name: tenders tenders_tender_no_key954; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key954 UNIQUE (tender_no);


--
-- TOC entry 8002 (class 2606 OID 920134)
-- Name: tenders tenders_tender_no_key955; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key955 UNIQUE (tender_no);


--
-- TOC entry 8004 (class 2606 OID 920136)
-- Name: tenders tenders_tender_no_key956; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key956 UNIQUE (tender_no);


--
-- TOC entry 8006 (class 2606 OID 920138)
-- Name: tenders tenders_tender_no_key957; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key957 UNIQUE (tender_no);


--
-- TOC entry 8008 (class 2606 OID 920140)
-- Name: tenders tenders_tender_no_key958; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key958 UNIQUE (tender_no);


--
-- TOC entry 8010 (class 2606 OID 920142)
-- Name: tenders tenders_tender_no_key959; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key959 UNIQUE (tender_no);


--
-- TOC entry 8012 (class 2606 OID 920144)
-- Name: tenders tenders_tender_no_key96; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key96 UNIQUE (tender_no);


--
-- TOC entry 8014 (class 2606 OID 920146)
-- Name: tenders tenders_tender_no_key960; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key960 UNIQUE (tender_no);


--
-- TOC entry 8016 (class 2606 OID 920148)
-- Name: tenders tenders_tender_no_key961; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key961 UNIQUE (tender_no);


--
-- TOC entry 8018 (class 2606 OID 920150)
-- Name: tenders tenders_tender_no_key962; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key962 UNIQUE (tender_no);


--
-- TOC entry 8020 (class 2606 OID 920152)
-- Name: tenders tenders_tender_no_key963; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key963 UNIQUE (tender_no);


--
-- TOC entry 8022 (class 2606 OID 920154)
-- Name: tenders tenders_tender_no_key964; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key964 UNIQUE (tender_no);


--
-- TOC entry 8024 (class 2606 OID 920156)
-- Name: tenders tenders_tender_no_key965; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key965 UNIQUE (tender_no);


--
-- TOC entry 8026 (class 2606 OID 920158)
-- Name: tenders tenders_tender_no_key966; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key966 UNIQUE (tender_no);


--
-- TOC entry 8028 (class 2606 OID 920160)
-- Name: tenders tenders_tender_no_key967; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key967 UNIQUE (tender_no);


--
-- TOC entry 8030 (class 2606 OID 920162)
-- Name: tenders tenders_tender_no_key968; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key968 UNIQUE (tender_no);


--
-- TOC entry 8032 (class 2606 OID 920164)
-- Name: tenders tenders_tender_no_key969; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key969 UNIQUE (tender_no);


--
-- TOC entry 8034 (class 2606 OID 920166)
-- Name: tenders tenders_tender_no_key97; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key97 UNIQUE (tender_no);


--
-- TOC entry 8036 (class 2606 OID 920168)
-- Name: tenders tenders_tender_no_key970; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key970 UNIQUE (tender_no);


--
-- TOC entry 8038 (class 2606 OID 920170)
-- Name: tenders tenders_tender_no_key971; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key971 UNIQUE (tender_no);


--
-- TOC entry 8040 (class 2606 OID 920172)
-- Name: tenders tenders_tender_no_key972; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key972 UNIQUE (tender_no);


--
-- TOC entry 8042 (class 2606 OID 920174)
-- Name: tenders tenders_tender_no_key973; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key973 UNIQUE (tender_no);


--
-- TOC entry 8044 (class 2606 OID 920176)
-- Name: tenders tenders_tender_no_key974; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key974 UNIQUE (tender_no);


--
-- TOC entry 8046 (class 2606 OID 920178)
-- Name: tenders tenders_tender_no_key975; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key975 UNIQUE (tender_no);


--
-- TOC entry 8048 (class 2606 OID 920180)
-- Name: tenders tenders_tender_no_key976; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key976 UNIQUE (tender_no);


--
-- TOC entry 8050 (class 2606 OID 920182)
-- Name: tenders tenders_tender_no_key977; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key977 UNIQUE (tender_no);


--
-- TOC entry 8052 (class 2606 OID 920184)
-- Name: tenders tenders_tender_no_key978; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key978 UNIQUE (tender_no);


--
-- TOC entry 8054 (class 2606 OID 920186)
-- Name: tenders tenders_tender_no_key979; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key979 UNIQUE (tender_no);


--
-- TOC entry 8056 (class 2606 OID 920188)
-- Name: tenders tenders_tender_no_key98; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key98 UNIQUE (tender_no);


--
-- TOC entry 8058 (class 2606 OID 920190)
-- Name: tenders tenders_tender_no_key980; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key980 UNIQUE (tender_no);


--
-- TOC entry 8060 (class 2606 OID 920192)
-- Name: tenders tenders_tender_no_key981; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key981 UNIQUE (tender_no);


--
-- TOC entry 8062 (class 2606 OID 920194)
-- Name: tenders tenders_tender_no_key982; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key982 UNIQUE (tender_no);


--
-- TOC entry 8064 (class 2606 OID 920196)
-- Name: tenders tenders_tender_no_key983; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key983 UNIQUE (tender_no);


--
-- TOC entry 8066 (class 2606 OID 920198)
-- Name: tenders tenders_tender_no_key984; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key984 UNIQUE (tender_no);


--
-- TOC entry 8068 (class 2606 OID 920200)
-- Name: tenders tenders_tender_no_key985; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key985 UNIQUE (tender_no);


--
-- TOC entry 8070 (class 2606 OID 920202)
-- Name: tenders tenders_tender_no_key986; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key986 UNIQUE (tender_no);


--
-- TOC entry 8072 (class 2606 OID 920204)
-- Name: tenders tenders_tender_no_key987; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key987 UNIQUE (tender_no);


--
-- TOC entry 8074 (class 2606 OID 920206)
-- Name: tenders tenders_tender_no_key988; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key988 UNIQUE (tender_no);


--
-- TOC entry 8076 (class 2606 OID 920208)
-- Name: tenders tenders_tender_no_key989; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key989 UNIQUE (tender_no);


--
-- TOC entry 8078 (class 2606 OID 920210)
-- Name: tenders tenders_tender_no_key99; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key99 UNIQUE (tender_no);


--
-- TOC entry 8080 (class 2606 OID 920212)
-- Name: tenders tenders_tender_no_key990; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key990 UNIQUE (tender_no);


--
-- TOC entry 8082 (class 2606 OID 920214)
-- Name: tenders tenders_tender_no_key991; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key991 UNIQUE (tender_no);


--
-- TOC entry 8084 (class 2606 OID 920216)
-- Name: tenders tenders_tender_no_key992; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key992 UNIQUE (tender_no);


--
-- TOC entry 8086 (class 2606 OID 920218)
-- Name: tenders tenders_tender_no_key993; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key993 UNIQUE (tender_no);


--
-- TOC entry 8088 (class 2606 OID 920220)
-- Name: tenders tenders_tender_no_key994; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key994 UNIQUE (tender_no);


--
-- TOC entry 8090 (class 2606 OID 920222)
-- Name: tenders tenders_tender_no_key995; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key995 UNIQUE (tender_no);


--
-- TOC entry 8092 (class 2606 OID 920224)
-- Name: tenders tenders_tender_no_key996; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key996 UNIQUE (tender_no);


--
-- TOC entry 8094 (class 2606 OID 920226)
-- Name: tenders tenders_tender_no_key997; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key997 UNIQUE (tender_no);


--
-- TOC entry 8096 (class 2606 OID 920228)
-- Name: tenders tenders_tender_no_key998; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key998 UNIQUE (tender_no);


--
-- TOC entry 8098 (class 2606 OID 920230)
-- Name: tenders tenders_tender_no_key999; Type: CONSTRAINT; Schema: public; Owner: superAdmin
--

ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key999 UNIQUE (tender_no);


--
-- TOC entry 5693 (class 1259 OID 917447)
-- Name: jobs_application_opening_date; Type: INDEX; Schema: public; Owner: superAdmin
--

CREATE INDEX jobs_application_opening_date ON public.jobs USING btree ("applicationOpeningDate");


--
-- TOC entry 5694 (class 1259 OID 917446)
-- Name: jobs_job_type; Type: INDEX; Schema: public; Owner: superAdmin
--

CREATE INDEX jobs_job_type ON public.jobs USING btree ("jobType");


--
-- TOC entry 5697 (class 1259 OID 917450)
-- Name: jobs_status; Type: INDEX; Schema: public; Owner: superAdmin
--

CREATE INDEX jobs_status ON public.jobs USING btree (status);


--
-- TOC entry 5700 (class 1259 OID 920514)
-- Name: tenders_closing_date; Type: INDEX; Schema: public; Owner: superAdmin
--

CREATE INDEX tenders_closing_date ON public.tenders USING btree (closing_date);


--
-- TOC entry 5703 (class 1259 OID 920517)
-- Name: tenders_status; Type: INDEX; Schema: public; Owner: superAdmin
--

CREATE INDEX tenders_status ON public.tenders USING btree (status);


--
-- TOC entry 5704 (class 1259 OID 920513)
-- Name: tenders_tender_no; Type: INDEX; Schema: public; Owner: superAdmin
--

CREATE INDEX tenders_tender_no ON public.tenders USING btree (tender_no);


--
-- TOC entry 8099 (class 2606 OID 720635)
-- Name: eventImages event_images_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."eventImages"
    ADD CONSTRAINT event_images_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- TOC entry 8100 (class 2606 OID 720640)
-- Name: non_faculty_positions non_faculty_positions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_faculty_positions
    ADD CONSTRAINT non_faculty_positions_id_fkey FOREIGN KEY (id) REFERENCES public.non_faculty_info(id) ON DELETE CASCADE;


-- Completed on 2025-07-17 03:45:18

--
-- PostgreSQL database dump complete
--

