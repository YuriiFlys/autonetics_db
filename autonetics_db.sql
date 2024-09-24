--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: invoicedetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoicedetails (
    invoice_detail_id integer NOT NULL,
    invoice_id integer,
    subscription_id integer,
    quantity integer
);


ALTER TABLE public.invoicedetails OWNER TO postgres;

--
-- Name: invoicedetails_invoice_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoicedetails_invoice_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.invoicedetails_invoice_detail_id_seq OWNER TO postgres;

--
-- Name: invoicedetails_invoice_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoicedetails_invoice_detail_id_seq OWNED BY public.invoicedetails.invoice_detail_id;


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices (
    invoice_id integer NOT NULL,
    supermarket_id integer,
    invoice_date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.invoices OWNER TO postgres;

--
-- Name: invoices_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoices_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.invoices_invoice_id_seq OWNER TO postgres;

--
-- Name: invoices_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoices_invoice_id_seq OWNED BY public.invoices.invoice_id;


--
-- Name: offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offices (
    office_id integer NOT NULL,
    supermarket_id integer,
    address character varying(255),
    city character varying(100),
    country character varying(100)
);


ALTER TABLE public.offices OWNER TO postgres;

--
-- Name: offices_office_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.offices_office_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.offices_office_id_seq OWNER TO postgres;

--
-- Name: offices_office_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.offices_office_id_seq OWNED BY public.offices.office_id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscriptions (
    subscription_id integer NOT NULL,
    subscription_name character varying(100),
    price numeric(10,2)
);


ALTER TABLE public.subscriptions OWNER TO postgres;

--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscriptions_subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscriptions_subscription_id_seq OWNER TO postgres;

--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscriptions_subscription_id_seq OWNED BY public.subscriptions.subscription_id;


--
-- Name: supermarketdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supermarketdetails (
    supermarket_id integer NOT NULL,
    founded_date date,
    ceo_name character varying(100)
);


ALTER TABLE public.supermarketdetails OWNER TO postgres;

--
-- Name: supermarkets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supermarkets (
    supermarket_id integer NOT NULL,
    name character varying(100),
    email character varying(100)
);


ALTER TABLE public.supermarkets OWNER TO postgres;

--
-- Name: supermarkets_supermarket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supermarkets_supermarket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supermarkets_supermarket_id_seq OWNER TO postgres;

--
-- Name: supermarkets_supermarket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supermarkets_supermarket_id_seq OWNED BY public.supermarkets.supermarket_id;


--
-- Name: supermarketsubscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supermarketsubscriptions (
    supermarket_id integer NOT NULL,
    subscription_id integer NOT NULL
);


ALTER TABLE public.supermarketsubscriptions OWNER TO postgres;

--
-- Name: invoicedetails invoice_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoicedetails ALTER COLUMN invoice_detail_id SET DEFAULT nextval('public.invoicedetails_invoice_detail_id_seq'::regclass);


--
-- Name: invoices invoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices ALTER COLUMN invoice_id SET DEFAULT nextval('public.invoices_invoice_id_seq'::regclass);


--
-- Name: offices office_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices ALTER COLUMN office_id SET DEFAULT nextval('public.offices_office_id_seq'::regclass);


--
-- Name: subscriptions subscription_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN subscription_id SET DEFAULT nextval('public.subscriptions_subscription_id_seq'::regclass);


--
-- Name: supermarkets supermarket_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarkets ALTER COLUMN supermarket_id SET DEFAULT nextval('public.supermarkets_supermarket_id_seq'::regclass);


--
-- Data for Name: invoicedetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoicedetails (invoice_detail_id, invoice_id, subscription_id, quantity) FROM stdin;
1	1	1	10
2	2	2	5
3	3	3	2
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoices (invoice_id, supermarket_id, invoice_date) FROM stdin;
1	1	2024-09-11
2	2	2024-09-11
3	3	2024-09-11
\.


--
-- Data for Name: offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offices (office_id, supermarket_id, address, city, country) FROM stdin;
1	1	вул. Бульварно-Кудрявська 15	Київ	Україна
2	2	вул. Набережна 12	Дніпро	Україна
3	3	вул. Зелена 89	Львів	Україна
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriptions (subscription_id, subscription_name, price) FROM stdin;
1	Базова підписка	299.99
2	Стандартна підписка	499.99
3	Преміум підписка	799.99
\.


--
-- Data for Name: supermarketdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supermarketdetails (supermarket_id, founded_date, ceo_name) FROM stdin;
1	1997-01-01	Володимир Костельман
2	2000-03-15	Геннадій Буткевич
3	2010-07-21	Олександр Бережанський
\.


--
-- Data for Name: supermarkets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supermarkets (supermarket_id, name, email) FROM stdin;
1	Сільпо	silpo@company.com
2	АТБ	atb@company.com
3	Близенько	blyzenko@company.com
\.


--
-- Data for Name: supermarketsubscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supermarketsubscriptions (supermarket_id, subscription_id) FROM stdin;
1	1
1	2
2	2
3	3
\.


--
-- Name: invoicedetails_invoice_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoicedetails_invoice_detail_id_seq', 3, true);


--
-- Name: invoices_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_invoice_id_seq', 3, true);


--
-- Name: offices_office_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offices_office_id_seq', 3, true);


--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriptions_subscription_id_seq', 3, true);


--
-- Name: supermarkets_supermarket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supermarkets_supermarket_id_seq', 3, true);


--
-- Name: invoicedetails invoicedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoicedetails
    ADD CONSTRAINT invoicedetails_pkey PRIMARY KEY (invoice_detail_id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (invoice_id);


--
-- Name: offices offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_pkey PRIMARY KEY (office_id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (subscription_id);


--
-- Name: supermarketdetails supermarketdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarketdetails
    ADD CONSTRAINT supermarketdetails_pkey PRIMARY KEY (supermarket_id);


--
-- Name: supermarkets supermarkets_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarkets
    ADD CONSTRAINT supermarkets_email_key UNIQUE (email);


--
-- Name: supermarkets supermarkets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarkets
    ADD CONSTRAINT supermarkets_pkey PRIMARY KEY (supermarket_id);


--
-- Name: supermarketsubscriptions supermarketsubscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarketsubscriptions
    ADD CONSTRAINT supermarketsubscriptions_pkey PRIMARY KEY (supermarket_id, subscription_id);


--
-- Name: invoicedetails invoicedetails_invoice_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoicedetails
    ADD CONSTRAINT invoicedetails_invoice_id_fkey FOREIGN KEY (invoice_id) REFERENCES public.invoices(invoice_id) ON DELETE CASCADE;


--
-- Name: invoicedetails invoicedetails_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoicedetails
    ADD CONSTRAINT invoicedetails_subscription_id_fkey FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(subscription_id);


--
-- Name: invoices invoices_supermarket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_supermarket_id_fkey FOREIGN KEY (supermarket_id) REFERENCES public.supermarkets(supermarket_id) ON DELETE CASCADE;


--
-- Name: offices offices_supermarket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_supermarket_id_fkey FOREIGN KEY (supermarket_id) REFERENCES public.supermarkets(supermarket_id) ON DELETE CASCADE;


--
-- Name: supermarketdetails supermarketdetails_supermarket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarketdetails
    ADD CONSTRAINT supermarketdetails_supermarket_id_fkey FOREIGN KEY (supermarket_id) REFERENCES public.supermarkets(supermarket_id) ON DELETE CASCADE;


--
-- Name: supermarketsubscriptions supermarketsubscriptions_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarketsubscriptions
    ADD CONSTRAINT supermarketsubscriptions_subscription_id_fkey FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(subscription_id) ON DELETE CASCADE;


--
-- Name: supermarketsubscriptions supermarketsubscriptions_supermarket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermarketsubscriptions
    ADD CONSTRAINT supermarketsubscriptions_supermarket_id_fkey FOREIGN KEY (supermarket_id) REFERENCES public.supermarkets(supermarket_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

