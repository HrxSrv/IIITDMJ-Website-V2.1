PGDMP  1                
    |            IIITDMJ    16.4    16.4 �    |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41217    IIITDMJ    DATABASE     |   CREATE DATABASE "IIITDMJ" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "IIITDMJ";
                postgres    false                        3079    41218    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false            �           0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    2            �            1259    41264 	   Carousels    TABLE     T  CREATE TABLE public."Carousels" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    subtext character varying(255) NOT NULL,
    image_url character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Carousels";
       public         heap 
   superAdmin    false            �            1259    41269    Carousels_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Carousels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Carousels_id_seq";
       public       
   superAdmin    false    217            �           0    0    Carousels_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Carousels_id_seq" OWNED BY public."Carousels".id;
          public       
   superAdmin    false    218            �            1259    41270    News    TABLE     T  CREATE TABLE public."News" (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    content text,
    image_url character varying(255),
    link character varying(255),
    created_at timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."News";
       public         heap 
   superAdmin    false            �            1259    41275    News_id_seq    SEQUENCE     �   CREATE SEQUENCE public."News_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."News_id_seq";
       public       
   superAdmin    false    219            �           0    0    News_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."News_id_seq" OWNED BY public."News".id;
          public       
   superAdmin    false    220            �            1259    41276    Notices    TABLE     1  CREATE TABLE public."Notices" (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    content text,
    link character varying(255),
    created_at timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Notices";
       public         heap 
   superAdmin    false            �            1259    41281    Notices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Notices_id_seq";
       public       
   superAdmin    false    221            �           0    0    Notices_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Notices_id_seq" OWNED BY public."Notices".id;
          public       
   superAdmin    false    222            �            1259    41282    achievements    TABLE     Z  CREATE TABLE public.achievements (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    content text,
    image_url character varying(255),
    link character varying(255),
    created_at timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public.achievements;
       public         heap 
   superAdmin    false            �            1259    41287    achievements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.achievements_id_seq;
       public       
   superAdmin    false    223            �           0    0    achievements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;
          public       
   superAdmin    false    224            �            1259    41566    annual_account    TABLE     �   CREATE TABLE public.annual_account (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
 "   DROP TABLE public.annual_account;
       public         heap    postgres    false            �            1259    41565    annual_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.annual_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.annual_account_id_seq;
       public          postgres    false    244            �           0    0    annual_account_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.annual_account_id_seq OWNED BY public.annual_account.id;
          public          postgres    false    243            �            1259    41557    annual_report    TABLE     �   CREATE TABLE public.annual_report (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
 !   DROP TABLE public.annual_report;
       public         heap    postgres    false            �            1259    41556    annual_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.annual_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.annual_report_id_seq;
       public          postgres    false    242            �           0    0    annual_report_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.annual_report_id_seq OWNED BY public.annual_report.id;
          public          postgres    false    241            �            1259    41288    counselling    TABLE       CREATE TABLE public.counselling (
    id integer NOT NULL,
    role character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    roll_no character varying(255) NOT NULL,
    batch character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);
    DROP TABLE public.counselling;
       public         heap    postgres    false            �            1259    41293    counselling_id_seq    SEQUENCE     �   CREATE SEQUENCE public.counselling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.counselling_id_seq;
       public          postgres    false    225            �           0    0    counselling_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.counselling_id_seq OWNED BY public.counselling.id;
          public          postgres    false    226            �            1259    41294    doctors    TABLE     �   CREATE TABLE public.doctors (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255) NOT NULL
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            �            1259    41299    doctors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doctors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.doctors_id_seq;
       public          postgres    false    227            �           0    0    doctors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;
          public          postgres    false    228            �            1259    41300    eventImages    TABLE     �   CREATE TABLE public."eventImages" (
    id integer NOT NULL,
    event_id integer NOT NULL,
    image_path character varying(255) NOT NULL,
    "createdAt" date,
    "updatedAt" date
);
 !   DROP TABLE public."eventImages";
       public         heap    postgres    false            �            1259    41303    event_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.event_images_id_seq;
       public          postgres    false    229            �           0    0    event_images_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.event_images_id_seq OWNED BY public."eventImages".id;
          public          postgres    false    230            �            1259    41304    events    TABLE     <  CREATE TABLE public.events (
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
    DROP TABLE public.events;
       public         heap 
   superAdmin    false            �            1259    41309    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       
   superAdmin    false    231            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public       
   superAdmin    false    232            �            1259    41602    external_circulars    TABLE     �   CREATE TABLE public.external_circulars (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
 &   DROP TABLE public.external_circulars;
       public         heap    postgres    false            �            1259    41601    external_circulars_id_seq    SEQUENCE     �   CREATE SEQUENCE public.external_circulars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.external_circulars_id_seq;
       public          postgres    false    252            �           0    0    external_circulars_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.external_circulars_id_seq OWNED BY public.external_circulars.id;
          public          postgres    false    251            �            1259    41310    faculty_positions    TABLE     �   CREATE TABLE public.faculty_positions (
    id integer NOT NULL,
    position_type character varying(255) NOT NULL,
    role character varying(255),
    imp integer DEFAULT 1,
    email character varying(254)
);
 %   DROP TABLE public.faculty_positions;
       public         heap    postgres    false            �            1259    41575    grievance_redressal_cell    TABLE     �   CREATE TABLE public.grievance_redressal_cell (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
 ,   DROP TABLE public.grievance_redressal_cell;
       public         heap    postgres    false            �            1259    41574    grievance_redressal_cell_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grievance_redressal_cell_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.grievance_redressal_cell_id_seq;
       public          postgres    false    246            �           0    0    grievance_redressal_cell_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.grievance_redressal_cell_id_seq OWNED BY public.grievance_redressal_cell.id;
          public          postgres    false    245            �            1259    41316    hostels    TABLE     �   CREATE TABLE public.hostels (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    href character varying(255)
);
    DROP TABLE public.hostels;
       public         heap    postgres    false            �            1259    41321    hostels_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hostels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.hostels_id_seq;
       public          postgres    false    234            �           0    0    hostels_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hostels_id_seq OWNED BY public.hostels.id;
          public          postgres    false    235            �            1259    41593    internal_circulars    TABLE     �   CREATE TABLE public.internal_circulars (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
 &   DROP TABLE public.internal_circulars;
       public         heap    postgres    false            �            1259    41592    internal_circulars_id_seq    SEQUENCE     �   CREATE SEQUENCE public.internal_circulars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.internal_circulars_id_seq;
       public          postgres    false    250            �           0    0    internal_circulars_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.internal_circulars_id_seq OWNED BY public.internal_circulars.id;
          public          postgres    false    249            �            1259    41322    links    TABLE     �   CREATE TABLE public.links (
    id integer NOT NULL,
    link_type character varying(254) NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
    DROP TABLE public.links;
       public         heap    postgres    false            �            1259    41327    links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.links_id_seq;
       public          postgres    false    236            �           0    0    links_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;
          public          postgres    false    237            �            1259    41619    non_faculty_info    TABLE     3  CREATE TABLE public.non_faculty_info (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    address text,
    phone_no bigint,
    profile_picture character varying(255),
    user_type character varying DEFAULT false
);
 $   DROP TABLE public.non_faculty_info;
       public         heap    postgres    false            �            1259    41618    non_faculty_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.non_faculty_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.non_faculty_info_id_seq;
       public          postgres    false    254            �           0    0    non_faculty_info_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.non_faculty_info_id_seq OWNED BY public.non_faculty_info.id;
          public          postgres    false    253            �            1259    41627    non_faculty_positions    TABLE     �   CREATE TABLE public.non_faculty_positions (
    id integer NOT NULL,
    position_type character varying(255) NOT NULL,
    role character varying(255),
    imp integer DEFAULT 1,
    email character varying(254)
);
 )   DROP TABLE public.non_faculty_positions;
       public         heap    postgres    false            �            1259    41584    press_releases    TABLE     �   CREATE TABLE public.press_releases (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255) NOT NULL
);
 "   DROP TABLE public.press_releases;
       public         heap    postgres    false            �            1259    41583    press_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.press_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.press_releases_id_seq;
       public          postgres    false    248            �           0    0    press_releases_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.press_releases_id_seq OWNED BY public.press_releases.id;
          public          postgres    false    247            �            1259    41341    shops    TABLE     �   CREATE TABLE public.shops (
    id integer NOT NULL,
    name character varying(255),
    owner character varying(255),
    contact character varying(255),
    location text
);
    DROP TABLE public.shops;
       public         heap    postgres    false            �            1259    41346    shops_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.shops_id_seq;
       public          postgres    false    238            �           0    0    shops_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.shops_id_seq OWNED BY public.shops.id;
          public          postgres    false    239            �            1259    41347    tenders    TABLE     p  CREATE TABLE public.tenders (
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
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.tenders;
       public         heap 
   superAdmin    false            �           2604    41354    Carousels id    DEFAULT     p   ALTER TABLE ONLY public."Carousels" ALTER COLUMN id SET DEFAULT nextval('public."Carousels_id_seq"'::regclass);
 =   ALTER TABLE public."Carousels" ALTER COLUMN id DROP DEFAULT;
       public       
   superAdmin    false    218    217            �           2604    41355    News id    DEFAULT     f   ALTER TABLE ONLY public."News" ALTER COLUMN id SET DEFAULT nextval('public."News_id_seq"'::regclass);
 8   ALTER TABLE public."News" ALTER COLUMN id DROP DEFAULT;
       public       
   superAdmin    false    220    219            �           2604    41356 
   Notices id    DEFAULT     l   ALTER TABLE ONLY public."Notices" ALTER COLUMN id SET DEFAULT nextval('public."Notices_id_seq"'::regclass);
 ;   ALTER TABLE public."Notices" ALTER COLUMN id DROP DEFAULT;
       public       
   superAdmin    false    222    221            �           2604    41357    achievements id    DEFAULT     r   ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);
 >   ALTER TABLE public.achievements ALTER COLUMN id DROP DEFAULT;
       public       
   superAdmin    false    224    223            �           2604    41569    annual_account id    DEFAULT     v   ALTER TABLE ONLY public.annual_account ALTER COLUMN id SET DEFAULT nextval('public.annual_account_id_seq'::regclass);
 @   ALTER TABLE public.annual_account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    41560    annual_report id    DEFAULT     t   ALTER TABLE ONLY public.annual_report ALTER COLUMN id SET DEFAULT nextval('public.annual_report_id_seq'::regclass);
 ?   ALTER TABLE public.annual_report ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    41358    counselling id    DEFAULT     p   ALTER TABLE ONLY public.counselling ALTER COLUMN id SET DEFAULT nextval('public.counselling_id_seq'::regclass);
 =   ALTER TABLE public.counselling ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    41359 
   doctors id    DEFAULT     h   ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);
 9   ALTER TABLE public.doctors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    41360    eventImages id    DEFAULT     s   ALTER TABLE ONLY public."eventImages" ALTER COLUMN id SET DEFAULT nextval('public.event_images_id_seq'::regclass);
 ?   ALTER TABLE public."eventImages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    41361 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       
   superAdmin    false    232    231            �           2604    41605    external_circulars id    DEFAULT     ~   ALTER TABLE ONLY public.external_circulars ALTER COLUMN id SET DEFAULT nextval('public.external_circulars_id_seq'::regclass);
 D   ALTER TABLE public.external_circulars ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            �           2604    41578    grievance_redressal_cell id    DEFAULT     �   ALTER TABLE ONLY public.grievance_redressal_cell ALTER COLUMN id SET DEFAULT nextval('public.grievance_redressal_cell_id_seq'::regclass);
 J   ALTER TABLE public.grievance_redressal_cell ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            �           2604    41362 
   hostels id    DEFAULT     h   ALTER TABLE ONLY public.hostels ALTER COLUMN id SET DEFAULT nextval('public.hostels_id_seq'::regclass);
 9   ALTER TABLE public.hostels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    41596    internal_circulars id    DEFAULT     ~   ALTER TABLE ONLY public.internal_circulars ALTER COLUMN id SET DEFAULT nextval('public.internal_circulars_id_seq'::regclass);
 D   ALTER TABLE public.internal_circulars ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            �           2604    41363    links id    DEFAULT     d   ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);
 7   ALTER TABLE public.links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    41622    non_faculty_info id    DEFAULT     z   ALTER TABLE ONLY public.non_faculty_info ALTER COLUMN id SET DEFAULT nextval('public.non_faculty_info_id_seq'::regclass);
 B   ALTER TABLE public.non_faculty_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            �           2604    41587    press_releases id    DEFAULT     v   ALTER TABLE ONLY public.press_releases ALTER COLUMN id SET DEFAULT nextval('public.press_releases_id_seq'::regclass);
 @   ALTER TABLE public.press_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �           2604    41365    shops id    DEFAULT     d   ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shops_id_seq'::regclass);
 7   ALTER TABLE public.shops ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            S          0    41264 	   Carousels 
   TABLE DATA           d   COPY public."Carousels" (id, title, subtext, image_url, link, "createdAt", "updatedAt") FROM stdin;
    public       
   superAdmin    false    217   �      U          0    41270    News 
   TABLE DATA           t   COPY public."News" (id, title, excerpt, content, image_url, link, created_at, "createdAt", "updatedAt") FROM stdin;
    public       
   superAdmin    false    219   �      W          0    41276    Notices 
   TABLE DATA           l   COPY public."Notices" (id, title, excerpt, content, link, created_at, "createdAt", "updatedAt") FROM stdin;
    public       
   superAdmin    false    221   �      Y          0    41282    achievements 
   TABLE DATA           z   COPY public.achievements (id, title, excerpt, content, image_url, link, created_at, "createdAt", "updatedAt") FROM stdin;
    public       
   superAdmin    false    223   h      n          0    41566    annual_account 
   TABLE DATA           8   COPY public.annual_account (id, name, href) FROM stdin;
    public          postgres    false    244   �      l          0    41557    annual_report 
   TABLE DATA           7   COPY public.annual_report (id, name, href) FROM stdin;
    public          postgres    false    242   `      [          0    41288    counselling 
   TABLE DATA           L   COPY public.counselling (id, role, name, roll_no, batch, email) FROM stdin;
    public          postgres    false    225   �      ]          0    41294    doctors 
   TABLE DATA           1   COPY public.doctors (id, name, role) FROM stdin;
    public          postgres    false    227   �!      _          0    41300    eventImages 
   TABLE DATA           [   COPY public."eventImages" (id, event_id, image_path, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   �"      a          0    41304    events 
   TABLE DATA           }   COPY public.events (id, name, date, location, external_link, cover_image, "createdAt", "updatedAt", description) FROM stdin;
    public       
   superAdmin    false    231   �"      v          0    41602    external_circulars 
   TABLE DATA           <   COPY public.external_circulars (id, name, href) FROM stdin;
    public          postgres    false    252   �#      c          0    41310    faculty_positions 
   TABLE DATA           P   COPY public.faculty_positions (id, position_type, role, imp, email) FROM stdin;
    public          postgres    false    233   �%      p          0    41575    grievance_redressal_cell 
   TABLE DATA           B   COPY public.grievance_redressal_cell (id, name, href) FROM stdin;
    public          postgres    false    246   �'      d          0    41316    hostels 
   TABLE DATA           7   COPY public.hostels (id, name, role, href) FROM stdin;
    public          postgres    false    234   �(      t          0    41593    internal_circulars 
   TABLE DATA           <   COPY public.internal_circulars (id, name, href) FROM stdin;
    public          postgres    false    250   *      f          0    41322    links 
   TABLE DATA           :   COPY public.links (id, link_type, name, href) FROM stdin;
    public          postgres    false    236   ,      x          0    41619    non_faculty_info 
   TABLE DATA           {   COPY public.non_faculty_info (id, first_name, last_name, email, address, phone_no, profile_picture, user_type) FROM stdin;
    public          postgres    false    254   ",      y          0    41627    non_faculty_positions 
   TABLE DATA           T   COPY public.non_faculty_positions (id, position_type, role, imp, email) FROM stdin;
    public          postgres    false    255   !8      r          0    41584    press_releases 
   TABLE DATA           8   COPY public.press_releases (id, name, href) FROM stdin;
    public          postgres    false    248   �;      h          0    41341    shops 
   TABLE DATA           C   COPY public.shops (id, name, owner, contact, location) FROM stdin;
    public          postgres    false    238   �<      j          0    41347    tenders 
   TABLE DATA           �   COPY public.tenders (id, tender_no, title, description, advertisement_date, closing_date, category, status, type, attachments, department, estimated_value, "createdAt", "updatedAt") FROM stdin;
    public       
   superAdmin    false    240   I>      �           0    0    Carousels_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Carousels_id_seq"', 1, false);
          public       
   superAdmin    false    218            �           0    0    News_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."News_id_seq"', 7, true);
          public       
   superAdmin    false    220            �           0    0    Notices_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Notices_id_seq"', 4, true);
          public       
   superAdmin    false    222            �           0    0    achievements_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.achievements_id_seq', 4, true);
          public       
   superAdmin    false    224            �           0    0    annual_account_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.annual_account_id_seq', 24, true);
          public          postgres    false    243            �           0    0    annual_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.annual_report_id_seq', 26, true);
          public          postgres    false    241            �           0    0    counselling_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.counselling_id_seq', 29, true);
          public          postgres    false    226            �           0    0    doctors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.doctors_id_seq', 14, true);
          public          postgres    false    228            �           0    0    event_images_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.event_images_id_seq', 5, true);
          public          postgres    false    230            �           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 2, true);
          public       
   superAdmin    false    232            �           0    0    external_circulars_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.external_circulars_id_seq', 5, true);
          public          postgres    false    251            �           0    0    grievance_redressal_cell_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.grievance_redressal_cell_id_seq', 2, true);
          public          postgres    false    245            �           0    0    hostels_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hostels_id_seq', 10, true);
          public          postgres    false    235            �           0    0    internal_circulars_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.internal_circulars_id_seq', 10, true);
          public          postgres    false    249            �           0    0    links_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.links_id_seq', 1, false);
          public          postgres    false    237            �           0    0    non_faculty_info_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.non_faculty_info_id_seq', 81, true);
          public          postgres    false    253            �           0    0    press_releases_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.press_releases_id_seq', 2, true);
          public          postgres    false    247            �           0    0    shops_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.shops_id_seq', 7, true);
          public          postgres    false    239            �           2606    41367    Carousels Carousels_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Carousels"
    ADD CONSTRAINT "Carousels_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Carousels" DROP CONSTRAINT "Carousels_pkey";
       public         
   superAdmin    false    217            �           2606    41369    News News_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."News"
    ADD CONSTRAINT "News_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."News" DROP CONSTRAINT "News_pkey";
       public         
   superAdmin    false    219            �           2606    41371    Notices Notices_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Notices"
    ADD CONSTRAINT "Notices_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Notices" DROP CONSTRAINT "Notices_pkey";
       public         
   superAdmin    false    221            �           2606    41373    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public         
   superAdmin    false    223            �           2606    41573 "   annual_account annual_account_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.annual_account
    ADD CONSTRAINT annual_account_pkey PRIMARY KEY (id, name);
 L   ALTER TABLE ONLY public.annual_account DROP CONSTRAINT annual_account_pkey;
       public            postgres    false    244    244            �           2606    41564     annual_report annual_report_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.annual_report
    ADD CONSTRAINT annual_report_pkey PRIMARY KEY (id, name);
 J   ALTER TABLE ONLY public.annual_report DROP CONSTRAINT annual_report_pkey;
       public            postgres    false    242    242                        2606    41375    counselling counselling_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.counselling
    ADD CONSTRAINT counselling_pkey PRIMARY KEY (roll_no);
 F   ALTER TABLE ONLY public.counselling DROP CONSTRAINT counselling_pkey;
       public            postgres    false    225                       2606    41377    doctors doctors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    227                       2606    41379    eventImages event_images_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."eventImages"
    ADD CONSTRAINT event_images_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public."eventImages" DROP CONSTRAINT event_images_pkey;
       public            postgres    false    229                       2606    41381    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         
   superAdmin    false    231            �           2606    41609 *   external_circulars external_circulars_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.external_circulars
    ADD CONSTRAINT external_circulars_pkey PRIMARY KEY (id, name);
 T   ALTER TABLE ONLY public.external_circulars DROP CONSTRAINT external_circulars_pkey;
       public            postgres    false    252    252                       2606    41383 (   faculty_positions faculty_positions_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.faculty_positions
    ADD CONSTRAINT faculty_positions_pkey PRIMARY KEY (id, position_type);
 R   ALTER TABLE ONLY public.faculty_positions DROP CONSTRAINT faculty_positions_pkey;
       public            postgres    false    233    233            �           2606    41582 6   grievance_redressal_cell grievance_redressal_cell_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.grievance_redressal_cell
    ADD CONSTRAINT grievance_redressal_cell_pkey PRIMARY KEY (id, name);
 `   ALTER TABLE ONLY public.grievance_redressal_cell DROP CONSTRAINT grievance_redressal_cell_pkey;
       public            postgres    false    246    246            
           2606    41385    hostels hostels_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hostels
    ADD CONSTRAINT hostels_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hostels DROP CONSTRAINT hostels_pkey;
       public            postgres    false    234            �           2606    41600 *   internal_circulars internal_circulars_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.internal_circulars
    ADD CONSTRAINT internal_circulars_pkey PRIMARY KEY (id, name);
 T   ALTER TABLE ONLY public.internal_circulars DROP CONSTRAINT internal_circulars_pkey;
       public            postgres    false    250    250                       2606    41387    links links_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.links DROP CONSTRAINT links_pkey;
       public            postgres    false    236            �           2606    41626 &   non_faculty_info non_faculty_info_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.non_faculty_info
    ADD CONSTRAINT non_faculty_info_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.non_faculty_info DROP CONSTRAINT non_faculty_info_pkey;
       public            postgres    false    254            �           2606    41634 0   non_faculty_positions non_faculty_positions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.non_faculty_positions
    ADD CONSTRAINT non_faculty_positions_pkey PRIMARY KEY (id, position_type);
 Z   ALTER TABLE ONLY public.non_faculty_positions DROP CONSTRAINT non_faculty_positions_pkey;
       public            postgres    false    255    255            �           2606    41591 "   press_releases press_releases_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.press_releases
    ADD CONSTRAINT press_releases_pkey PRIMARY KEY (id, name);
 L   ALTER TABLE ONLY public.press_releases DROP CONSTRAINT press_releases_pkey;
       public            postgres    false    248    248                       2606    41393    shops shops_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.shops DROP CONSTRAINT shops_pkey;
       public            postgres    false    238                       2606    41395    tenders tenders_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_pkey;
       public         
   superAdmin    false    240                       2606    42454    tenders tenders_tender_no_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key UNIQUE (tender_no);
 G   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key;
       public         
   superAdmin    false    240                       2606    42456    tenders tenders_tender_no_key1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key1 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key1;
       public         
   superAdmin    false    240                       2606    42458    tenders tenders_tender_no_key10 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key10 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key10;
       public         
   superAdmin    false    240                       2606    42460    tenders tenders_tender_no_key11 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key11 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key11;
       public         
   superAdmin    false    240                       2606    42462    tenders tenders_tender_no_key12 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key12 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key12;
       public         
   superAdmin    false    240                       2606    42464    tenders tenders_tender_no_key13 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key13 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key13;
       public         
   superAdmin    false    240            !           2606    42466    tenders tenders_tender_no_key14 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key14 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key14;
       public         
   superAdmin    false    240            #           2606    42468    tenders tenders_tender_no_key15 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key15 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key15;
       public         
   superAdmin    false    240            %           2606    42470    tenders tenders_tender_no_key16 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key16 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key16;
       public         
   superAdmin    false    240            '           2606    42472    tenders tenders_tender_no_key17 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key17 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key17;
       public         
   superAdmin    false    240            )           2606    42474    tenders tenders_tender_no_key18 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key18 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key18;
       public         
   superAdmin    false    240            +           2606    42476    tenders tenders_tender_no_key19 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key19 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key19;
       public         
   superAdmin    false    240            -           2606    42478    tenders tenders_tender_no_key2 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key2 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key2;
       public         
   superAdmin    false    240            /           2606    42480    tenders tenders_tender_no_key20 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key20 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key20;
       public         
   superAdmin    false    240            1           2606    42482    tenders tenders_tender_no_key21 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key21 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key21;
       public         
   superAdmin    false    240            3           2606    42484    tenders tenders_tender_no_key22 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key22 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key22;
       public         
   superAdmin    false    240            5           2606    42486    tenders tenders_tender_no_key23 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key23 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key23;
       public         
   superAdmin    false    240            7           2606    42488    tenders tenders_tender_no_key24 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key24 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key24;
       public         
   superAdmin    false    240            9           2606    42490    tenders tenders_tender_no_key25 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key25 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key25;
       public         
   superAdmin    false    240            ;           2606    42492    tenders tenders_tender_no_key26 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key26 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key26;
       public         
   superAdmin    false    240            =           2606    42494    tenders tenders_tender_no_key27 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key27 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key27;
       public         
   superAdmin    false    240            ?           2606    42496    tenders tenders_tender_no_key28 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key28 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key28;
       public         
   superAdmin    false    240            A           2606    42498    tenders tenders_tender_no_key29 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key29 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key29;
       public         
   superAdmin    false    240            C           2606    42500    tenders tenders_tender_no_key3 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key3 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key3;
       public         
   superAdmin    false    240            E           2606    42502    tenders tenders_tender_no_key30 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key30 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key30;
       public         
   superAdmin    false    240            G           2606    42504    tenders tenders_tender_no_key31 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key31 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key31;
       public         
   superAdmin    false    240            I           2606    42506    tenders tenders_tender_no_key32 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key32 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key32;
       public         
   superAdmin    false    240            K           2606    42508    tenders tenders_tender_no_key33 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key33 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key33;
       public         
   superAdmin    false    240            M           2606    42510    tenders tenders_tender_no_key34 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key34 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key34;
       public         
   superAdmin    false    240            O           2606    42512    tenders tenders_tender_no_key35 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key35 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key35;
       public         
   superAdmin    false    240            Q           2606    42514    tenders tenders_tender_no_key36 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key36 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key36;
       public         
   superAdmin    false    240            S           2606    42516    tenders tenders_tender_no_key37 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key37 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key37;
       public         
   superAdmin    false    240            U           2606    42518    tenders tenders_tender_no_key38 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key38 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key38;
       public         
   superAdmin    false    240            W           2606    42520    tenders tenders_tender_no_key39 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key39 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key39;
       public         
   superAdmin    false    240            Y           2606    42522    tenders tenders_tender_no_key4 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key4 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key4;
       public         
   superAdmin    false    240            [           2606    42524    tenders tenders_tender_no_key40 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key40 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key40;
       public         
   superAdmin    false    240            ]           2606    42526    tenders tenders_tender_no_key41 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key41 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key41;
       public         
   superAdmin    false    240            _           2606    42528    tenders tenders_tender_no_key42 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key42 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key42;
       public         
   superAdmin    false    240            a           2606    42530    tenders tenders_tender_no_key43 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key43 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key43;
       public         
   superAdmin    false    240            c           2606    42532    tenders tenders_tender_no_key44 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key44 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key44;
       public         
   superAdmin    false    240            e           2606    42534    tenders tenders_tender_no_key45 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key45 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key45;
       public         
   superAdmin    false    240            g           2606    42536    tenders tenders_tender_no_key46 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key46 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key46;
       public         
   superAdmin    false    240            i           2606    42538    tenders tenders_tender_no_key47 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key47 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key47;
       public         
   superAdmin    false    240            k           2606    42540    tenders tenders_tender_no_key48 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key48 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key48;
       public         
   superAdmin    false    240            m           2606    42542    tenders tenders_tender_no_key49 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key49 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key49;
       public         
   superAdmin    false    240            o           2606    42544    tenders tenders_tender_no_key5 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key5 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key5;
       public         
   superAdmin    false    240            q           2606    42546    tenders tenders_tender_no_key50 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key50 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key50;
       public         
   superAdmin    false    240            s           2606    42548    tenders tenders_tender_no_key51 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key51 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key51;
       public         
   superAdmin    false    240            u           2606    42550    tenders tenders_tender_no_key52 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key52 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key52;
       public         
   superAdmin    false    240            w           2606    42552    tenders tenders_tender_no_key53 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key53 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key53;
       public         
   superAdmin    false    240            y           2606    42554    tenders tenders_tender_no_key54 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key54 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key54;
       public         
   superAdmin    false    240            {           2606    42556    tenders tenders_tender_no_key55 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key55 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key55;
       public         
   superAdmin    false    240            }           2606    42558    tenders tenders_tender_no_key56 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key56 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key56;
       public         
   superAdmin    false    240                       2606    42560    tenders tenders_tender_no_key57 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key57 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key57;
       public         
   superAdmin    false    240            �           2606    42562    tenders tenders_tender_no_key58 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key58 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key58;
       public         
   superAdmin    false    240            �           2606    42564    tenders tenders_tender_no_key59 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key59 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key59;
       public         
   superAdmin    false    240            �           2606    42566    tenders tenders_tender_no_key6 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key6 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key6;
       public         
   superAdmin    false    240            �           2606    42568    tenders tenders_tender_no_key60 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key60 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key60;
       public         
   superAdmin    false    240            �           2606    42570    tenders tenders_tender_no_key61 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key61 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key61;
       public         
   superAdmin    false    240            �           2606    42572    tenders tenders_tender_no_key62 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key62 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key62;
       public         
   superAdmin    false    240            �           2606    42574    tenders tenders_tender_no_key63 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key63 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key63;
       public         
   superAdmin    false    240            �           2606    42576    tenders tenders_tender_no_key64 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key64 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key64;
       public         
   superAdmin    false    240            �           2606    42578    tenders tenders_tender_no_key65 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key65 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key65;
       public         
   superAdmin    false    240            �           2606    42580    tenders tenders_tender_no_key66 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key66 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key66;
       public         
   superAdmin    false    240            �           2606    42582    tenders tenders_tender_no_key67 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key67 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key67;
       public         
   superAdmin    false    240            �           2606    42584    tenders tenders_tender_no_key68 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key68 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key68;
       public         
   superAdmin    false    240            �           2606    42586    tenders tenders_tender_no_key69 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key69 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key69;
       public         
   superAdmin    false    240            �           2606    42588    tenders tenders_tender_no_key7 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key7 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key7;
       public         
   superAdmin    false    240            �           2606    42590    tenders tenders_tender_no_key70 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key70 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key70;
       public         
   superAdmin    false    240            �           2606    42592    tenders tenders_tender_no_key71 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key71 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key71;
       public         
   superAdmin    false    240            �           2606    42594    tenders tenders_tender_no_key72 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key72 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key72;
       public         
   superAdmin    false    240            �           2606    42600    tenders tenders_tender_no_key73 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key73 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key73;
       public         
   superAdmin    false    240            �           2606    42602    tenders tenders_tender_no_key74 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key74 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key74;
       public         
   superAdmin    false    240            �           2606    42604    tenders tenders_tender_no_key75 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key75 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key75;
       public         
   superAdmin    false    240            �           2606    42452    tenders tenders_tender_no_key76 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key76 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key76;
       public         
   superAdmin    false    240            �           2606    42606    tenders tenders_tender_no_key77 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key77 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key77;
       public         
   superAdmin    false    240            �           2606    42608    tenders tenders_tender_no_key78 
   CONSTRAINT     _   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key78 UNIQUE (tender_no);
 I   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key78;
       public         
   superAdmin    false    240            �           2606    42596    tenders tenders_tender_no_key8 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key8 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key8;
       public         
   superAdmin    false    240            �           2606    42598    tenders tenders_tender_no_key9 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tenders
    ADD CONSTRAINT tenders_tender_no_key9 UNIQUE (tender_no);
 H   ALTER TABLE ONLY public.tenders DROP CONSTRAINT tenders_tender_no_key9;
       public         
   superAdmin    false    240                       1259    42610    tenders_closing_date    INDEX     P   CREATE INDEX tenders_closing_date ON public.tenders USING btree (closing_date);
 (   DROP INDEX public.tenders_closing_date;
       public         
   superAdmin    false    240                       1259    42613    tenders_status    INDEX     D   CREATE INDEX tenders_status ON public.tenders USING btree (status);
 "   DROP INDEX public.tenders_status;
       public         
   superAdmin    false    240                       1259    42609    tenders_tender_no    INDEX     J   CREATE INDEX tenders_tender_no ON public.tenders USING btree (tender_no);
 %   DROP INDEX public.tenders_tender_no;
       public         
   superAdmin    false    240            �           2606    41545 &   eventImages event_images_event_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."eventImages"
    ADD CONSTRAINT event_images_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public."eventImages" DROP CONSTRAINT event_images_event_id_fkey;
       public          postgres    false    229    231    4870            �           2606    41635 3   non_faculty_positions non_faculty_positions_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.non_faculty_positions
    ADD CONSTRAINT non_faculty_positions_id_fkey FOREIGN KEY (id) REFERENCES public.non_faculty_info(id);
 ]   ALTER TABLE ONLY public.non_faculty_positions DROP CONSTRAINT non_faculty_positions_id_fkey;
       public          postgres    false    254    255    5055            S      x������ � �      U   �  x��Um��F�l~�|iժ`���@Q%.\zD�����%Zۃ�����]�_�Y�;.��U�H���;/;����3G,�
�\�Ps��(P1÷�l����(+�
��R|W��FI��>g�Fn���x�L��{�~�"���	�
WLh|�n[�SNY�)�6xa�������m�X�ͯ_�KQ�o�������Q$��}H���v2cJ=���v9�&)>�,v��'��d��ϯ�l��"�}�D�-����qV)t�d㼿ql1����G0M����w?�o^8�t��%nQq&x�`�Z��:���+���`I�#�Lj�	D;��橠Gɔ)P�b��,�j����(��'�LI��%	�*c�0Q�5יb�������#�S=��[�j�O�(a�g�U�i}�S�4��axv���c�N���~�(����/X��7�y����\}	�2<'�rݪ3�R�IzI�&�����o+�s��2]�����!��.�+�E�i�-(\mXLq7X)Y*j��u��bQ���gףm�?#�Pq#+}0t�5�]�mYmR�U�\j�����͎RϹF�����h��s�ϟc�Ƅ�,���d[�lٿ_�jG�R��B�5{�y�=���H+Z*� �Ŧb���pa2����JYڬ��u3]bl��k�<�F�k&���5	�2������%�v�Z�+��(���.�G�4%MY�"]o2F;�- ���R֨�ӳ��3>�.Qb���[��_�\�����`������$'�ء3v^�J�ķ�_�vf@$)�x�oL�(�	�EJ����8��R�{����]T~���_/������$���7m���8�XS�zg�T9������H[����O����ALN�x��y�v:�� N�      W   �  x��T�n�0<�_�=7�%˯�f��"I�&E/����bC�I[��wIK~�Jr��sfv�F�y������u�9�,��R(�o����@0�)y���Eh�Z���M�@�,,`�'��jϺ��6ץP�ή+�7���@&]��A`*�Y�����JK�h/� ��'wz��+$�a���ڰ��*m�F	���3NpQ1� eK��NlpKs�D�s����u]�B��c�c��u���&zy����4��!�F�l4�G�� ����fY�iBo=`wbi���w�1�J��l���ϋ� ��ZHI��Ί*u��{b���y����b��I~�G��R�&
\��1wetyQph윾�R�k~~�dE�K��Ma~�%��㽿��5g;. M���$J���m�y��B�.�Y2����x<���"��E��~���?KX:�h��K�_	����!^79�?a/P�ˁ�Q��ܳ�Q����ޟ{{v��]"H&:�ڄ;����#|S�`A���.�jMG��,�����K�H�Ê�v��;�I���0�ޱ�EBo=�BKfl!*�W�<<A����-:�ڲV$w�$#�`OZx�É:r���y�Ze8S�u�}ڶ�3�r,� s�GF{��㢾�z�ؖ	ɖ2H�TEKϙ�Z�L�9����d��i�� �W�dg��:u��q�f��]��$�^�^��E�+�      Y   k  x��Vmo�6�l�
"@�������:�u�I��u�K�JR��_������e���E�������sTع�[���R�`B2�*�bjŖ\���X�
zz����[`���L�!'tt�<)8�RfB"j!3�R�%�V��6^��b�?�dC�IÖ$yHٝ�Fئ��?l>��^,�~������x.p�%y2���
�h�*П��trk+3�},nj/��PpU��,�}�0H^����v�l�q��u���A?�p4��S�G�0��q��ݨ팟E	�P�p��f� Sh�e (s��e�:sy��+2�J��+UkIivIKi�°Y�%������P���*qQ���qz�\���9��7d�n붲�!Q�7ϊ���`�>��,��z�6���{�ݽ������r*�P3+lA��.ЈL�/H �������%� .s:C
-�[-����F!��PCI�D���h@�j��ԴtϕDv+��񹶏XU'��|��\�N�W��9D���S�@������h����+;����<�u��T��|��j4z���x�pO��G���c���%��1��J��&��Q��$����'��\%}H�Q?Mx0��I��3d2��QǓ�#�߻qgAep9z+t�*�r���P.-�3�z���{�h��Vr:Ac�e�%J��sO}�U���Xc+'vi4{I�(,�ja-�C��H�͠˗F��u�e���<�	��!\���Bo�����*]��C<z�09���b��g�kj/��ڊXō��Ċ�e��?�7��P�W(�ej�o��l���M̜n�7{���4���X#��ZZzu��f�>��8�8�&��W� ��(G���~�ڠ;�,Ia�p|Le�[�U�|�+[�]_�}����37���L�H�t�H�	�(JJ��5Mt��+��3ehoF7��7a���=4�'�m}�&���.:y�X�3��'H4��-4+�Z��ڍ�o��cTa��^#��[��Z�nJ�Т��p��=��k�}�~I	��I(j%2˳��]���v�	!lZ�{�=!�Tme� �Y�s�RZ��ׅ}dIO�G�U2;���ix��d���+��'����0R      n   m  x���=n�0�z9M��00�O�-"�i(YGĬ+��5���:O�(�<}œ�t1����ƻ�c�b��a~=]�N�y�M�i�,K�����ߤ�m�~\�0���n!/��1���kO~|=��[��a�Omz-R`K^���yT���d"PV/�
xg�|�dl2(+�p<����Fa&"�&���Bp�gO�a��
�L ;���5� ����Z��&Sf��\߀YC(T26�0s�wo����YA)c`��3�{����o�-b��,c`��7�[����o�mb���1���m�m��!��k� ���@�u�&Sn��\߀�DP �F^����[����g�DQ���:      l   y  x���?O�@���4&Z�,��,L��m���"���,{�8K��A��������0��}��1�?K,�D�2��z5�N�e���4]�5QJ-��%i�5�ݸ��vsj2�0)���{��떜L�g$��_��)�v��ug�[��8�:�����v����-@"�]�{y��n�{E��)�[.��G����v�������\bGqt@h��w�����9�:��������zWO�K��C�s���~@h��w�t� ,9�:��������zW�ټ����\����9 ��ֻz��e�9�^��W�g�������K��I@�wΖK���3���zW�Y=�x�n�T�Y=s@h��w�����-�����㱵�ޒ(�� .� b      [   �  x�u��r�0���S�v�w�i�n�6S�\�B<؄����ۯr 5nsWU���K� ~ ��ŤJCy1�\g��$rp?�ϔ�\u�/�T��!�Jx���1�Ty}p�
Fy����$�r��,w�.����En��\]mB6�(@�Tq���=u�\w�:���y"L�R�WЅ$���
8߮�{|嶆u��;���@c�6pN1�,~�>Ӱ�Sx�#�m�&tj�<�*kkX�(�jX��=F�0�$�ɣ͡)�sP��AM�|���@v`�F�Z;�:��3G�Qy�@EvR�T�$����Ϩx���"�L�3��`)��ỳ:3̪���p��3��>����-;�6����!��C)P�~�v��h_��n�N%�KV������V��q�:Р�j��Kg�����Q�DB�� �C�fl<�Q-/05,�~RmX�ߋ�L��׬�Y@3Q\NN{�3>5r����p�}z�˙�����#�w�.�:�G)�����=3�ڱ��܁ͯdn��q�F}�i�ǎ:�vl{s�a�5�.��-�Z������F�>�;��gxW�{���ՙD?�,�Ku��q�����3*�[��"��׫��K���z k�*���ZS�䂲�w�:���*�n{w��-4�����O�x��>���%h�j�}�ǌOs}��'�T4�D�,�C;�µ�䢐������j[��l��wg{i�}U��v����#������?�nb      ]   �   x�-��N�0D�ޯ�#�DZ8#��Z%�0G.�ت���q"����f��ԩ�-[�?��ƴ�I����{A�1�S��,�C�L���?y�������bŦY���mAg	�C����v%��Whf+z	�M/��9`a��3f�c�a��B��ūK§�3H�����>�!�OEDw��C�      _   U   x�3�4�OM*�,I��MLO-�w-K�+)�I,J�K�7��*H��".#j���Pk��ք�Z$���&痥!������ BH�      a   �   x�%���0E��+��
qr3�P�K�G�������WCr����[�NG��ձ(ˢ<�Kp�9?-�h��f�5���a������"i�8$K�m0�놞�ܯ�6������5�4#h�v0fG9�`�D&h��TW7pӃvk����s���<U      v   �  x��R;o�0��_qP��L�t3�5�N�1#��khR%OQ��{�m)�dt�"�{|�<Z�w�^��N�X�[(���CM�m`�VL���$n�R+F�I�'EV�Q�܄�i�u]BD��?U%dS�:k��!�ߌ�*W䫶��
�OE&�9���w0��[&,R�;:�j4z?+�{��pG���!ϲJ4X	p(��h9��y�����"���F�[���Ae�u��t���w�V�D��M��s�nH_��*��5�ͨ>�<�/F1�ӳ2�����Z�!(
w#$�ͪ,�3�A��h��W+@�,Ë�~h1�8O�/0���[-�ܒ�ޟ�h�s�u���:�[A'�Nz��̦��/�"g��� ���i�]��J�3D_�G�������a��޻3�y϶H�Š0�Wb�X6��SF�ŗP�zD���=;��Z-2�{�S��݌�ޓU�"Yy	z�Uz�!����pʂ0�zJf��|�|}      c     x���M��0���W�Z�� $4܊�TE�nW�Ǖ�מ$����v���;N�JKVꉐ<�·�q�{��Ƚ����Fic�=T�`XȞF�b3�� �se������9�>"рpڰ������":Y�L����͘�أ�X�M�UQp�Cp�\B�b���(.�I+񑋺t�	�I�	�\-A�`�e�S���틄W��
�Ż`wЊ>�|��lp��2�\�c�h3�.��(Z��֔D w����X�%KwF\
=�0n�;��+j�s���C�y�n���9}�E�w��*<S��(l���D�gE��'���Y�l����Z1�k�XY�����}"��n��`�pT���Pr0�GS�X;*L�v���4#xYW
�W��y��
w��P@��5����C�Wۖw c�
n7?'_���v��|x���H]̛�t��.ڶ+bߴ>��O��c�Zp��O(�/B��R��wR���R���d~�w��C�D�t���)��a��0Z��%v�� j,�It�x��F�_��      p   �   x���1��0�g�+��Ui�� �r�	���f�q�Q���Pݿ?�!�2���&���O�E��!�	�c���tC�������a �B�������.z�K�V�4M��ōg��a_�0�!�K�3di�ѝA�3J�Ӻ�@sq]a_����G�i�Ё�{���*T��|�W�ЬJP�ǻ��*�C��:�Y����E�릋w      d   c  x���KO�@�����KH��o�5�(�X��#�[�)���ޡ($M���f2s�|瞹���#��0�]M�e�a�r[uXun%�Vb]*��x>k����V'.+��R�L��V������T��U�Ra�=F���&0l�����X�S�>~z�<�i���t���:bf�Y�YĪ+���YxV�+�6�c�j��/���b]�]��&�� �	<߶�@F�O���+^���7A�C��&��8�?}�ЙS;��Bki=W����n�K�f���Ίw��U��].kY���vZ�%�W0�} C�h�5,Ӏun����
�|k���q�	���>*�AlL9cXA��Fa~J�4�      t   �  x���K��0��ɯ�;�<H!tW��F-�u��qld;����&�@U5H�����|�>ɣra;�Kb9*�"�:k��S��N',������L�:�^fR!-ג�	�=�&us>Y�����ET.4yk�<*�ͯn�/�r���b��
=�3��j�wjE��p�"��D3!���8��\s�v7 gM73�`-K�9�*<�zM�T⥒ �)|dm��eE+(�B�+�W�(g��UQ%�@�{qƭy�%�h��g���A`�dP/���n4�p�i�o��FXX��v52v`\ڷS�p��)����V�Hf�N8��^�nUWC�Ƨ��F+�`���m�wVP,R-\m/$G�'�@ �f|~g>��'�o����f�y��6quq{FZ�)_LE�:J����nÃ�g̳{��B� p�M\��������j .���D��F�����=@�P�q\��;���8�Ȗ�      f      x������ � �      x   �  x��Z�r�8]#_��t%U2-��YE��v�,O��)H�EH|5HJ�������|ɜP2�����K $�{q_�t�MR���Z6�'w,3��L�.㍣"6[(e*������:�~��S��b���[����E��H-R��2z�u(2G�N.�(���o�8�7��;��Qy�F�e&"���O�'L����[>���N��6��6s�V����;M��{A*_�M6���H�:�fCg��2��"���B�ڨK�Zn���}�5�8�d�vyJ�o_�w����^E����+~�J<yA�%������uKD]K�V���pKuD�i��4Y��ۭJt�,␍�x.�A
�߉ ��?r�ό ��K�1�v�-�~�xc��;-T� �|)��#:7��N�y$y�m��!�ȳ_(�Q�,,E`�)Ea{G,H�S�p��]�T���d��'����B�`�"#|���r|�>�}�~�~+p,�U��Q|�v�m����|�v���	���a�<�K�܏,���vB	F��w��N?x����i�~V�<3���l�N��� *ۭN#�uҚ�ZL�ן?_|�`�;l(v2�?�K���R��bvU��
�V�
>��º�^�0��]6��*�嚝�mJ&���?��f,9��gpiYE걡V{��qa�J0\,�<��*F���V�b�����JmS$`�t6\�* Z3�	�Pl��w(��x������.�&خ�&>B�ߞ�C��.Uy�Υ�r�L�(����\�c
`˅F8�JdUD��b\�L��!�T��³y�X%�a\��_8�N۠A���x��:�0��u />�?����и��S�?�P��Cיb�ru���o0�N��(�k�{$ؕ/�'7���b(*O!��Q��l7N}B���5>v"aK�\�Hj�i�6?�U�36�:	!�f��s�6ٕ"��M�e�Ol���i5hXx�KI����I5zt]���su/�q�����#m\��j'�G�s�2��@�k��țNo�.�@m���ݩ�R�����l���5��� �f������}��)���֭��%�G�I-�@*���&]��%��:�0���f��?�9�Ԯ�`�MT��
��<��B3}�6�=��_4EL*
�2��Hi8gL�]��H�Q�6����=��{Mv�@�3�@��qt��SH�pJ���J鵨[�=�B�������o�ͦj��-"��R0�%K��T�)pٕ��n���E��vX.#�Ǩ�XR,�5n+L*'!
�^^�����
�#��p!�P�1��w!sD�$�T�W��
�P���|�3�=��zFwkkm��H�垩���Ug���|,@=��e��of-F1Q�����N��[�r��fb������p����P��n�By��R"�!��L�����dY�������^��SĊ��c�w3�
�9�C�^��������-(��!/x&��(��{��Fe&�K�~�Z�^�@r%vl�ϥAz��A�F/|%w�GZ�W{��&�7z\��*�_M�����A��j�V��)߯�,K���n�[���SQ���O�����G��cg�,y�Lc�	�+>�Y��oU덴��wg��@�!d7�t4����˻��I{�c����u�-�H�]K����^y���rƆ���&5jP�~�v�gۦ���S.Oc�]#b��چBa��+.s��i w��F_�ѱ<P�����i1�H�eD
�2TM5EI��c3T	����?a2x	�݉ٮL�g��)�(]���x��`1�>����H3f��V�0��氡������'Et"LOg�p'��n�����
4�
<�^�$ݻ0�) �|�\M�{�Iop<5@����{8b�?[�T��Ҷ�N�Z�r�������%%.B4�$B?f#�t�}\�B���e�O�ʯ����+��)�V"{f�<CZ�+�}�n�����Ap��!9��/�4.�,t���Ф���r�"�V���#�$bMWs���yf�,�����aڍ=ĕ�5�u
�[�����0S>�F6u�y��R�8�q�@�c�i ��ǖ�0�|���RF�.l��_�C�D��<�ſ}�/Gl��juZ�N�:�G�H�f�Ǡ��(��U�^؜�8K��U�9�+�"�2���L��)���f�z�O6�M߾�o��#Ic�	B�JbЍ&~p�c�����^a]��Ͱ�х_��v�Qɢ���0(\&��|����o��AL볜���Od��}�3m�7����q�J~!�4i���`kj��Aۤ�^�m�M��i���36���җ��3o�����<�q���Ηk�!n2a�y��s��w
�\}))�^��'p��囒��g��P�!�TA
@�)�	Z�[x�2�\T'���u��`{�~�=�*l�-�������^����k���wJ���7�����Q��$��Q��Sz��얩� f"4�wp���`��!ح譒�Bz~�<��o$��Y��1��!�i���Z-����[8;>�q`�Z�ut�_��^dBΒN��%���G�A�9����M*��K����?_4��t��S?��R�Ώ'G��=�Z���)'�C�J��E���*af�$��BRnu�Km��6}�����	�O�8��=�٤��`��P����Q�Xqw&�?���;wzjA���m���K��x�)oZ��0T١	���/�����V�8B��bIl�g�s���$:�P[�q��:���~�=�v�Qgwj�N,\9{ے~�����S��^_!\-#*6D����n�Hnd'����y*]�$P���.�d����6����� �`��xq֕��Fb�[Mr�nE�!~3/�v�]���
�Y(�i�oK
�;pd�eC��bU���PwǾ�'U��Kt�.5O�/B��IHzAikأ�a���-�a��}�}\�x��x���ߝW�^��{��      y   �  x��W]��:}v~��������5��j�v7*��R����{��w�JH ��/����ό��	��>	���I��y'�eL�x����yb����$2��#�t[GptWGX��>�Ϩd�o�VA4P���i�<�k���°w��J��Q;����j�M�ʮ�m������L�>�s���21�@)$c����$��
j��)r`"�<�-��^�6Ma���CX����SlD(	X�i�`9^���8=G�����'���^N�AOO�!���x�
�4�Q !��%�W���Ac�D7*�^������"O��Q��H��d�j�4s٦�L�D��J�1�c�9�Z-�]r������M�4�8�ނ�3�F@a"S�s����.&�s肋}��;����uv_�����X"�̬%tcʈ�'�I�=	NI�T)�A�CO9+��?�#�I(��z�#<}�%R��x0�ڃ����'AM[�K�!�/	���f�|?q��S��4��#���X���!�驘 s��	&!��&"�O�V�&�Pj�J��0�(�W���_�8���E縘�M���$H1_�x7��'��(��k�׹���<��"y�$���ՋǢ�iwXO�j:�I~<e%6o�+؅�� �v��
�n���8u��5�%�k�
vn��aWm��ߨ���ֽ�������9����cip���F�������@#�G�ዬ^Ԩg/�ggj��o���f�n}4�k��W�̶5N�q5>���7����4"z�����5��4��sL�̎FBg@B|��c�����Qw��V[o��ۨx��9��r���]KZ���f#Cb��W~����/���9�)�3�J�Z��h}([�����RW�kC�����N�������_�w�n���b�Ʀ��Y��I������L&����      r   �   x�Ő1k�@���Wh)��/��-�B\�&�
F�)��UwXW��W8m�N-tyz�@|z��V2͂��`�sOq^z(�'������B
h�����'<aH�3L��<
y@�}�x��.�>�X��Քsҍs�����{��\�8���^]7��M�~�@���Y7�SJߛ����2�$^L��P�5=Q.Db�����'�O�:�K��O,;Ͽ�O3��O�YȖh^ꪪ> L	��      h   Y  x���MK1���_1'Q�#�ls��*~�b��0m���F&YE�YJ+�SBxy�g�(1��<��nV"<7��2���E�o\�re�)8#�,
��bL)�
e,n|�T�����:ɴq[�ߞ�m�����"�k
⺭�;��eM���VS*1b1V>)�����"{�1.��p���Z){���k��=�
7�{�`$��7�,Ta�4�x=1#��Պh�y�����U<�G�UH�0���:\�{��M~�m�ω��������@M�	r�[��K�R���Vk%un�!�f	��{�-��6�d��ǔ�/��G\�F8�]�u��_X��~a/�Y�� {��5      j   �  x���Qo�6���_A�ذ0")R��n�.q\��0�{�H*"K%�������ډ�����LB���9�2Ť��0��jI �(�R(��,�o�N��r�M/|{M����CzsS��赮:P��j?k�[���J�e'����y E�׭�ݒ�M��07�cZ��n���:mn�P'�mQ�01�sQ݀�p[ϕ 1���F��b� mW0�/V���j1���V�Y�J���j:�L���<��ۮkڑ��/bݔ�T�k_�����J�6Ml��[|���{�Ot#L�N=���!���GJF<�Y Ґ	ȹ�PG���L�M/S0�OGi��&�y���|�፰7]7���#��tYj�����F����2�pRS��J�k�O��%� B!D�Axv���+���:M�K�l����&��o��u������n@��oA���DE�<�!%<��� rE�R��,�8h����o�#�|B"o���+~�uߩ�6�{h4�N� 3Z�i���=xF��.�k���u�j :0��/�wD&ʦ7[V"r�"���=	>������@�Uۉ�\�O�k�~�
G�� �}��BN��3��8��#��t�ۿ�Gt�����u}�}Ӕ�6����3E�w��h��,l ��{[T���U�P� w�F[T�5[�z!ū����bfkm�~-k�y��R;��d�"�(W[WC�#�"�)���J���ȓ��@s���8��=����۽0���ln�M���
^����@s�v�ĕ6'��Mml2����|��}�_w"+]�n#wض��O�<�ڦg�l���a�D���]'{�ݯ��!`����q#�2
��T`�/"�qC��sn�����O��L}_��)V��~�llnm�	y�B�al�uQ���坷��Z�����^T�;��x�U�ap���Jr9[�Wv�\�~��v萃C�8h��]h�����f#BG����m�9��"�
�mF���yN�$TgZ�f=�SB�\�����ʈb��R�{���tm=�P���jq���E�@�Ri�;�������]g�����0�C�eؚ�J��8�1���*��*W�{"ʋ/���_u�yHZ����2�����w-�sѾ���A�� [z@��}/�O�GGG� �j��     