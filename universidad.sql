--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-06-23 21:53:49

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
-- TOC entry 230 (class 1259 OID 16887)
-- Name: alumno_se_matricula_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumno_se_matricula_asignatura (
    id_alumno integer NOT NULL,
    id_asignatura integer NOT NULL,
    id_curso_escolar integer NOT NULL
);


ALTER TABLE public.alumno_se_matricula_asignatura OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16884)
-- Name: alumno_se_matricula_asignatura_id_alumno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumno_se_matricula_asignatura_id_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumno_se_matricula_asignatura_id_alumno_seq OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 227
-- Name: alumno_se_matricula_asignatura_id_alumno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumno_se_matricula_asignatura_id_alumno_seq OWNED BY public.alumno_se_matricula_asignatura.id_alumno;


--
-- TOC entry 228 (class 1259 OID 16885)
-- Name: alumno_se_matricula_asignatura_id_asignatura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumno_se_matricula_asignatura_id_asignatura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumno_se_matricula_asignatura_id_asignatura_seq OWNER TO postgres;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 228
-- Name: alumno_se_matricula_asignatura_id_asignatura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumno_se_matricula_asignatura_id_asignatura_seq OWNED BY public.alumno_se_matricula_asignatura.id_asignatura;


--
-- TOC entry 229 (class 1259 OID 16886)
-- Name: alumno_se_matricula_asignatura_id_curso_escolar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumno_se_matricula_asignatura_id_curso_escolar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumno_se_matricula_asignatura_id_curso_escolar_seq OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 229
-- Name: alumno_se_matricula_asignatura_id_curso_escolar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumno_se_matricula_asignatura_id_curso_escolar_seq OWNED BY public.alumno_se_matricula_asignatura.id_curso_escolar;


--
-- TOC entry 224 (class 1259 OID 16860)
-- Name: asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignatura (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    creditos double precision NOT NULL,
    tipo character varying(20) NOT NULL,
    curso smallint NOT NULL,
    cuatrimestre smallint NOT NULL,
    id_profesor integer,
    id_grado integer NOT NULL,
    CONSTRAINT asignatura_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['básica'::character varying, 'obligatoria'::character varying, 'optativa'::character varying])::text[])))
);


ALTER TABLE public.asignatura OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16859)
-- Name: asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignatura_id_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 223
-- Name: asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asignatura_id_seq OWNED BY public.asignatura.id;


--
-- TOC entry 226 (class 1259 OID 16878)
-- Name: curso_escolar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso_escolar (
    id integer NOT NULL,
    anyo_inicio integer NOT NULL,
    anyo_fin integer NOT NULL
);


ALTER TABLE public.curso_escolar OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16877)
-- Name: curso_escolar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curso_escolar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curso_escolar_id_seq OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 225
-- Name: curso_escolar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_escolar_id_seq OWNED BY public.curso_escolar.id;


--
-- TOC entry 215 (class 1259 OID 16816)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16815)
-- Name: departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamento_id_seq OWNER TO postgres;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 214
-- Name: departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamento_id_seq OWNED BY public.departamento.id;


--
-- TOC entry 222 (class 1259 OID 16853)
-- Name: grado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grado (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.grado OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16852)
-- Name: grado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grado_id_seq OWNER TO postgres;

--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 221
-- Name: grado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grado_id_seq OWNED BY public.grado.id;


--
-- TOC entry 217 (class 1259 OID 16823)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id integer NOT NULL,
    nif character varying(9),
    nombre character varying(25) NOT NULL,
    apellido1 character varying(50) NOT NULL,
    apellido2 character varying(50),
    ciudad character varying(25) NOT NULL,
    direccion character varying(50) NOT NULL,
    telefono character varying(9),
    fecha_nacimiento date NOT NULL,
    sexo character(1) NOT NULL,
    tipo character varying(15) NOT NULL,
    CONSTRAINT persona_sexo_check CHECK ((sexo = ANY (ARRAY['H'::bpchar, 'M'::bpchar]))),
    CONSTRAINT persona_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['profesor'::character varying, 'alumno'::character varying])::text[])))
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16822)
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_seq OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 216
-- Name: persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;


--
-- TOC entry 220 (class 1259 OID 16835)
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor (
    id_profesor integer NOT NULL,
    id_departamento integer NOT NULL
);


ALTER TABLE public.profesor OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16834)
-- Name: profesor_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesor_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesor_id_departamento_seq OWNER TO postgres;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 219
-- Name: profesor_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesor_id_departamento_seq OWNED BY public.profesor.id_departamento;


--
-- TOC entry 218 (class 1259 OID 16833)
-- Name: profesor_id_profesor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesor_id_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesor_id_profesor_seq OWNER TO postgres;

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 218
-- Name: profesor_id_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesor_id_profesor_seq OWNED BY public.profesor.id_profesor;


--
-- TOC entry 3213 (class 2604 OID 16890)
-- Name: alumno_se_matricula_asignatura id_alumno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura ALTER COLUMN id_alumno SET DEFAULT nextval('public.alumno_se_matricula_asignatura_id_alumno_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 16891)
-- Name: alumno_se_matricula_asignatura id_asignatura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura ALTER COLUMN id_asignatura SET DEFAULT nextval('public.alumno_se_matricula_asignatura_id_asignatura_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 16892)
-- Name: alumno_se_matricula_asignatura id_curso_escolar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura ALTER COLUMN id_curso_escolar SET DEFAULT nextval('public.alumno_se_matricula_asignatura_id_curso_escolar_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 16863)
-- Name: asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura ALTER COLUMN id SET DEFAULT nextval('public.asignatura_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 16881)
-- Name: curso_escolar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_escolar ALTER COLUMN id SET DEFAULT nextval('public.curso_escolar_id_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 16819)
-- Name: departamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento ALTER COLUMN id SET DEFAULT nextval('public.departamento_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 16856)
-- Name: grado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado ALTER COLUMN id SET DEFAULT nextval('public.grado_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 16826)
-- Name: persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 16838)
-- Name: profesor id_profesor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesor_id_profesor_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 16839)
-- Name: profesor id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor ALTER COLUMN id_departamento SET DEFAULT nextval('public.profesor_id_departamento_seq'::regclass);


--
-- TOC entry 3400 (class 0 OID 16887)
-- Dependencies: 230
-- Data for Name: alumno_se_matricula_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) FROM stdin;
1	1	1
1	2	1
1	3	1
2	1	1
2	2	1
2	3	1
4	1	1
4	2	1
4	3	1
24	1	5
24	2	5
24	3	5
24	4	5
24	5	5
24	6	5
24	7	5
24	8	5
24	9	5
24	10	5
23	1	5
23	2	5
23	3	5
23	4	5
23	5	5
23	6	5
23	7	5
23	8	5
23	9	5
23	10	5
19	1	5
19	2	5
19	3	5
19	4	5
19	5	5
19	6	5
19	7	5
19	8	5
19	9	5
19	10	5
\.


--
-- TOC entry 3394 (class 0 OID 16860)
-- Dependencies: 224
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignatura (id, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) FROM stdin;
1	Álgegra lineal y matemática discreta	6	básica	1	1	3	4
2	Cálculo	6	básica	1	1	14	4
3	Física para informática	6	básica	1	1	3	4
4	Introducción a la programación	6	básica	1	1	14	4
5	Organización y gestión de empresas	6	básica	1	1	3	4
6	Estadística	6	básica	1	2	14	4
7	Estructura y tecnología de computadores	6	básica	1	2	3	4
8	Fundamentos de electrónica	6	básica	1	2	14	4
9	Lógica y algorítmica	6	básica	1	2	3	4
10	Metodología de la programación	6	básica	1	2	14	4
11	Arquitectura de Computadores	6	básica	2	1	3	4
12	Estructura de Datos y Algoritmos I	6	obligatoria	2	1	3	4
13	Ingeniería del Software	6	obligatoria	2	1	14	4
14	Sistemas Inteligentes	6	obligatoria	2	1	3	4
15	Sistemas Operativos	6	obligatoria	2	1	14	4
16	Bases de Datos	6	básica	2	2	14	4
17	Estructura de Datos y Algoritmos II	6	obligatoria	2	2	14	4
18	Fundamentos de Redes de Computadores	6	obligatoria	2	2	3	4
19	Planificación y Gestión de Proyectos Informáticos	6	obligatoria	2	2	3	4
20	Programación de Servicios Software	6	obligatoria	2	2	14	4
21	Desarrollo de interfaces de usuario	6	obligatoria	3	1	14	4
22	Ingeniería de Requisitos	6	optativa	3	1	\N	4
23	Integración de las Tecnologías de la Información en las Organizaciones	6	optativa	3	1	\N	4
24	Modelado y Diseño del Software 1	6	optativa	3	1	\N	4
25	Multiprocesadores	6	optativa	3	1	\N	4
26	Seguridad y cumplimiento normativo	6	optativa	3	1	\N	4
27	Sistema de Información para las Organizaciones	6	optativa	3	1	\N	4
28	Tecnologías web	6	optativa	3	1	\N	4
29	Teoría de códigos y criptografía	6	optativa	3	1	\N	4
30	Administración de bases de datos	6	optativa	3	2	\N	4
31	Herramientas y Métodos de Ingeniería del Software	6	optativa	3	2	\N	4
32	Informática industrial y robótica	6	optativa	3	2	\N	4
33	Ingeniería de Sistemas de Información	6	optativa	3	2	\N	4
34	Modelado y Diseño del Software 2	6	optativa	3	2	\N	4
35	Negocio Electrónico	6	optativa	3	2	\N	4
36	Periféricos e interfaces	6	optativa	3	2	\N	4
37	Sistemas de tiempo real	6	optativa	3	2	\N	4
38	Tecnologías de acceso a red	6	optativa	3	2	\N	4
39	Tratamiento digital de imágenes	6	optativa	3	2	\N	4
40	Administración de redes y sistemas operativos	6	optativa	4	1	\N	4
41	Almacenes de Datos	6	optativa	4	1	\N	4
42	Fiabilidad y Gestión de Riesgos	6	optativa	4	1	\N	4
43	Líneas de Productos Software	6	optativa	4	1	\N	4
44	Procesos de Ingeniería del Software 1	6	optativa	4	1	\N	4
45	Tecnologías multimedia	6	optativa	4	1	\N	4
46	Análisis y planificación de las TI	6	optativa	4	2	\N	4
47	Desarrollo Rápido de Aplicaciones	6	optativa	4	2	\N	4
48	Gestión de la Calidad y de la Innovación Tecnológica	6	optativa	4	2	\N	4
49	Inteligencia del Negocio	6	optativa	4	2	\N	4
50	Procesos de Ingeniería del Software 2	6	optativa	4	2	\N	4
51	Seguridad Informática	6	optativa	4	2	\N	4
52	Biologia celular	6	básica	1	1	\N	7
53	Física	6	básica	1	1	\N	7
54	Matemáticas I	6	básica	1	1	\N	7
55	Química general	6	básica	1	1	\N	7
56	Química orgánica	6	básica	1	1	\N	7
57	Biología vegetal y animal	6	básica	1	2	\N	7
58	Bioquímica	6	básica	1	2	\N	7
59	Genética	6	básica	1	2	\N	7
60	Matemáticas II	6	básica	1	2	\N	7
61	Microbiología	6	básica	1	2	\N	7
62	Botánica agrícola	6	obligatoria	2	1	\N	7
63	Fisiología vegetal	6	obligatoria	2	1	\N	7
64	Genética molecular	6	obligatoria	2	1	\N	7
65	Ingeniería bioquímica	6	obligatoria	2	1	\N	7
66	Termodinámica y cinética química aplicada	6	obligatoria	2	1	\N	7
67	Biorreactores	6	obligatoria	2	2	\N	7
68	Biotecnología microbiana	6	obligatoria	2	2	\N	7
69	Ingeniería genética	6	obligatoria	2	2	\N	7
70	Inmunología	6	obligatoria	2	2	\N	7
71	Virología	6	obligatoria	2	2	\N	7
72	Bases moleculares del desarrollo vegetal	4.5	obligatoria	3	1	\N	7
73	Fisiología animal	4.5	obligatoria	3	1	\N	7
74	Metabolismo y biosíntesis de biomoléculas	6	obligatoria	3	1	\N	7
75	Operaciones de separación	6	obligatoria	3	1	\N	7
76	Patología molecular de plantas	4.5	obligatoria	3	1	\N	7
77	Técnicas instrumentales básicas	4.5	obligatoria	3	1	\N	7
78	Bioinformática	4.5	obligatoria	3	2	\N	7
79	Biotecnología de los productos hortofrutículas	4.5	obligatoria	3	2	\N	7
80	Biotecnología vegetal	6	obligatoria	3	2	\N	7
81	Genómica y proteómica	4.5	obligatoria	3	2	\N	7
82	Procesos biotecnológicos	6	obligatoria	3	2	\N	7
83	Técnicas instrumentales avanzadas	4.5	obligatoria	3	2	\N	7
\.


--
-- TOC entry 3396 (class 0 OID 16878)
-- Dependencies: 226
-- Data for Name: curso_escolar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso_escolar (id, anyo_inicio, anyo_fin) FROM stdin;
1	2014	2015
2	2015	2016
3	2016	2017
4	2017	2018
5	2018	2019
\.


--
-- TOC entry 3385 (class 0 OID 16816)
-- Dependencies: 215
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamento (id, nombre) FROM stdin;
1	Informática
2	Matemáticas
3	Economía y Empresa
4	Educación
5	Agronomía
6	Química y Física
7	Filología
8	Derecho
9	Biología y Geología
\.


--
-- TOC entry 3392 (class 0 OID 16853)
-- Dependencies: 222
-- Data for Name: grado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grado (id, nombre) FROM stdin;
1	Grado en Ingeniería Agrícola (Plan 2015)
2	Grado en Ingeniería Eléctrica (Plan 2014)
3	Grado en Ingeniería Electrónica Industrial (Plan 2010)
4	Grado en Ingeniería Informática (Plan 2015)
5	Grado en Ingeniería Mecánica (Plan 2010)
6	Grado en Ingeniería Química Industrial (Plan 2010)
7	Grado en Biotecnología (Plan 2015)
8	Grado en Ciencias Ambientales (Plan 2009)
9	Grado en Matemáticas (Plan 2010)
10	Grado en Química (Plan 2009)
\.


--
-- TOC entry 3387 (class 0 OID 16823)
-- Dependencies: 217
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, tipo) FROM stdin;
1	26902806M	Salvador	Sánchez	Pérez	Almería	C/ Real del barrio alto	950254837	1991-03-28	H	alumno
2	89542419S	Juan	Saez	Vega	Almería	C/ Mercurio	618253876	1992-08-08	H	alumno
3	11105554G	Zoe	Ramirez	Gea	Almería	C/ Marte	618223876	1979-08-19	M	profesor
4	17105885A	Pedro	Heller	Pagac	Almería	C/ Estrella fugaz	\N	2000-10-05	H	alumno
5	38223286T	David	Schmidt	Fisher	Almería	C/ Venus	678516294	1978-01-19	H	profesor
6	04233869Y	José	Koss	Bayer	Almería	C/ Júpiter	628349590	1998-01-28	H	alumno
7	97258166K	Ismael	Strosin	Turcotte	Almería	C/ Neptuno	\N	1999-05-24	H	alumno
8	79503962T	Cristina	Lemke	Rutherford	Almería	C/ Saturno	669162534	1977-08-21	M	profesor
9	82842571K	Ramón	Herzog	Tremblay	Almería	C/ Urano	626351429	1996-11-21	H	alumno
10	61142000L	Esther	Spencer	Lakin	Almería	C/ Plutón	\N	1977-05-19	M	profesor
11	46900725E	Daniel	Herman	Pacocha	Almería	C/ Andarax	679837625	1997-04-26	H	alumno
12	85366986W	Carmen	Streich	Hirthe	Almería	C/ Almanzora	\N	1971-04-29	M	profesor
13	73571384L	Alfredo	Stiedemann	Morissette	Almería	C/ Guadalquivir	950896725	1980-02-01	H	profesor
14	82937751G	Manolo	Hamill	Kozey	Almería	C/ Duero	950263514	1977-01-02	H	profesor
15	80502866Z	Alejandro	Kohler	Schoen	Almería	C/ Tajo	668726354	1980-03-14	H	profesor
16	10485008K	Antonio	Fahey	Considine	Almería	C/ Sierra de los Filabres	\N	1982-03-18	H	profesor
17	85869555K	Guillermo	Ruecker	Upton	Almería	C/ Sierra de Gádor	\N	1973-05-05	H	profesor
18	04326833G	Micaela	Monahan	Murray	Almería	C/ Veleta	662765413	1976-02-25	H	profesor
19	11578526G	Inma	Lakin	Yundt	Almería	C/ Picos de Europa	678652431	1998-09-01	M	alumno
20	79221403L	Francesca	Schowalter	Muller	Almería	C/ Quinto pino	\N	1980-10-31	H	profesor
21	79089577Y	Juan	Gutiérrez	López	Almería	C/ Los pinos	678652431	1998-01-01	H	alumno
22	41491230N	Antonio	Domínguez	Guerrero	Almería	C/ Cabo de Gata	626652498	1999-02-11	H	alumno
23	64753215G	Irene	Hernández	Martínez	Almería	C/ Zapillo	628452384	1996-03-12	M	alumno
24	85135690V	Sonia	Gea	Ruiz	Almería	C/ Mercurio	678812017	1995-04-13	M	alumno
\.


--
-- TOC entry 3390 (class 0 OID 16835)
-- Dependencies: 220
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (id_profesor, id_departamento) FROM stdin;
3	1
5	2
8	3
10	4
12	4
13	6
14	1
15	2
16	3
17	4
18	5
20	6
\.


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 227
-- Name: alumno_se_matricula_asignatura_id_alumno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumno_se_matricula_asignatura_id_alumno_seq', 1, false);


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 228
-- Name: alumno_se_matricula_asignatura_id_asignatura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumno_se_matricula_asignatura_id_asignatura_seq', 1, false);


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 229
-- Name: alumno_se_matricula_asignatura_id_curso_escolar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumno_se_matricula_asignatura_id_curso_escolar_seq', 1, false);


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 223
-- Name: asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asignatura_id_seq', 1, false);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 225
-- Name: curso_escolar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_escolar_id_seq', 1, false);


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 214
-- Name: departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamento_id_seq', 1, false);


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 221
-- Name: grado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grado_id_seq', 1, false);


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 216
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_seq', 1, false);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 219
-- Name: profesor_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesor_id_departamento_seq', 1, false);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 218
-- Name: profesor_id_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesor_id_profesor_seq', 1, false);


--
-- TOC entry 3234 (class 2606 OID 16894)
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_pkey PRIMARY KEY (id_alumno, id_asignatura, id_curso_escolar);


--
-- TOC entry 3230 (class 2606 OID 16866)
-- Name: asignatura asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16883)
-- Name: curso_escolar curso_escolar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_escolar
    ADD CONSTRAINT curso_escolar_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 16821)
-- Name: departamento departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 16858)
-- Name: grado grado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado
    ADD CONSTRAINT grado_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16832)
-- Name: persona persona_nif_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_nif_key UNIQUE (nif);


--
-- TOC entry 3224 (class 2606 OID 16830)
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16841)
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (id_profesor);


--
-- TOC entry 3239 (class 2606 OID 16895)
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_id_alumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_id_alumno_fkey FOREIGN KEY (id_alumno) REFERENCES public.persona(id);


--
-- TOC entry 3240 (class 2606 OID 16900)
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_id_asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_id_asignatura_fkey FOREIGN KEY (id_asignatura) REFERENCES public.asignatura(id);


--
-- TOC entry 3241 (class 2606 OID 16905)
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_id_curso_escolar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_id_curso_escolar_fkey FOREIGN KEY (id_curso_escolar) REFERENCES public.curso_escolar(id);


--
-- TOC entry 3237 (class 2606 OID 16872)
-- Name: asignatura asignatura_id_grado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_id_grado_fkey FOREIGN KEY (id_grado) REFERENCES public.grado(id);


--
-- TOC entry 3238 (class 2606 OID 16867)
-- Name: asignatura asignatura_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesor(id_profesor);


--
-- TOC entry 3235 (class 2606 OID 16847)
-- Name: profesor profesor_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id);


--
-- TOC entry 3236 (class 2606 OID 16842)
-- Name: profesor profesor_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.persona(id);


-- Completed on 2023-06-23 21:53:50

--
-- PostgreSQL database dump complete
--

