--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-15 16:32:35

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
-- TOC entry 214 (class 1259 OID 16498)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    nome character varying[],
    id_func integer[] NOT NULL,
    carteirat integer[],
    contrato integer[],
    id_gerente integer[],
    id_supervisor integer[]
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16505)
-- Name: veiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veiculo (
    cod_veic integer[] NOT NULL,
    n_doc integer[],
    id_func integer[],
    modelo character varying[],
    placa character varying[],
    cor character varying[],
    data_retirada character varying[],
    data_devolucao character varying[]
);


ALTER TABLE public.veiculo OWNER TO postgres;

--
-- TOC entry 3323 (class 0 OID 16498)
-- Dependencies: 214
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3324 (class 0 OID 16505)
-- Dependencies: 215
-- Data for Name: veiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3177 (class 2606 OID 16504)
-- Name: funcionario funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id_func);


--
-- TOC entry 3179 (class 2606 OID 16511)
-- Name: veiculo veiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT veiculo_pkey PRIMARY KEY (cod_veic);


--
-- TOC entry 3180 (class 2606 OID 16512)
-- Name: veiculo veiculofk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT veiculofk1 FOREIGN KEY (id_func) REFERENCES public.funcionario(id_func);


-- Completed on 2022-12-15 16:32:35

--
-- PostgreSQL database dump complete
--

