--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

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
-- Name: buku; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.buku (
    id bigint NOT NULL,
    id_kategori integer NOT NULL,
    judul character varying(255) NOT NULL,
    jumlah_halaman integer NOT NULL,
    kuota integer NOT NULL,
    file character varying(255) NOT NULL,
    pengarang character varying(255) NOT NULL,
    penerbit character varying(255) NOT NULL,
    tahun_terbit date NOT NULL,
    author character varying(255) NOT NULL,
    isbn integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    image character varying,
    deskripsi text
);


ALTER TABLE public.buku OWNER TO root;

--
-- Name: buku_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.buku_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buku_id_seq OWNER TO root;

--
-- Name: buku_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.buku_id_seq OWNED BY public.buku.id;


--
-- Name: detail_peminjaman; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.detail_peminjaman (
    id bigint NOT NULL,
    id_peminjaman integer NOT NULL,
    id_buku integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.detail_peminjaman OWNER TO root;

--
-- Name: detail_peminjaman_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.detail_peminjaman_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detail_peminjaman_id_seq OWNER TO root;

--
-- Name: detail_peminjaman_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.detail_peminjaman_id_seq OWNED BY public.detail_peminjaman.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: kategori; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.kategori (
    id bigint NOT NULL,
    nama_kategori character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kategori OWNER TO root;

--
-- Name: kategori_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.kategori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kategori_id_seq OWNER TO root;

--
-- Name: kategori_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.kategori_id_seq OWNED BY public.kategori.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO root;

--
-- Name: peminjaman; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.peminjaman (
    id bigint NOT NULL,
    id_user integer NOT NULL,
    tanggal_peminjaman date NOT NULL,
    tanggal_pengembalian date NOT NULL,
    status boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.peminjaman OWNER TO root;

--
-- Name: peminjaman_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.peminjaman_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.peminjaman_id_seq OWNER TO root;

--
-- Name: peminjaman_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.peminjaman_id_seq OWNED BY public.peminjaman.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    tanggal_lahir date NOT NULL,
    no_telephone character varying(255) NOT NULL,
    alamat character varying(255) NOT NULL,
    role integer NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: buku id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.buku ALTER COLUMN id SET DEFAULT nextval('public.buku_id_seq'::regclass);


--
-- Name: detail_peminjaman id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.detail_peminjaman ALTER COLUMN id SET DEFAULT nextval('public.detail_peminjaman_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: kategori id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.kategori ALTER COLUMN id SET DEFAULT nextval('public.kategori_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: peminjaman id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.peminjaman ALTER COLUMN id SET DEFAULT nextval('public.peminjaman_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: buku; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.buku (id, id_kategori, judul, jumlah_halaman, kuota, file, pengarang, penerbit, tahun_terbit, author, isbn, created_at, updated_at, image, deskripsi) FROM stdin;
1	1	new mind	200	10	buku/2p2JOqId6wJ9sLZtxM2Lsruvne2Cl0i3FcmRK5NS.png	sip00	maintance	2022-12-30	p00	1209292233	2022-12-30 13:42:28	2022-12-30 13:42:28	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7ssA6asfaafwHSMCp81I.png	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
6	1	new books	121	9	buku/zPKMwpoohx0kn61peZzx0m4eB9CHFYi5HJwx50tG.jpg	asfwre	232	2022-12-30	wrsw	1282792233	2022-12-30 13:54:02	2023-01-02 04:29:58	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7ssA6wHSkqkqkMCp81I.png	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
7	1	public speaking	150	20	buku/pgg4EGegM0PoRDydLvmOPA34MIt4bukiuMmqR4xf.png	p01	anon	2022-12-28	anoname	1209742233	2022-12-30 13:58:19	2022-12-30 13:58:19	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7ssA6wHSMCp8qwdqd1I.png	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
31	1	1 jam mahir	200	10	buku/MY3kT0ynsO0vICc5FsXYRve19UPWW0gQYHqpXfrE.png	qwadad	asdasd	2022-12-30	asdsad	1209292712	2022-12-30 16:07:26	2023-01-01 10:40:42	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7A6wHSMCp81I.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
35	2	database postgresql	200	8	buku/FhpYH45taqJ4QAie7rYXxvlOyhTi6kZpuq6JL5J7.svg	sip00	maintance	2022-12-31	p00	1209292121	2022-12-31 00:33:42	2023-01-02 07:11:20	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7ssA6wHSMCp81I.png	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
36	7	AWS server	100	10	buku/Lqc2rjYlhy7X70u3J0z56WSbcY1mjhSX2xMwy8Q7.jpg	asdasd	asda	2023-01-01	asdad	1209292123	2023-01-01 03:38:44	2023-01-01 10:51:43	buku/tgecN9ikId5WUBctN7YBzY2UCW8vhnzLzFsJ5nCx.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
34	10	Eat Sleep Code Reapeat	50	10	buku/Aca6PwGIZ26kZr6ytchMxDpCbFasiGl3up6xk5Qm.svg	sfsafa	asasf	2022-12-31	adasdd	1209292727	2022-12-30 23:11:01	2023-01-01 18:48:43	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7A6wHSMCp81I.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
8	1	good looking	150	11	buku/a1v19Gk9C3XuSVD23x71UGHjVPUlWE6PqhHWW4za.png	p01	anon	2022-12-28	anoname	1369292233	2022-12-30 13:59:12	2022-12-30 13:59:12	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7ssyqyqA6wHSMCp81I.png	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
29	1	good rekening	100	5	buku/c0Dznv4Kj0IzPcGEZI35lg9e0ng1PuQs0GEqUFi9.jpg	asdad	asdasd	2022-12-30	asdasda	1209992233	2022-12-30 15:54:55	2022-12-30 15:54:55	buku/FD2paIEem7ovF3xIIL2TYeCrGAbQBOdLBytPSuWP.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
30	1	2 jam mahir	1213	8	buku/f4p6YWGYHPtWJpzRxlm0PqM6ivzbR42VrXDfaSn9.jpg	asdasd	adasd	2022-12-30	sadad	1212292233	2022-12-30 15:56:06	2022-12-30 15:56:06	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7A6wHSMCp81I.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
33	10	Request time out	50	2	buku/nNvFMhBexWYYluY2AsOX6nxbIuOoKJEVXM1A4I2C.svg	sfsafa	asasf	2022-12-31	adasdd	1209292123	2022-12-30 23:05:46	2023-01-01 18:55:25	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7A6wHSMCp81I.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
32	8	mewaraskan	12	4	buku/Dh47xLG3owu5MUD2AFfeEQWwMKP33EkCSrD61EWd.svg	asdas	asda	2022-12-30	sada	1209292625	2022-12-30 16:50:51	2023-01-02 10:08:53	buku/4UMsmulJOsZyyXCAKcbZJhEJgKBD7A6wHSMCp81I.jpg	Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
37	5	buku	100	10	buku/6FafOiENBpvh9PgceBqr3qK7B4ritAtUYLWSxHI3.jpg	asd	wqe	2023-01-02	asd	12314214	2023-01-02 10:10:43	2023-01-02 10:10:43	buku/QKJVVPNLfh1jbFXogwyJGyis3GZ35gZHCVpeOpqN.jpg	asd
\.


--
-- Data for Name: detail_peminjaman; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.detail_peminjaman (id, id_peminjaman, id_buku, created_at, updated_at) FROM stdin;
106	113	32	2023-01-02 10:08:53	2023-01-02 10:08:53
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.kategori (id, nama_kategori, created_at, updated_at) FROM stdin;
1	Umum	2022-12-30 13:35:05	2022-12-30 13:35:05
2	Agama	2022-12-30 13:35:17	2022-12-30 13:35:17
3	Filsafat dan Psikologi	2022-12-30 13:35:26	2022-12-30 13:35:26
4	Sosial	2022-12-30 13:35:36	2022-12-30 13:35:36
5	Bahasa	2022-12-30 13:35:43	2022-12-30 13:35:43
6	Sains dan Matematika	2022-12-30 13:35:50	2022-12-30 13:35:50
7	Teknologi	2022-12-30 13:35:58	2022-12-30 13:35:58
8	Seni dan Rekreasi	2022-12-30 13:36:06	2022-12-30 13:36:06
9	Literartur dan Sastra	2022-12-30 13:36:18	2022-12-30 13:36:18
10	Sejarah dan Geografi	2022-12-30 13:36:29	2022-12-30 13:36:29
11	Algoritma	2022-12-31 01:58:36	2022-12-31 01:58:36
12	Cooking	2023-01-01 03:22:09	2023-01-01 03:22:09
13	Prakarya	2023-01-01 03:22:47	2023-01-01 03:22:47
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_12_28_134257_create_buku_table	1
6	2022_12_28_134338_create_detail_peminjaman_table	1
7	2022_12_28_134351_create_peminjaman_table	1
8	2022_12_28_134357_create_kategori_table	1
9	2022_12_31_152503_add_deskripsi_to_buku_table	2
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: peminjaman; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.peminjaman (id, id_user, tanggal_peminjaman, tanggal_pengembalian, status, created_at, updated_at) FROM stdin;
113	3	2023-01-02	2023-01-09	f	2023-01-02 10:08:53	2023-01-02 10:08:53
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
1	App\\Models\\User	2	auth_token	1b4b6a523003aa7ad76e97fb0e679711b13031ff8cbd0669d3598f7d1e504d4c	["*"]	2022-12-30 13:32:11	\N	2022-12-30 13:32:11	2022-12-30 13:32:11
16	App\\Models\\User	1	auth_token	941511068bb30ef972a580c978dbc907331dd217481b877a2bb3585edc407829	["*"]	2022-12-31 10:24:51	\N	2022-12-31 10:24:33	2022-12-31 10:24:51
19	App\\Models\\User	1	auth_token	139e8561a2adce1d0903d662ecda7a2f9af0344942f3737041c6fc752739d225	["*"]	2022-12-31 10:38:35	\N	2022-12-31 10:38:26	2022-12-31 10:38:35
2	App\\Models\\User	1	auth_token	0456cd2b92fd806d77855c44cb931a7959846e060409d6fd93d837ba6334610e	["*"]	2022-12-30 16:53:55	\N	2022-12-30 13:32:29	2022-12-30 16:53:55
10	App\\Models\\User	1	auth_token	4057b1ae718e9d077d53876a35dae6c4945fcd32c284cf747e3c9eeeb1391a77	["*"]	2022-12-31 05:45:23	\N	2022-12-31 05:41:30	2022-12-31 05:45:23
25	App\\Models\\User	1	auth_token	a6e98bf8b041d81e1b8443035105800263798750370b2c446b81cbe234229058	["*"]	2022-12-31 12:21:49	\N	2022-12-31 12:21:48	2022-12-31 12:21:49
6	App\\Models\\User	1	auth_token	5bba899e0a81fe4bc971f719ebcd7ec8d7776ad64b2e758b5b8bea59d399dd4f	["*"]	2022-12-31 02:12:47	\N	2022-12-31 00:32:26	2022-12-31 02:12:47
33	App\\Models\\User	1	auth_token	e30ee1bce264ccc6f7803beef3e9caa315803ecd631778f751f8adbf1e92ae7f	["*"]	2023-01-01 04:02:57	\N	2023-01-01 03:40:32	2023-01-01 04:02:57
4	App\\Models\\User	1	auth_token	0cfcd80db9e0a09231e82c7893b17e70cc99bc92fb6430fc25fda288dd769e59	["*"]	2022-12-30 23:11:25	\N	2022-12-30 23:04:51	2022-12-30 23:11:25
5	App\\Models\\User	1	auth_token	9d253404e0e744c5cf393655ccce842ffa28813a8dd26d3066e01cd3db80ba63	["*"]	2022-12-31 00:31:47	\N	2022-12-31 00:31:46	2022-12-31 00:31:47
29	App\\Models\\User	2	auth_token	5ea7c4ed4951080b62ee8067b66a4f29e28354c724b69c0452ffc6abeb231d32	["*"]	2023-01-01 01:56:25	\N	2023-01-01 01:54:23	2023-01-01 01:56:25
17	App\\Models\\User	2	auth_token	b5e6c430aa45947f4c1a51e62fa29ebe3470c4f64a861f7f56b1c77c513a9005	["*"]	2022-12-31 10:33:51	\N	2022-12-31 10:25:15	2022-12-31 10:33:51
14	App\\Models\\User	1	auth_token	6af9c618c9b49f196efac5976827a1a23c5e5bd4cd75a480fe94ee905ffc0bdb	["*"]	2022-12-31 10:16:10	\N	2022-12-31 10:11:44	2022-12-31 10:16:10
11	App\\Models\\User	1	auth_token	54d41c0be5a3c0deeae6df15a320c9eb6460d1795d81e66563086a6f22423e3c	["*"]	2022-12-31 09:59:15	\N	2022-12-31 07:47:14	2022-12-31 09:59:15
21	App\\Models\\User	1	auth_token	286020534e05e0b5a3f6ea6048349c0d437d06c310e76bade2a9c0d8a72bb6d2	["*"]	2022-12-31 12:16:05	\N	2022-12-31 11:46:58	2022-12-31 12:16:05
8	App\\Models\\User	1	auth_token	4f9ba3132b8a916746812827292743fa3c1cc7993ea9c3c40e31aca5620c3a50	["*"]	2022-12-31 03:18:25	\N	2022-12-31 02:25:53	2022-12-31 03:18:25
12	App\\Models\\User	2	auth_token	87d9860bd830fcd73f4e21c62a81c93ba37bc79293004f89ad4ac58d0d3a9fa0	["*"]	2022-12-31 10:05:32	\N	2022-12-31 10:01:35	2022-12-31 10:05:32
22	App\\Models\\User	1	auth_token	18c1ae543abd81f7c61624831ceeb326970ff5d871b5aa4cebdec6f9f6476164	["*"]	2022-12-31 12:16:22	\N	2022-12-31 12:16:21	2022-12-31 12:16:22
13	App\\Models\\User	2	auth_token	29aad84a67b3eaad0f8ed2cc26589c9c1cc1bdd55f7db6f044bf5112f0824ab2	["*"]	2022-12-31 10:10:15	\N	2022-12-31 10:07:00	2022-12-31 10:10:15
9	App\\Models\\User	1	auth_token	8588d4ae041ca7cc714503d72438d5bcc6372faf51394658723b4474150c3fef	["*"]	2022-12-31 03:37:46	\N	2022-12-31 03:19:02	2022-12-31 03:37:46
27	App\\Models\\User	2	auth_token	9e81676dacd230d7c71ae1888d12148bb8619873ba066d843737a7e12ce19b69	["*"]	2022-12-31 17:48:50	\N	2022-12-31 14:28:46	2022-12-31 17:48:50
15	App\\Models\\User	2	auth_token	28a6b02fab35982498b183f93fdbd05d4e83625e3705a57f626e877fec620f2f	["*"]	2022-12-31 10:24:03	\N	2022-12-31 10:16:31	2022-12-31 10:24:03
18	App\\Models\\User	2	auth_token	0df1c3733b3ff20f8e7374ecbd8026d38afc5f82f3c37e6a4157afeabd62e091	["*"]	2022-12-31 10:38:10	\N	2022-12-31 10:34:18	2022-12-31 10:38:10
26	App\\Models\\User	2	auth_token	c91f59d13d29378c4d3768f13600a67a6568ffd8de49b9520e916827d0c02d3a	["*"]	2022-12-31 12:25:04	\N	2022-12-31 12:22:04	2022-12-31 12:25:04
23	App\\Models\\User	2	auth_token	5bcf876d2649c7c3768c9ca582e52164da3f7c39004736298774e379d5125a14	["*"]	2022-12-31 12:19:31	\N	2022-12-31 12:16:41	2022-12-31 12:19:31
31	App\\Models\\User	1	auth_token	425bcd54e75790b56cdcc3facb1d37dad7035841c89fe0441df7f942f871e8ef	["*"]	2023-01-01 03:38:59	\N	2023-01-01 03:26:51	2023-01-01 03:38:59
24	App\\Models\\User	1	auth_token	2568347a01bde693702857d96ee393dbe55e1379832c9da7ad21b0bc7220023d	["*"]	2022-12-31 12:21:28	\N	2022-12-31 12:21:27	2022-12-31 12:21:28
20	App\\Models\\User	2	auth_token	318e31b86cfa4e3a4f9f000097e73d95bf8edbf088a782f3a28c2f22f5a276de	["*"]	2022-12-31 11:46:36	\N	2022-12-31 10:38:58	2022-12-31 11:46:36
30	App\\Models\\User	1	auth_token	e28a56993ea51b7956ddfe9eec3875520b0c1e1ebe68a27d0f3940883f301900	["*"]	2023-01-01 03:22:57	\N	2023-01-01 01:56:44	2023-01-01 03:22:57
7	App\\Models\\User	2	auth_token	562459c81c895be6ef285f50cb218ddc6083a0bd31005dd1db0e95e6007b6e20	["*"]	2023-01-02 10:08:53	\N	2022-12-31 02:01:15	2023-01-02 10:08:53
32	App\\Models\\User	4	auth_token	54d0c39113a38022abdcc97c6a9e90c99a1df288947e8dceefbc2e0520f8a3d9	["*"]	2023-01-01 03:40:13	\N	2023-01-01 03:40:06	2023-01-01 03:40:13
39	App\\Models\\User	1	auth_token	2fca6d7078239f5832df1ff9b200a28ca5ec8197b41e15b565083d2462227294	["*"]	2023-01-01 05:41:21	\N	2023-01-01 05:40:52	2023-01-01 05:41:21
34	App\\Models\\User	1	auth_token	3ec756dc05d6bbb11d089d1b55032cf5cc404791ddbea908ef916aacb999a61d	["*"]	2023-01-01 04:08:00	\N	2023-01-01 04:03:12	2023-01-01 04:08:00
36	App\\Models\\User	1	auth_token	54886668ad4bdc665478bfba14b8f297156d0824cfb771a7144f5631ed6682dc	["*"]	2023-01-01 04:49:32	\N	2023-01-01 04:08:55	2023-01-01 04:49:32
35	App\\Models\\User	2	auth_token	5e3e417c275bc5d249b468ed8a19c32c75fa840c25a6e9123b25e8a03a8b0f37	["*"]	2023-01-01 04:08:10	\N	2023-01-01 04:07:42	2023-01-01 04:08:10
37	App\\Models\\User	1	auth_token	9b69ebfc47741cbbe797e0a07f26f9f1b5e5d874a3b5c153b6a17430396ef50b	["*"]	2023-01-01 04:54:37	\N	2023-01-01 04:50:50	2023-01-01 04:54:37
38	App\\Models\\User	1	auth_token	482fc47876687fb3c082284abffbe275bfcf5d66033cacaf3f49506b44de99b4	["*"]	2023-01-01 06:43:06	\N	2023-01-01 05:29:28	2023-01-01 06:43:06
42	App\\Models\\User	2	auth_token	da8169d1adf0c9cf5002ec6627ec035c971b506428813db39a1c84dc55be2c5b	["*"]	2023-01-01 09:13:43	\N	2023-01-01 08:54:38	2023-01-01 09:13:43
40	App\\Models\\User	2	auth_token	bf19c35b5213204fe39534d9fe7c929988df16004be9c50b5524cb7130fc7ec5	["*"]	2023-01-01 08:24:08	\N	2023-01-01 06:38:34	2023-01-01 08:24:08
3	App\\Models\\User	1	auth_token	7c98858f7b3be1377f47bc49954b305355220ba2e1099ec6f1547c0a2520f261	["*"]	2023-01-01 19:10:14	\N	2022-12-30 13:34:34	2023-01-01 19:10:14
41	App\\Models\\User	1	auth_token	4d9ee7628a0a6ede491a51c1d5ea211a10946a2bea7a391e1fa7d5452c508146	["*"]	2023-01-01 09:21:10	\N	2023-01-01 06:43:55	2023-01-01 09:21:10
28	App\\Models\\User	2	auth_token	6be1f36d1573de0bab670d0c9cd40157fa9e62029750bf867f922c6bd18eccbd	["*"]	2023-01-02 03:25:11	\N	2022-12-31 16:08:48	2023-01-02 03:25:11
43	App\\Models\\User	2	auth_token	428dccba6c6b5132a36067a881d1733fae36ef4a92bdb85c0e2171141b2099fb	["*"]	2023-01-01 10:05:28	\N	2023-01-01 09:21:29	2023-01-01 10:05:28
50	App\\Models\\User	1	auth_token	a7a1d1454eaed9b16a5f29ce6d6e0efc741858f59629fba09b1ba521dd0e685e	["*"]	2023-01-02 06:04:31	\N	2023-01-02 05:05:14	2023-01-02 06:04:31
46	App\\Models\\User	2	auth_token	aed9f7e11142f4b8a1e57367035ffc849298d0210e68b7f69d6bf8599b7fe46d	["*"]	2023-01-01 23:17:58	\N	2023-01-01 15:48:31	2023-01-01 23:17:58
51	App\\Models\\User	2	auth_token	3dd9653ad8a78417f92b28c4e72d82fbf9dbd1d2f613d59d14f0d73ad347699d	["*"]	2023-01-02 07:31:04	\N	2023-01-02 06:04:52	2023-01-02 07:31:04
45	App\\Models\\User	2	auth_token	1b763851fd11dd2990932e568a1b2f2c10d116a5b2e5c7e21639c88ace5a2460	["*"]	2023-01-01 15:19:21	\N	2023-01-01 13:36:38	2023-01-01 15:19:21
47	App\\Models\\User	1	auth_token	fc9533280032f66f95155262ccc9eaf1482ad1ac4a304409d3dff86c0d40a127	["*"]	2023-01-01 23:27:04	\N	2023-01-01 23:18:12	2023-01-01 23:27:04
44	App\\Models\\User	2	auth_token	6494d9caa4a023b8c402cc2ffe9ebb06f1892aef621c96fcd02f3124b472856b	["*"]	2023-01-01 13:32:28	\N	2023-01-01 10:05:58	2023-01-01 13:32:28
48	App\\Models\\User	2	auth_token	04bf386b38f3162e2e9ee6bab6609e304b1ce928fc0b7dcacb6ae14b16af08a0	["*"]	2023-01-01 23:46:37	\N	2023-01-01 23:27:51	2023-01-01 23:46:37
52	App\\Models\\User	1	auth_token	53495601d3472257f8e6a8b99fa16c266ca6abd9e3b760f2d2be0c7faf02c071	["*"]	2023-01-02 07:51:06	\N	2023-01-02 07:31:16	2023-01-02 07:51:06
49	App\\Models\\User	2	auth_token	929def115c7ea69188fb49709f7e0b8fad3ca766be01341055a91152cf62b258	["*"]	2023-01-02 05:03:49	\N	2023-01-02 03:24:49	2023-01-02 05:03:49
53	App\\Models\\User	5	auth_token	30e93ef79833e2e97f6930c07fb7760e62a251042d44ba002872e8b987fee771	["*"]	2023-01-02 10:07:33	\N	2023-01-02 10:06:25	2023-01-02 10:07:33
54	App\\Models\\User	1	auth_token	a9f972975757d57ea5f6d68cbc9a431cea4239bc1a72694a96076dfc60566c0c	["*"]	2023-01-02 10:20:09	\N	2023-01-02 10:07:49	2023-01-02 10:20:09
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, name, email, email_verified_at, password, tanggal_lahir, no_telephone, alamat, role, remember_token, created_at, updated_at) FROM stdin;
1	tegar pratama	tegarp00@gmail.com	2022-12-30 13:30:25	$2y$10$joIWdBwEW6cAAOReDXjA5O1qsvJUiKOaquECMffiWb3ROChG.zquW	2001-03-14	085275048404	cisitu	2	Hxq8RjMLte	2022-12-30 13:30:25	2022-12-30 13:30:25
2	obito	obito@gmail.com	\N	$2y$10$UT/gv/jRMu/wkObF7I/Dm.i8betE/Yalhgau8yl6x2h83xsOa9.gK	2022-12-30	08121224215	cisitu	1	\N	2022-12-30 13:31:45	2022-12-30 13:31:45
3	pemula	pemula@gmail.com	\N	$2y$10$chUGmTMTkaDnZzYfxEUps.y8wgHJT7iDy9oZg0iD8Ig2C9PBfs/0q	2022-12-31	081211444123	dibandung	1	\N	2022-12-31 02:24:32	2022-12-31 02:24:32
4	user3	user3@gmail.com	\N	$2y$10$sm2ufVGPAID9LzzB9INd4eVnCCzSvV72tyZbNSvNAV5knILETytIO	2023-01-01	081214125423536	disana	1	\N	2023-01-01 03:39:45	2023-01-01 03:39:45
5	testing	testing@gmail.com	\N	$2y$10$loVdeXVNABfA/KbLrtBboOwzpLmrIG5uNPDJOtWrPwUC3Cg7qUMhG	2023-01-02	0812121334	bumi	1	\N	2023-01-02 10:06:08	2023-01-02 10:06:08
6	userbaru	userbaru@gmail.com	\N	$2y$10$HGzP7QncqIVsFgVS5RN.vewW0POn5ngqAQQPYg78gbQ04Mp0Yh2ce	2001-03-14	085252522	cisitu	1	\N	2023-01-04 09:45:16	2023-01-04 09:45:16
\.


--
-- Name: buku_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.buku_id_seq', 37, true);


--
-- Name: detail_peminjaman_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.detail_peminjaman_id_seq', 106, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: kategori_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.kategori_id_seq', 13, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);


--
-- Name: peminjaman_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.peminjaman_id_seq', 113, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 54, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- Name: buku buku_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id);


--
-- Name: detail_peminjaman detail_peminjaman_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.detail_peminjaman
    ADD CONSTRAINT detail_peminjaman_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: peminjaman peminjaman_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.peminjaman
    ADD CONSTRAINT peminjaman_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

