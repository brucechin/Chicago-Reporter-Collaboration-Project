--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: settlement_officer_info; Type: TABLE; Schema: public; Owner: jennie
--

CREATE TABLE public.settlement_officer_info (
    id integer NOT NULL,
    local_id character varying,
    officer_name character varying,
    badge_number character varying(10),
    rank character varying,
    cpdb_id integer,
    first_name character varying,
    last_name character varying,
    appointed timestamp without time zone,
    resigned timestamp without time zone
);


ALTER TABLE public.settlement_officer_info OWNER TO jennie;

--
-- Name: officer_id_seq; Type: SEQUENCE; Schema: public; Owner: jennie
--

CREATE SEQUENCE public.officer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.officer_id_seq OWNER TO jennie;

--
-- Name: officer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jennie
--

ALTER SEQUENCE public.officer_id_seq OWNED BY public.settlement_officer_info.id;


--
-- Name: settlement_officer_info id; Type: DEFAULT; Schema: public; Owner: jennie
--

ALTER TABLE ONLY public.settlement_officer_info ALTER COLUMN id SET DEFAULT nextval('public.officer_id_seq'::regclass);


--
-- Data for Name: settlement_officer_info; Type: TABLE DATA; Schema: public; Owner: jennie
--

COPY public.settlement_officer_info (id, local_id, officer_name, badge_number, rank, cpdb_id, first_name, last_name, appointed, resigned) FROM stdin;
266	29515	Aaron Acevedo	7792	Police Officer	56	Aaron	Acevedo	2009-12-16 00:00:00	\N
1439	21909	Edmund Beazley Jr	21190	Po As Detective	1620	Edmund	Beazley Jr	1996-05-06 00:00:00	\N
124	29193	Daniel Blackman	7954	Police Officer	2097	Daniel	Blackman	2007-08-27 00:00:00	\N
1644	21300	Brian Gibbons	21019	Po As Detective	9900	Brian	Gibbons	1995-07-10 00:00:00	\N
1532	22593	Mahmoud Haleem	14193	Police Officer	11190	Mahmoud	Haleem	1997-05-05 00:00:00	\N
982	19749	Wadell Hardy  Iii	12385	Police Officer	11413	Wadell	Hardy  Iii	1993-12-13 00:00:00	\N
1935	22938	John Haritos	16873	Police Officer	11426	John	Haritos	1997-09-02 00:00:00	\N
484	18032	Armand Heard	6986	Police Officer	11822	Armand	Heard	1991-01-30 00:00:00	\N
2167	19450	John Hillmann	20753	Po As Detective	12261	John	Hillmann	1993-05-17 00:00:00	\N
640	21839	Jeremiah Hines	20856	Po As Detective	12272	Jeremiah	Hines	1996-03-18 00:00:00	\N
1755	27501	Joe Holt	3373	Sergeant Of Police	12480	Joe	Holt	2004-10-25 00:00:00	\N
731	28397	Dennis Huberts Jr	9883	Police Officer	12691	Dennis	Huberts Jr	2006-05-01 00:00:00	\N
149	24980	Erick Seng	\N	Police Officer	25983	Erick	Seng	2000-02-28 00:00:00	\N
184	20607	Allen Finley	\N	Sergeant Of Police	8537	Allen	Finley	1994-10-03 00:00:00	\N
489	27809	Ricardo Soto	\N	Police Officer	27074	Ricardo	Soto	2005-01-03 00:00:00	\N
766	19600	Gregory Gray	\N	Police Officer	10628	Gregory	Gray	1993-11-22 00:00:00	2014-12-01 00:00:00
880	25224	John Foertsch	\N	Police Officer	8852	John	Foertsch	2000-09-11 00:00:00	\N
882	25360	Haytham Mohammad	\N	Police Officer	19329	Haytham	Mohammad	2000-10-10 00:00:00	\N
930	25295	Jeffrey Weber	\N	Police Officer	30277	Jeffrey	Weber	2000-09-11 00:00:00	\N
1279	13799	Harold Bone	4476	Police Officer	2356	Harold	Bone	1982-03-01 00:00:00	\N
1359	28196	Michael Salyers	\N	Sergeant Of Police	25237	Michael	Salyers	2005-12-05 00:00:00	\N
1566	22627	Chau Ngo	\N	Sergeant Of Police	20463	Chau	Ngo	1997-05-05 00:00:00	\N
1567	27197	Oommen Sleeba	\N	Police Officer	32343	Oommen	Sleeba	2003-11-24 00:00:00	\N
1680	29151	Omar Gomez Farringto	\N	Police Officer	10273	Omar	Gomez Farringto	2007-07-30 00:00:00	\N
1782	26198	Kenneth Adair	4145	Po/Marine Officer	81	Kenneth	Adair	2002-02-25 00:00:00	\N
135	26498	David Adcock	6673	Po/Field Trning Off	135	David	Adcock	2002-09-30 00:00:00	\N
1910	23184	Thomas Barnes	8426	Police Officer	1344	Thomas	Barnes	1998-05-26 00:00:00	\N
1884	28769	Jason Barnes	8485	Police Officer	1349	Jason	Barnes	2006-11-27 00:00:00	\N
265	23436	Daniel Murphy	\N	Police Officer	20063	Daniel	Murphy	1998-07-27 00:00:00	\N
2216	20334	James Chevas Ii	\N	Police Officer	4495	James	Chevas Ii	1994-08-01 00:00:00	2007-01-02 00:00:00
1696	24286	Chad Bauman	15110	Police Officer	1553	Chad	Bauman	1999-09-13 00:00:00	\N
1590	20603	Larry Ellison	18456	Police Officer	7915	Larry	Ellison	1994-10-03 00:00:00	2017-01-17 00:00:00
974	29018	Nicholas Harris	13064	Police Officer	11511	Nicholas	Harris	2007-04-30 00:00:00	\N
1254	24837	Roberta Honeycutt	4428	Po/Field Trning Off	12503	Roberta	Honeycutt	2000-01-24 00:00:00	\N
1025	19759	Terrence Jackson	13446	Police Officer	13055	Terrence	Jackson	1993-12-13 00:00:00	\N
256	30004	Scott Rooney	\N	Po As Detective	24628	Scott	Rooney	2012-10-05 00:00:00	\N
380	13952	Manuel Godinez	\N	Police Officer	10166	Manuel	Godinez	1982-06-14 00:00:00	\N
582	19971	Donald Markham	\N	Sergeant Of Police	32155	Donald	Markham	1994-05-02 00:00:00	\N
619	28933	Vincent Vasquez	2664	Police Officer	29403	Vincent	Vasquez	2006-12-18 00:00:00	\N
644	20025	Raymond Urbanski	\N	Police Officer	29166	Raymond	Urbanski	1994-05-02 00:00:00	\N
689	22440	Angel Amador	\N	Police Officer	31801	Angel	Amador	1997-03-17 00:00:00	\N
744	23409	Roger Fieser	\N	Police Officer	8481	Roger	Fieser	1998-07-27 00:00:00	2014-08-04 00:00:00
879	19842	Kenneth Wojtan	8458	Police Officer	31119	Kenneth	Wojtan	1993-12-13 00:00:00	2017-01-15 00:00:00
988	28254	Michael Jankovic	\N	Police Officer	13263	Michael	Jankovic	2006-01-23 00:00:00	\N
1065	23511	Sheila O Connor	9338	Po As Detective	20851	Sheila	O Connor	1998-08-31 00:00:00	\N
1069	14647	Cynthia Rodriguez	\N	Po As Detective	24344	Cynthia	Rodriguez	1985-05-06 00:00:00	2012-05-15 00:00:00
1091	26375	Zachary Rubald	114540	Police Officer	32307	Zachary	Rubald	2002-04-29 00:00:00	\N
1197	23572	Joseph Mark	\N	Lieutenant Of Police	17358	Joseph	Mark	1998-09-28 00:00:00	\N
1243	22298	Roderick Watson	\N	Sergeant Of Police	30199	Roderick	Watson	1996-11-04 00:00:00	\N
1563	22237	Michael Lattanzio	\N	Police Officer	15770	Michael	Lattanzio	1996-11-04 00:00:00	\N
1631	28807	Marquis Landon	1625	Police Officer	15629	Marquis	Landon	2006-11-27 00:00:00	\N
1957	17005	Gary Kussmann	\N	Police Officer	15441	Gary	Kussmann	1988-12-05 00:00:00	2014-12-15 00:00:00
1996	26695	Demetrios Haleas	\N	Police Officer	11187	Demetrios	Haleas	2002-12-02 00:00:00	\N
2143	22439	David Adams	2010	Police Officer	119	David	Adams	1997-03-17 00:00:00	2015-03-31 00:00:00
1527	22632	Ruben Ramirez	2487	Police Officer	23389	Ruben	Ramirez	1997-05-05 00:00:00	\N
317	22829	Anthony Martin	\N	Police Officer	17506	Anthony	Martin	1997-08-04 00:00:00	\N
591	22871	Daniel Smith	\N	Police Officer	26790	Daniel	Smith	1997-08-04 00:00:00	\N
275	17064	Thomas Horton	\N	Sergeant Of Police	12554	Thomas	Horton	1989-02-14 00:00:00	2016-05-15 00:00:00
2380	4208	William Marley	\N	Po As Detective	17379	William	Marley	1961-01-09 00:00:00	1993-08-15 00:00:00
2025	25713	Debbie Iza	12957	Sergeant Of Police	13011	Debbie	Iza	2001-04-30 00:00:00	\N
61	17567	Todd Schroeder	\N	Police Officer	25760	Todd	Schroeder	1990-03-26 00:00:00	\N
112	29430	Terrence Pratscher	\N	Police Officer	22946	Terrence	Pratscher	2008-05-19 00:00:00	\N
138	29423	Patricia Martinez	18375	Police Officer	17550	Patricia	Martinez	2008-05-19 00:00:00	\N
187	25093	Hillel Watkins	13375	Police Officer	30155	Hillel	Watkins	2000-06-19 00:00:00	\N
331	23103	Louis Jones	\N	Police Officer	13784	Louis	Jones	1998-03-16 00:00:00	\N
381	24314	John Halerz	\N	Police Officer	11191	John	Halerz	1999-09-13 00:00:00	2016-11-28 00:00:00
415	28155	Steve Jarosz	6348	Sergeant Of Police	13313	Steve	Jarosz	2005-12-05 00:00:00	\N
417	27742	Joseph Gray	97738	Police Officer	10631	Joseph	Gray	2005-01-03 00:00:00	\N
665	17366	Shirley Colvin	\N	Po As Detective	5098	Shirley	Colvin	1990-03-26 00:00:00	2015-04-15 00:00:00
842	23106	Matthew Little	7607	Sergeant Of Police	16337	Matthew	Little	1998-03-16 00:00:00	\N
901	17390	Cesar Echeverria	14372	Police Officer	7734	Cesar	Echeverria	1990-03-26 00:00:00	\N
990	17590	James Sumita	\N	Police Officer	27867	James	Sumita	1990-03-26 00:00:00	\N
1219	29654	Misael Ibarra	\N	Police Officer	12885	Misael	Ibarra	2010-04-22 00:00:00	\N
1324	27702	Marco Villarreal	12864	Police Officer	29613	Marco	Villarreal	2004-11-29 00:00:00	\N
1339	20954	Alan Roberts	51370	Police Officer	24177	Alan	Roberts	1995-01-03 00:00:00	\N
1396	29001	Larry Brezinski	\N	Police Officer	2798	Larry	Brezinski	2007-04-30 00:00:00	\N
1558	13604	Michael Conley	\N	Sergeant Of Police	5137	Michael	Conley	1981-06-08 00:00:00	2010-07-15 00:00:00
1721	26994	Christoph Saladino	\N	Police Officer	25155	Christoph	Saladino	2003-08-25 00:00:00	\N
1871	29250	Robb Gatica	2188	Police Officer	9727	Robb	Gatica	2007-09-24 00:00:00	\N
1933	15921	Denise Donohoe	\N	Police Officer	7150	Denise	Donohoe	1986-11-17 00:00:00	2016-02-15 00:00:00
1939	22381	Ronald Lis	\N	Police Officer	16317	Ronald	Lis	1996-12-02 00:00:00	\N
47	30151	Peter Mcnally	\N	Police Officer	18648	Peter	Mcnally	2012-11-30 00:00:00	\N
50	28137	Matthew Diblich	\N	Police Officer	31922	Matthew	Diblich	2005-12-05 00:00:00	\N
92	16786	Carl Weatherspoon	\N	Police Officer	32413	Carl	Weatherspoon	1988-01-25 00:00:00	\N
123	26624	Patricia Kast	\N	Police Officer	14169	Patricia	Kast	2002-10-28 00:00:00	\N
332	23256	Mathew Cadman	\N	Police Officer	3584	Mathew	Cadman	1998-06-08 00:00:00	\N
436	28160	Michael Kumiga	\N	Sergeant Of Police	15383	Michael	Kumiga	2005-12-05 00:00:00	\N
535	27783	Paul Parks	\N	Police Officer	21868	Paul	Parks	2005-01-03 00:00:00	2014-12-02 00:00:00
734	28122	Timothy Belcik	\N	Police Officer	1695	Timothy	Belcik	2005-12-05 00:00:00	\N
760	27819	Armando Ugarte	\N	Police Officer	32383	Armando	Ugarte	2005-01-03 00:00:00	\N
883	27648	Brian Mcvey	\N	Police Officer	18667	Brian	Mcvey	2004-11-29 00:00:00	\N
894	26950	Rudolph Garza	\N	Police Officer	9699	Rudolph	Garza	2003-08-25 00:00:00	\N
1188	23279	Maria Hernandez	17970	Police Officer	12050	Maria	Hernandez	1998-06-08 00:00:00	\N
1296	29148	Tracey Edwards	\N	Police Officer	31947	Tracey	Edwards	2007-07-30 00:00:00	\N
1448	26682	Jennifer Earls	\N	Police Officer	7699	Jennifer	Earls	2002-12-02 00:00:00	2010-12-18 00:00:00
1495	14687	Elgin Holt	\N	Commander	12479	Elgin	Holt	1985-07-01 00:00:00	\N
1562	27061	Wojciech Lacz	\N	Unknown	15544	Wojciech	Lacz	2003-09-29 00:00:00	\N
2103	22566	Craig Dunderdale	\N	Police Officer	31940	Craig	Dunderdale	1997-05-05 00:00:00	\N
2366	7248	Thomas Byron	\N	Po As Detective	3554	Thomas	Byron	1967-12-18 00:00:00	2010-04-16 00:00:00
2373	1851	Leroy Martin	\N	Unknown	17468	Leroy	Martin	1955-08-22 00:00:00	1992-04-16 00:00:00
2119	18866	John Murray	21123	Po As Detective	20093	John	Murray	1991-12-16 00:00:00	\N
887	26347	Michael Garza	\N	Police Officer	9701	Michael	Garza	2002-04-29 00:00:00	\N
2104	15473	Joseph Gorman	\N	Commander	10442	Joseph	Gorman	1986-08-11 00:00:00	2013-11-30 00:00:00
2282	16546	Thomas Byrne	\N	Chief	3539	Thomas	Byrne	1987-12-07 00:00:00	\N
1637	26566	Robert Roth	\N	Police Officer	24758	Robert	Roth	2002-09-30 00:00:00	\N
2198	22644	Thomas Sherry	\N	Police Officer	26225	Thomas	Sherry	1997-05-05 00:00:00	\N
1824	16565	James Davis	\N	Police Officer	31906	James	Davis	1987-12-07 00:00:00	\N
1531	28193	Richard Rodriguez	\N	Police Officer	24451	Richard	Rodriguez	2005-12-05 00:00:00	\N
1678	23378	Jorge Rivera	\N	Sergeant Of Police	24107	Jorge	Rivera	1998-06-29 00:00:00	\N
927	24088	James Campbell	\N	Po/Field Trning Off	3767	James	Campbell	1999-06-21 00:00:00	\N
2120	25469	Michael Kelly	\N	Po/Mounted Pat Off.	14370	Michael	Kelly	2000-12-18 00:00:00	\N
736	26554	Sherry Odunsi	5855	Police Officer	21189	Sherry	Odunsi	2002-09-30 00:00:00	\N
111	29173	Jorge Mendez Jr	\N	Police Officer	32185	Jorge	Mendez Jr	2007-07-30 00:00:00	\N
1444	21523	Ivory Jackson Jr	\N	Police Officer	13137	Ivory	Jackson Jr	1995-09-05 00:00:00	\N
287	27485	Gonzalo Deluna Jr	12415	Sergeant Of Police	6701	Gonzalo	Deluna Jr	2004-10-25 00:00:00	\N
1785	16416	Abel Gallegos Jr	14887	Po/Exp Det Can Hand	9432	Abel	Gallegos Jr	1987-04-13 00:00:00	2014-05-15 00:00:00
2339	8803	Kenneth Abels	1747	Sergeant Of Police	20	Kenneth	Abels	1970-06-15 00:00:00	2012-02-08 00:00:00
2026	25944	Michael Anderson	3129	Sergeant Of Police	618	Michael	Anderson	2001-08-27 00:00:00	\N
473	25113	Rodolfo Camarillo Jr	7168	Police Officer	3724	Rodolfo	Camarillo Jr	2000-08-14 00:00:00	\N
1529	20186	Edward Carroll	7467	Po As Detective	4013	Edward	Carroll	1994-07-05 00:00:00	\N
1180	28532	Lauren Chudy	13859	Police Officer	4615	Lauren	Chudy	2006-07-31 00:00:00	\N
1420	19416	John Clark	18361	Police Officer	4758	John	Clark	1993-05-17 00:00:00	\N
314	26419	Eric Concialdi	16971	Police Officer	5117	Eric	Concialdi	2002-07-29 00:00:00	\N
1387	29354	Bhakti Dasi	7809	Police Officer	6235	Bhakti	Dasi	2008-04-28 00:00:00	\N
220	30126	Kevin Hawkins	13471	Police Officer	11689	Kevin	Hawkins	2012-11-30 00:00:00	\N
1140	18540	Edward Heidewald	14107	Police Officer	11863	Edward	Heidewald	1991-11-18 00:00:00	\N
248	19692	Donyal Williams	\N	Police Officer	30817	Donyal	Williams	1993-11-22 00:00:00	\N
284	28435	Nicolas Garcia	\N	Police Officer	9579	Nicolas	Garcia	2006-05-22 00:00:00	\N
551	18662	Thomas Dineen	\N	Po As Detective	6944	Thomas	Dineen	1991-12-02 00:00:00	\N
967	28630	Jaeho Jung	\N	Police Officer	13937	Jaeho	Jung	2006-08-28 00:00:00	\N
1827	28996	Fatima Arif-Abraham	3202	Police Officer	826	Fatima	Arif-Abraham	2007-04-30 00:00:00	\N
1839	26054	Danny Salgado	\N	Police Officer	25197	Danny	Salgado	2001-09-24 00:00:00	\N
1941	27153	Bradley Ruzak	\N	Police Officer	32310	Bradley	Ruzak	2003-10-27 00:00:00	\N
2112	27304	Michael Maloney	\N	Police Officer	17159	Michael	Maloney	2004-04-26 00:00:00	\N
2286	14618	Richard Downs	\N	Sergeant Of Police	7292	Richard	Downs	1985-05-06 00:00:00	2011-11-15 00:00:00
1217	20032	Daniel Wyman	\N	Police Officer	31332	Daniel	Wyman	1994-05-02 00:00:00	\N
849	27440	Collis Underwood Jr	\N	Police Officer	29144	Collis	Underwood Jr	2004-09-27 00:00:00	2015-08-28 00:00:00
2287	14680	Anthony Giralamo Jr	\N	Po As Detective	10040	Anthony	Giralamo Jr	1985-07-01 00:00:00	2007-01-23 00:00:00
1464	20560	Armando Silva Jr	\N	Police Officer	32338	Armando	Silva Jr	1994-09-06 00:00:00	\N
2073	26169	Donald Oksanen	\N	Police Officer	21234	Donald	Oksanen	2001-12-17 00:00:00	\N
2116	18316	Kevin White	\N	Police Officer	30474	Kevin	White	1991-04-24 00:00:00	\N
2248	25827	Cedric Campbell	5021	Police Officer	3769	Cedric	Campbell	2001-06-25 00:00:00	\N
2036	28219	Angelica Viteri	14342	Police Officer	880	Angelica	Viteri	2005-12-05 00:00:00	\N
1793	26660	Leo Augle	12848	Police Officer	943	Leo	Augle	2002-12-02 00:00:00	\N
2260	11914	Jerome Bogucki	20668	Po As Detective	2273	Jerome	Bogucki	1976-10-18 00:00:00	2006-11-09 00:00:00
1778	26666	Christoph Bove	8230	Police Officer	2492	Christoph	Bove	2002-12-02 00:00:00	2012-02-20 00:00:00
514	23892	Randall Buford	8958	Police Officer	3244	Randall	Buford	1999-03-08 00:00:00	\N
1334	24291	Donald Carson	18505	Police Officer	4047	Donald	Carson	1999-09-13 00:00:00	\N
385	15658	John Riordan	\N	Captain Of Police	24017	John	Riordan	1986-09-08 00:00:00	\N
649	20330	Michael Casey	191	Lieutenant Of Police	4149	Michael	Casey	1994-08-01 00:00:00	\N
1765	27466	Monty Cassidy	14227	Police Officer	4168	Monty	Cassidy	2004-10-25 00:00:00	\N
211	27849	Dante Clay	17684	Police Officer	4800	Dante	Clay	2005-08-29 00:00:00	\N
896	20337	Kathleen Clyne	9821	Police Officer	4866	Kathleen	Clyne	1994-08-01 00:00:00	\N
1357	17123	Betty Crayton	6119	Po Assgn Traff Spec	5669	Betty	Crayton	1989-12-26 00:00:00	\N
327	26957	Corey Hatter	9607	Police Officer	11646	Corey	Hatter	2003-08-25 00:00:00	\N
1523	23152	Timothy Hayes	7308	Police Officer	11713	Timothy	Hayes	1998-04-13 00:00:00	\N
295	22154	William Murphy	6066	Police Officer	32213	William	Murphy	1996-08-05 00:00:00	\N
2024	13293	Jerry Harper	5783	Police Officer	11463	Jerry	Harper	1980-10-01 00:00:00	2010-06-15 00:00:00
119	20683	Steven Qualls	1380	Police Officer	23202	Steven	Qualls	1994-10-03 00:00:00	\N
231	26346	David Garza	\N	Police Officer	9697	David	Garza	2002-04-29 00:00:00	\N
252	17945	Patrick Glinski	\N	Police Officer	10100	Patrick	Glinski	1991-01-02 00:00:00	\N
506	28368	Brandon Rodekohr	163515	Police Officer	24324	Brandon	Rodekohr	2006-03-27 00:00:00	2015-06-20 00:00:00
1343	26546	Christoph Malenock	\N	Police Officer	17090	Christoph	Malenock	2002-09-30 00:00:00	\N
1497	26724	Paul Sadoski	\N	Police Officer	25120	Paul	Sadoski	2002-12-02 00:00:00	\N
1555	22025	Robert Arnolts	\N	Police Officer	854	Robert	Arnolts	1996-07-08 00:00:00	\N
1660	21173	Anthony Holcomb	\N	Police Officer	12412	Anthony	Holcomb	1995-06-05 00:00:00	\N
1926	26451	Martin Velazquez	13432	Police Officer	29484	Martin	Velazquez	2002-07-29 00:00:00	\N
1988	26569	Jason Santiago	\N	Police Officer	25414	Jason	Santiago	2002-09-30 00:00:00	2014-10-02 00:00:00
2146	27111	Adam Wolbers	\N	Police Officer	31130	Adam	Wolbers	2003-09-29 00:00:00	\N
286	26593	Timothy Balasz	15795	Sergeant Of Police	1148	Timothy	Balasz	2002-10-28 00:00:00	\N
1581	15061	Carlos Delgado	\N	Po/Field Trning Off	6664	Carlos	Delgado	1986-06-16 00:00:00	2012-06-28 00:00:00
1205	21816	Timothy Beran	19651	Po/Exp Det Can Hand	1813	Timothy	Beran	1996-03-18 00:00:00	\N
1142	22030	Keith Berggren	3224	Police Officer	1843	Keith	Berggren	1996-07-08 00:00:00	\N
1843	20323	Cornelius Brown	2235	Sergeant Of Police	3055	Cornelius	Brown	1994-08-01 00:00:00	\N
1808	25118	Michael Collins	16346	Police Officer	5062	Michael	Collins	2000-08-14 00:00:00	\N
2063	22556	Stacey Cotter	2163	Sergeant Of Police	5502	Stacey	Cotter	1997-05-05 00:00:00	\N
1390	18654	Raymond Cowin	1262	Lieutenant Of Police	5566	Raymond	Cowin	1991-12-02 00:00:00	2015-12-15 00:00:00
288	25217	Brian Devan	1589	Sergeant Of Police	6788	Brian	Devan	2000-09-11 00:00:00	\N
1391	15075	Riccardo Erbacci	1166	Sergeant Of Police	7993	Riccardo	Erbacci	1986-06-16 00:00:00	\N
1364	28344	Vincent Foggey	9768	Police Officer	8861	Vincent	Foggey	2006-03-27 00:00:00	2016-03-28 00:00:00
1413	29203	Kyle Gaffney	6245	Police Officer	9322	Kyle	Gaffney	2007-08-27 00:00:00	\N
1172	29252	Steve Gilmour	8694	Police Officer	10017	Steve	Gilmour	2007-09-24 00:00:00	2014-09-24 00:00:00
162	27228	Roman Godinez	7119	Police Officer	10165	Roman	Godinez	2004-01-26 00:00:00	\N
2268	24928	Martha Gomez	12589	Police Officer	10246	Martha	Gomez	2000-02-28 00:00:00	\N
1679	28791	Ricardo Gonzalez	18216	Police Officer	10320	Ricardo	Gonzalez	2006-11-27 00:00:00	\N
1383	23832	Robert Gonzalez	12152	Police Officer	10361	Robert	Gonzalez	1998-12-14 00:00:00	\N
56	23542	Robert Creeth	\N	Sergeant Of Police	5690	Robert	Creeth	1998-09-28 00:00:00	\N
204	29940	Mary Solidum	\N	Police Officer	26979	Mary	Solidum	2012-08-31 00:00:00	\N
277	22756	Scott Slechter	\N	Sergeant Of Police	32342	Scott	Slechter	1997-07-07 00:00:00	\N
607	25230	Patrick Gilmore	\N	Sergeant Of Police	10014	Patrick	Gilmore	2000-09-11 00:00:00	\N
764	29522	Shaunda Bond	\N	Police Officer	2348	Shaunda	Bond	2009-12-16 00:00:00	\N
828	18602	John Schuler	\N	Sergeant Of Police	25772	John	Schuler	1991-11-18 00:00:00	\N
1221	25094	Darrick Williams	\N	Police Officer	30804	Darrick	Williams	2000-06-19 00:00:00	\N
1479	23094	Clark Eichman	\N	Sergeant Of Police	7818	Clark	Eichman	1998-03-16 00:00:00	\N
1625	25489	John Mccarthy	\N	Sergeant Of Police	18537	John	Mccarthy	2000-12-18 00:00:00	\N
1636	28051	Robert Goins	\N	Police Officer	31993	Robert	Goins	2005-10-31 00:00:00	\N
1813	22717	Brock Merck	\N	Police Officer	18859	Brock	Merck	1997-07-07 00:00:00	\N
2077	26749	Georas Wright	\N	Police Officer	31280	Georas	Wright	2002-12-02 00:00:00	2010-03-19 00:00:00
2319	7894	John Paladino	\N	Po As Detective	21657	John	Paladino	1968-07-22 00:00:00	2003-01-15 00:00:00
2351	12753	Jesse Atilano	\N	Police Officer	923	Jesse	Atilano	1978-12-11 00:00:00	2005-01-05 00:00:00
1218	15017	Edward Adams Jr	\N	Sergeant Of Police	127	Edward	Adams Jr	1986-06-16 00:00:00	2011-11-15 00:00:00
554	29481	Jeffery Jones Jr	\N	Police Officer	32088	Jeffery	Jones Jr	2009-03-09 00:00:00	\N
753	25705	Hermogene Del Toro Jr	2853	Po Asgn Evid. Techni	6615	Hermogene	Del Toro Jr	2001-04-30 00:00:00	\N
1275	29339	Aziz Abdelmajeid	14048	Police Officer	16	Aziz	Abdelmajeid	2008-04-28 00:00:00	\N
968	26411	Jason Acevedo	11683	Police Officer	60	Jason	Acevedo	2002-07-29 00:00:00	\N
938	26500	Lisa Alghini	3324	Police Officer	345	Lisa	Alghini	2002-09-30 00:00:00	\N
1297	21706	Lloyd Almdale	20060	Po As Detective	429	Lloyd	Almdale	1995-12-04 00:00:00	\N
869	18482	Michael Andruzzi	20262	Po As Detective	695	Michael	Andruzzi	1991-11-18 00:00:00	\N
1139	26665	Matthew Bouch	10723	Po As Detective	2470	Matthew	Bouch	2002-12-02 00:00:00	\N
616	27276	Raymond Boyd	16303	Sergeant Of Police	2527	Raymond	Boyd	2004-04-26 00:00:00	\N
1015	28870	Jeanette Cegielski	4171	Police Officer	4288	Jeanette	Cegielski	2006-12-18 00:00:00	\N
251	22911	Carl Bradshaw	\N	Police Officer	2616	Carl	Bradshaw	1997-09-02 00:00:00	\N
272	24911	Cynthia Contreras	\N	Police Officer	31889	Cynthia	Contreras	2000-02-28 00:00:00	\N
845	29228	Jessica Sosa	\N	Police Officer	27046	Jessica	Sosa	2007-08-27 00:00:00	\N
1536	27176	Timothy Gorzkowski	\N	Police Officer	32003	Timothy	Gorzkowski	2003-11-24 00:00:00	\N
1762	25404	John Williamson	\N	Police Officer	30883	John	Williamson	2000-10-10 00:00:00	\N
2013	22172	Craig Swistowicz	\N	Police Officer	32363	Craig	Swistowicz	1996-08-05 00:00:00	\N
2111	21189	Alan Lasch	\N	Sergeant Of Police	15739	Alan	Lasch	1995-06-05 00:00:00	\N
2153	24650	Nicholas Evangelides	\N	Po As Detective	8109	Nicholas	Evangelides	1999-11-29 00:00:00	\N
1504	14257	Joseph Boisso	123	Captain Of Police	2287	Joseph	Boisso	1982-11-29 00:00:00	2012-04-28 00:00:00
867	19557	Joseph Brennan	1996	Captain Of Police	2769	Joseph	Brennan	1993-11-22 00:00:00	\N
2165	19581	Randall Darlin	1198	Captain Of Police	6224	Randall	Darlin	1993-11-22 00:00:00	\N
1684	15100	Andre' Hasan	2083	Lieutenant Of Police	11633	Andre'	Hasan	1986-06-16 00:00:00	\N
1830	8265	Thomas Kelly	20229	Po As Detective	14355	Thomas	Kelly	1969-03-03 00:00:00	2009-06-29 00:00:00
307	26770	John Mckenna	14810	Police Officer	18626	John	Mckenna	2003-01-27 00:00:00	\N
1509	26222	Grant Monte	19874	Police Officer	19396	Grant	Monte	2002-02-25 00:00:00	\N
308	27777	Andrew Neberieza	11129	Police Officer	20300	Andrew	Neberieza	2005-01-03 00:00:00	\N
1758	28258	Victor Ramirez	15722	Police Officer	23398	Victor	Ramirez	2006-01-23 00:00:00	\N
1436	18749	Ricardo Reyes	14802	Police Officer	23781	Ricardo	Reyes	1991-12-02 00:00:00	2016-07-04 00:00:00
19	18885	Maurice Richards	612	Lieutenant Of Police	23873	Maurice	Richards	1991-12-16 00:00:00	2015-10-15 00:00:00
2389	10125	Thomas Richardson	3385	Po As Detective	23883	Thomas	Richardson	1972-04-03 00:00:00	2004-11-15 00:00:00
1992	27680	John Rooney	9459	Po As Detective	24625	John	Rooney	2004-11-29 00:00:00	\N
1162	17239	James Sajdak	1058	Sergeant Of Police	25144	James	Sajdak	1989-12-26 00:00:00	\N
1124	27800	Alberto Salaz	11104	Police Officer	25163	Alberto	Salaz	2005-01-03 00:00:00	\N
936	28089	Joaquin Salazar	7007	Police Officer	25166	Joaquin	Salazar	2005-10-31 00:00:00	\N
1	24165	Steven Sautkus	10609	Sergeant Of Police	25491	Steven	Sautkus	1999-06-21 00:00:00	\N
1681	21359	Christ Savickas	5991	Police Officer	25503	Christ	Savickas	1995-07-10 00:00:00	\N
392	27154	Donald Schroeder	16922	Police Officer	25761	Donald	Schroeder	2003-10-27 00:00:00	\N
230	25083	Peter Schumacher	15685	Po/Field Trning Off	25802	Peter	Schumacher	2000-06-19 00:00:00	\N
189	27092	Andrew Schurman	13751	Police Officer	25811	Andrew	Schurman	2003-09-29 00:00:00	\N
197	28798	Esnaf Husic	\N	Police Officer	12845	Esnaf	Husic	2006-11-27 00:00:00	\N
487	25444	Daniel Feliciano	\N	Police Officer	8334	Daniel	Feliciano	2000-12-18 00:00:00	\N
537	27704	Tim Wood	\N	Police Officer	31164	Tim	Wood	2004-11-29 00:00:00	\N
667	27708	Mohammad Yusuf	\N	Police Officer	32435	Mohammad	Yusuf	2004-11-29 00:00:00	\N
847	23339	Wendel Ellis	\N	Police Officer	7902	Wendel	Ellis	1998-06-29 00:00:00	\N
1071	16828	Scott Schwieger	\N	Lieutenant Of Police	25835	Scott	Schwieger	1988-05-02 00:00:00	\N
1319	28178	Maricela Musgraves	\N	Police Officer	32214	Maricela	Musgraves	2005-12-05 00:00:00	\N
1336	28777	Wai Chu	\N	Police Officer	4610	Wai	Chu	2006-11-27 00:00:00	\N
1620	23087	Jason Brandstetter	\N	Police Officer	2676	Jason	Brandstetter	1998-03-16 00:00:00	\N
1977	26827	Jeffrey Mayer	\N	Police Officer	17826	Jeffrey	Mayer	2003-02-24 00:00:00	\N
2010	21812	Fernando Banda	19073	Police Officer	1222	Fernando	Banda	1996-03-18 00:00:00	\N
1541	17772	Kenneth Drayton	1658	Sergeant Of Police	7363	Kenneth	Drayton	1990-08-27 00:00:00	\N
1134	27895	Luigi Miro	\N	Police Officer	19238	Luigi	Miro	2005-08-29 00:00:00	\N
325	27606	Kenneth Flaherty	13584	Police Officer	8668	Kenneth	Flaherty	2004-11-29 00:00:00	\N
1944	27870	Michael Haddad	6937	Sergeant Of Police	11136	Michael	Haddad	2005-08-29 00:00:00	\N
2124	26558	Todd Partyka	10596	Police Officer	21911	Todd	Partyka	2002-09-30 00:00:00	\N
2085	28699	Jose Pelayo	10417	Police Officer	22142	Jose	Pelayo	2006-09-25 00:00:00	\N
477	27421	Ilir Pema	11028	Po/Field Trning Off	22158	Ilir	Pema	2004-09-27 00:00:00	\N
911	23442	Tyrone Pendarvis	19370	Sergeant Of Police	22176	Tyrone	Pendarvis	1998-07-27 00:00:00	\N
907	29514	Armando Perez	8462	Police Officer	22247	Armando	Perez	2009-09-01 00:00:00	\N
1807	26311	David Perez	15791	Police Officer	22270	David	Perez	2002-03-25 00:00:00	\N
678	25924	Eduardo Perez	16937	Police Officer	22276	Eduardo	Perez	2001-07-30 00:00:00	\N
1597	24157	Charlie Person Jr	16501	Police Officer	22337	Charlie	Person Jr	1999-06-21 00:00:00	2012-03-15 00:00:00
1757	21872	Gregory Petit	19978	Police Officer	22389	Gregory	Petit	1996-03-18 00:00:00	2014-05-15 00:00:00
1570	25732	Aaron Petrulis	4695	Police Officer	22410	Aaron	Petrulis	2001-04-30 00:00:00	\N
660	22973	Gregory Pettigrew	9333	Police Officer	22422	Gregory	Pettigrew	1997-09-02 00:00:00	\N
137	29130	Victor Razo	16254	Po As Detective	23537	Victor	Razo	2007-07-09 00:00:00	\N
1105	16486	Joseph Serb	442	Lieutenant Of Police	25999	Joseph	Serb	1987-04-13 00:00:00	2016-04-15 00:00:00
224	26571	Oscar Serrano	2792	Police Officer	26014	Oscar	Serrano	2002-09-30 00:00:00	\N
1461	29039	James Sherlock	10823	Police Officer	26208	James	Sherlock	2007-04-30 00:00:00	\N
1191	26573	Gildardo Sierra	3656	Police Officer	26342	Gildardo	Sierra	2002-09-30 00:00:00	2015-08-25 00:00:00
1752	19373	Tim Silder	18260	Police Officer	26363	Tim	Silder	1992-12-07 00:00:00	\N
913	22995	Daniel Smith	19200	Po As Detective	26688	Daniel	Smith	1997-09-02 00:00:00	\N
239	25186	Michael Smolek	10259	Police Officer	26908	Michael	Smolek	2000-08-14 00:00:00	\N
662	18904	Michael Stiscak	414	Lieutenant Of Police	27575	Michael	Stiscak	1991-12-16 00:00:00	\N
225	19674	Edward Sullins	1205	Sergeant Of Police	27801	Edward	Sullins	1993-11-22 00:00:00	\N
1794	23005	Felix Tomalis Jr	8484	Police Officer	28679	Felix	Tomalis Jr	1997-09-02 00:00:00	\N
445	27003	James Tucker	5542	Police Officer	28993	James	Tucker	2003-08-25 00:00:00	\N
1392	24986	Brian Tucker	12019	Police Officer	28996	Brian	Tucker	2000-02-28 00:00:00	\N
647	23317	Sean Tully	11991	Sergeant Of Police	29015	Sean	Tully	1998-06-08 00:00:00	\N
741	20567	Kimberly Turner	7252	Police Officer	29041	Kimberly	Turner	1994-09-06 00:00:00	\N
1168	16373	Robert Wheeler	1995	Sergeant Of Police	30447	Robert	Wheeler	1987-03-09 00:00:00	\N
2005	27576	William Whelehan	7949	Police Officer	30454	William	Whelehan	2004-10-25 00:00:00	2011-06-11 00:00:00
2270	25771	Avis Jamison	9772	Police Officer	13228	Avis	Jamison	2001-05-29 00:00:00	\N
2237	25844	Jessica Jones	4079	Lieutenant Of Police	13720	Jessica	Jones	2001-06-25 00:00:00	\N
173	29884	Brett Kahn	17785	Police Officer	13985	Brett	Kahn	2012-08-01 00:00:00	\N
1810	15117	Bartell Keithley	12123	Police Officer	14313	Bartell	Keithley	1986-06-16 00:00:00	2011-11-26 00:00:00
690	26708	Sergio Martinez	19512	Police Officer	17613	Sergio	Martinez	2002-12-02 00:00:00	\N
1661	27641	Matthew Mccall	17613	Police Officer	18526	Matthew	Mccall	2004-11-29 00:00:00	\N
1209	24784	Martin Staunton	5989	Po/Exp Det Can Hand	27409	Martin	Staunton	1999-12-13 00:00:00	\N
1045	25283	David Stepney	11508	Police Officer	27485	David	Stepney	2000-09-11 00:00:00	\N
611	29761	Philip Strazzante	8496	Police Officer	27669	Philip	Strazzante	2010-09-01 00:00:00	\N
142	17601	Jeff Truhlar	2128	Sergeant Of Police	28970	Jeff	Truhlar	1990-03-26 00:00:00	2016-06-15 00:00:00
1739	27008	Joseph White	14338	Sergeant Of Police	30524	Joseph	White	2003-08-25 00:00:00	\N
961	28715	Paul Wiechert Jr.	3047	Police Officer	30574	Paul	Wiechert Jr.	2006-09-25 00:00:00	\N
58	27790	Jafar Rahimi	\N	Police Officer	23325	Jafar	Rahimi	2005-01-03 00:00:00	\N
329	28746	Marco Proano	\N	Police Officer	23036	Marco	Proano	2006-10-30 00:00:00	\N
388	20757	Eugene Goldsmith	\N	Police Officer	10221	Eugene	Goldsmith	1994-12-05 00:00:00	\N
704	21590	Corey Walker	\N	Sergeant Of Police	29833	Corey	Walker	1995-09-05 00:00:00	\N
890	18893	Dante Servin	\N	Po As Detective	26022	Dante	Servin	1991-12-16 00:00:00	2016-05-17 00:00:00
1198	20001	Murphy Rayl	\N	Sergeant Of Police	23531	Murphy	Rayl	1994-05-02 00:00:00	\N
1283	28818	Raoul Mosqueda	\N	Po/Field Trning Off	19762	Raoul	Mosqueda	2006-11-27 00:00:00	\N
1470	26141	Lisa Eitel	4079	Sergeant Of Police	7835	Lisa	Eitel	2001-12-17 00:00:00	\N
1989	28990	Tomislav Vidljinevic	\N	Police Officer	29579	Tomislav	Vidljinevic	2007-04-02 00:00:00	\N
2129	14867	Kevin Anderson	\N	Captain Of Police	603	Kevin	Anderson	1985-12-16 00:00:00	\N
2131	14060	Max Guajardo	\N	Sergeant Of Police	10929	Max	Guajardo	1982-07-19 00:00:00	2010-08-15 00:00:00
2311	14111	Karen Rowan	\N	Lieutenant Of Police	24796	Karen	Rowan	1982-07-19 00:00:00	2006-03-20 00:00:00
2316	8497	Daniel Mc Weeny	\N	Po As Detective	18501	Daniel	Mc Weeny	1969-10-06 00:00:00	1997-01-21 00:00:00
2353	19463	Nathan Lopez	\N	Police Officer	16539	Nathan	Lopez	1993-05-17 00:00:00	2000-10-03 00:00:00
2376	5378	John Yucaitis	\N	Po As Detective	31467	John	Yucaitis	1964-06-15 00:00:00	1998-06-16 00:00:00
1414	28488	Keion Feazell	9848	Police Officer	8307	Keion	Feazell	2006-06-26 00:00:00	\N
941	24461	John Fitzgerald	9878	Police Officer	8627	John	Fitzgerald	1999-10-25 00:00:00	\N
1353	14052	Charles Flynn	241	Lieutenant Of Police	8846	Charles	Flynn	1982-07-19 00:00:00	2011-11-15 00:00:00
1791	19432	Frank Gaber	18412	Police Officer	9297	Frank	Gaber	1993-05-17 00:00:00	\N
1800	22582	Fortino Garibay	16358	Police Officer	9627	Fortino	Garibay	1997-05-05 00:00:00	\N
1508	21730	Daniel Gomez	19539	Police Officer	10259	Daniel	Gomez	1995-12-04 00:00:00	2012-07-20 00:00:00
1545	18682	Andre Green	15855	Police Officer	10663	Andre	Green	1991-12-02 00:00:00	\N
160	19745	Edward Griffin	3336	Police Officer	10784	Edward	Griffin	1993-12-13 00:00:00	2015-03-13 00:00:00
438	24128	Marc Jones	14646	Police Officer	13807	Marc	Jones	1999-06-21 00:00:00	\N
532	21645	Michael Karczewski	1055	Sergeant Of Police	14124	Michael	Karczewski	1995-10-23 00:00:00	\N
1903	17197	Jude Martinez	20799	Po As Detective	17540	Jude	Martinez	1989-12-26 00:00:00	2015-01-15 00:00:00
1058	24490	Chris Marzano	18810	Police Officer	17647	Chris	Marzano	1999-10-25 00:00:00	\N
1304	29062	Michelle Maxwell	9121	Police Officer	17807	Michelle	Maxwell	2007-06-04 00:00:00	\N
633	29727	Martin Mcdonnell	3306	Police Officer	18571	Martin	Mcdonnell	2010-09-01 00:00:00	\N
856	29063	Marcus Mcgrone	11649	Police Officer	18609	Marcus	Mcgrone	2007-06-04 00:00:00	\N
294	17889	Lawrence Stec	1980	Sergeant Of Police	27415	Lawrence	Stec	1990-08-27 00:00:00	\N
271	21454	Jerry Scaife	\N	Police Officer	32323	Jerry	Scaife	1995-08-07 00:00:00	\N
1292	26932	Michael Carroll	\N	Police Officer	4033	Michael	Carroll	2003-08-25 00:00:00	\N
1238	19203	James Carter	\N	Police Officer	4061	James	Carter	1992-09-28 00:00:00	2016-01-07 00:00:00
2363	10361	John Ervin Jr	\N	Po As Detective	8018	John	Ervin Jr	1972-11-20 00:00:00	2006-04-14 00:00:00
509	27199	Pedro Solis Jr.	\N	Sergeant Of Police	26991	Pedro	Solis Jr.	2003-11-24 00:00:00	\N
278	29140	Ayokunle Akinbusuyi	\N	Po As Detective	242	Ayokunle	Akinbusuyi	2007-07-30 00:00:00	\N
319	29800	Joseph Legut	\N	Police Officer	15969	Joseph	Legut	2011-10-17 00:00:00	\N
488	21995	Robert Romero	\N	Police Officer	24596	Robert	Romero	1996-05-06 00:00:00	\N
1341	28032	Martin Brennan	\N	Police Officer	2765	Martin	Brennan	2005-10-31 00:00:00	\N
1557	21607	Lynn Bunch	\N	Police Officer	31849	Lynn	Bunch	1995-10-23 00:00:00	\N
1582	16454	Luis Montalvo	\N	Po/Field Trning Off	19389	Luis	Montalvo	1987-04-13 00:00:00	2016-08-30 00:00:00
2159	16652	Rosendo Moreno	\N	Police Officer	19598	Rosendo	Moreno	1987-12-07 00:00:00	\N
2214	18894	Thomas Shebish	\N	Po As Detective	26146	Thomas	Shebish	1991-12-16 00:00:00	\N
2291	15211	Denis Walsh	\N	Lieutenant Of Police	29892	Denis	Walsh	1986-06-16 00:00:00	2016-02-15 00:00:00
2292	15867	Gary Yamashiroya	\N	Commander	31355	Gary	Yamashiroya	1986-10-13 00:00:00	2015-07-15 00:00:00
234	29202	James Fumo	2782	Police Officer	9271	James	Fumo	2007-08-27 00:00:00	\N
518	28684	Francis Gando	11924	Police Officer	9484	Francis	Gando	2006-09-25 00:00:00	\N
304	24399	Anthony Garcia	4739	Police Officer	9573	Anthony	Garcia	1999-10-04 00:00:00	\N
2060	25020	Thomas Grimm	18554	Police Officer	10833	Thomas	Grimm	2000-06-19 00:00:00	\N
1855	20078	Michael Hammond	21013	Po As Detective	11283	Michael	Hammond	1994-05-31 00:00:00	2016-09-15 00:00:00
1153	25712	Matthew Hazlehurst	8671	Po As Detective	11780	Matthew	Hazlehurst	2001-04-30 00:00:00	\N
355	23431	Jose Lomeli	19363	Police Officer	16448	Jose	Lomeli	1998-07-27 00:00:00	\N
592	20017	Richard Sullivan	20353	Po As Detective	27806	Richard	Sullivan	1994-05-02 00:00:00	\N
1330	28841	Sean Sus	11872	Police Officer	27889	Sean	Sus	2006-11-27 00:00:00	\N
185	28902	Timothy Manning	\N	Police Officer	17236	Timothy	Manning	2006-12-18 00:00:00	\N
720	23807	Perry Williams	\N	Police Officer	32425	Perry	Williams	1998-11-30 00:00:00	\N
1136	20458	David Zacek	\N	Police Officer	31485	David	Zacek	1994-08-01 00:00:00	\N
1408	29195	Terence Brady	\N	Police Officer	2633	Terence	Brady	2007-08-27 00:00:00	\N
1969	12153	Jack Lieblick	\N	Po As Detective	16232	Jack	Lieblick	1977-01-03 00:00:00	2010-11-15 00:00:00
2256	22612	Broderick Jones	\N	Police Officer	13788	Broderick	Jones	1997-05-05 00:00:00	2005-05-19 00:00:00
1583	15950	David Harris	14911	Police Officer	11533	David	Harris	1986-11-17 00:00:00	2012-04-15 00:00:00
177	19319	Terry Hoover	2346	Lieutenant Of Police	12520	Terry	Hoover	1992-12-07 00:00:00	\N
2030	22700	Steve Jedd	14361	Police Officer	13359	Steve	Jedd	1997-07-07 00:00:00	\N
492	28635	Scott Kravitz	6554	Sergeant Of Police	15197	Scott	Kravitz	2006-08-28 00:00:00	\N
1685	29311	Samuel Lopez	5628	Police Officer	16547	Samuel	Lopez	2007-10-29 00:00:00	\N
281	25964	James Fitzpatrick	\N	Police Officer	8642	James	Fitzpatrick	2001-08-27 00:00:00	\N
1717	15938	John Gibbons	\N	Lieutenant Of Police	9899	John	Gibbons	1986-11-17 00:00:00	2012-11-15 00:00:00
552	16572	John Doherty Jr	\N	Lieutenant Of Police	7047	John	Doherty Jr	1987-12-07 00:00:00	\N
1676	21413	Miroslaw Dobek	18876	Sergeant Of Police	31928	Miroslaw	Dobek	1995-08-07 00:00:00	\N
268	29307	Erik Haney	\N	Police Officer	11306	Erik	Haney	2007-10-29 00:00:00	\N
384	21227	George Quinones	\N	Police Officer	23259	George	Quinones	1995-06-05 00:00:00	2017-01-18 00:00:00
510	27532	Matthew Nomellini	\N	Police Officer	20608	Matthew	Nomellini	2004-10-25 00:00:00	\N
1273	20679	Artemio Pena	\N	Police Officer	22174	Artemio	Pena	1994-10-03 00:00:00	\N
1361	14683	Robert Hartmann	\N	Po As Detective	11603	Robert	Hartmann	1985-07-01 00:00:00	2017-01-15 00:00:00
1398	29463	Alexis Zayas	\N	Police Officer	31596	Alexis	Zayas	2008-07-28 00:00:00	2012-10-03 00:00:00
1898	26427	Gary Hammelmann	\N	Police Officer	11277	Gary	Hammelmann	2002-07-29 00:00:00	\N
2126	21242	Kevin Stoll	\N	Po As Detective	32358	Kevin	Stoll	1995-06-05 00:00:00	\N
2154	15426	David Berglind	\N	Sergeant Of Police	1844	David	Berglind	1986-08-11 00:00:00	2016-05-15 00:00:00
2374	5114	Ronald Boffo	\N	Po As Detective	2258	Ronald	Boffo	1962-11-12 00:00:00	1987-06-16 00:00:00
1666	14394	Victor Gutierrez	20220	Po As Detective	11043	Victor	Gutierrez	1983-02-14 00:00:00	2012-06-22 00:00:00
1010	22599	Lawrence Herhold	20993	Po As Detective	11989	Lawrence	Herhold	1997-05-05 00:00:00	\N
2264	20629	Janine Hermann	20842	Sergeant Of Police	12003	Janine	Hermann	1994-10-03 00:00:00	\N
2115	25746	Richard Turrise	\N	Sergeant Of Police	29078	Richard	Turrise	2001-04-30 00:00:00	\N
1293	25949	Everardo Bracamontes Jr	\N	Police Officer	2575	Everardo	Bracamontes Jr	2001-08-27 00:00:00	\N
782	27383	Octavio Granados Jr	\N	Police Officer	10557	Octavio	Granados Jr	2004-09-27 00:00:00	\N
1804	19752	Ignacio Hernandez	1308	Lieutenant Of Police	12048	Ignacio	Hernandez	1993-12-13 00:00:00	\N
194	29694	Juan Hernandez	10566	Police Officer	12057	Juan	Hernandez	2010-09-01 00:00:00	\N
921	26213	Bryan Hoffman	4317	Police Officer	12373	Bryan	Hoffman	2002-02-25 00:00:00	\N
1594	25460	Charlene Hudson	5379	Police Officer	12708	Charlene	Hudson	2000-12-18 00:00:00	\N
2241	24935	John Hurley	17516	Police Officer	12825	John	Hurley	2000-02-28 00:00:00	2005-09-11 00:00:00
1277	29368	Thaeir Jaber	7270	Police Officer	13021	Thaeir	Jaber	2008-04-28 00:00:00	\N
2273	23046	Diane Jacobson	11631	Police Officer	13160	Diane	Jacobson	1998-02-17 00:00:00	\N
1632	24477	John Jankowski	11432	Police Officer	13269	John	Jankowski	1999-10-25 00:00:00	\N
178	23352	James Johnson	2293	Sergeant Of Police	13597	James	Johnson	1998-06-29 00:00:00	\N
888	19761	Conray Jones	16183	Police Officer	13743	Conray	Jones	1993-12-13 00:00:00	\N
36	22617	Patrick Lambe	17607	Police Officer	15593	Patrick	Lambe	1997-05-05 00:00:00	\N
1252	27626	Jason Landrum	17355	Police Officer	15631	Jason	Landrum	2004-11-29 00:00:00	\N
1455	28355	Luis Laurenzana	8475	Police Officer	15788	Luis	Laurenzana	2006-03-27 00:00:00	\N
933	26821	John Layne	8240	Sergeant Of Police	15849	John	Layne	2003-02-24 00:00:00	\N
1577	24946	Kenneth Leflore	17774	Po Asgn Evid. Techni	15962	Kenneth	Leflore	2000-02-28 00:00:00	\N
1985	15771	Phillip Leibas Sr	2551	Lieutenant Of Police	15976	Phillip	Leibas Sr	1986-10-13 00:00:00	\N
1790	21326	Patrick Leyden	16149	Police Officer	16197	Patrick	Leyden	1995-07-10 00:00:00	\N
2137	24264	Paul Schmitz	17885	Sergeant Of Police	25700	Paul	Schmitz	1999-08-02 00:00:00	\N
1501	20487	Eric Diaz	1080	Sergeant Of Police	31921	Eric	Diaz	1994-09-06 00:00:00	\N
683	26681	Timothy Duggan	4607	Police Officer	31938	Timothy	Duggan	2002-12-02 00:00:00	\N
54	15879	Robert Balesh	\N	Police Officer	1171	Robert	Balesh	1986-11-17 00:00:00	\N
95	25737	Robert Ramirez	\N	Police Officer	32279	Robert	Ramirez	2001-04-30 00:00:00	\N
802	19316	Brian Hansen	\N	Police Officer	11365	Brian	Hansen	1992-12-07 00:00:00	\N
1556	22028	Russell Bacius	\N	Police Officer	1039	Russell	Bacius	1996-07-08 00:00:00	\N
2236	14922	Larry Watson	\N	Dep Chief	30180	Larry	Watson	1985-12-16 00:00:00	\N
1621	16603	Michael Hillman	4216	Police Officer	12259	Michael	Hillman	1987-12-07 00:00:00	2013-06-15 00:00:00
2157	13014	Jeffrey Johnson	\N	Police Officer	13500	Jeffrey	Johnson	1980-02-11 00:00:00	2010-04-15 00:00:00
1194	29160	Alexander Hladczuk	4917	Police Officer	12307	Alexander	Hladczuk	2007-07-30 00:00:00	\N
336	29628	Marlon Holt	11831	Police Officer	12481	Marlon	Holt	2010-04-16 00:00:00	\N
1328	15488	Edward Howard Jr	2337	Sergeant Of Police	12640	Edward	Howard Jr	1986-08-11 00:00:00	\N
2244	15304	Vincent Humphrey	21089	Po As Detective	12782	Vincent	Humphrey	1986-07-14 00:00:00	\N
450	28400	Salvador Lara	17286	Police Officer	15711	Salvador	Lara	2006-05-01 00:00:00	\N
897	26295	Charles Leach	4927	Police Officer	15866	Charles	Leach	2002-03-25 00:00:00	\N
479	30045	Arthur Lee	15106	Police Officer	15941	Arthur	Lee	2012-10-31 00:00:00	\N
1491	28300	Jason Lenski	10213	Police Officer	16022	Jason	Lenski	2006-02-21 00:00:00	\N
1705	29119	Scott Liebhaber	4585	Police Officer	16230	Scott	Liebhaber	2007-07-09 00:00:00	\N
2210	15792	James O Brien	20466	Po As Detective	20772	James	O Brien	1986-10-13 00:00:00	\N
52	27915	Steve Schmid	3625	Police Officer	25665	Steve	Schmid	2005-08-29 00:00:00	\N
1129	29509	Jesus Vera	9589	Police Officer	29531	Jesus	Vera	2009-03-09 00:00:00	\N
920	28621	Rishi Desai	10409	Police Officer	31918	Rishi	Desai	2006-08-28 00:00:00	\N
728	29301	Jessica Duckins	10325	Police Officer	31937	Jessica	Duckins	2007-10-29 00:00:00	\N
868	13492	Michael Dyra	20601	Po As Detective	31942	Michael	Dyra	1981-05-18 00:00:00	\N
522	20067	Melvin Ector	5083	Police Officer	31945	Melvin	Ector	1994-05-31 00:00:00	\N
1432	23281	Robert Jackson	15556	Sergeant Of Police	13093	Robert	Jackson	1998-06-08 00:00:00	\N
141	30356	Leonard Jagla Iii	19415	Police Officer	13176	Leonard	Jagla Iii	2013-03-05 00:00:00	\N
1213	27064	Colin Macniff	11549	Sergeant Of Police	16893	Colin	Macniff	2003-09-29 00:00:00	\N
1329	27247	Reagan Madsen	18994	Police Officer	16941	Reagan	Madsen	2004-01-26 00:00:00	\N
169	14997	Paul Major	16685	Police Officer	17041	Paul	Major	1986-03-31 00:00:00	2015-04-15 00:00:00
814	29313	Eleazar Maldonado	3484	Police Officer	17077	Eleazar	Maldonado	2007-10-29 00:00:00	\N
133	13978	David March	20563	Po As Detective	17302	David	March	1982-06-14 00:00:00	2016-08-18 00:00:00
139	29123	Yesenia Medina	18375	Police Officer	18711	Yesenia	Medina	2007-07-09 00:00:00	\N
1424	23163	Mario Mendoza	8843	Police Officer	18826	Mario	Mendoza	1998-04-13 00:00:00	\N
1430	25496	Andy Mui	7731	Police Officer	19861	Andy	Mui	2000-12-18 00:00:00	\N
87	27074	Michael Murphy	15504	Sergeant Of Police	20068	Michael	Murphy	2003-09-29 00:00:00	\N
2267	25501	Jason Nielsen	16021	Police Officer	20514	Jason	Nielsen	2000-12-18 00:00:00	\N
2329	16183	Timothy Nolan	20171	Po As Detective	20577	Timothy	Nolan	1986-12-22 00:00:00	2016-01-05 00:00:00
2189	20943	Timothy O Brien	20034	Po As Detective	20769	Timothy	O Brien	1995-01-03 00:00:00	\N
1837	26716	Thomas O Brien	12964	Police Officer	20807	Thomas	O Brien	2002-12-02 00:00:00	\N
931	19984	Daniel O Donnell	1927	Lieutenant Of Police	20939	Daniel	O Donnell	1994-05-02 00:00:00	\N
497	23441	James Padar	\N	Sergeant Of Police	21607	James	Padar	1998-07-27 00:00:00	\N
837	29085	Joseph Siska	\N	Police Officer	26517	Joseph	Siska	2007-06-04 00:00:00	\N
1628	20825	Steven Ruzas	\N	Police Officer	24981	Steven	Ruzas	1994-12-05 00:00:00	\N
1844	27940	Xavier Chism	\N	Police Officer	4538	Xavier	Chism	2005-09-26 00:00:00	\N
1921	27372	John Fetzer	10953	Police Officer	8443	John	Fetzer	2004-09-27 00:00:00	\N
104	26623	Charlie Johnson	16589	Police Officer	13496	Charlie	Johnson	2002-10-28 00:00:00	\N
1084	24017	Ronald Malczynski	8490	Sergeant Of Police	17062	Ronald	Malczynski	1999-05-10 00:00:00	\N
948	26432	Shannon Malloy	17010	Police Officer	17127	Shannon	Malloy	2002-07-29 00:00:00	\N
1380	28172	Matthew Mellett	8179	Police Officer	18773	Matthew	Mellett	2005-12-05 00:00:00	\N
1732	28305	Marco Mendoza	17156	Police Officer	18820	Marco	Mendoza	2006-02-21 00:00:00	\N
1617	27311	Carlos Meneses	18836	Police Officer	18836	Carlos	Meneses	2004-04-26 00:00:00	2009-12-11 00:00:00
1657	26979	James Murray	7825	Po/Field Trning Off	20104	James	Murray	2003-08-25 00:00:00	\N
1382	26834	Douglas Nichols Jr	12415	Police Officer	20481	Douglas	Nichols Jr	2003-02-24 00:00:00	\N
2388	8750	David O Callaghan	14721	Lieutenant Of Police	20817	David	O Callaghan	1970-03-02 00:00:00	2005-06-04 00:00:00
2190	16343	Michael O Donnell	20629	Po As Detective	20907	Michael	O Donnell	1987-03-09 00:00:00	\N
904	23580	Kevin Mulcahy	\N	Police Officer	19867	Kevin	Mulcahy	1998-09-28 00:00:00	\N
1233	22235	Mark Kushiner	\N	Police Officer	15435	Mark	Kushiner	1996-11-04 00:00:00	\N
1458	26563	Andrew Riley	\N	Police Officer	23980	Andrew	Riley	2002-09-30 00:00:00	\N
1735	26982	James Obaldo	\N	Po Asgn Evid. Techni	21110	James	Obaldo	2003-08-25 00:00:00	\N
1887	26281	Vincent Herman	\N	Police Officer	12000	Vincent	Herman	2002-03-25 00:00:00	\N
1816	27115	Douglas Anderson	6325	Police Officer	635	Douglas	Anderson	2003-10-27 00:00:00	\N
2294	19940	Kevin Fron	5049	Po As Detective	9212	Kevin	Fron	1994-05-02 00:00:00	\N
1173	27058	Robert Johnson	17034	Sergeant Of Police	13637	Robert	Johnson	2003-09-29 00:00:00	\N
313	28450	Timothy Macfarlane	13015	Police Officer	16855	Timothy	Macfarlane	2006-05-22 00:00:00	\N
469	15338	Frank Messina	12435	Police Officer	18902	Frank	Messina	1986-07-14 00:00:00	2015-08-15 00:00:00
337	29066	Scott Millsaps	3048	Police Officer	19161	Scott	Millsaps	2007-06-04 00:00:00	\N
259	22259	Michael Murzyn	1893	Lieutenant Of Police	20125	Michael	Murzyn	1996-11-04 00:00:00	\N
576	19981	Kevin Muth	1192	Sergeant Of Police	20154	Kevin	Muth	1994-05-02 00:00:00	\N
1821	27779	Jill Newman	16481	Police Officer	20445	Jill	Newman	2005-01-03 00:00:00	\N
2021	15351	Dennis O Brien	1383	Sergeant Of Police	20773	Dennis	O Brien	1986-07-14 00:00:00	\N
559	15596	Carlos Velez	\N	Dep Chief	29494	Carlos	Velez	1986-08-11 00:00:00	2015-09-15 00:00:00
1175	17048	Adam Zelitzky	\N	Sergeant Of Police	31631	Adam	Zelitzky	1988-12-05 00:00:00	\N
1345	24457	Douglas Eng	\N	Police Officer	7946	Douglas	Eng	1999-10-25 00:00:00	\N
1993	24534	Daniel Berg	10678	Po As Detective	1825	Daniel	Berg	1999-11-15 00:00:00	\N
2177	20999	Robert Bridges	6917	Po As Detective	2809	Robert	Bridges	1995-02-06 00:00:00	\N
1962	26259	Michael Burke	8447	Police Officer	3356	Michael	Burke	2002-03-25 00:00:00	\N
1169	25205	Wilbur Calicdan	18374	Po/Field Trning Off	3669	Wilbur	Calicdan	2000-09-11 00:00:00	\N
1847	27168	Diego Carvajal	16203	Police Officer	4095	Diego	Carvajal	2003-11-24 00:00:00	\N
1799	27855	Matt Dercola	15740	Police Officer	6760	Matt	Dercola	2005-08-29 00:00:00	\N
861	13986	Patrick O Donovan	20234	Po As Detective	20944	Patrick	O Donovan	1982-06-14 00:00:00	2015-03-15 00:00:00
810	22628	Jennifer O Shaughnessy	16499	Police Officer	21073	Jennifer	O Shaughnessy	1997-05-05 00:00:00	\N
1263	24964	Daniel O Toole	15346	Sergeant Of Police	21098	Daniel	O Toole	2000-02-28 00:00:00	\N
2343	23945	Brian Okrasinski	7247	Police Officer	21233	Brian	Okrasinski	1999-03-08 00:00:00	\N
172	29951	Ryan Youstra	\N	Police Officer	31461	Ryan	Youstra	2012-08-31 00:00:00	\N
320	27196	Jeremy Sikorski	\N	Police Officer	26358	Jeremy	Sikorski	2003-11-24 00:00:00	\N
382	22610	Jose Jara	\N	Police Officer	13300	Jose	Jara	1997-05-05 00:00:00	\N
772	27774	Todd Mueller	15582	Police Officer	19834	Todd	Mueller	2005-01-03 00:00:00	2016-01-25 00:00:00
877	25104	Keith Blair	10342	Sergeant Of Police	2113	Keith	Blair	2000-08-14 00:00:00	\N
1063	25081	Michael Ruiz	19270	Police Officer	32309	Michael	Ruiz	2000-06-19 00:00:00	\N
1155	29774	Garry Mc Carthy	\N	Supt Of Police	17954	Garry	Mc Carthy	2011-05-16 00:00:00	2015-12-31 00:00:00
1321	21395	Sean Brandon	18886	Police Officer	2671	Sean	Brandon	1995-08-07 00:00:00	\N
1478	23201	Marco Di Franco	\N	Police Officer	31920	Marco	Di Franco	1998-05-26 00:00:00	\N
1598	22426	Julian Vega	\N	Police Officer	29452	Julian	Vega	1996-12-02 00:00:00	\N
2135	27818	Robert Trotter	\N	Police Officer	32379	Robert	Trotter	2005-01-03 00:00:00	\N
2254	21024	Darek Haynes	\N	Police Officer	11762	Darek	Haynes	1995-02-06 00:00:00	2005-03-24 00:00:00
2269	19753	Debra Holmes	5143	Police Officer	12459	Debra	Holmes	1993-12-13 00:00:00	2013-12-27 00:00:00
2382	9055	Joseph Bogdalek	14674	Sergeant Of Police	2267	Joseph	Bogdalek	1970-09-14 00:00:00	2004-09-15 00:00:00
540	28236	Matthew Brittain	8284	Police Officer	2844	Matthew	Brittain	2006-01-23 00:00:00	\N
1646	28386	Juan Cabrales	16858	Police Officer	3565	Juan	Cabrales	2006-05-01 00:00:00	\N
1224	26512	Angel Cahue	5005	Police Officer	3610	Angel	Cahue	2002-09-30 00:00:00	\N
702	22844	Michael O Grady	12504	Police Officer	20954	Michael	O Grady	1997-08-04 00:00:00	\N
309	22725	Daniel O Shea	183	Captain Of Police	21081	Daniel	O Shea	1997-07-07 00:00:00	\N
1097	29741	Andrew Ohlson	8394	Police Officer	21214	Andrew	Ohlson	2010-09-01 00:00:00	\N
363	26635	John Okeefe	18418	Police Officer	21220	John	Okeefe	2002-10-28 00:00:00	\N
1750	27076	Denis Okeefe	9256	Sergeant Of Police	21221	Denis	Okeefe	2003-09-29 00:00:00	\N
2224	20545	Brian Ortiz	10016	Police Officer	21448	Brian	Ortiz	1994-09-06 00:00:00	\N
1905	22732	Shawn Pickett	12737	Sergeant Of Police	22510	Shawn	Pickett	1997-07-07 00:00:00	\N
1307	20546	Albert Powe	18203	Police Officer	22897	Albert	Powe	1994-09-06 00:00:00	\N
511	28082	Kerry Pozulp	17342	Police Officer	22929	Kerry	Pozulp	2005-10-31 00:00:00	\N
2251	24158	Brian Pratscher	14547	Police Officer	22943	Brian	Pratscher	1999-06-21 00:00:00	2007-06-18 00:00:00
956	28747	Robert Przybylowski	3881	Police Officer	23090	Robert	Przybylowski	2006-10-30 00:00:00	\N
212	22737	Adalberto Ramos	13420	Police Officer	23424	Adalberto	Ramos	1997-07-07 00:00:00	\N
994	21876	Robert Rentner	2052	Sergeant Of Police	23726	Robert	Rentner	1996-03-18 00:00:00	\N
1425	21450	Catherine Rolewicz	21322	Po As Detective	24540	Catherine	Rolewicz	1995-08-07 00:00:00	2016-06-08 00:00:00
2187	22277	Linda Romano	9875	Police Officer	24577	Linda	Romano	1996-11-04 00:00:00	\N
413	22096	James Ryle	704	Lieutenant Of Police	25077	James	Ryle	1996-07-08 00:00:00	\N
1419	28095	Robert Spiegel	12661	Police Officer	32350	Robert	Spiegel	2005-10-31 00:00:00	\N
113	29500	Anthony Rosen	\N	Police Officer	24695	Anthony	Rosen	2009-03-09 00:00:00	\N
1216	22669	Joseph Corbett	\N	Police Officer	5343	Joseph	Corbett	1997-07-07 00:00:00	\N
1719	27976	Amy Maskiewicz	\N	Police Officer	17658	Amy	Maskiewicz	2005-09-26 00:00:00	2012-06-08 00:00:00
2213	19777	Patrick Loftus	\N	Po As Detective	16414	Patrick	Loftus	1993-12-13 00:00:00	\N
1838	25426	Derek Cross	19108	Police Officer	5758	Derek	Cross	2000-12-18 00:00:00	\N
1976	26556	John Ormond	19095	Police Officer	21379	John	Ormond	2002-09-30 00:00:00	\N
954	28822	William Orsa	17885	Police Officer	21400	William	Orsa	2006-11-27 00:00:00	\N
870	24354	David Plebanski	12072	Police Officer	22701	David	Plebanski	1999-09-13 00:00:00	\N
1038	25177	Marc Poblador	4857	Police Officer	22725	Marc	Poblador	2000-08-14 00:00:00	\N
700	27993	Cortney Poulos	19589	Police Officer	22888	Cortney	Poulos	2005-09-26 00:00:00	\N
157	25517	Maciej Prazmowski	16860	Police Officer	22949	Maciej	Prazmowski	2000-12-18 00:00:00	\N
1282	26231	Frank Proano	9315	Police Officer	23035	Frank	Proano	2002-02-25 00:00:00	\N
210	29854	Christopher Pronek	12025	Police Officer	23049	Christopher	Pronek	2012-07-02 00:00:00	\N
1924	28187	Rocco Pruger	15445	Police Officer	23067	Rocco	Pruger	2005-12-05 00:00:00	\N
1418	27787	Robert Pucillo	16850	Sergeant Of Police	23107	Robert	Pucillo	2005-01-03 00:00:00	\N
932	29270	Joseph Pulia	6311	Police Officer	23132	Joseph	Pulia	2007-09-24 00:00:00	\N
1822	29076	Brian Purtell	3217	Police Officer	23160	Brian	Purtell	2007-06-04 00:00:00	\N
1671	25612	Marisol Randonis	14012	Police Officer	23454	Marisol	Randonis	2001-02-05 00:00:00	\N
1416	25270	Deanna Rattler	12116	Police Officer	23506	Deanna	Rattler	2000-09-11 00:00:00	\N
1474	27548	Monica Reyes	19210	Sergeant Of Police	23782	Monica	Reyes	2004-10-25 00:00:00	\N
1747	24219	Gary Riley	8520	Police Officer	23967	Gary	Riley	1999-07-12 00:00:00	\N
2243	23791	Matthew Riley	11197	Police Officer	23975	Matthew	Riley	1998-11-30 00:00:00	2011-12-21 00:00:00
370	27193	Stephen Romanski	18685	Police Officer	24587	Stephen	Romanski	2003-11-24 00:00:00	\N
958	28260	Brady Ruel	13860	Police Officer	24871	Brady	Ruel	2006-01-23 00:00:00	\N
264	23593	Kevin Ryan	13409	Police Officer	25039	Kevin	Ryan	1998-09-28 00:00:00	\N
2008	28088	Pawel Ryszka	12561	Police Officer	25084	Pawel	Ryszka	2005-10-31 00:00:00	2008-06-30 00:00:00
2004	25798	Steven Sabatino	9862	Sergeant Of Police	25092	Steven	Sabatino	2001-05-29 00:00:00	\N
1271	29643	Elizabeth Saldana	5576	Police Officer	25174	Elizabeth	Saldana	2010-04-16 00:00:00	\N
545	28675	Alejandro Cabral	\N	Police Officer	3563	Alejandro	Cabral	2006-09-25 00:00:00	\N
2037	16741	James Gilger	21151	Po As Detective	9964	James	Gilger	1988-01-25 00:00:00	2016-02-01 00:00:00
1727	26634	William O Brien	\N	Police Officer	20798	William	O Brien	2002-10-28 00:00:00	\N
323	27614	Guy Habiak Jr	\N	Police Officer	11117	Guy	Habiak Jr	2004-11-29 00:00:00	\N
1452	29485	David Madia	6338	Sergeant Of Police	16920	David	Madia	2009-03-09 00:00:00	\N
2203	24953	Michael Malaniuk	11652	Po/Marine Officer	17055	Michael	Malaniuk	2000-02-28 00:00:00	\N
650	24204	Reginald Malone	17484	Police Officer	17142	Reginald	Malone	1999-07-12 00:00:00	\N
439	23288	Brian Maloy	13903	Police Officer	17161	Brian	Maloy	1998-06-08 00:00:00	\N
1023	17941	John Garrido Iii	9678	Lieutenant Of Police	9648	John	Garrido Iii	1991-01-02 00:00:00	\N
1034	19141	Kristin Maples	1992	Sergeant Of Police	17273	Kristin	Maples	1992-06-29 00:00:00	\N
984	20672	Warren Olszewski	18549	Po/Field Trning Off	21316	Warren	Olszewski	1994-10-03 00:00:00	\N
598	19010	Kevin Osborn	8137	Police Officer	21468	Kevin	Osborn	1992-01-02 00:00:00	\N
46	30370	Josue Pivaral	11997	Police Officer	22675	Josue	Pivaral	2013-03-05 00:00:00	\N
724	24040	Marvin Randolph	9663	Police Officer	23450	Marvin	Randolph	1999-05-10 00:00:00	\N
158	19495	Javier Rangel	17072	Police Officer	23460	Javier	Rangel	1993-05-17 00:00:00	\N
815	29575	Eli Rangel	13858	Police Officer	23461	Eli	Rangel	2009-12-16 00:00:00	\N
2332	19167	Bret Rice	20010	Po As Detective	23841	Bret	Rice	1992-06-29 00:00:00	2016-10-24 00:00:00
862	15570	William Ruck	20989	Po As Detective	24852	William	Ruck	1986-08-11 00:00:00	2015-08-15 00:00:00
2225	22638	Sean Ryan	11534	Police Officer	25031	Sean	Ryan	1997-05-05 00:00:00	2010-01-14 00:00:00
164	14710	Martin Ryczek	98	Captain Of Police	25068	Martin	Ryczek	1985-07-01 00:00:00	2016-12-15 00:00:00
1468	20962	Carlos Salazar	12579	Police Officer	25167	Carlos	Salazar	1995-01-03 00:00:00	\N
180	27683	Richard Salvador	19142	Sergeant Of Police	25221	Richard	Salvador	2004-11-29 00:00:00	\N
148	27801	Jeffrey Salvetti	12024	Police Officer	25230	Jeffrey	Salvetti	2005-01-03 00:00:00	\N
1078	29397	Benjamin Sanchez	9621	Police Officer	25305	Benjamin	Sanchez	2008-04-28 00:00:00	2016-04-03 00:00:00
1040	22414	Orlando Sanchez Jr	19244	Police Officer	25323	Orlando	Sanchez Jr	1996-12-02 00:00:00	\N
156	22805	William Fashingbauer	\N	Police Officer	8281	William	Fashingbauer	1997-08-04 00:00:00	\N
183	25121	Hector Davila	\N	Police Officer	6270	Hector	Davila	2000-08-14 00:00:00	\N
283	26398	Erin Murphy	\N	Police Officer	20057	Erin	Murphy	2002-05-28 00:00:00	\N
610	27540	Angelina Palermo	13484	Police Officer	21671	Angelina	Palermo	2004-10-25 00:00:00	\N
831	28643	Denis O Rourke	\N	Police Officer	21068	Denis	O Rourke	2006-08-28 00:00:00	\N
991	16366	Michael Tannehill	\N	Police Officer	28157	Michael	Tannehill	1987-03-09 00:00:00	2012-06-15 00:00:00
1067	17186	Christoph Lappe	\N	Police Officer	15699	Christoph	Lappe	1989-12-26 00:00:00	\N
2228	18572	Robert Mc Hale	\N	Police Officer	18266	Robert	Mc Hale	1991-11-18 00:00:00	\N
899	17997	Jennifer Aldridge	6408	Police Officer	300	Jennifer	Aldridge	1991-01-30 00:00:00	\N
482	30039	Patrick Graney	12995	Police Officer	10579	Patrick	Graney	2012-10-31 00:00:00	\N
1355	19947	Jack Hayes	5903	Po/Marine Officer	11721	Jack	Hayes	1994-05-02 00:00:00	\N
1734	23452	Saharat Sampim	19641	Police Officer	25253	Saharat	Sampim	1998-07-27 00:00:00	\N
1833	26236	Oneta Sampson	4157	Police Officer	25260	Oneta	Sampson	2002-02-25 00:00:00	\N
1648	15377	John Sanchez	2220	Sergeant Of Police	25317	John	Sanchez	1986-07-14 00:00:00	2011-11-15 00:00:00
140	30375	David Sanchez	16962	Police Officer	25318	David	Sanchez	2013-03-05 00:00:00	\N
1896	15378	Noel Sanchez	1202	Commander	25319	Noel	Sanchez	1986-07-14 00:00:00	\N
416	27329	Andrew Scudella	16384	Police Officer	25894	Andrew	Scudella	2004-04-26 00:00:00	\N
1046	17893	Alexander Stinites	1075	Sergeant Of Police	27570	Alexander	Stinites	1990-08-27 00:00:00	\N
458	17592	Gregory Swiderek	20130	Po As Detective	28000	Gregory	Swiderek	1990-03-26 00:00:00	\N
826	20439	Christoph Taliaferro	14979	Sergeant Of Police	28123	Christoph	Taliaferro	1994-08-01 00:00:00	\N
153	20969	Yolanda Talley	1564	Sergeant Of Police	28130	Yolanda	Talley	1995-01-03 00:00:00	\N
2313	17896	Jorge Tamez	8760	Police Officer	28138	Jorge	Tamez	1990-08-27 00:00:00	2008-05-21 00:00:00
1880	26737	Roscoe Townsend	6112	Police Officer	28831	Roscoe	Townsend	2002-12-02 00:00:00	\N
714	19385	Phillip Travis	19655	Police Officer	28869	Phillip	Travis	1992-12-07 00:00:00	\N
1999	22291	Michelle Turney	19973	Sergeant Of Police	29072	Michelle	Turney	1996-11-04 00:00:00	\N
1472	17607	Robert Vella	8642	Police Officer	29511	Robert	Vella	1990-03-26 00:00:00	2015-04-16 00:00:00
260	25939	Jason Venegas	11915	Police Officer	29516	Jason	Venegas	2001-07-30 00:00:00	\N
997	18914	Thomas Vovos	20308	Po As Detective	29723	Thomas	Vovos	1991-12-16 00:00:00	\N
711	21381	Jason Vucko	1306	Lieutenant Of Police	29729	Jason	Vucko	1995-07-10 00:00:00	\N
34	27449	Nicholas White	8577	Police Officer	30525	Nicholas	White	2004-09-27 00:00:00	\N
394	20030	Wayne Wiberg	848	Lieutenant Of Police	30561	Wayne	Wiberg	1994-05-02 00:00:00	\N
498	21560	William Pruente	\N	Police Officer	23062	William	Pruente	1995-09-05 00:00:00	\N
785	25510	Lenere Payne	\N	Police Officer	22068	Lenere	Payne	2000-12-18 00:00:00	\N
983	15539	Rita O Leary	21056	Po As Detective	20980	Rita	O Leary	1986-08-11 00:00:00	2014-08-16 00:00:00
1670	15810	Alan Pergande	200430	Po As Detective	22298	Alan	Pergande	1986-10-13 00:00:00	2014-10-15 00:00:00
2280	19279	Maureen Biggane	\N	Lieutenant Of Police	2009	Maureen	Biggane	1992-12-07 00:00:00	\N
2320	15237	Kenneth Boudreau	\N	Sergeant Of Police	2474	Kenneth	Boudreau	1986-07-14 00:00:00	2014-07-19 00:00:00
1942	26591	Hector Agosto	6966	Po/Exp Det Can Hand	169	Hector	Agosto	2002-10-28 00:00:00	\N
1012	21705	Hector Alfaro	19618	Police Officer	338	Hector	Alfaro	1995-12-04 00:00:00	\N
2217	10477	John Cruz	\N	Po As Detective	5807	John	Cruz	1973-02-19 00:00:00	2008-02-13 00:00:00
2201	19636	James Mc Govern	\N	Sergeant Of Police	18206	James	Mc Govern	1993-11-22 00:00:00	2009-02-06 00:00:00
2360	10663	Michael Baker	20316	Po As Detective	1112	Michael	Baker	1973-03-19 00:00:00	2010-02-01 00:00:00
1687	27935	Fredi Barroso	16309	Police Officer	1427	Fredi	Barroso	2005-09-26 00:00:00	2009-08-13 00:00:00
761	29604	Juan Belmontes	8414	Police Officer	1747	Juan	Belmontes	2010-04-16 00:00:00	\N
2317	8159	Daniel Brannigan	4638	Sergeant Of Police	2693	Daniel	Brannigan	1969-01-06 00:00:00	2005-02-15 00:00:00
668	19915	Maurice Burks Jr	4339	Police Officer	3383	Maurice	Burks Jr	1994-05-02 00:00:00	\N
301	29530	Kyleen Cowie	15645	Police Officer	5565	Kyleen	Cowie	2009-12-16 00:00:00	\N
1760	9613	Leo Crotty	12	Captain Of Police	5768	Leo	Crotty	1971-06-14 00:00:00	2012-01-15 00:00:00
1507	28047	Daniel Fagan	10528	Police Officer	8188	Daniel	Fagan	2005-10-31 00:00:00	\N
942	22460	Margaret Flisk	2682	Sergeant Of Police	8749	Margaret	Flisk	1997-03-17 00:00:00	\N
2041	16413	Miguel Flores	4075	Police Officer	8796	Miguel	Flores	1987-04-13 00:00:00	\N
1095	20209	Eladio Gaspar	8488	Police Officer	9716	Eladio	Gaspar	1994-07-05 00:00:00	\N
1371	26809	James Gochee	3909	Sergeant Of Police	10152	James	Gochee	2003-02-24 00:00:00	\N
485	18676	Leonard Goduto	20006	Po As Detective	10171	Leonard	Goduto	1991-12-02 00:00:00	\N
2093	22359	Karoly Hajdu	20484	Sergeant Of Police	11178	Karoly	Hajdu	1996-12-02 00:00:00	\N
2002	20762	Horst Hegewald	18609	Police Officer	11855	Horst	Hegewald	1994-12-05 00:00:00	\N
1980	26282	Arturo Hernandez	9645	Police Officer	12047	Arturo	Hernandez	2002-03-25 00:00:00	\N
717	22249	Michael Marlo	8460	Police Officer	17382	Michael	Marlo	1996-11-04 00:00:00	\N
29	20262	Lawrence Raehl	\N	Police Officer	23312	Lawrence	Raehl	1994-07-05 00:00:00	\N
597	28884	David Falardeau	\N	Sergeant Of Police	8214	David	Falardeau	2006-12-18 00:00:00	\N
767	20089	Richard Jeschke	\N	Police Officer	13419	Richard	Jeschke	1994-05-31 00:00:00	2014-06-12 00:00:00
784	27642	Roderique Mcclain	\N	Police Officer	18540	Roderique	Mcclain	2004-11-29 00:00:00	\N
1403	20785	Rayco Lee	\N	Police Officer	15944	Rayco	Lee	1994-12-05 00:00:00	\N
1761	15089	Eddie Garrett	\N	Police Officer	9643	Eddie	Garrett	1986-06-16 00:00:00	2016-08-08 00:00:00
1203	22528	Anthony Acevez	18154	Police Officer	65	Anthony	Acevez	1997-05-05 00:00:00	\N
604	27018	David Alcala	15731	Police Officer	283	David	Alcala	2003-09-29 00:00:00	\N
1741	26199	Javier Alonso	18523	Police Officer	435	Javier	Alonso	2002-02-25 00:00:00	\N
969	28023	Shawn Alonzo	10081	Police Officer	442	Shawn	Alonzo	2005-10-31 00:00:00	\N
500	20466	Damen Balesteri	7510	Police Officer	1172	Damen	Balesteri	1994-09-06 00:00:00	\N
105	25102	Jason Barney	11095	Police Officer	1371	Jason	Barney	2000-08-14 00:00:00	\N
2042	20960	Robert Rubio	\N	Lieutenant Of Police	24844	Robert	Rubio	1995-01-03 00:00:00	\N
740	29667	Arturo Becerra	15790	Police Officer	1623	Arturo	Becerra	2010-09-01 00:00:00	\N
1834	27838	John Beluso	19997	Police Officer	1756	John	Beluso	2005-08-29 00:00:00	\N
1737	27025	Belinda Bernal	12254	Police Officer	1867	Belinda	Bernal	2003-09-29 00:00:00	\N
589	20180	Michael Bernichio	13369	Po As Detective	1879	Michael	Bernichio	1994-07-05 00:00:00	\N
1818	26865	Allyson Bogdalek	18598	Police Officer	2266	Allyson	Bogdalek	2003-04-28 00:00:00	2016-05-25 00:00:00
2355	5502	Fred Bonke	2108	Sergeant Of Police	2367	Fred	Bonke	1965-03-01 00:00:00	2000-04-25 00:00:00
2006	27826	Kenneth Wilkerson	11196	Police Officer	30635	Kenneth	Wilkerson	2005-01-03 00:00:00	2011-07-29 00:00:00
2314	19062	Marzeek Williams	14447	Po As Detective	30677	Marzeek	Williams	1992-01-02 00:00:00	\N
2138	12247	Brad Williams	990	Sergeant Of Police	30696	Brad	Williams	1977-01-03 00:00:00	2016-05-15 00:00:00
719	28716	Markus Williams	5503	Police Officer	30784	Markus	Williams	2006-09-25 00:00:00	\N
1108	27450	Charice Williams	10581	Police Officer	30796	Charice	Williams	2004-09-27 00:00:00	\N
1702	23004	Henry Thomas	\N	Po As Detective	28416	Henry	Thomas	1997-09-02 00:00:00	\N
1544	20304	Clarence Williams	17312	Police Officer	30803	Clarence	Williams	1994-07-05 00:00:00	\N
1457	22895	Elizabeth Wilson	13125	Police Officer	30933	Elizabeth	Wilson	1997-08-04 00:00:00	\N
1125	29512	Anthony Wilson	5998	Police Officer	30948	Anthony	Wilson	2009-03-09 00:00:00	\N
404	24892	Jason Wilson	5380	Po/Field Trning Off	30954	Jason	Wilson	2000-01-24 00:00:00	\N
2378	5934	George Patton	\N	Police Officer	22007	George	Patton	1966-02-28 00:00:00	1999-04-01 00:00:00
2299	9964	Edward Winstead	20119	Po As Detective	31006	Edward	Winstead	1971-10-25 00:00:00	2006-08-15 00:00:00
395	27453	Lucas Wise	15647	Sergeant Of Police	31030	Lucas	Wise	2004-09-27 00:00:00	\N
459	25624	Michele Wood	20801	Po As Detective	31163	Michele	Wood	2001-02-05 00:00:00	\N
366	21464	Andre Woods	18851	Police Officer	31196	Andre	Woods	1995-08-07 00:00:00	\N
581	26788	Scott Workman	9397	Police Officer	31240	Scott	Workman	2003-01-27 00:00:00	\N
110	29121	Angelo Mandile	\N	Police Officer	17189	Angelo	Mandile	2007-07-09 00:00:00	\N
24		 Brady	\N		\N		Brady	\N	\N
214	15269	Glenn Evans	\N	Lieutenant Of Police	8138	Glenn	Evans	1986-07-14 00:00:00	\N
749	28904	Ismael Mendez	\N	Police Officer	18805	Ismael	Mendez	2006-12-18 00:00:00	\N
750	26373	Leonel Rivas	\N	Police Officer	24058	Leonel	Rivas	2002-04-29 00:00:00	\N
783	28302	Arnoldo Luevano	\N	Police Officer	16716	Arnoldo	Luevano	2006-02-21 00:00:00	\N
1090	29122	Alfred Mayes	\N	Police Officer	17827	Alfred	Mayes	2007-07-09 00:00:00	\N
1146	26983	Jon Ohlicher	\N	Police Officer	21208	Jon	Ohlicher	2003-08-25 00:00:00	\N
1344	26900	Erik Miehle	\N	Police Officer	18998	Erik	Miehle	2003-04-28 00:00:00	\N
1465	24275	Antonio Valentin	\N	Sergeant Of Police	29254	Antonio	Valentin	1999-08-02 00:00:00	\N
1518	24119	Renell Hightower	\N	Sergeant Of Police	12196	Renell	Hightower	1999-06-21 00:00:00	\N
1623	23048	Michael Keehan	\N	Police Officer	14279	Michael	Keehan	1998-02-17 00:00:00	\N
791	25562	Joseph Alfaro	13813	Police Officer	339	Joseph	Alfaro	2001-02-05 00:00:00	\N
1433	27342	Chris Andersen	17507	Police Officer	560	Chris	Andersen	2004-09-27 00:00:00	\N
1817	23881	Chris Bard	6772	Police Officer	1304	Chris	Bard	1999-03-08 00:00:00	\N
430	28477	David Barnes	5631	Police Officer	1350	David	Barnes	2006-06-26 00:00:00	\N
1828	15880	Dennis Barnes	2402	Sergeant Of Police	1354	Dennis	Barnes	1986-11-17 00:00:00	2014-11-15 00:00:00
1788	23605	Robert Bartlett	17470	Police Officer	1464	Robert	Bartlett	1998-10-13 00:00:00	\N
2245	12076	Jack Boock	20522	Po As Detective	2381	Jack	Boock	1977-01-03 00:00:00	2006-04-15 00:00:00
1489	26668	Crystal Bowling	9720	Police Officer	2510	Crystal	Bowling	2002-12-02 00:00:00	\N
3	27027	Emily Campbell	15492	Police Officer	3763	Emily	Campbell	2003-09-29 00:00:00	\N
2	23142	Sean Campbell	12516	Police Officer	3764	Sean	Campbell	1998-04-13 00:00:00	\N
687	20189	Donald Clark Ii	7571	Po As Detective	4771	Donald	Clark Ii	1994-07-05 00:00:00	\N
2054	25573	Brendan Corcoran	17069	Police Officer	5360	Brendan	Corcoran	2001-02-05 00:00:00	\N
1127	27477	Raul Cortez	14983	Police Officer	5449	Raul	Cortez	2004-10-25 00:00:00	\N
2094	25318	Sean Dailey	10890	Police Officer	6088	Sean	Dailey	2000-10-10 00:00:00	2013-11-01 00:00:00
1388	23545	Robert De Gasso	12506	Police Officer	6445	Robert	De Gasso	1998-09-28 00:00:00	2016-07-18 00:00:00
1811	23333	Darren Dehaan	14203	Po As Detective	6582	Darren	Dehaan	1998-06-29 00:00:00	\N
2194	25014	Stephen Del Bosque	15332	Police Officer	6598	Stephen	Del Bosque	2000-06-19 00:00:00	2011-03-31 00:00:00
677	25130	Frances Escobedo	19445	Police Officer	8046	Frances	Escobedo	2000-08-14 00:00:00	\N
368	25331	Elmer Fabian Jr	13999	Sergeant Of Police	8176	Elmer	Fabian Jr	2000-10-10 00:00:00	\N
1027	16148	James Jones	73	Dep Chief	13701	James	Jones	1986-12-22 00:00:00	\N
18	26815	Nick Kakos	7451	Police Officer	13996	Nick	Kakos	2003-02-24 00:00:00	\N
693	27299	Andrew Kemps	16145	Police Officer	14442	Andrew	Kemps	2004-04-26 00:00:00	\N
1030	20098	Anargyros Kereakes	1035	Sergeant Of Police	14513	Anargyros	Kereakes	1994-05-31 00:00:00	\N
663	28061	Patrick Kinney	12614	Police Officer	14699	Patrick	Kinney	2005-10-31 00:00:00	\N
738	28554	William Korwin	19122	Police Officer	15049	William	Korwin	2006-07-31 00:00:00	\N
1947	27632	Bradley Loduca	11172	Police Officer	16404	Bradley	Loduca	2004-11-29 00:00:00	\N
86	30365	Erik Martinez	17750	Police Officer	17616	Erik	Martinez	2013-03-05 00:00:00	\N
426	18570	Hector Matias	20897	Po As Detective	17739	Hector	Matias	1991-11-18 00:00:00	\N
348	26629	Robert Mcgee	13378	Police Officer	18591	Robert	Mcgee	2002-10-28 00:00:00	\N
1641	27371	Jose Estrada	11109	Police Officer	31952	Jose	Estrada	2004-09-27 00:00:00	\N
2050	26952	Ricardo Gonzalez	10516	Police Officer	32001	Ricardo	Gonzalez	2003-08-25 00:00:00	\N
2127	17434	Daniel Gutierrez	8273	Police Officer	32013	Daniel	Gutierrez	1990-03-26 00:00:00	\N
972	22993	Majdi Shalabi	\N	Po As Detective	26065	Majdi	Shalabi	1997-09-02 00:00:00	\N
1940	26307	Richard Novotny	\N	Police Officer	20684	Richard	Novotny	2002-03-25 00:00:00	2010-01-25 00:00:00
2232	23252	Brian Berkowitz	\N	Sergeant Of Police	1851	Brian	Berkowitz	1998-06-08 00:00:00	\N
1121	16532	Robert Belczak	1088	Sergeant Of Police	1696	Robert	Belczak	1987-12-07 00:00:00	2015-08-15 00:00:00
1145	19919	Jorge Cerda	10607	Police Officer	4332	Jorge	Cerda	1994-05-02 00:00:00	\N
1548	23903	Paul Cirrincione	9643	Police Officer	4692	Paul	Cirrincione	1999-03-08 00:00:00	\N
51	26268	Jerry Doskocz	6573	Po Asgn Evid. Techni	7216	Jerry	Doskocz	2002-03-25 00:00:00	\N
1738	26684	Peter Edwards	5954	Sergeant Of Police	7773	Peter	Edwards	2002-12-02 00:00:00	\N
680	29115	Matthew Johnson	14518	Police Officer	13534	Matthew	Johnson	2007-07-09 00:00:00	\N
257	25345	Matthew Kasput	8223	Sergeant Of Police	14168	Matthew	Kasput	2000-10-10 00:00:00	\N
2078	20105	Robert Kurian	16418	Police Officer	15407	Robert	Kurian	1994-05-31 00:00:00	\N
1651	28738	Sean Lewis	5547	Police Officer	16170	Sean	Lewis	2006-10-30 00:00:00	2014-08-27 00:00:00
1338	25851	Anton Little	10973	Police Officer	16342	Anton	Little	2001-06-25 00:00:00	\N
641	29059	Patrick Lorde	12405	Police Officer	16575	Patrick	Lorde	2007-06-04 00:00:00	\N
800	25730	Daniel Pacelli	8802	Police Officer	21571	Daniel	Pacelli	2001-04-30 00:00:00	\N
1699	26636	Brett Palm	16255	Police Officer	21684	Brett	Palm	2002-10-28 00:00:00	\N
1454	16348	Jean Parker	17991	Police Officer	21856	Jean	Parker	1987-03-09 00:00:00	\N
565	18217	Angela Parker	16374	Police Officer	21862	Angela	Parker	1991-03-27 00:00:00	2016-04-15 00:00:00
1873	29222	Peter Pietrusiewicz	12734	Sergeant Of Police	22573	Peter	Pietrusiewicz	2007-08-27 00:00:00	\N
1967	27147	David Pina	13038	Police Officer	22621	David	Pina	2003-10-27 00:00:00	2013-11-12 00:00:00
449	28788	John Fazy	19953	Police Officer	31956	John	Fazy	2006-11-27 00:00:00	\N
2266	22346	Kenneth Fowler	19250	Sergeant Of Police	31968	Kenneth	Fowler	1996-12-02 00:00:00	\N
799	26146	Robert Gallas	17815	Police Officer	31980	Robert	Gallas	2001-12-17 00:00:00	\N
291	24468	David Guzman	12877	Police Officer	32016	David	Guzman	1999-10-25 00:00:00	\N
353	27297	Brad Johnson	10048	Police Officer	32076	Brad	Johnson	2004-04-26 00:00:00	\N
1234	27393	Warren Johnson	17442	Police Officer	32082	Warren	Johnson	2004-09-27 00:00:00	\N
1119	19642	Joseph Nega	20634	Po As Detective	32218	Joseph	Nega	1993-11-22 00:00:00	\N
235	25363	Dragan Nikin	9557	Police Technician	32219	Dragan	Nikin	2000-10-10 00:00:00	\N
523	18128	Ronald Norway	6797	Police Officer	32220	Ronald	Norway	1991-02-27 00:00:00	\N
298	24858	Daniel O Brien	4921	Police Officer	32224	Daniel	O Brien	2000-01-24 00:00:00	\N
26	16592	Dennis Graham	\N	Police Officer	10541	Dennis	Graham	1987-12-07 00:00:00	\N
1701	24049	Michael Scapardine	\N	Sergeant Of Police	25559	Michael	Scapardine	1999-05-10 00:00:00	\N
1958	27432	Heather Scherr	\N	Police Officer	25625	Heather	Scherr	2004-09-27 00:00:00	\N
1970	21328	Jeffrey Loquercio	\N	Police Officer	16574	Jeffrey	Loquercio	1995-07-10 00:00:00	\N
2301	7557	Terry Hillard	\N	Supt Of Police	12252	Terry	Hillard	1968-03-11 00:00:00	2003-08-15 00:00:00
2395	208	Joseph Faculak	\N	Police Officer	8184	Joseph	Faculak	1946-05-07 00:00:00	1981-01-20 00:00:00
448	19084	James Ciannella	1068	Sergeant Of Police	4636	James	Ciannella	1992-06-29 00:00:00	\N
1618	21402	Eugene Ciardullo	15202	Police Officer	4638	Eugene	Ciardullo	1995-08-07 00:00:00	\N
2098	22920	Michael Connolly	16869	Police Officer	5193	Michael	Connolly	1997-09-02 00:00:00	\N
1673	22041	Michael Cosentino	4487	Po/Field Trning Off	5456	Michael	Cosentino	1996-07-08 00:00:00	\N
1602	28133	James Couch	12716	Police Officer	5523	James	Couch	2005-12-05 00:00:00	\N
919	29616	Jason Demas	7982	Police Officer	6706	Jason	Demas	2010-04-16 00:00:00	\N
966	29248	Jeffrey Frahm	5904	Police Officer	9038	Jeffrey	Frahm	2007-09-24 00:00:00	\N
399	30355	Valerie Hartmann	17577	Police Officer	11606	Valerie	Hartmann	2013-03-05 00:00:00	\N
127	29558	Matthew Mackowiak	5156	Police Officer	16887	Matthew	Mackowiak	2009-12-16 00:00:00	2016-06-06 00:00:00
222	27647	Matthew Mcnicholas	13292	Sergeant Of Police	18655	Matthew	Mcnicholas	2004-11-29 00:00:00	\N
1166	15991	Brian Melson	11579	Police Officer	18783	Brian	Melson	1986-11-17 00:00:00	2015-02-15 00:00:00
316	18878	John Piechocki	1349	Sergeant Of Police	22516	John	Piechocki	1991-12-16 00:00:00	\N
2335	15165	Michael Pietryla	21209	Po As Detective	22575	Michael	Pietryla	1986-06-16 00:00:00	2014-11-14 00:00:00
428	26052	Michael Pinzine	17297	Police Officer	22636	Michael	Pinzine	2001-09-24 00:00:00	\N
835	28579	Nicholas Pocius	11106	Police Officer	22731	Nicholas	Pocius	2006-07-31 00:00:00	\N
1611	15558	Christine Pokojowczyk	3083	Police Officer	22753	Christine	Pokojowczyk	1986-08-11 00:00:00	\N
1693	22090	Steve Rebaya	19960	Police Officer	23556	Steve	Rebaya	1996-07-08 00:00:00	\N
2095	18748	Salvatore Reina	2622	Sergeant Of Police	23690	Salvatore	Reina	1991-12-02 00:00:00	\N
2053	23790	Alberto Retamozo	12815	Police Officer	23744	Alberto	Retamozo	1998-11-30 00:00:00	\N
587	26366	John Moss	10791	Police Officer	32208	John	Moss	2002-04-29 00:00:00	\N
575	14094	Carlos Mostek	196	Lieutenant Of Police	32209	Carlos	Mostek	1982-07-19 00:00:00	\N
612	27534	Sean Obrien	13098	Police Officer	32231	Sean	Obrien	2004-10-25 00:00:00	\N
1278	15809	Joseph Perez	10546	Police Officer	32256	Joseph	Perez	1986-10-13 00:00:00	\N
527	25372	Angela Pittman	8235	Police Officer	32264	Angela	Pittman	2000-10-10 00:00:00	\N
1574	10924	David Fietko	20170	Po As Detective	8483	David	Fietko	1973-06-04 00:00:00	2012-02-15 00:00:00
1264	29335	Jody Weis	\N	Supt Of Police	30314	Jody	Weis	2008-02-01 00:00:00	2011-03-01 00:00:00
1852	17775	Russell Egan	\N	Sergeant Of Police	7801	Russell	Egan	1990-08-27 00:00:00	\N
1956	14987	James Evitt	\N	Sergeant Of Police	8165	James	Evitt	1986-03-31 00:00:00	2016-05-15 00:00:00
2007	28059	Andrew Kalinowski	\N	Police Officer	14022	Andrew	Kalinowski	2005-10-31 00:00:00	\N
2058	19341	Joseph Mc Inerney	\N	Police Officer	18293	Joseph	Mc Inerney	1992-12-07 00:00:00	\N
2125	20595	Duane De Vries	\N	Lieutenant Of Police	31912	Duane	De Vries	1994-10-03 00:00:00	\N
2158	15341	Benita Miller	\N	Police Officer	19130	Benita	Miller	1986-07-14 00:00:00	2016-07-15 00:00:00
2357	6594	Edward Triggs	\N	Po As Detective	28916	Edward	Triggs	1966-10-17 00:00:00	2003-05-13 00:00:00
174	24103	John Dineen	\N	Sergeant Of Police	6950	John	Dineen	1999-06-21 00:00:00	\N
55	18343	Patrick Conway	\N	Sergeant Of Police	5265	Patrick	Conway	1991-05-22 00:00:00	\N
99	30463	Thomas Bastien	17455	Police Officer	1505	Thomas	Bastien	2013-04-01 00:00:00	\N
1346	22535	Felix Batista	14865	Police Officer	1517	Felix	Batista	1997-05-05 00:00:00	\N
238	20045	Gustavo Bedoy	3241	Police Officer	1662	Gustavo	Bedoy	1994-05-31 00:00:00	\N
703	24890	Vincent Vogt	6802	Sergeant Of Police	29691	Vincent	Vogt	2000-01-24 00:00:00	\N
1351	27236	Paul Heyden Ii	13461	Police Officer	32045	Paul	Heyden Ii	2004-01-26 00:00:00	\N
274	18028	Francisco Gomez	\N	Police Officer	31995	Francisco	Gomez	1991-01-30 00:00:00	\N
765	27444	Bernard Veleta	\N	Po As Detective	29491	Bernard	Veleta	2004-09-27 00:00:00	\N
1239	25833	Sharmaun Freeman	\N	Police Officer	31971	Sharmaun	Freeman	2001-06-25 00:00:00	\N
1240	22751	Kevin Sellers	\N	Sergeant Of Police	25976	Kevin	Sellers	1997-07-07 00:00:00	\N
1245	26063	Juan Vasquez	\N	Police Officer	29395	Juan	Vasquez	2001-09-24 00:00:00	2012-10-17 00:00:00
1306	26039	Demetrios Kereakes	\N	Police Officer	32100	Demetrios	Kereakes	2001-09-24 00:00:00	\N
1517	28241	Judith Cortes	\N	Police Officer	5440	Judith	Cortes	2006-01-23 00:00:00	\N
1520	23520	Saul Rodriguez	\N	Police Officer	24460	Saul	Rodriguez	1998-08-31 00:00:00	\N
1530	29364	Janelle Hamilton	\N	Police Officer	32021	Janelle	Hamilton	2008-04-28 00:00:00	\N
1659	18864	Paul Morin	\N	Police Officer	19662	Paul	Morin	1991-12-16 00:00:00	\N
1691	19210	Shaun Fleischhacker	183	Sergeant Of Police	8701	Shaun	Fleischhacker	1992-09-28 00:00:00	\N
1700	26196	Michael Younan	\N	Police Officer	31415	Michael	Younan	2001-12-17 00:00:00	\N
1891	21715	Mark Brown	\N	Police Officer	2981	Mark	Brown	1995-12-04 00:00:00	\N
1915	25085	Trevor Stotts	\N	Police Officer	32361	Trevor	Stotts	2000-06-19 00:00:00	\N
1971	15866	Anthony Wronkowski	\N	Po As Detective	31314	Anthony	Wronkowski	1986-10-13 00:00:00	2015-12-15 00:00:00
1997	27982	Sonia Moriarty	\N	Po/Field Trning Off	19656	Sonia	Moriarty	2005-09-26 00:00:00	\N
2056	26386	Daniel Binfa	\N	Police Officer	2037	Daniel	Binfa	2002-05-28 00:00:00	\N
2057	24919	Mark Duignan	\N	Sergeant Of Police	7524	Mark	Duignan	2000-02-28 00:00:00	\N
2080	26736	Jamie Toczek	\N	Police Officer	28643	Jamie	Toczek	2002-12-02 00:00:00	\N
2090	20725	Anthony Abbate	\N	Police Officer	6	Anthony	Abbate	1994-12-05 00:00:00	2009-12-22 00:00:00
2091	18884	Anthony Reyes	\N	Po As Detective	23760	Anthony	Reyes	1991-12-16 00:00:00	\N
2101	21141	Daniel De Lopez	\N	Police Officer	31910	Daniel	De Lopez	1995-06-05 00:00:00	\N
2109	26973	Brigid Menoni	\N	Police Officer	18842	Brigid	Menoni	2003-08-25 00:00:00	\N
2113	25674	George Niedzwiecki	\N	Police Officer	20507	George	Niedzwiecki	2001-03-26 00:00:00	\N
2144	26312	Danielle Philp	\N	Police Officer	22487	Danielle	Philp	2002-03-25 00:00:00	\N
2147	27037	Piotr Czarniecki	\N	Police Officer	6029	Piotr	Czarniecki	2003-09-29 00:00:00	\N
2155	9875	Richard Cason	\N	Police Officer	4157	Richard	Cason	1971-10-25 00:00:00	2007-05-15 00:00:00
2289	12208	Richard Rybicki	\N	Lieutenant Of Police	25059	Richard	Rybicki	1977-01-03 00:00:00	2006-07-15 00:00:00
2304	17367	Ronald Colyar	\N	Police Officer	5100	Ronald	Colyar	1990-03-26 00:00:00	2017-02-01 00:00:00
853	25409	John Bakopoulos	12689	Police Officer	1141	John	Bakopoulos	2000-12-18 00:00:00	\N
2340	15609	John Blake	454	Lieutenant Of Police	2119	John	Blake	1986-09-08 00:00:00	2006-09-11 00:00:00
367	30339	Kevin Bunge	19906	Police Officer	3287	Kevin	Bunge	2013-03-05 00:00:00	\N
437	30277	Jeffrey Carrero	9574	Police Officer	3990	Jeffrey	Carrero	2013-02-19 00:00:00	\N
171	30181	Michael Wagner	\N	Police Officer	29768	Michael	Wagner	2012-11-30 00:00:00	\N
1270	24290	Joseph Carroll	11252	Po/Field Trning Off	4036	Joseph	Carroll	1999-09-13 00:00:00	\N
2344	24472	Florinda Herrera	13273	Police Officer	12080	Florinda	Herrera	1999-10-25 00:00:00	\N
850	27876	Errol Hicks	17902	Police Officer	12158	Errol	Hicks	2005-08-29 00:00:00	\N
729	24835	Anthony Hicks	4747	Police Officer	12159	Anthony	Hicks	2000-01-24 00:00:00	\N
1028	20092	Sean Joyce	2348	Captain Of Police	13900	Sean	Joyce	1994-05-31 00:00:00	\N
1893	19972	Michael Marozas	11364	Police Officer	17397	Michael	Marozas	1994-05-02 00:00:00	\N
60	26055	Gisela Santiago	\N	Police Officer	25412	Gisela	Santiago	2001-09-24 00:00:00	\N
80	28045	Leopoldo Delannoy	\N	Police Officer	6640	Leopoldo	Delannoy	2005-10-31 00:00:00	\N
255	18734	Mark O Hara	\N	Police Officer	20971	Mark	O Hara	1991-12-02 00:00:00	\N
486	28038	Vincent Cecchin	\N	Police Officer	4283	Vincent	Cecchin	2005-10-31 00:00:00	\N
553	26882	Louis Garcia	\N	Police Officer	9596	Louis	Garcia	2003-04-28 00:00:00	\N
699	26891	Cesar Kuri	\N	Police Officer	32118	Cesar	Kuri	2003-04-28 00:00:00	\N
1462	24648	Noel Esquivel	\N	Police Officer	8082	Noel	Esquivel	1999-11-29 00:00:00	\N
1498	28595	Daniel Skupien	\N	Sergeant Of Police	26583	Daniel	Skupien	2006-07-31 00:00:00	\N
1549	27735	Elliot Flagg	\N	Police Officer	8657	Elliot	Flagg	2005-01-03 00:00:00	\N
2072	15476	John Graeber	\N	Commander	10527	John	Graeber	1986-08-11 00:00:00	\N
2142	14458	Mark Vail	\N	Sergeant Of Police	29210	Mark	Vail	1983-02-14 00:00:00	2009-02-20 00:00:00
2218	25482	Theodore Magno	\N	Police Officer	16957	Theodore	Magno	2000-12-18 00:00:00	\N
2229	26618	Curtis Hinkle	\N	Police Officer	12282	Curtis	Hinkle	2002-10-28 00:00:00	\N
2235	24506	Willis Rounds	\N	Police Officer	24784	Willis	Rounds	1999-10-25 00:00:00	2012-03-14 00:00:00
2249	26746	Johnetta Williams	90879	Police Officer	30748	Johnetta	Williams	2002-12-02 00:00:00	\N
2250	22241	Sean Loughran	39387	Commander	16617	Sean	Loughran	1996-11-04 00:00:00	\N
2252	18637	Eural Black	\N	Police Officer	2085	Eural	Black	1991-12-02 00:00:00	2007-05-11 00:00:00
2263	21117	Antonio Allen	\N	Expl Tech 1	367	Antonio	Allen	1995-06-05 00:00:00	\N
2296	14978	John Zalatoris	201919	Po As Detective	31514	John	Zalatoris	1986-02-03 00:00:00	\N
2310	6852	Frank Radke	\N	Asst Deputy Sup	23295	Frank	Radke	1967-02-13 00:00:00	2007-04-01 00:00:00
2318	8000	Michael Kill	\N	Po As Detective	14589	Michael	Kill	1968-09-30 00:00:00	1994-10-16 00:00:00
2350	20668	Edward Nicol	\N	Sergeant Of Police	20495	Edward	Nicol	1994-10-03 00:00:00	\N
457	29341	Gino Antoniazzi	13961	Police Officer	758	Gino	Antoniazzi	2008-04-28 00:00:00	\N
2221	11734	Joan Biebel	1545	Sergeant Of Police	1981	Joan	Biebel	1976-04-26 00:00:00	2005-07-31 00:00:00
2180	19562	John Butler	11430	Police Officer	3487	John	Butler	1993-11-22 00:00:00	2008-11-26 00:00:00
216	27724	Luis Centeno	11203	Police Officer	4313	Luis	Centeno	2005-01-03 00:00:00	\N
1246	29242	John Chen	13173	Police Officer	4474	John	Chen	2007-09-24 00:00:00	\N
1467	22800	Christoph Davy	1489	Sergeant Of Police	6399	Christoph	Davy	1997-08-04 00:00:00	\N
1428	25445	Patrick Felker	3150	Police Officer	8340	Patrick	Felker	2000-12-18 00:00:00	\N
1553	27607	Nichelle Fraction	16629	Sergeant Of Police	9034	Nichelle	Fraction	2004-11-29 00:00:00	\N
1572	22348	Daniel Freeman	19212	Police Officer	9138	Daniel	Freeman	1996-12-02 00:00:00	2017-03-15 00:00:00
1029	20781	Michael Kaczynski	18675	Police Officer	13975	Michael	Kaczynski	1994-12-05 00:00:00	\N
1576	15114	Steven Kajdi	21500	Po As Detective	13995	Steven	Kajdi	1986-06-16 00:00:00	2011-07-16 00:00:00
544	21431	Christoph Kane	13749	Police Officer	14065	Christoph	Kane	1995-08-07 00:00:00	\N
1322	18271	Michael Kapior	16574	Police Officer	14089	Michael	Kapior	1991-04-24 00:00:00	\N
2092	23928	Thomas Keane	21432	Lieutenant Of Police	14228	Thomas	Keane	1999-03-08 00:00:00	\N
2175	16253	Mark Marianovich	2446	Captain Of Police	17336	Mark	Marianovich	1987-02-02 00:00:00	\N
949	24252	Angela Marietta-Jezior	2064	Sergeant Of Police	17338	Angela	Marietta-Jezior	1999-08-02 00:00:00	\N
792	25049	Sean Markham	19054	Police Officer	17365	Sean	Markham	2000-06-19 00:00:00	\N
2118	21657	William Marley	20182	Po As Detective	17380	William	Marley	1995-10-23 00:00:00	\N
1656	23775	Mary Martin	12195	Sergeant Of Police	17494	Mary	Martin	1998-11-30 00:00:00	\N
1514	26300	Angelique Martinez	9541	Police Officer	17592	Angelique	Martinez	2002-03-25 00:00:00	\N
297	29808	Adam Maseth	9439	Police Officer	17654	Adam	Maseth	2011-10-17 00:00:00	\N
507	29561	Zeyad Matlock	3891	Po/Field Trning Off	17752	Zeyad	Matlock	2009-12-16 00:00:00	\N
755	27650	Michael Modzelewski	13196	Police Officer	19324	Michael	Modzelewski	2004-11-29 00:00:00	\N
1968	14698	Juan Morado	65	Captain Of Police	19532	Juan	Morado	1985-07-01 00:00:00	2014-07-15 00:00:00
1201	21338	Raul Moreno	2223	Sergeant Of Police	19602	Raul	Moreno	1995-07-10 00:00:00	\N
1952	25055	Timothy Morgan	16846	Police Officer	19639	Timothy	Morgan	2000-06-19 00:00:00	\N
2359	9181	William Moser Jr	20465	Po As Detective	19748	William	Moser Jr	1970-09-14 00:00:00	2000-05-15 00:00:00
68	27983	Richard Mostowski	12898	Police Officer	19785	Richard	Mostowski	2005-09-26 00:00:00	\N
1280	23781	David Mullany	10886	Police Officer	19885	David	Mullany	1998-11-30 00:00:00	\N
2257	23113	William Mullen	12673	Police Officer	19888	William	Mullen	1998-03-16 00:00:00	\N
250	16949	Ronald Baez	\N	Police Officer	1056	Ronald	Baez	1988-12-05 00:00:00	\N
2356	13468	Gerard Carroll	\N	Captain Of Police	4039	Gerard	Carroll	1981-05-18 00:00:00	2011-11-15 00:00:00
2375	8309	Peter Dignan	\N	Lieutenant Of Police	6912	Peter	Dignan	1969-03-31 00:00:00	2002-06-15 00:00:00
2379	10091	Raymond Madigan	\N	Sergeant Of Police	16921	Raymond	Madigan	1972-04-03 00:00:00	2009-07-31 00:00:00
2391	5272	Frederick Hill	\N	Po As Detective	12219	Frederick	Hill	1964-06-01 00:00:00	1997-02-01 00:00:00
2392	7609	Anthony Katalinic	\N	Po As Detective	14173	Anthony	Katalinic	1968-03-25 00:00:00	1997-09-01 00:00:00
697	26669	Aldo Brown	13838	Police Officer	3043	Aldo	Brown	2002-12-02 00:00:00	2016-03-16 00:00:00
1789	24443	Jesus Cano	13648	Sergeant Of Police	3816	Jesus	Cano	1999-10-25 00:00:00	\N
241	29534	Jonas Dodoo	13259	Police Officer	7028	Jonas	Dodoo	2009-12-16 00:00:00	\N
613	27171	Christoph Doherty	5741	Police Officer	7045	Christoph	Doherty	2003-11-24 00:00:00	\N
2065	23912	Joseph Ferraro	6619	Lieutenant Of Police	8417	Joseph	Ferraro	1999-03-08 00:00:00	\N
2001	27045	Jennifer Fregeau	9213	Police Officer	9147	Jennifer	Fregeau	2003-09-29 00:00:00	\N
1856	24196	Greg Jacobson	20031	Sergeant Of Police	13162	Greg	Jacobson	1999-07-12 00:00:00	\N
934	24250	Adolfo Lopez Jr	15191	Police Officer	16569	Adolfo	Lopez Jr	1999-08-02 00:00:00	\N
228	29379	Sergio Martinez	9849	Police Officer	17572	Sergio	Martinez	2008-04-28 00:00:00	\N
2023	27519	Jair Martinez	17046	Police Officer	17615	Jair	Martinez	2004-10-25 00:00:00	\N
789	21204	Shane Mc Hugh	1077	Sergeant Of Police	18275	Shane	Mc Hugh	1995-06-05 00:00:00	\N
2387	7616	James Minogue	13871	Sergeant Of Police	19202	James	Minogue	1968-03-25 00:00:00	2000-04-16 00:00:00
1456	20938	Jenny Molda	3253	Police Officer	19344	Jenny	Molda	1995-01-03 00:00:00	\N
1872	26365	Joseph Mook	16277	Police Officer	19438	Joseph	Mook	2002-04-29 00:00:00	2016-06-20 00:00:00
1831	19795	Richard Moravec	933	Lieutenant Of Police	19591	Richard	Moravec	1993-12-13 00:00:00	\N
1149	26713	Scott Morrison	18573	Police Officer	19710	Scott	Morrison	2002-12-02 00:00:00	2012-09-06 00:00:00
1037	26304	Hanif Mosi	4382	Police Officer	19754	Hanif	Mosi	2002-03-25 00:00:00	\N
918	29735	Francisco Moya	17172	Police Officer	19807	Francisco	Moya	2010-09-01 00:00:00	\N
2079	26367	Arustus Muhammad	12020	Police Officer	19853	Arustus	Muhammad	2002-04-29 00:00:00	\N
188	24213	Bartholom Murphy	17790	Police Officer	20038	Bartholom	Murphy	1999-07-12 00:00:00	\N
1650	24961	Brian Murphy	10079	Police Officer	20046	Brian	Murphy	2000-02-28 00:00:00	\N
1746	18868	Elizabeth Nolan	1217	Sergeant Of Police	20583	Elizabeth	Nolan	1991-12-16 00:00:00	2013-12-21 00:00:00
577	26774	Terrence Norris	16143	Police Officer	20633	Terrence	Norris	2003-01-27 00:00:00	\N
999	26904	Gerald Nowakowski Jr	3536	Police Officer	20708	Gerald	Nowakowski Jr	2003-04-28 00:00:00	\N
420	28642	Brian Nunes	19570	Police Officer	20728	Brian	Nunes	2006-08-28 00:00:00	\N
198	27901	Ryan Nutile	19783	Police Officer	20746	Ryan	Nutile	2005-08-29 00:00:00	\N
1923	18293	Joseph Oskvarek	8891	Police Officer	21483	Joseph	Oskvarek	1991-04-24 00:00:00	2016-05-15 00:00:00
625	20677	Ralph Palomino	18473	Police Officer	21703	Ralph	Palomino	1994-10-03 00:00:00	\N
1104	28576	Raena Peele	4919	Police Officer	22132	Raena	Peele	2006-07-31 00:00:00	\N
480	28649	Brian Peete	17811	Police Officer	22135	Brian	Peete	2006-08-28 00:00:00	2015-05-15 00:00:00
1603	27664	Quincy Percy	17873	Police Officer	22221	Quincy	Percy	2004-11-29 00:00:00	\N
1874	26838	Carlos Perez	4590	Police Officer	22251	Carlos	Perez	2003-02-24 00:00:00	\N
1378	29407	Jon Utz	\N	Sergeant Of Police	29194	Jon	Utz	2008-04-28 00:00:00	\N
1014	26415	Charles Barango	15937	Police Officer	1283	Charles	Barango	2002-07-29 00:00:00	\N
605	28865	Carmelo Camacho	4385	Police Officer	3721	Carmelo	Camacho	2006-12-18 00:00:00	\N
694	27594	Aaron Carranza	13693	Sergeant Of Police	3978	Aaron	Carranza	2004-11-29 00:00:00	\N
706	28472	Navjot Watson	9983	Police Officer	14195	Navjot	Watson	2006-05-22 00:00:00	\N
572	24811	Dennis Conway	11355	Police Officer	5272	Dennis	Conway	2000-01-24 00:00:00	\N
1842	25010	Deronis Cooper	17206	Police Officer	5332	Deronis	Cooper	2000-06-19 00:00:00	\N
594	19589	John Dowd	1554	Lieutenant Of Police	7261	John	Dowd	1993-11-22 00:00:00	\N
656	29684	Charita Edwards	10095	Po/Field Trning Off	7774	Charita	Edwards	2010-09-01 00:00:00	\N
798	25439	Oscar Escalante	15081	Police Officer	8024	Oscar	Escalante	2000-12-18 00:00:00	\N
1446	17778	Sergio Escobedo	11634	Police Officer	8047	Sergio	Escobedo	1990-08-27 00:00:00	\N
1777	11766	John Francis	205	Lieutenant Of Police	9055	John	Francis	1976-04-26 00:00:00	2012-11-15 00:00:00
1712	28250	David Griffin	7632	Police Officer	10803	David	Griffin	2006-01-23 00:00:00	2015-01-07 00:00:00
630	27881	John Kennedy	12134	Sergeant Of Police	14476	John	Kennedy	2005-08-29 00:00:00	\N
950	26045	Noel Martinez	5723	Police Officer	17580	Noel	Martinez	2001-09-24 00:00:00	\N
1332	29175	Michael Mitchell	6099	Police Officer	19257	Michael	Mitchell	2007-07-30 00:00:00	\N
2328	15147	Dolores Myles	20242	Po As Detective	20176	Dolores	Myles	1986-06-16 00:00:00	\N
1863	21219	Thomas Norberg	13402	Police Officer	20618	Thomas	Norberg	1995-06-05 00:00:00	\N
953	24857	Reynaldo Nunez	5259	Po As Detective	20729	Reynaldo	Nunez	2000-01-24 00:00:00	\N
2183	17708	Felipe Nunez	9962	Police Officer	20730	Felipe	Nunez	1990-07-30 00:00:00	\N
857	29740	Laura Nutile	6770	Police Officer	20745	Laura	Nutile	2010-09-01 00:00:00	\N
1733	25991	Craig Nykiel	18578	Police Officer	20756	Craig	Nykiel	2001-08-27 00:00:00	\N
2066	21869	Eric Oswald	20557	Po As Detective	21506	Eric	Oswald	1996-03-18 00:00:00	\N
556	29428	Malista Oware	8554	Police Officer	21534	Malista	Oware	2008-05-19 00:00:00	\N
242	30098	Oscar Carrasco	1518	Police Officer	3981	Oscar	Carrasco	2012-11-30 00:00:00	\N
357	20434	Mark Smith	12934	Police Officer	32346	Mark	Smith	1994-08-01 00:00:00	\N
460	18331	Eugene Bikulcius	\N	Sergeant Of Police	2015	Eugene	Bikulcius	1991-05-22 00:00:00	\N
1991	15813	Joseph Porebski	\N	Lieutenant Of Police	22835	Joseph	Porebski	1986-10-13 00:00:00	\N
2121	20185	Thomas Carr	320308	Sergeant Of Police	3974	Thomas	Carr	1994-07-05 00:00:00	\N
2156	23212	Pauline Heard	\N	Police Officer	11823	Pauline	Heard	1998-05-26 00:00:00	\N
1973	25202	Michael Amorella	10544	Police Officer	542	Michael	Amorella	2000-09-11 00:00:00	\N
2164	19709	Phillip Brown	20362	Po As Detective	2930	Phillip	Brown	1993-12-13 00:00:00	\N
617	21919	Adam Burns	13450	Police Officer	3395	Adam	Burns	1996-05-06 00:00:00	\N
1440	23144	Dwayne Collier	18240	Police Officer	5012	Dwayne	Collier	1998-04-13 00:00:00	\N
334	27379	Clauzell Gause	14001	Police Officer	9741	Clauzell	Gause	2004-09-27 00:00:00	\N
672	27385	Derrick Harland	14388	Police Officer	11427	Derrick	Harland	2004-09-27 00:00:00	2013-07-12 00:00:00
823	23921	Gary Hughes	10709	Police Officer	12759	Gary	Hughes	1999-03-08 00:00:00	\N
2306	21749	Dimitrios Lamperis	19600	Sergeant Of Police	15611	Dimitrios	Lamperis	1995-12-04 00:00:00	\N
1633	27398	Timothy Lange	19206	Police Officer	15657	Timothy	Lange	2004-09-27 00:00:00	\N
1207	23574	Juan Martinez	19230	Police Officer	17585	Juan	Martinez	1998-09-28 00:00:00	\N
2202	23721	William Morales	15318	Sergeant Of Police	19554	William	Morales	1998-10-26 00:00:00	\N
1490	27312	Noel Morgan	8714	Police Officer	19620	Noel	Morgan	2004-04-26 00:00:00	\N
622	27255	Louis Pinklyn Jr	15712	Police Officer	22627	Louis	Pinklyn Jr	2004-01-26 00:00:00	\N
1525	24609	Michael Putrow	9758	Police Officer	23174	Michael	Putrow	1999-11-15 00:00:00	\N
1769	21989	Patrick Quinn	19828	Police Officer	23229	Patrick	Quinn	1996-05-06 00:00:00	\N
1039	23517	Johnny Quinones	19066	Police Officer	23258	Johnny	Quinones	1998-08-31 00:00:00	\N
1488	23949	Calvin Ridgell Jr	6997	Police Officer	23933	Calvin	Ridgell Jr	1999-03-08 00:00:00	\N
570	29392	William Riga Jr	13289	Sergeant Of Police	23950	William	Riga Jr	2008-04-28 00:00:00	\N
1877	27675	Julio Rodriguez	13897	Police Officer	24384	Julio	Rodriguez	2004-11-29 00:00:00	\N
793	20141	Harold Rodriguez	17679	Po/Field Trning Off	24431	Harold	Rodriguez	1994-05-31 00:00:00	2013-07-08 00:00:00
1001	25740	Jose Rodriguez	4743	Police Officer	24438	Jose	Rodriguez	2001-04-30 00:00:00	\N
1975	25274	Peter Roehl	14128	Police Officer	24475	Peter	Roehl	2000-09-11 00:00:00	\N
567	27681	Roberto Ruiz	19472	Police Officer	24904	Roberto	Ruiz	2004-11-29 00:00:00	\N
763	29319	Jeffrey Rumbaugh	5876	Sergeant Of Police	24924	Jeffrey	Rumbaugh	2007-10-29 00:00:00	\N
429	27682	Charleene Rusiecka	16110	Police Officer	24940	Charleene	Rusiecka	2004-11-29 00:00:00	\N
1792	27090	Andrew Russell	12623	Police Officer	24951	Andrew	Russell	2003-09-29 00:00:00	\N
136	30008	Vincent Ryan	12351	Police Officer	25032	Vincent	Ryan	2012-10-05 00:00:00	\N
151	20429	Marco Simonetti	9531	Police Officer	26445	Marco	Simonetti	1994-08-01 00:00:00	\N
2033	25184	Jeffrey Siwek	10659	Sergeant Of Police	26530	Jeffrey	Siwek	2000-08-14 00:00:00	\N
541	18604	Scott Slavin	807	Sergeant Of Police	26608	Scott	Slavin	1991-11-18 00:00:00	\N
733	22101	Gregory Sloyan	823	Lieutenant Of Police	26641	Gregory	Sloyan	1996-07-08 00:00:00	\N
805	21683	Dennis Smith	1449	Sergeant Of Police	26775	Dennis	Smith	1995-10-23 00:00:00	\N
1512	29227	Michael Smulski	8021	Police Officer	26916	Michael	Smulski	2007-08-27 00:00:00	2012-08-14 00:00:00
626	26791	Michael Alaniz	13577	Police Officer	262	Michael	Alaniz	2003-02-24 00:00:00	\N
891	28664	Mohammed Ali	7241	Police Officer	352	Mohammed	Ali	2006-09-25 00:00:00	\N
864	24900	Joshua Alvarado	12730	Police Officer	465	Joshua	Alvarado	2000-02-28 00:00:00	\N
730	26793	Richard Antonsen	19692	Police Officer	761	Richard	Antonsen	2003-02-24 00:00:00	\N
1580	28274	Perry Ballard	12444	Police Officer	1189	Perry	Ballard	2006-02-21 00:00:00	\N
2186	14028	Saul Basurto	11660	Police Officer	1506	Saul	Basurto	1982-07-19 00:00:00	2014-03-14 00:00:00
90	30392	Roy Beard Jr	17740	Police Officer	1603	Roy	Beard Jr	2013-03-15 00:00:00	\N
1449	20995	Robert Bell	19019	Police Officer	1715	Robert	Bell	1995-02-06 00:00:00	\N
2068	15232	Ralph Benavides	20447	Po As Detective	1760	Ralph	Benavides	1986-07-14 00:00:00	2015-10-15 00:00:00
752	26506	Joshua Bernson	15360	Police Officer	1884	Joshua	Bernson	2002-09-30 00:00:00	\N
2179	16534	Scott Berry	13627	Police Officer	1891	Scott	Berry	1987-12-07 00:00:00	\N
1720	27587	Robert Bickham	19823	Police Officer	1971	Robert	Bickham	2004-11-29 00:00:00	\N
1506	18930	Marvin Bonds	14798	Police Officer	2352	Marvin	Bonds	1992-01-02 00:00:00	2015-04-15 00:00:00
1099	25106	Mark Bosch	11266	Po As Detective	2442	Mark	Bosch	2000-08-14 00:00:00	\N
2331	22541	John Burzinski	3450	Police Officer	3454	John	Burzinski	1997-05-05 00:00:00	2007-06-25 00:00:00
322	30460	Ivan Aviles	\N	Police Officer	991	Ivan	Aviles	2013-04-01 00:00:00	\N
1614	26336	Gerardo Deluna	2845	Police Officer	6700	Gerardo	Deluna	2002-04-29 00:00:00	\N
165	14424	Michael Mealer	95	Captain Of Police	18684	Michael	Mealer	1983-02-14 00:00:00	2015-11-15 00:00:00
980	26049	Jonathan Medina	6214	Sergeant Of Police	18707	Jonathan	Medina	2001-09-24 00:00:00	\N
79	15336	Patrick Medrano	878	Sergeant Of Police	18721	Patrick	Medrano	1986-07-14 00:00:00	2016-08-15 00:00:00
952	28304	Ramon Melendez	11398	Police Officer	18763	Ramon	Melendez	2006-02-21 00:00:00	\N
321	17608	John Villa	20329	Po As Detective	29590	John	Villa	1990-03-26 00:00:00	\N
1401	29234	Ricky Villacis	5394	Police Officer	29596	Ricky	Villacis	2007-08-27 00:00:00	2014-03-21 00:00:00
762	29091	Arturo Villanueva	14209	Police Officer	29609	Arturo	Villanueva	2007-06-04 00:00:00	\N
76	30011	Anthony Vincent	15162	Police Officer	29627	Anthony	Vincent	2012-10-05 00:00:00	\N
1612	25294	Matthew Walton	5342	Police Officer	29978	Matthew	Walton	2000-09-11 00:00:00	\N
623	26408	James Ward	12533	Police Officer	30024	James	Ward	2002-05-28 00:00:00	\N
1613	24525	Jonathan Washkevich	12022	Po As Detective	30122	Jonathan	Washkevich	1999-10-25 00:00:00	\N
816	28268	Carl Wasielewski	14033	Sergeant Of Police	30127	Carl	Wasielewski	2006-01-23 00:00:00	\N
1394	26130	Wendy Weller	18273	Police Officer	30337	Wendy	Weller	2001-10-29 00:00:00	\N
1368	27110	Jesse Wells Jr	12459	Police Officer	30353	Jesse	Wells Jr	2003-09-29 00:00:00	\N
1093	29186	Nicholas Wenta	15203	Sergeant Of Police	30374	Nicholas	Wenta	2007-07-30 00:00:00	\N
580	28222	Bret Westcott	12745	Police Officer	30409	Bret	Westcott	2005-12-05 00:00:00	\N
254	16457	Marina Mosquera	\N	Sergeant Of Police	19764	Marina	Mosquera	1987-04-13 00:00:00	\N
547	25004	Senora Ben	\N	Lieutenant Of Police	1758	Senora	Ben	2000-06-19 00:00:00	\N
557	21347	Raymond Pierce	\N	Sergeant Of Police	22536	Raymond	Pierce	1995-07-10 00:00:00	\N
758	26176	Yasir Ramos	\N	Police Officer	23428	Yasir	Ramos	2001-12-17 00:00:00	\N
832	26294	Eric Landorf	\N	Police Officer	15630	Eric	Landorf	2002-03-25 00:00:00	\N
876	19515	Cedric Taylor	\N	Police Officer	28280	Cedric	Taylor	1993-05-17 00:00:00	\N
962	28685	Timothy Granville	6894	Police Officer	32004	Timothy	Granville	2006-09-25 00:00:00	\N
1435	22143	Alan Ithal	196767	Police Officer	12989	Alan	Ithal	1996-08-05 00:00:00	2012-06-03 00:00:00
1725	26526	David Fleming	\N	Police Officer	8717	David	Fleming	2002-09-30 00:00:00	\N
1840	26008	Nissa Torres	\N	Sergeant Of Police	28778	Nissa	Torres	2001-08-27 00:00:00	\N
2284	19085	Samuel Cirone	\N	Sergeant Of Police	4690	Samuel	Cirone	1992-06-29 00:00:00	\N
2321	7370	Andrew Christophersen	\N	Po As Detective	4607	Andrew	Christophersen	1968-02-05 00:00:00	1997-02-13 00:00:00
2352	17827	Christine Lafrancis	\N	Police Officer	15560	Christine	Lafrancis	1990-08-27 00:00:00	2015-01-15 00:00:00
1692	28962	Gabriel Garcia	7497	Police Officer	9526	Gabriel	Garcia	2007-04-02 00:00:00	\N
1714	23924	Kristophe Jaros	9295	Police Officer	13312	Kristophe	Jaros	1999-03-08 00:00:00	\N
206	30357	Brayan Jauregui	4894	Police Officer	13349	Brayan	Jauregui	2013-03-05 00:00:00	\N
221	29551	Kenneth Kendal	17762	Police Officer	14447	Kenneth	Kendal	2009-12-16 00:00:00	\N
88	29262	Kashif Khan	4471	Police Officer	14553	Kashif	Khan	2007-09-24 00:00:00	\N
1426	23107	Michael Malinowski	20858	Sergeant Of Police	17101	Michael	Malinowski	1998-03-16 00:00:00	\N
1247	29034	Joe Rodriguez	5099	Police Officer	24446	Joe	Rodriguez	2007-04-30 00:00:00	\N
236	29767	Amanda Vidljinovic	11589	Police Officer	29580	Amanda	Vidljinovic	2010-09-01 00:00:00	\N
691	24522	Daniel Villa	15055	Police Officer	29593	Daniel	Villa	1999-10-25 00:00:00	\N
839	27109	Bobby Weatherly	11400	Police Officer	30226	Bobby	Weatherly	2003-09-29 00:00:00	\N
635	26856	Eric White	6581	Police Officer	30519	Eric	White	2003-02-24 00:00:00	\N
1889	12590	Roberto Zavala	76	Chief	31581	Roberto	Zavala	1977-11-01 00:00:00	2010-11-15 00:00:00
1683	27016	Wenseslao Zavala	8928	Police Officer	31584	Wenseslao	Zavala	2003-08-25 00:00:00	\N
1963	22435	Nicola Zodo	1561	Lieutenant Of Police	31717	Nicola	Zodo	1996-12-02 00:00:00	\N
2208	24074	Paul Zogg	9345	Sergeant Of Police	31718	Paul	Zogg	1999-05-10 00:00:00	\N
1048	27209	John Zumbrock	4107	Police Officer	31753	John	Zumbrock	2003-11-24 00:00:00	\N
863	24081	Jonathan Apacible	8558	Police Officer	31806	Jonathan	Apacible	1999-06-21 00:00:00	\N
859	28273	David Appel	9755	Police Officer	31807	David	Appel	2006-02-21 00:00:00	\N
776	27116	Vincent Baldassano	12697	Police Officer	31815	Vincent	Baldassano	2003-10-27 00:00:00	\N
860	15429	Michael Bocardo	857	Sergeant Of Police	31834	Michael	Bocardo	1986-08-11 00:00:00	\N
2117	21476	William Brogan	20319	Po As Detective	31842	William	Brogan	1995-09-05 00:00:00	\N
446	26200	Anthony Bruno	12212	Police Officer	31847	Anthony	Bruno	2002-02-25 00:00:00	\N
17	28281	David Carey	12190	Police Officer	31853	David	Carey	2006-02-21 00:00:00	\N
524	18789	Eric Cato	1321	Sergeant Of Police	31859	Eric	Cato	1991-12-16 00:00:00	\N
1115	28723	Joseph Ceglarek	6728	Police Officer	31860	Joseph	Ceglarek	2006-10-30 00:00:00	\N
1214	29287	Anthony Ceja	3161	Police Officer	31861	Anthony	Ceja	2007-10-29 00:00:00	\N
1118	25570	Joseph Chausse	10082	Police Officer	31867	Joseph	Chausse	2001-02-05 00:00:00	\N
57	19441	Colleen Gonzalez	\N	Sergeant Of Police	10323	Colleen	Gonzalez	1993-05-17 00:00:00	\N
97	29246	Dean Ewing	653	Police Officer	8169	Dean	Ewing	2007-09-24 00:00:00	\N
302	23264	Edward Dedo	15645	Police Officer	6552	Edward	Dedo	1998-06-08 00:00:00	\N
365	22145	Percy Johnson	19208	Police Officer	13600	Percy	Johnson	1996-08-05 00:00:00	\N
517	26423	Rene Duran	\N	Police Officer	7587	Rene	Duran	2002-07-29 00:00:00	\N
636	29451	Milton Kinnison	\N	Police Officer	14700	Milton	Kinnison	2008-07-28 00:00:00	\N
1305	23312	Patrick Staunton	\N	Po As Detective	27408	Patrick	Staunton	1998-06-08 00:00:00	\N
2394	7635	Richard Cauble	\N	Po As Detective	4248	Richard	Cauble	1968-04-15 00:00:00	2000-05-16 00:00:00
808	25408	Frank Astudillo	7250	Police Officer	920	Frank	Astudillo	2000-12-18 00:00:00	\N
1573	27032	Lorenzo Colucci	15481	Police Officer	5097	Lorenzo	Colucci	2003-09-29 00:00:00	\N
1327	28781	Carl Cuevas	17173	Police Officer	5855	Carl	Cuevas	2006-11-27 00:00:00	\N
1128	26685	Gilbert Escamilla	7227	Police Officer	8033	Gilbert	Escamilla	2002-12-02 00:00:00	\N
1249	28244	Luis Escobedo	11877	Police Officer	8041	Luis	Escobedo	2006-01-23 00:00:00	\N
1803	24238	Marco Garcia	21408	Po As Detective	9520	Marco	Garcia	1999-08-02 00:00:00	\N
1647	29150	Luis Garcia	6490	Police Officer	9588	Luis	Garcia	2007-07-30 00:00:00	\N
475	25656	Ernesto Herrera	11817	Police Officer	12090	Ernesto	Herrera	2001-03-26 00:00:00	\N
2009	18427	Luis Jimenez	14101	Police Officer	13434	Luis	Jimenez	1991-06-19 00:00:00	\N
1340	19986	Eric Olson	1145	Lieutenant Of Police	21309	Eric	Olson	1994-05-02 00:00:00	\N
578	26109	Kevin Ostafin	9416	Police Officer	21491	Kevin	Ostafin	2001-10-29 00:00:00	\N
2297	9220	Leonard Rolston	20101	Po As Detective	24552	Leonard	Rolston	1970-09-14 00:00:00	2012-03-22 00:00:00
1535	25930	Paul Roque	12812	Police Officer	24640	Paul	Roque	2001-07-30 00:00:00	\N
1092	25682	Jose Rosario	6553	Police Officer	24663	Jose	Rosario	2001-03-26 00:00:00	\N
1054	25868	Mark Rosciani	8972	Police Officer	24674	Mark	Rosciani	2001-06-25 00:00:00	\N
618	26567	Anthony Rouba	15409	Police Officer	24774	Anthony	Rouba	2002-09-30 00:00:00	\N
628	28042	Marvin Coleman	13056	Police Officer	31881	Marvin	Coleman	2005-10-31 00:00:00	\N
2393	6952	Thomas Mc Kenna	\N	Sergeant Of Police	18325	Thomas	Mc Kenna	1967-09-11 00:00:00	1998-04-01 00:00:00
1743	28283	Steven Coleman	8619	Police Officer	31883	Steven	Coleman	2006-02-21 00:00:00	\N
1117	25077	Wilfredo Roman Jr	\N	Lieutenant Of Police	24572	Wilfredo	Roman Jr	2000-06-19 00:00:00	\N
9	27036	Jerry Crisp	12580	Police Officer	31894	Jerry	Crisp	2003-09-29 00:00:00	\N
688	21348	James Polaski	18528	Police Officer	32268	James	Polaski	1995-07-10 00:00:00	\N
1367	27545	Victor Portis	17290	Police Officer	32269	Victor	Portis	2004-10-25 00:00:00	\N
2338	24038	Jennifer Przybylo	8574	Police Officer	32273	Jennifer	Przybylo	1999-05-10 00:00:00	\N
1579	27793	Victor Rivera	13011	Police Officer	32291	Victor	Rivera	2005-01-03 00:00:00	\N
584	29577	Brian Rix	15065	Police Officer	32292	Brian	Rix	2009-12-16 00:00:00	\N
191	28369	Miguel Romero	13879	Police Officer	32299	Miguel	Romero	2006-03-27 00:00:00	\N
737	25180	Anthony Rotkvich	17755	Police Officer	32302	Anthony	Rotkvich	2000-08-14 00:00:00	\N
23	15142	Don Morrow	\N	Police Officer	19727	Don	Morrow	1986-06-16 00:00:00	2016-01-03 00:00:00
203	29805	Frank Marino	\N	Police Officer	17355	Frank	Marino	2011-10-17 00:00:00	2015-11-21 00:00:00
244	21028	Courtney Hill	\N	Police Officer	12220	Courtney	Hill	1995-02-06 00:00:00	\N
379	15666	Michelle Tyse	\N	Police Officer	29106	Michelle	Tyse	1986-09-08 00:00:00	\N
387	17995	Alan Yakes	\N	Police Officer	31349	Alan	Yakes	1991-01-02 00:00:00	2017-01-08 00:00:00
499	26585	Genelle Wherfel	\N	Police Officer	30458	Genelle	Wherfel	2002-09-30 00:00:00	\N
519	19231	Michael Mc Glade	\N	Police Officer	18191	Michael	Mc Glade	1992-09-28 00:00:00	\N
585	28249	Nathalie Gregerson	\N	Police Officer	10733	Nathalie	Gregerson	2006-01-23 00:00:00	\N
685	27630	Nicholaus Lesch	\N	Police Officer	16061	Nicholaus	Lesch	2004-11-29 00:00:00	\N
779	28864	Matthew Bracken	\N	Police Officer	2579	Matthew	Bracken	2006-12-18 00:00:00	\N
875	28710	Todd Stanley	\N	Police Officer	27341	Todd	Stanley	2006-09-25 00:00:00	\N
1274	27572	Adrian Vivanco	\N	Police Officer	29670	Adrian	Vivanco	2004-10-25 00:00:00	\N
1483	25977	Elias Lacko	\N	Police Officer	32120	Elias	Lacko	2001-08-27 00:00:00	\N
1496	28407	Enyinnaya Nwagwu	\N	Police Officer	32223	Enyinnaya	Nwagwu	2006-05-01 00:00:00	\N
1850	17327	Kevin Bor	\N	Po As Detective	2399	Kevin	Bor	1990-03-26 00:00:00	\N
1931	24042	Todd Reykjalin	\N	Sergeant Of Police	23795	Todd	Reykjalin	1999-05-10 00:00:00	\N
2149	14317	Thomas Motzny	\N	Sergeant Of Police	19797	Thomas	Motzny	1982-11-29 00:00:00	2012-11-15 00:00:00
2206	10868	Ronald Yawger	\N	Po As Detective	31387	Ronald	Yawger	1973-03-19 00:00:00	2007-08-15 00:00:00
2211	23522	Brian Rovano	\N	Police Officer	24790	Brian	Rovano	1998-08-31 00:00:00	\N
2279	17636	Constanti Andrews	\N	Chief	676	Constanti	Andrews	1990-07-30 00:00:00	2015-12-08 00:00:00
542	17928	Joseph Butney	3505	Police Officer	3504	Joseph	Butney	1991-01-02 00:00:00	\N
1385	23473	Anthony Cereceres	19293	Police Officer	4334	Anthony	Cereceres	1998-08-31 00:00:00	\N
1276	29289	Angel Cintron	3955	Po/Field Trning Off	4668	Angel	Cintron	2007-10-29 00:00:00	\N
401	23831	James Geisbush	16422	Police Officer	9796	James	Geisbush	1998-12-14 00:00:00	\N
2305	20765	David Herrera Jr	18611	Police Officer	12093	David	Herrera Jr	1994-12-05 00:00:00	\N
1972	25149	Nicholas Hertko	18278	Police Officer	12102	Nicholas	Hertko	2000-08-14 00:00:00	\N
262	21955	Maria Higgs	3479	Police Officer	12184	Maria	Higgs	1996-05-06 00:00:00	\N
1358	26288	Roy Isakson	2548	Lieutenant Of Police	12977	Roy	Isakson	2002-03-25 00:00:00	\N
1102	19621	Steven Lesner	1402	Sergeant Of Police	16071	Steven	Lesner	1993-11-22 00:00:00	2014-07-15 00:00:00
1832	18579	Roger Murphy	20681	Po As Detective	19997	Roger	Murphy	1991-11-18 00:00:00	\N
1312	21350	Patrick Purdy Jr	20654	Po As Detective	23151	Patrick	Purdy Jr	1995-07-10 00:00:00	\N
1167	16679	Mark Richards	830	Sergeant Of Police	23874	Mark	Richards	1987-12-07 00:00:00	2016-05-15 00:00:00
742	28778	Kevin Clarke	14652	Police Officer	31876	Kevin	Clarke	2006-11-27 00:00:00	\N
525	18823	Scott Hall	12973	Police Officer	32020	Scott	Hall	1991-12-16 00:00:00	\N
679	26564	Jacquelin Rios	13766	Police Officer	32287	Jacquelin	Rios	2002-09-30 00:00:00	\N
152	26186	Vincent Stinar	4017	Police Officer	32356	Vincent	Stinar	2001-12-17 00:00:00	\N
472	22761	Sandra Stoppa	11939	Police Officer	32359	Sandra	Stoppa	1997-07-07 00:00:00	\N
588	22519	Verlisher Syas	19154	Police Officer	32364	Verlisher	Syas	1997-03-17 00:00:00	\N
343	23383	Martin Teresi	11254	Police Officer	32366	Martin	Teresi	1998-06-29 00:00:00	\N
643	26062	James Triantafillo	856	Sergeant Of Police	32375	James	Triantafillo	2001-09-24 00:00:00	\N
520	26651	Jeffrey Troutman	18797	Police Officer	32380	Jeffrey	Troutman	2002-10-28 00:00:00	\N
726	28660	Dejuan Turner	10726	Police Officer	32382	Dejuan	Turner	2006-08-28 00:00:00	\N
528	23247	Edwin Utreras	19901	Police Officer	32384	Edwin	Utreras	1998-05-26 00:00:00	\N
1159	25748	Sarah Vanthof	12564	Sergeant Of Police	32389	Sarah	Vanthof	2001-04-30 00:00:00	\N
402	29764	Anthony Vance	\N	Police Officer	29330	Anthony	Vance	2010-09-01 00:00:00	\N
536	26117	Karen Rittorno	\N	Police Officer	32288	Karen	Rittorno	2001-10-29 00:00:00	\N
666	19673	Maher Suleiman	\N	Police Officer	27800	Maher	Suleiman	1993-11-22 00:00:00	\N
684	26704	Andrew Kroll	\N	Police Officer	15251	Andrew	Kroll	2002-12-02 00:00:00	\N
759	27375	Mark Foster	\N	Sergeant Of Police	8993	Mark	Foster	2004-09-27 00:00:00	\N
884	17027	Robert Ruiz	\N	Police Officer	24902	Robert	Ruiz	1988-12-05 00:00:00	\N
1182	26738	Lafayette Triplett	\N	Police Officer	32377	Lafayette	Triplett	2002-12-02 00:00:00	\N
1253	29488	Brian Mcenerney	\N	Sergeant Of Police	18582	Brian	Mcenerney	2009-03-09 00:00:00	\N
1284	18017	Darrell Davis	\N	Police Officer	6301	Darrell	Davis	1991-01-30 00:00:00	2016-04-30 00:00:00
1342	24841	Anthony Jannotta	\N	Police Officer	13272	Anthony	Jannotta	2000-01-24 00:00:00	\N
1402	15417	Rosemary Accardo	\N	Police Officer	39	Rosemary	Accardo	1986-08-11 00:00:00	2015-01-30 00:00:00
1537	25784	Mark Mueller	\N	Police Officer	19835	Mark	Mueller	2001-05-29 00:00:00	\N
1643	20255	Kevin Mullane	\N	Po As Detective	19881	Kevin	Mullane	1994-07-05 00:00:00	\N
1960	12837	Deavay Tyler	\N	Po Asgn Evid. Techni	29091	Deavay	Tyler	1978-12-11 00:00:00	2009-01-15 00:00:00
2145	27097	Laurence Stiles	\N	Police Officer	32355	Laurence	Stiles	2003-09-29 00:00:00	\N
2234	21542	Anthony Mc Gowan	\N	Police Officer	18213	Anthony	Mc Gowan	1995-09-05 00:00:00	\N
2283	8161	Michael Chasen	\N	Dep Chief	4437	Michael	Chasen	1969-01-06 00:00:00	2008-07-21 00:00:00
2309	6689	James Maurer	\N	Chief	17795	James	Maurer	1966-11-28 00:00:00	2005-08-15 00:00:00
2315	8660	Jon Burge	\N	Unknown	3311	Jon	Burge	1970-03-02 00:00:00	1993-02-11 00:00:00
2372	5529	Daniel Mc Inerney	\N	Po As Detective	18284	Daniel	Mc Inerney	1965-03-01 00:00:00	2004-09-12 00:00:00
681	26753	Marvin Bonnstetter	\N	Police Officer	2374	Marvin	Bonnstetter	2003-01-27 00:00:00	\N
1481	27051	Jose Gonzalez	\N	Police Officer	32000	Jose	Gonzalez	2003-09-29 00:00:00	\N
96	18850	Sean Martin	\N	Sergeant Of Police	32158	Sean	Martin	1991-12-16 00:00:00	\N
2367	7323	John Byrne	\N	Sergeant Of Police	3548	John	Byrne	1968-01-22 00:00:00	1993-06-13 00:00:00
2397	137	William Murphy	\N	Captain Of Police	20049	William	Murphy	1946-03-18 00:00:00	1985-02-27 00:00:00
1441	20350	Tina Dudley	21323	Po As Detective	7456	Tina	Dudley	1994-08-01 00:00:00	\N
807	12779	Fernando Garcia	1670	Sergeant Of Police	9577	Fernando	Garcia	1978-12-11 00:00:00	2013-07-15 00:00:00
2342	18029	James Gonzales	40253	Po As Detective	10280	James	Gonzales	1991-01-30 00:00:00	\N
1609	19113	Michael Gonzalez	5003	Police Officer	10329	Michael	Gonzalez	1992-06-29 00:00:00	\N
1655	27638	Kathleen Marino	8886	Police Officer	17354	Kathleen	Marino	2004-11-29 00:00:00	2015-07-02 00:00:00
716	26771	Daniel Mcnamara	7766	Police Officer	18651	Daniel	Mcnamara	2003-01-27 00:00:00	\N
725	26975	Tamiko Mitchell	12276	Police Officer	19274	Tamiko	Mitchell	2003-08-25 00:00:00	\N
1011	22494	Christoph Murrah	18003	Police Officer	20089	Christoph	Murrah	1997-03-17 00:00:00	\N
1421	23379	Clifford Russell Jr	\N	Police Officer	24957	Clifford	Russell Jr	1998-06-29 00:00:00	\N
481	30157	Jason Nunez	11658	Police Officer	20733	Jason	Nunez	2012-11-30 00:00:00	\N
1664	27667	Daniel Pruszewski	11030	Police Officer	23079	Daniel	Pruszewski	2004-11-29 00:00:00	\N
1442	25768	Kal Harris	14236	Police Officer	32027	Kal	Harris	2001-05-29 00:00:00	\N
1533	22274	Mark Reno	19605	Police Officer	32284	Mark	Reno	1996-11-04 00:00:00	\N
43	28610	Adam Wallace	14953	Police Officer	32400	Adam	Wallace	2006-07-31 00:00:00	\N
456	28424	Sajit Walter	11288	Police Officer	32403	Sajit	Walter	2006-05-01 00:00:00	\N
1053	18158	Cassandra Williams	1154	Sergeant Of Police	32423	Cassandra	Williams	1991-02-27 00:00:00	\N
14	24071	Deborah Witt	9233	Police Officer	32429	Deborah	Witt	1999-05-10 00:00:00	\N
1135	29413	Michael Wrobel	11688	Police Officer	32430	Michael	Wrobel	2008-04-28 00:00:00	\N
538	21264	Nick Zarbock	18904	Police Officer	32438	Nick	Zarbock	1995-06-05 00:00:00	\N
22	17469	Cornelius Knox	\N	Police Officer	14882	Cornelius	Knox	1990-03-26 00:00:00	\N
28	14838	Kevin Oakes	\N	Lieutenant Of Police	21103	Kevin	Oakes	1985-11-18 00:00:00	\N
273	20749	Rosa Elizondo	\N	Police Officer	31949	Rosa	Elizondo	1994-12-05 00:00:00	\N
603	23739	Jason Vachy	\N	Police Officer	32386	Jason	Vachy	1998-10-26 00:00:00	\N
627	19727	Miguel De La Torre	\N	Sergeant Of Police	6463	Miguel	De La Torre	1993-12-13 00:00:00	\N
735	20746	Arshell Dennis	\N	Sergeant Of Police	6736	Arshell	Dennis	1994-12-05 00:00:00	\N
796	28414	Jose Sandoval	\N	Police Officer	25372	Jose	Sandoval	2006-05-01 00:00:00	\N
812	21290	Maureen Falk	\N	Police Officer	8221	Maureen	Falk	1995-07-10 00:00:00	\N
836	29075	Nicholas Prazuch	\N	Police Officer	22952	Nicholas	Prazuch	2007-06-04 00:00:00	\N
926	27932	Alejandro Acevedo	\N	Police Officer	49	Alejandro	Acevedo	2005-09-26 00:00:00	\N
1008	23726	Michael Pettis	\N	Police Officer	22424	Michael	Pettis	1998-10-26 00:00:00	\N
1072	17724	Garrick Turner	\N	Po As Detective	29042	Garrick	Turner	1990-07-30 00:00:00	\N
1106	14358	Eugene Warling	\N	Sergeant Of Police	30054	Eugene	Warling	1982-11-29 00:00:00	2012-11-15 00:00:00
1183	22901	David Zdanys	\N	Police Officer	32441	David	Zdanys	1997-08-04 00:00:00	\N
1241	27850	Gustavo Corona	\N	Police Officer	31892	Gustavo	Corona	2005-08-29 00:00:00	\N
1337	17822	Janet Kemper	\N	Sergeant Of Police	14440	Janet	Kemper	1990-08-27 00:00:00	\N
1443	25593	Erick Howard	\N	Police Officer	12636	Erick	Howard	2001-02-05 00:00:00	\N
1493	28040	Casey Ciner	\N	Police Officer	4665	Casey	Ciner	2005-10-31 00:00:00	\N
1170	24235	Orlando Celedon	16263	Police Officer	4299	Orlando	Celedon	1999-08-02 00:00:00	\N
1016	25419	Desiree Chambers	6476	Police Officer	4382	Desiree	Chambers	2000-12-18 00:00:00	\N
269	29290	Justin Conner	18863	Police Officer	5179	Justin	Conner	2007-10-29 00:00:00	\N
996	27129	Terry Frigo	\N	Police Officer	31972	Terry	Frigo	2003-10-27 00:00:00	\N
1802	19575	Michael Corlett	21388	Sergeant Of Police	5390	Michael	Corlett	1993-11-22 00:00:00	\N
1453	14934	Larry Dotson	18360	Po/Field Trning Off	7226	Larry	Dotson	1986-02-03 00:00:00	2012-04-15 00:00:00
778	28342	Arturo Fernandez	16980	Police Officer	8410	Arturo	Fernandez	2006-03-27 00:00:00	2014-01-09 00:00:00
937	29051	Joseph Hackett	2925	Police Officer	11128	Joseph	Hackett	2007-06-04 00:00:00	2013-01-03 00:00:00
1593	27386	Nicole Henry	14892	Police Officer	11971	Nicole	Henry	2004-09-27 00:00:00	\N
360	28152	Justin Homer	10979	Police Officer	12495	Justin	Homer	2005-12-05 00:00:00	\N
1410	16174	Michael Martin	\N	Sergeant Of Police	17507	Michael	Martin	1986-12-22 00:00:00	\N
1185	17464	Paul Kane	521	Captain Of Police	14058	Paul	Kane	1990-03-26 00:00:00	\N
412	27245	Nick Linas	17996	Police Officer	16258	Nick	Linas	2004-01-26 00:00:00	2016-07-28 00:00:00
1196	18437	Paul Mack	600	Lieutenant Of Police	16870	Paul	Mack	1991-06-19 00:00:00	\N
1704	26359	Cynthia Manriquez Cruz	9945	Police Officer	17257	Cynthia	Manriquez Cruz	2002-04-29 00:00:00	\N
673	18567	John Maples Jr	1999	Sergeant Of Police	17274	John	Maples Jr	1991-11-18 00:00:00	\N
1610	24019	Mark Matker	5428	Police Officer	17747	Mark	Matker	1999-05-10 00:00:00	\N
951	24529	Joanne Mccann	7823	Police Officer	18528	Joanne	Mccann	1999-11-02 00:00:00	\N
1605	26226	Gerald Neals	8186	Po As Detective	20294	Gerald	Neals	2002-02-25 00:00:00	\N
1682	24775	Victor Newman	6517	Police Officer	20450	Victor	Newman	1999-12-13 00:00:00	\N
72	25063	Shannon O Reilly	4049	Police Officer	21060	Shannon	O Reilly	2000-06-19 00:00:00	\N
1502	19486	Laurence Odoms	18420	Sergeant Of Police	21183	Laurence	Odoms	1993-05-17 00:00:00	\N
1936	25922	Paul Park	13949	Police Officer	21831	Paul	Park	2001-07-30 00:00:00	2008-03-25 00:00:00
2096	9458	Dennis Ross	177	Lieutenant Of Police	24721	Dennis	Ross	1970-12-14 00:00:00	2011-08-04 00:00:00
405	16689	Margaret Sears	396	Captain Of Police	25909	Margaret	Sears	1987-12-07 00:00:00	\N
1995	27687	Anthony Sherlock	13800	Police Officer	26209	Anthony	Sherlock	2004-11-29 00:00:00	2013-01-22 00:00:00
400	30378	Nicholas Smith	17500	Police Officer	26867	Nicholas	Smith	2013-03-05 00:00:00	\N
1393	27696	Nicholas Urban	12441	Police Officer	29155	Nicholas	Urban	2004-11-29 00:00:00	\N
81	30286	Lukasz Gorski	\N	Police Officer	10464	Lukasz	Gorski	2013-02-19 00:00:00	\N
2185	24999	Edward Yerke	1105	Police Officer	31394	Edward	Yerke	2000-02-28 00:00:00	\N
1259	22345	Nicole Fouch	19279	Police Officer	9000	Nicole	Fouch	1996-12-02 00:00:00	\N
209	29621	Nicole Garcia	13006	Police Officer	9571	Nicole	Garcia	2010-04-16 00:00:00	\N
64	26599	David Brown	\N	Police Officer	3056	David	Brown	2002-10-28 00:00:00	\N
1658	19449	Julio Hernandez	\N	Police Officer	12007	Julio	Hernandez	1993-05-17 00:00:00	\N
2307	9062	Thomas Byrne	\N	Deputy Supt.	3541	Thomas	Byrne	1970-09-14 00:00:00	2005-05-15 00:00:00
406	30298	Martin Mulligan	18442	Police Officer	19904	Martin	Mulligan	2013-02-19 00:00:00	\N
1309	28981	Isagany Peralta	15363	Police Officer	22220	Isagany	Peralta	2007-04-02 00:00:00	\N
1036	29656	Waukeesha Pickens	8255	Police Officer	22505	Waukeesha	Pickens	2010-04-23 00:00:00	\N
15	28701	Bryan Pienta	19266	Police Officer	22532	Bryan	Pienta	2006-09-25 00:00:00	\N
1335	28257	Scott Pietryla	12091	Police Officer	22578	Scott	Pietryla	2006-01-23 00:00:00	\N
2102	23990	John Dolan	\N	Police Officer	31929	John	Dolan	1999-05-10 00:00:00	\N
223	20548	Michael Reyes	6496	Police Officer	23783	Michael	Reyes	1994-09-06 00:00:00	\N
2345	12952	Frank Skorek	21295	Po As Detective	26569	Frank	Skorek	1980-01-28 00:00:00	2011-11-15 00:00:00
560	27382	Robert Gomez	\N	Sergeant Of Police	10261	Robert	Gomez	2004-09-27 00:00:00	\N
841	28612	James Whigham	\N	Police Officer	30460	James	Whigham	2006-07-31 00:00:00	\N
1929	26124	Nicholas Stella	3607	Police Officer	27455	Nicholas	Stella	2001-10-29 00:00:00	\N
1471	14918	David Syfczak	17779	Sgt Assgn Sec Spec	28019	David	Syfczak	1985-12-16 00:00:00	2015-02-14 00:00:00
33	30383	Martin Vasquez Jr	10500	Police Officer	29406	Martin	Vasquez Jr	2013-03-05 00:00:00	\N
659	29235	Matthew Wagner	5946	Police Officer	29767	Matthew	Wagner	2007-08-27 00:00:00	\N
42	23872	Clay Walker	10774	Police Officer	29830	Clay	Walker	1998-12-14 00:00:00	\N
53	23604	Steven Bacoyanis	\N	Police Officer	1044	Steven	Bacoyanis	1998-10-13 00:00:00	\N
114	30080	Oscar Torres	\N	Police Officer	28767	Oscar	Torres	2012-10-31 00:00:00	\N
555	24406	Stanley Kalicki	\N	Po As Detective	14017	Stanley	Kalicki	1999-10-04 00:00:00	\N
748	27284	David Dimoff	\N	Police Officer	6942	David	Dimoff	2004-04-26 00:00:00	\N
1675	25565	William Bongartz Jr	\N	Police Officer	2359	William	Bongartz Jr	2001-02-05 00:00:00	\N
2362	11976	Andrew Jones Jr	\N	Po As Detective	13821	Andrew	Jones Jr	1976-10-18 00:00:00	2005-11-15 00:00:00
403	29492	Henry Morrison Jr	\N	Police Officer	19714	Henry	Morrison Jr	2009-03-09 00:00:00	\N
818	27879	Marcin Kazarnowicz	\N	Police Officer	14211	Marcin	Kazarnowicz	2005-08-29 00:00:00	\N
989	27821	John Ventrella	\N	Police Officer	29521	John	Ventrella	2005-01-03 00:00:00	\N
1068	20928	Valerie Lymperis	\N	Po As Detective	16790	Valerie	Lymperis	1995-01-03 00:00:00	\N
1120	20972	Christoph Traynor	\N	Police Officer	28874	Christoph	Traynor	1995-01-03 00:00:00	\N
1494	26686	Timothy Fenton	\N	Sergeant Of Police	8366	Timothy	Fenton	2002-12-02 00:00:00	\N
1638	14973	Carlo Virgilio	\N	Po As Detective	29644	Carlo	Virgilio	1986-02-03 00:00:00	2015-08-15 00:00:00
2349	9977	Steven Brownfield	\N	Po As Detective	3097	Steven	Brownfield	1972-02-01 00:00:00	2004-06-15 00:00:00
1846	27119	Willie Bolanos	12690	Police Officer	2301	Willie	Bolanos	2003-10-27 00:00:00	\N
813	27356	Martin Chatys	17917	Sergeant Of Police	4447	Martin	Chatys	2004-09-27 00:00:00	\N
501	22553	Timothy Conlan	4235	Police Officer	5131	Timothy	Conlan	1997-05-05 00:00:00	\N
1137	15451	Robert Dolan	2451	Sergeant Of Police	7071	Robert	Dolan	1986-08-11 00:00:00	\N
1779	16575	James Dunn	14941	Police Officer	7553	James	Dunn	1987-12-07 00:00:00	2013-01-15 00:00:00
503	21939	Richard Federici	19848	Police Officer	8311	Richard	Federici	1996-05-06 00:00:00	\N
217	30118	Adam Fitzgerald	7834	Police Officer	8624	Adam	Fitzgerald	2012-11-30 00:00:00	\N
333	17410	Edward Fulton	12724	Police Officer	9268	Edward	Fulton	1990-03-26 00:00:00	\N
346	28891	Pedro Guzman	4406	Police Officer	11096	Pedro	Guzman	2006-12-18 00:00:00	\N
2070	24115	Richard Hainzl	17921	Sergeant Of Police	11171	Richard	Hainzl	1999-06-21 00:00:00	\N
885	27234	Richard Hanrahan	16364	Police Officer	11347	Richard	Hanrahan	2004-01-26 00:00:00	\N
1450	23102	Richard Johnson	3471	Police Officer	13587	Richard	Johnson	1998-03-16 00:00:00	\N
2200	10734	Richard Johnson	143	Captain Of Police	13622	Richard	Johnson	1973-03-19 00:00:00	2009-01-15 00:00:00
1965	25781	Homero Martinez	14423	Police Officer	17593	Homero	Martinez	2001-05-29 00:00:00	\N
2087	27081	Timothy Philbin	16413	Police Officer	22467	Timothy	Philbin	2003-09-29 00:00:00	\N
1144	21222	Rogelio Pinal	18921	Police Officer	22622	Rogelio	Pinal	1995-06-05 00:00:00	\N
809	25679	Marc Ranallo	8734	Police Officer	23438	Marc	Ranallo	2001-03-26 00:00:00	\N
1783	26722	Alfredo Razo	15893	Police Officer	23538	Alfredo	Razo	2002-12-02 00:00:00	\N
505	23120	Jonathan Reckard	1779	Lieutenant Of Police	23566	Jonathan	Reckard	1998-03-16 00:00:00	\N
1801	14961	Edward Record	20149	Po As Detective	23568	Edward	Record	1986-02-03 00:00:00	2011-03-20 00:00:00
615	24041	Brian Reed	8717	Police Officer	23600	Brian	Reed	1999-05-10 00:00:00	\N
773	27426	Santos Reyes	17832	Police Officer	23775	Santos	Reyes	2004-09-27 00:00:00	\N
1007	15173	Warren Richards	21200	Captain Of Police	23870	Warren	Richards	1986-06-16 00:00:00	\N
1352	22415	Joseph Schachelmayer	1934	Sergeant Of Police	25578	Joseph	Schachelmayer	1996-12-02 00:00:00	\N
2253	22209	Corey Flagg	\N	Police Officer	8658	Corey	Flagg	1996-11-04 00:00:00	2005-01-26 00:00:00
2396	520	John Golden	\N	Lieutenant Of Police	10215	John	Golden	1950-04-17 00:00:00	1982-08-07 00:00:00
534	16168	Richard Maher	\N	Sergeant Of Police	16973	Richard	Maher	1986-12-22 00:00:00	2014-12-31 00:00:00
1690	19647	Carlos Ortiz	\N	Police Officer	21431	Carlos	Ortiz	1993-11-22 00:00:00	\N
2231	23178	James Walsh	\N	Sergeant Of Police	29942	James	Walsh	1998-04-13 00:00:00	\N
1634	28139	Philip Ducar	\N	Police Officer	31935	Philip	Ducar	2005-12-05 00:00:00	\N
1186	9860	Richard Aguinaga	15	Captain Of Police	200	Richard	Aguinaga	1971-10-25 00:00:00	2012-06-01 00:00:00
2017	28033	Johnny Brown	11990	Police Officer	3069	Johnny	Brown	2005-10-31 00:00:00	\N
2048	25952	Peter Bucks	11515	Police Officer	3226	Peter	Bucks	2001-08-27 00:00:00	\N
1349	28125	Demeka Burleigh	6690	Police Officer	3384	Demeka	Burleigh	2005-12-05 00:00:00	\N
1350	19201	Julie Butzen	8582	Police Officer	3516	Julie	Butzen	1992-09-28 00:00:00	\N
645	27467	Ruth Castelli	17745	Police Officer	4187	Ruth	Castelli	2004-10-25 00:00:00	\N
1017	27942	Leo Cromwell	19720	Police Officer	5730	Leo	Cromwell	2005-09-26 00:00:00	\N
2166	25431	Arthur Davis	6308	Po As Detective	6282	Arthur	Davis	2000-12-18 00:00:00	\N
2227	25322	Ricardo Dixon	19995	Police Officer	6991	Ricardo	Dixon	2000-10-10 00:00:00	\N
2385	9709	Robert Evans	12754	Commander	8126	Robert	Evans	1971-07-26 00:00:00	2008-11-15 00:00:00
2172	25332	Michael Fields	9286	Sergeant Of Police	8472	Michael	Fields	2000-10-10 00:00:00	\N
324	28289	Wilford Fields	12773	Police Officer	8475	Wilford	Fields	2006-02-21 00:00:00	\N
270	20503	James Foley	10613	Police Officer	8880	James	Foley	1994-09-06 00:00:00	\N
788	28247	James Gentile	14064	Police Officer	9804	James	Gentile	2006-01-23 00:00:00	\N
1854	18530	Robert Gliwa Jr	20526	Po As Detective	10103	Robert	Gliwa Jr	1991-11-18 00:00:00	2012-01-15 00:00:00
620	24745	Juan Gonzalez	6067	Po/Field Trning Off	10336	Juan	Gonzalez	1999-12-13 00:00:00	\N
494	20620	Laura Griffin	1061	Sergeant Of Police	10800	Laura	Griffin	1994-10-03 00:00:00	\N
134	24565	Richard Hagen	20606	Po As Detective	11155	Richard	Hagen	1999-11-15 00:00:00	\N
20	25520	Erich Rashan	1083	Lieutenant Of Police	23492	Erich	Rashan	2000-12-18 00:00:00	\N
2003	27547	Bryan Reidy	12464	Police Officer	23668	Bryan	Reidy	2004-10-25 00:00:00	\N
207	30306	Arnoldo Rivera	16152	Police Officer	24105	Arnoldo	Rivera	2013-02-19 00:00:00	\N
1925	25616	Nelly Sanchez	4243	Police Officer	25279	Nelly	Sanchez	2001-02-05 00:00:00	\N
743	28751	Wilfredo Sanchez	6497	Police Officer	25303	Wilfredo	Sanchez	2006-10-30 00:00:00	\N
200	28753	Ryan Schaffer	3440	Sergeant Of Police	25589	Ryan	Schaffer	2006-10-30 00:00:00	\N
1708	28416	Matthew Schaller	19188	Sergeant Of Police	25602	Matthew	Schaller	2006-05-01 00:00:00	\N
903	18601	William Schield	946	Sergeant Of Police	25631	William	Schield	1991-11-18 00:00:00	\N
409	17566	Allison Schloss	239	Lieutenant Of Police	25661	Allison	Schloss	1990-03-26 00:00:00	\N
247	17544	Keith Reynolds	\N	Lieutenant Of Police	23807	Keith	Reynolds	1990-03-26 00:00:00	\N
383	17529	Henry Perez	\N	Police Officer	22281	Henry	Perez	1990-03-26 00:00:00	\N
1406	27978	Brian Mcdevitt	\N	Police Officer	18562	Brian	Mcdevitt	2005-09-26 00:00:00	2013-06-21 00:00:00
1895	19525	William Walker	\N	Police Officer	29831	William	Walker	1993-05-17 00:00:00	2009-09-19 00:00:00
2019	15682	Richard Bednarek	1174	Sergeant Of Police	1658	Richard	Bednarek	1986-10-13 00:00:00	\N
2163	24724	Chris Blum	6121	Po As Detective	2210	Chris	Blum	1999-12-13 00:00:00	\N
513	27277	John Bozek Ii	16328	Police Officer	2571	John	Bozek Ii	2004-04-26 00:00:00	\N
2383	9494	Stephen Casto	15489	Po As Detective	4205	Stephen	Casto	1971-02-22 00:00:00	2000-04-16 00:00:00
1434	23981	Michael Cavanaugh	9395	Sergeant Of Police	4262	Michael	Cavanaugh	1999-05-10 00:00:00	\N
1829	26867	Jamie Chisem	3202	Police Officer	4536	Jamie	Chisem	2003-04-28 00:00:00	2012-06-05 00:00:00
1199	27598	Jeffrey Chudy	16126	Po/Field Trning Off	4614	Jeffrey	Chudy	2004-11-29 00:00:00	\N
923	20480	John Conway	9524	Police Officer	5263	John	Conway	1994-09-06 00:00:00	\N
296	29787	Anthony Cutrone	9258	Police Officer	5991	Anthony	Cutrone	2011-10-17 00:00:00	\N
1152	21143	Terrence Downes	1393	Sergeant Of Police	7279	Terrence	Downes	1995-06-05 00:00:00	\N
66	21938	Xavier Elizondo	1340	Sergeant Of Police	7862	Xavier	Elizondo	1996-05-06 00:00:00	\N
2334	16301	Adrian Garcia	20517	Po As Detective	9519	Adrian	Garcia	1987-03-09 00:00:00	\N
1499	20361	Charles Garcia	20728	Po As Detective	9522	Charles	Garcia	1994-08-01 00:00:00	\N
2325	24652	Robert Garza	7871	Sergeant Of Police	9694	Robert	Garza	1999-11-29 00:00:00	\N
1731	15281	Charles Glynn	1857	Sergeant Of Police	10136	Charles	Glynn	1986-07-14 00:00:00	2012-11-15 00:00:00
1206	27740	Charlotte Gonzalez	10830	Sergeant Of Police	10317	Charlotte	Gonzalez	2005-01-03 00:00:00	\N
964	26885	Armon Haynes	2994	Police Officer	11759	Armon	Haynes	2003-04-28 00:00:00	\N
546	29159	Robert Hernandez	5655	Police Officer	12059	Robert	Hernandez	2007-07-30 00:00:00	\N
2192	25025	Keith Herrera	17289	Police Officer	12074	Keith	Herrera	2000-06-19 00:00:00	2011-04-12 00:00:00
1805	22602	Donald Hill	21426	Po As Detective	12213	Donald	Hill	1997-05-05 00:00:00	\N
35	17447	Evangelos Hitiris	1043	Sergeant Of Police	12299	Evangelos	Hitiris	1990-03-26 00:00:00	2016-06-30 00:00:00
1258	18110	Eric Holder	5319	Police Officer	12418	Eric	Holder	1991-02-27 00:00:00	2012-05-14 00:00:00
2139	22622	Timothy Mc Dermott	21084	Po As Detective	18076	Timothy	Mc Dermott	1997-05-05 00:00:00	\N
2031	26436	Michael Napoli	9560	Police Officer	20218	Michael	Napoli	2002-07-29 00:00:00	\N
170	26995	David Salgado	16347	Police Officer	25191	David	Salgado	2003-08-25 00:00:00	\N
925	25869	Noe Sanchez	6439	Police Officer	25292	Noe	Sanchez	2001-06-25 00:00:00	\N
2333	14712	James Sanchez	20336	Commander	25306	James	Sanchez	1985-07-01 00:00:00	\N
1089	25807	Esteban Trujillo	11642	Po/Field Trning Off	28973	Esteban	Trujillo	2001-05-29 00:00:00	\N
74	29323	Chris Skarupinski	\N	Po Asgn Evid. Techni	26540	Chris	Skarupinski	2007-10-29 00:00:00	\N
276	26547	Jason Mcfadden	\N	Police Officer	18585	Jason	Mcfadden	2002-09-30 00:00:00	2016-02-29 00:00:00
455	26840	Shawn Popow	\N	Police Officer	22824	Shawn	Popow	2003-02-24 00:00:00	\N
2233	21166	Norris Halsell	\N	Police Officer	11244	Norris	Halsell	1995-06-05 00:00:00	\N
1521	14857	John Sonley	\N	Police Officer	27012	John	Sonley	1985-11-18 00:00:00	2016-04-15 00:00:00
602	20442	Larry Thomas Jr	\N	Sergeant Of Police	28481	Larry	Thomas Jr	1994-08-01 00:00:00	\N
1551	22656	Melvin Bailey	16788	Police Officer	1091	Melvin	Bailey	1997-07-07 00:00:00	\N
1869	20858	John Baranowski	2188	Sergeant Of Police	1288	John	Baranowski	1995-01-03 00:00:00	\N
1510	18780	Timothy Bickham	284	Lieutenant Of Police	1974	Timothy	Bickham	1991-12-16 00:00:00	\N
2178	23189	Bryan Bojan	17063	Police Officer	2290	Bryan	Bojan	1998-05-26 00:00:00	\N
1781	26930	Joshua Bowers	13575	Police Officer	2504	Joshua	Bowers	2003-08-25 00:00:00	\N
780	28031	Brian Bratton	11388	Police Officer	2718	Brian	Bratton	2005-10-31 00:00:00	\N
1325	28034	Jennifer Burmistrz	14060	Police Officer	3388	Jennifer	Burmistrz	2005-10-31 00:00:00	\N
892	29100	Juan Cifuentes	13089	Police Officer	4659	Juan	Cifuentes	2007-07-09 00:00:00	\N
531	27599	Vincent Ciocci	12914	Police Officer	4671	Vincent	Ciocci	2004-11-29 00:00:00	\N
1110	26604	Jeffrey Collado	19285	Sergeant Of Police	5000	Jeffrey	Collado	2002-10-28 00:00:00	\N
372	20056	Frederick Collins	4827	Police Officer	5052	Frederick	Collins	1994-05-31 00:00:00	\N
2011	25638	Esmeralda Cox	7961	Police Officer	5572	Esmeralda	Cox	2001-03-26 00:00:00	\N
2181	18179	Richard Coyle	13046	Police Officer	5587	Richard	Coyle	1991-03-27 00:00:00	\N
1538	26801	Joseph Deferville	19208	Sergeant Of Police	6565	Joseph	Deferville	2003-02-24 00:00:00	\N
502	22927	Edward Dougherty	10093	Sergeant Of Police	7242	Edward	Dougherty	1997-09-02 00:00:00	\N
2029	28337	Juan Duran	6515	Po As Detective	7585	Juan	Duran	2006-03-27 00:00:00	\N
707	29107	Leonidas Ferreras	13739	Police Officer	8428	Leonidas	Ferreras	2007-07-09 00:00:00	\N
1876	23099	Turner Goodwin	10643	Po As Detective	10383	Turner	Goodwin	1998-03-16 00:00:00	\N
1907	21634	Galo Gutierrez	10018	Po As Detective	11044	Galo	Gutierrez	1995-10-23 00:00:00	\N
1250	28349	Erik Hansen	6663	Police Officer	11364	Erik	Hansen	2006-03-27 00:00:00	\N
1878	20220	Artis Haywood Jr	10240	Po/Field Trning Off	11778	Artis	Haywood Jr	1994-07-05 00:00:00	\N
462	18357	Lee Hill Jr	8434	Police Officer	12250	Lee	Hill Jr	1991-05-22 00:00:00	\N
1365	27617	Krista Hinton	18538	Police Officer	12292	Krista	Hinton	2004-11-29 00:00:00	\N
1964	26351	Matthew Hoyas	4067	Police Officer	12667	Matthew	Hoyas	2002-04-29 00:00:00	\N
433	28494	Dorian James	7615	Police Officer	13209	Dorian	James	2006-06-26 00:00:00	\N
2099	24124	Todd Jaros	10428	Sergeant Of Police	13309	Todd	Jaros	1999-06-21 00:00:00	\N
1622	12791	Shawn Joyce	1993	Lieutenant Of Police	13901	Shawn	Joyce	1978-12-11 00:00:00	2011-11-15 00:00:00
1255	24016	Timothy Madison	10679	Po As Detective	16927	Timothy	Madison	1999-05-10 00:00:00	\N
561	28744	Tiffany Nard	16972	Police Officer	20224	Tiffany	Nard	2006-10-30 00:00:00	\N
2086	26981	Dimitrios Nikolakakis	15183	Police Officer	20547	Dimitrios	Nikolakakis	2003-08-25 00:00:00	\N
746	25320	Michael Demcak	\N	Po As Detective	6713	Michael	Demcak	2000-10-10 00:00:00	\N
893	28046	Mark Diaz	13539	Police Officer	6850	Mark	Diaz	2005-10-31 00:00:00	\N
2191	16974	Jerome Finnigan	5167	Police Officer	8562	Jerome	Finnigan	1988-12-05 00:00:00	2008-08-05 00:00:00
2278	18187	Thomas Flaherty	20942	Sergeant Of Police	8661	Thomas	Flaherty	1991-03-27 00:00:00	\N
474	27046	Kevin Fry	15329	Police Officer	9230	Kevin	Fry	2003-09-29 00:00:00	\N
130	25333	Daniel Gallagher	21123	Sergeant Of Police	9396	Daniel	Gallagher	2000-10-10 00:00:00	2016-08-29 00:00:00
1362	22578	Michael Gallagher	1842	Sergeant Of Police	9407	Michael	Gallagher	1997-05-05 00:00:00	\N
1591	26949	Israel Gamez	15210	Police Officer	9472	Israel	Gamez	2003-08-25 00:00:00	\N
2182	21158	Michael Gavin	18749	Police Officer	9752	Michael	Gavin	1995-06-05 00:00:00	\N
872	27496	Daniel Goon	8443	Police Officer	10387	Daniel	Goon	2004-10-25 00:00:00	\N
1836	26693	Dennis Graber	7649	Police Officer	10511	Dennis	Graber	2002-12-02 00:00:00	\N
824	24313	Marek Grobla	11686	Police Officer	10851	Marek	Grobla	1999-09-13 00:00:00	\N
432	28795	John Helsel	9652	Police Officer	11898	John	Helsel	2006-11-27 00:00:00	\N
347	29546	Matthew Hilliard	5090	Po/Field Trning Off	12258	Matthew	Hilliard	2009-12-16 00:00:00	\N
970	26886	Daniel Honda	3478	Po As Detective	12497	Daniel	Honda	2003-04-28 00:00:00	\N
1694	24318	Yene Huamani	14158	Police Officer	12678	Yene	Huamani	1999-09-13 00:00:00	\N
1212	26430	George Junkovic	8143	Police Officer	13942	George	Junkovic	2002-07-29 00:00:00	\N
1300	22373	George Kalfas	19329	Police Officer	14015	George	Kalfas	1996-12-02 00:00:00	\N
179	30043	Evan Kilponen	12854	Police Officer	14610	Evan	Kilponen	2012-10-31 00:00:00	\N
1032	18363	Thomas Lamb Jr	1925	Lieutenant Of Police	15592	Thomas	Lamb Jr	1991-05-22 00:00:00	\N
1381	25663	Manuel Leano	4303	Police Officer	15883	Manuel	Leano	2001-03-26 00:00:00	\N
261	24846	Aquarius Leonard	5366	Sergeant Of Police	16043	Aquarius	Leonard	2000-01-24 00:00:00	\N
1608	24671	Ross Leslie	7646	Sergeant Of Police	16070	Ross	Leslie	1999-11-29 00:00:00	\N
2326	16893	Ronnie Lewis	20309	Po As Detective	16133	Ronnie	Lewis	1988-11-07 00:00:00	\N
1475	26216	Sylshina London	11636	Police Officer	16452	Sylshina	London	2002-02-25 00:00:00	2011-07-15 00:00:00
1384	25721	Lawrence Lowrey Jr	12731	Po/Field Trning Off	16660	Lawrence	Lowrey Jr	2001-04-30 00:00:00	\N
947	20927	Robert Luzadder	18829	Police Officer	16774	Robert	Luzadder	1995-01-03 00:00:00	\N
1057	20239	Richard Mackert Jr	8595	Police Officer	16878	Richard	Mackert Jr	1994-07-05 00:00:00	2014-10-30 00:00:00
237	30295	Hector Madrid	8522	Police Officer	16933	Hector	Madrid	2013-02-19 00:00:00	\N
1179	28975	Kristyn Malinowski	9356	Police Officer	17102	Kristyn	Malinowski	2007-04-02 00:00:00	\N
2215	24141	Raymond Mc Cann	13127	Police Officer	17931	Raymond	Mc Cann	1999-06-21 00:00:00	\N
655	17844	David Montgomery	10651	Police Officer	19422	David	Montgomery	1990-08-27 00:00:00	\N
881	19640	Martin Murphy	2212	Sergeant Of Police	20073	Martin	Murphy	1993-11-22 00:00:00	\N
444	27596	Scott Celani	3733	Police Officer	4295	Scott	Celani	2004-11-29 00:00:00	\N
771	29344	Zoe Batzer	\N	Police Officer	1544	Zoe	Batzer	2008-04-28 00:00:00	\N
1519	28171	Kelly Mcbride	\N	Police Officer	18516	Kelly	Mcbride	2005-12-05 00:00:00	\N
2274	23334	Mark Del Boccio	\N	Police Officer	6596	Mark	Del Boccio	1998-06-29 00:00:00	2007-09-26 00:00:00
1578	24079	Anthony Amato	8030	Po As Detective	520	Anthony	Amato	1999-06-21 00:00:00	\N
2097	19702	Steven Bechina	1795	Sergeant Of Police	1625	Steven	Bechina	1993-12-13 00:00:00	\N
976	27840	Jason Boettcher	13670	Po As Detective	2255	Jason	Boettcher	2005-08-29 00:00:00	\N
1601	22660	Richard Bolin	14590	Police Officer	2322	Richard	Bolin	1997-07-07 00:00:00	\N
67	29003	Jeffrey Caribou	7416	Police Officer	3906	Jeffrey	Caribou	2007-04-30 00:00:00	\N
1366	22703	Gerald Jones	15189	Police Officer	13780	Gerald	Jones	1997-07-07 00:00:00	\N
328	27239	Daniel Kaktis	17488	Police Officer	13997	Daniel	Kaktis	2004-01-26 00:00:00	\N
1806	27878	Timothy Kastler	6042	Police Officer	14171	Timothy	Kastler	2005-08-29 00:00:00	\N
1857	18705	Michael Kelly	21150	Sergeant Of Police	14357	Michael	Kelly	1991-12-02 00:00:00	\N
461	17960	Rodney Kincaid	4106	Police Officer	14638	Rodney	Kincaid	1991-01-02 00:00:00	\N
1902	19771	Demetrios Kolliopoulos	20142	Po As Detective	14964	Demetrios	Kolliopoulos	1993-12-13 00:00:00	\N
713	24589	Brian Lindstrom	10592	Police Officer	16285	Brian	Lindstrom	1999-11-15 00:00:00	\N
1154	14692	Robert Lohman	1292	Sergeant Of Police	16427	Robert	Lohman	1985-07-01 00:00:00	2016-05-15 00:00:00
1033	24485	Ricardo Lopez	11987	Police Officer	16495	Ricardo	Lopez	1999-10-25 00:00:00	\N
563	25357	Rogelio Martinez	17099	Police Officer	17586	Rogelio	Martinez	2000-10-10 00:00:00	\N
1987	26709	Joseph Martis	7734	Police Officer	17640	Joseph	Martis	2002-12-02 00:00:00	\N
1751	22830	Michael Mayhew	14138	Police Officer	17830	Michael	Mayhew	1997-08-04 00:00:00	\N
1749	19786	John Mc Call Jr	19660	Police Officer	17916	John	Mc Call Jr	1993-12-13 00:00:00	2015-10-31 00:00:00
2242	23779	Timothy Mc Keon	7210	Police Officer	18345	Timothy	Mc Keon	1998-11-30 00:00:00	\N
166	18854	David Mc Naughton	120	Dep Chief	18462	David	Mc Naughton	1991-12-16 00:00:00	\N
632	28454	Sean Mcdermott	6435	Police Officer	18560	Sean	Mcdermott	2006-05-22 00:00:00	\N
1881	25908	Matthew Mcdonough	16586	Po As Detective	18573	Matthew	Mcdonough	2001-07-30 00:00:00	\N
965	26548	Carol Mcghee	11410	Po As Detective	18592	Carol	Mcghee	2002-09-30 00:00:00	\N
229	24492	Shaun Mcgovern	13956	Police Officer	18602	Shaun	Mcgovern	1999-10-25 00:00:00	\N
451	28562	Mari Medina	13176	Police Officer	18714	Mari	Medina	2006-07-31 00:00:00	\N
1909	23437	Elliott Musial	19416	Sergeant Of Police	20142	Elliott	Musial	1998-07-27 00:00:00	\N
431	28819	Sean Najm	5088	Police Officer	20196	Sean	Najm	2006-11-27 00:00:00	\N
854	26553	Theresa Nazario	16221	Police Officer	20283	Theresa	Nazario	2002-09-30 00:00:00	\N
1937	22413	Edwardo Ruiz	19207	Po Assg Canine Handl	24891	Edwardo	Ruiz	1996-12-02 00:00:00	\N
378	20208	Rafael Garcia	\N	Po Asgn Evid. Techni	9527	Rafael	Garcia	1994-07-05 00:00:00	\N
658	29044	Tomasz Zatora	\N	Police Officer	31576	Tomasz	Zatora	2007-04-30 00:00:00	\N
1565	14769	Gus Marks	\N	Police Officer	32156	Gus	Marks	1985-09-09 00:00:00	\N
1715	10919	Carson Earnest	\N	Lieutenant Of Police	7703	Carson	Earnest	1973-06-04 00:00:00	2010-04-15 00:00:00
2347	15460	John Fassl	\N	Po As Detective	8287	John	Fassl	1986-08-11 00:00:00	2015-09-15 00:00:00
1189	15597	William Vick	32190	Sergeant Of Police	29574	William	Vick	1986-08-11 00:00:00	2016-05-15 00:00:00
2075	27002	John Thornton Jr	\N	Police Officer	32369	John	Thornton Jr	2003-08-25 00:00:00	\N
227	27732	Juan Escalante	17477	Sergeant Of Police	8023	Juan	Escalante	2005-01-03 00:00:00	\N
215	25764	Sean Flynn	3926	Police Officer	8842	Sean	Flynn	2001-05-29 00:00:00	\N
8	28708	Brandon Smith	\N	Police Officer	32344	Brandon	Smith	2006-09-25 00:00:00	\N
94	27916	Louis Silva	\N	Police Officer	32337	Louis	Silva	2005-08-29 00:00:00	\N
118	30466	Nicholas Cipicchio	\N	Police Officer	4679	Nicholas	Cipicchio	2013-04-01 00:00:00	\N
374	29348	Christoph Cannata	\N	Police Officer	3802	Christoph	Cannata	2008-04-28 00:00:00	\N
422	30028	Enrique Delgado Fernandez	\N	Police Officer	6679	Enrique	Delgado Fernandez	2012-10-31 00:00:00	\N
844	28663	Darius Alexander	\N	Police Officer	326	Darius	Alexander	2006-09-25 00:00:00	\N
1480	21288	John Elstner	\N	Police Officer	31950	John	Elstner	1995-07-10 00:00:00	\N
1624	20638	Peter Kelly	\N	Police Officer	14390	Peter	Kelly	1994-10-03 00:00:00	\N
1703	23764	Patrick Kane	\N	Police Officer	14066	Patrick	Kane	1998-11-30 00:00:00	\N
1978	28593	Robert Schwandt	\N	Police Officer	25818	Robert	Schwandt	2006-07-31 00:00:00	\N
2161	22170	Pamela Smith	\N	Police Officer	26881	Pamela	Smith	1996-08-05 00:00:00	\N
2377	5912	Jack Hines	\N	Po As Detective	12271	Jack	Hines	1966-02-28 00:00:00	2000-11-29 00:00:00
1111	24189	Gia Czubak	16728	Police Officer	6043	Gia	Czubak	1999-07-12 00:00:00	\N
2240	23750	John Dahlberg	13788	Police Officer	6079	John	Dahlberg	1998-11-30 00:00:00	\N
1851	22802	Patrick Deenihan	20739	Po As Detective	6558	Patrick	Deenihan	1997-08-04 00:00:00	\N
414	27179	Ryan Harty	17757	Sergeant Of Police	11615	Ryan	Harty	2003-11-24 00:00:00	\N
1081	29365	Ryan Healy	9059	Police Officer	11804	Ryan	Healy	2008-04-28 00:00:00	2013-02-07 00:00:00
1386	24473	James Hickey	11523	Police Officer	12147	James	Hickey	1999-10-25 00:00:00	\N
1317	15313	William Kilroy Jr	280	Lieutenant Of Police	14616	William	Kilroy Jr	1986-07-14 00:00:00	\N
573	26625	Ryan King	18362	Police Officer	14665	Ryan	King	2002-10-28 00:00:00	\N
38	25245	Jeffrey Kirschner	10102	Police Officer	14739	Jeffrey	Kirschner	2000-09-11 00:00:00	2017-03-12 00:00:00
1984	28298	Michael Ksiazek	14458	Sergeant Of Police	15296	Michael	Ksiazek	2006-02-21 00:00:00	\N
1736	28691	William Langle	15098	Police Officer	15663	William	Langle	2006-09-25 00:00:00	\N
362	27244	Michael Laurie	15108	Police Officer	15795	Michael	Laurie	2004-01-26 00:00:00	\N
595	29164	Shawn Lawryn	6909	Police Officer	15837	Shawn	Lawryn	2007-07-30 00:00:00	\N
2055	26355	Scott Leck	2752	Police Officer	15904	Scott	Leck	2002-04-29 00:00:00	2011-09-30 00:00:00
833	27399	Ryan Leclair	13565	Police Officer	15906	Ryan	Leclair	2004-09-27 00:00:00	\N
1083	29455	Daniel Lenihan	14542	Police Officer	16012	Daniel	Lenihan	2008-07-28 00:00:00	\N
1819	28739	Christoph Lofgren	3600	Police Officer	16410	Christoph	Lofgren	2006-10-30 00:00:00	\N
574	23226	Kathleen Mc Lean	19710	Police Officer	18384	Kathleen	Mc Lean	1998-05-26 00:00:00	\N
435	25503	Timothy Obrien	20143	Po As Detective	21121	Timothy	Obrien	2000-12-18 00:00:00	\N
775	26369	Matthew Obrien	10634	Sergeant Of Police	21124	Matthew	Obrien	2002-04-29 00:00:00	\N
1515	28081	Brian Postrelko	12624	Police Officer	22877	Brian	Postrelko	2005-10-31 00:00:00	\N
794	26841	Ruben Reynoso	5621	Police Officer	23814	Ruben	Reynoso	2003-02-24 00:00:00	\N
176	28085	Thomas Robinson	16146	Police Officer	24261	Thomas	Robinson	2005-10-31 00:00:00	\N
2293	23675	Herbert Betancourt	16976	Police Officer	31827	Herbert	Betancourt	1998-10-26 00:00:00	\N
1886	22787	Jason Brown	14562	Sergeant Of Police	31844	Jason	Brown	1997-08-04 00:00:00	\N
722	24234	Adrianne Carter- Ganakes	17903	Police Officer	31857	Adrianne	Carter- Ganakes	1999-08-02 00:00:00	\N
397	19934	Ralph Egan	1485	Sergeant Of Police	31948	Ralph	Egan	1994-05-02 00:00:00	\N
1826	27128	Patrick Fahey Jr	9544	Police Officer	31953	Patrick	Fahey Jr	2003-10-27 00:00:00	\N
1417	26948	Eibar Fuentes	11862	Police Officer	31974	Eibar	Fuentes	2003-08-25 00:00:00	\N
167	17486	Deborah Mabery	\N	Police Officer	16842	Deborah	Mabery	1990-03-26 00:00:00	2015-07-15 00:00:00
490	20135	Tracy Quarles	\N	Sergeant Of Police	23205	Tracy	Quarles	1994-05-31 00:00:00	\N
1505	23085	Thomas Barker	14246	Sergeant Of Police	1317	Thomas	Barker	1998-03-16 00:00:00	\N
1163	27843	Dale Caridine Jr	13333	Police Officer	3909	Dale	Caridine Jr	2005-08-29 00:00:00	\N
1469	13098	Michael Chevalier	915	Sergeant Of Police	4494	Michael	Chevalier	1980-06-23 00:00:00	2010-09-08 00:00:00
465	15910	Kenneth Corcoran	8333	Police Officer	5367	Kenneth	Corcoran	1986-11-17 00:00:00	\N
159	24812	Carlos Cortes	4873	Police Officer	5437	Carlos	Cortes	2000-01-24 00:00:00	\N
1226	28286	Jesus Delarosa Jr	15024	Police Officer	6649	Jesus	Delarosa Jr	2006-02-21 00:00:00	\N
916	16739	Mark George	2256	Sergeant Of Police	9821	Mark	George	1988-01-25 00:00:00	\N
1653	27610	Billy Gonzalez	12989	Police Officer	10316	Billy	Gonzalez	2004-11-29 00:00:00	\N
2308	9718	Joseph Griffin	\N	Commander	10797	Joseph	Griffin	1971-07-26 00:00:00	2003-10-01 00:00:00
32	30452	Lauren Unzueta	5718	Police Officer	5679	Lauren	Unzueta	2013-03-15 00:00:00	\N
1122	24567	Eric Helson	13644	Police Officer	11900	Eric	Helson	1999-11-15 00:00:00	\N
1160	15316	Carl Kirk	16653	Police Officer	14731	Carl	Kirk	1986-07-14 00:00:00	2012-07-19 00:00:00
998	27627	Timothy Larmon	16282	Police Officer	15718	Timothy	Larmon	2004-11-29 00:00:00	\N
533	27657	Michael Oconnor	8342	Police Officer	21165	Michael	Oconnor	2004-11-29 00:00:00	\N
1786	18064	Rodney Omachi	10629	Police Officer	21320	Rodney	Omachi	1991-01-30 00:00:00	\N
1318	25857	Kevin Omara	4084	Police Officer	21325	Kevin	Omara	2001-06-25 00:00:00	\N
421	27252	Michael Orlando	5594	Po/Exp Det Can Hand	21364	Michael	Orlando	2004-01-26 00:00:00	\N
586	24349	Kimberly Otten	7988	Police Officer	21521	Kimberly	Otten	1999-09-13 00:00:00	\N
73	27317	Melissa Palmer	19058	Police Officer	21690	Melissa	Palmer	2004-04-26 00:00:00	\N
1713	14840	Joe Parker	17669	Police Officer	21837	Joe	Parker	1985-11-18 00:00:00	2009-06-30 00:00:00
2197	24967	Timothy Parker	6499	Police Officer	21850	Timothy	Parker	2000-02-28 00:00:00	\N
69	29638	Angel Pena	7135	Police Officer	22169	Angel	Pena	2010-04-16 00:00:00	\N
908	26310	Angela Perez	13640	Police Officer	22258	Angela	Perez	2002-03-25 00:00:00	\N
470	16477	Dusan Puhar	15807	Police Officer	23121	Dusan	Puhar	1987-04-13 00:00:00	2016-05-15 00:00:00
1543	24782	Jason Pullappally	20215	Po As Detective	23139	Jason	Pullappally	1999-12-13 00:00:00	\N
1060	24875	William Skehan	5080	Police Officer	26542	William	Skehan	2000-01-24 00:00:00	\N
1812	28318	Lucas Sopcak	14321	Police Officer	27015	Lucas	Sopcak	2006-02-21 00:00:00	2011-02-22 00:00:00
1554	24170	Thomas Surma	7993	Police Officer	27886	Thomas	Surma	1999-06-21 00:00:00	\N
91	16505	Roy Visor Jr	11359	Police Officer	29650	Roy	Visor Jr	1987-04-13 00:00:00	\N
1407	29453	Christoph Kooistra	\N	Police Officer	32110	Christoph	Kooistra	2008-07-28 00:00:00	\N
2298	17588	Joseph Struck	20479	Po As Detective	27722	Joseph	Struck	1990-03-26 00:00:00	\N
1459	27122	Timothy Bubacz	13632	Police Officer	3190	Timothy	Bubacz	2003-10-27 00:00:00	\N
1882	26670	Rozillius Cain	10724	Police Officer	3619	Rozillius	Cain	2002-12-02 00:00:00	\N
2052	26459	Vincent Celio	12569	Police Officer	4302	Vincent	Celio	2002-08-26 00:00:00	\N
240	15616	Sidney Coleman Jr	5646	Police Officer	4993	Sidney	Coleman Jr	1986-09-08 00:00:00	2015-05-15 00:00:00
940	23748	Antonio Corral	10551	Po As Detective	5417	Antonio	Corral	1998-11-30 00:00:00	\N
1906	21009	Michael Deneen	19012	Po Assgn Traff Spec	6726	Michael	Deneen	1995-02-06 00:00:00	\N
1665	29357	Sherod Dent	16475	Police Officer	6741	Sherod	Dent	2008-04-28 00:00:00	\N
5	28786	Cynthia Donald	4346	Police Officer	7128	Cynthia	Donald	2006-11-27 00:00:00	\N
1697	24742	Vincent Fico	6284	Po/Exp Det Can Hand	8457	Vincent	Fico	1999-12-13 00:00:00	\N
219	29917	Stephanie Fox	6527	Police Officer	9028	Stephanie	Fox	2012-08-31 00:00:00	\N
1055	26275	Silvana Giannini	4936	Police Officer	9888	Silvana	Giannini	2002-03-25 00:00:00	\N
1009	26535	Rolando Godinez	9678	Police Officer	10168	Rolando	Godinez	2002-09-30 00:00:00	\N
447	28253	Sergio Herrera	11968	Police Officer	12087	Sergio	Herrera	2006-01-23 00:00:00	\N
306	27502	Steven Jaglarski	11175	Police Officer	13177	Steven	Jaglarski	2004-10-25 00:00:00	\N
1780	25156	Steven Kapanke	17386	Police Officer	14087	Steven	Kapanke	2000-08-14 00:00:00	\N
263	25802	Christoph Stark	\N	Police Officer	27374	Christoph	Stark	2001-05-29 00:00:00	\N
312	26743	Graylin Watson	5368	Police Officer	30198	Graylin	Watson	2002-12-02 00:00:00	\N
751	29326	Daniel Solis	\N	Police Officer	26990	Daniel	Solis	2007-10-29 00:00:00	2014-11-16 00:00:00
1074	27761	Angeilly Lopez	\N	Sergeant Of Police	16508	Angeilly	Lopez	2005-01-03 00:00:00	\N
1492	28332	Steven Archer	\N	Police Officer	792	Steven	Archer	2006-03-27 00:00:00	\N
1596	28480	Cesar Candelario	\N	Police Officer	3793	Cesar	Candelario	2006-06-26 00:00:00	\N
1912	18497	Jeffery Brosseau	\N	Police Officer	2919	Jeffery	Brosseau	1991-11-18 00:00:00	\N
2100	22550	Matthew Cline	\N	Lieutenant Of Police	31878	Matthew	Cline	1997-05-05 00:00:00	\N
2134	19813	James Poremba	\N	Sergeant Of Police	22837	James	Poremba	1993-12-13 00:00:00	\N
2136	12843	William Woitowich	\N	Lieutenant Of Police	31090	William	Woitowich	1978-12-11 00:00:00	2009-11-01 00:00:00
2322	3762	William Moser	\N	Police Officer	19745	William	Moser	1958-09-01 00:00:00	1989-06-10 00:00:00
2106	17843	Vernon Mitchell Jr	\N	Police Officer	32197	Vernon	Mitchell Jr	1990-08-27 00:00:00	\N
1024	20519	John Hroma Jr	17290	Sergeant Of Police	12677	John	Hroma Jr	1994-09-06 00:00:00	\N
549	29610	Joseph Claussen Jr	\N	Police Officer	4791	Joseph	Claussen Jr	2010-04-16 00:00:00	\N
1285	27050	Eduardo Gonzalez	15231	Police Officer	10339	Eduardo	Gonzalez	2003-09-29 00:00:00	\N
1775	27871	Thomas Hamilton	13071	Sergeant Of Police	11273	Thomas	Hamilton	2005-08-29 00:00:00	\N
512	27872	Darryl Hardy	16834	Police Officer	11406	Darryl	Hardy	2005-08-29 00:00:00	\N
305	24933	Joel Holler	14200	Sergeant Of Police	12432	Joel	Holler	2000-02-28 00:00:00	\N
2046	24245	Jackpierr Huayamave	18892	Police Officer	12679	Jackpierr	Huayamave	1999-08-02 00:00:00	\N
902	20094	Mark Kalamaris	3428	Police Officer	14000	Mark	Kalamaris	1994-05-31 00:00:00	\N
1415	28445	Daniel Kavalauskas	15272	Police Officer	14198	Daniel	Kavalauskas	2006-05-22 00:00:00	\N
1900	25662	Joseph Keim	6315	Police Officer	14307	Joseph	Keim	2001-03-26 00:00:00	\N
2188	25242	Michael Kelly	17578	Police Officer	14405	Michael	Kelly	2000-09-11 00:00:00	2008-05-16 00:00:00
425	21319	David Kowalski	1038	Sergeant Of Police	15126	David	Kowalski	1995-07-10 00:00:00	\N
2300	19618	David Kupczyk	20519	Po As Detective	15394	David	Kupczyk	1993-11-22 00:00:00	2013-01-15 00:00:00
2195	24018	Donovan Markiewicz	17092	Police Officer	17369	Donovan	Markiewicz	1999-05-10 00:00:00	2007-06-30 00:00:00
6	27902	Jeffrey Pacocha	6964	Police Officer	21596	Jeffrey	Pacocha	2005-08-29 00:00:00	\N
530	27716	Scott Bittner	11126	Police Officer	2068	Scott	Bittner	2005-01-03 00:00:00	\N
2044	25006	Scott Blasz	15849	Police Officer	2161	Scott	Blasz	2000-06-19 00:00:00	\N
45	30372	William Rivera Jr	17933	Police Officer	24120	William	Rivera Jr	2013-03-05 00:00:00	\N
2170	26860	Michael Bozan	15892	Police Officer	2570	Michael	Bozan	2003-04-01 00:00:00	\N
30	30068	Jonathan Rogers	17025	Police Officer	24502	Jonathan	Rogers	2012-10-31 00:00:00	2016-04-06 00:00:00
2295	18496	James Breen	60051	Po As Detective	2741	James	Breen	1991-11-18 00:00:00	\N
1983	22917	Salvador Calvillo	9672	Police Officer	3711	Salvador	Calvillo	1997-09-02 00:00:00	\N
2123	26334	Orlando Calvo	15753	Sergeant Of Police	3716	Orlando	Calvo	2002-04-29 00:00:00	\N
4	23397	Michael Campbell	5673	Sergeant Of Police	3761	Michael	Campbell	1998-07-27 00:00:00	\N
1649	23898	James Carroll	6261	Po As Detective	4017	James	Carroll	1999-03-08 00:00:00	\N
75	27845	Scott Carter	7429	Police Officer	4078	Scott	Carter	2005-08-29 00:00:00	\N
1466	24637	Brian Casey	20935	Po As Detective	4124	Brian	Casey	1999-11-29 00:00:00	\N
1225	14667	Timothy Casey	1123	Sergeant Of Police	4137	Timothy	Casey	1985-07-01 00:00:00	\N
106	29134	John Sandoval	\N	Sergeant Of Police	25369	John	Sandoval	2007-07-09 00:00:00	\N
116	29768	Partiece Walker	\N	Po As Detective	29803	Partiece	Walker	2010-09-01 00:00:00	\N
205	27098	Allen Survillion	\N	Police Officer	27888	Allen	Survillion	2003-09-29 00:00:00	\N
543	22205	Patrick Egan	13986	Police Officer	7803	Patrick	Egan	1996-11-04 00:00:00	\N
583	21543	Joseph Meloscia	\N	Police Officer	32184	Joseph	Meloscia	1995-09-05 00:00:00	\N
590	19506	Michael Skoraczewski	\N	Police Officer	26568	Michael	Skoraczewski	1993-05-17 00:00:00	\N
614	14773	Gregory Mitros	592	Lieutenant Of Police	19292	Gregory	Mitros	1985-09-09 00:00:00	2015-05-15 00:00:00
797	26378	Roberto Verdin	\N	Police Officer	29538	Roberto	Verdin	2002-04-29 00:00:00	\N
1062	23198	John Czarnik	16248	Police Officer	31898	John	Czarnik	1998-05-26 00:00:00	\N
1190	16372	Dannye Ward	12288	Police Officer	30021	Dannye	Ward	1987-03-09 00:00:00	2015-07-26 00:00:00
1281	22086	Diane Piccolo	\N	Police Officer	22497	Diane	Piccolo	1996-07-08 00:00:00	\N
1302	17380	Jose De Jesus	\N	Sergeant Of Police	6451	Jose	De Jesus	1990-03-26 00:00:00	2012-11-15 00:00:00
1477	14550	Robert Cervenka	\N	Lieutenant Of Police	31862	Robert	Cervenka	1985-04-08 00:00:00	\N
1707	23284	Christoph Katalinic	\N	Police Officer	14174	Christoph	Katalinic	1998-06-08 00:00:00	\N
2071	21500	Charles Dougherty	\N	Police Officer	7244	Charles	Dougherty	1995-09-05 00:00:00	\N
2148	16329	Julia Lawler	\N	Po (Per Arb Award)	15816	Julia	Lawler	1987-03-09 00:00:00	2012-05-04 00:00:00
2261	22546	Calvin Chatman	\N	Police Officer	4442	Calvin	Chatman	1997-05-05 00:00:00	\N
2285	14039	Robert Clemens	\N	Po As Detective	4824	Robert	Clemens	1982-07-19 00:00:00	2012-09-15 00:00:00
2302	12435	John Risley	\N	Deputy Supt.	24043	John	Risley	1977-07-18 00:00:00	2008-02-15 00:00:00
2368	6098	Thomas Ptak	\N	Po As Detective	23097	Thomas	Ptak	1966-06-01 00:00:00	1995-12-31 00:00:00
1204	24794	Thomas Barnett	14978	Sergeant Of Police	1366	Thomas	Barnett	2000-01-24 00:00:00	\N
1845	21142	Pablo Delgado Jr	\N	Police Officer	6680	Pablo	Delgado Jr	1995-06-05 00:00:00	\N
2049	14036	Anthony Ceja	672	Lieutenant Of Police	4294	Anthony	Ceja	1982-07-19 00:00:00	2016-08-15 00:00:00
985	29676	Leszek Chlebowicz	14885	Police Officer	4544	Leszek	Chlebowicz	2010-09-01 00:00:00	\N
1389	27597	Richard Chorak	15670	Po As Detective	4567	Richard	Chorak	2004-11-29 00:00:00	\N
529	21372	Robert Stegmiller	18764	Police Officer	27439	Robert	Stegmiller	1995-07-10 00:00:00	\N
1709	20589	Dean Claeson Jr	2054	Sergeant Of Police	4707	Dean	Claeson Jr	1994-10-03 00:00:00	2011-11-04 00:00:00
1595	28657	Richard Steinbrenner	19743	Sergeant Of Police	27448	Richard	Steinbrenner	2006-08-28 00:00:00	\N
77	29907	Daniel Coda	5094	Police Officer	4900	Daniel	Coda	2012-08-31 00:00:00	\N
65	26125	Kevin Stephans	4337	Police Officer	27472	Kevin	Stephans	2001-10-29 00:00:00	\N
1754	21826	Garland Coleman	19652	Police Officer	4987	Garland	Coleman	1996-03-18 00:00:00	\N
371	17583	Michael Stevens	361	Lieutenant Of Police	27504	Michael	Stevens	1990-03-26 00:00:00	\N
1100	27472	Robert Combs	18544	Police Officer	5103	Robert	Combs	2004-10-25 00:00:00	\N
1088	27811	Matthew Stevens	8321	Sergeant Of Police	27507	Matthew	Stevens	2005-01-03 00:00:00	\N
550	23618	Luke Connolly	21407	Sergeant Of Police	5189	Luke	Connolly	1998-10-13 00:00:00	\N
2364	6958	Jack Stewart	20257	Po As Detective	27524	Jack	Stewart	1967-09-11 00:00:00	2002-07-15 00:00:00
922	22554	Joseph Considine	15831	Police Officer	5236	Joseph	Considine	1997-05-05 00:00:00	\N
1256	29501	Brian Stoyak	7243	Police Officer	27640	Brian	Stoyak	2009-03-09 00:00:00	2013-01-14 00:00:00
1772	27476	Matthew Conway	14005	Sergeant Of Police	5269	Matthew	Conway	2004-10-25 00:00:00	\N
1257	19044	Scott Straka	2767	Police Officer	27648	Scott	Straka	1992-01-02 00:00:00	\N
1075	25702	Sergio Corona	3331	Police Officer	5406	Sergio	Corona	2001-04-30 00:00:00	\N
208	30503	Mark Styczynski	5442	Police Officer	27765	Mark	Styczynski	2013-04-01 00:00:00	\N
1294	28132	Edgar Corral	10527	Police Officer	5423	Edgar	Corral	2005-12-05 00:00:00	\N
364	27333	Michael Suing	17006	Police Officer	27797	Michael	Suing	2004-04-26 00:00:00	\N
1986	26679	Jose Cortes	18443	Police Officer	5439	Jose	Cortes	2002-12-02 00:00:00	\N
161	26850	Tina Sukalo	6402	Police Officer	27799	Tina	Sukalo	2003-02-24 00:00:00	\N
1018	24813	Andrew Cuomo	5853	Police Officer	5922	Andrew	Cuomo	2000-01-24 00:00:00	\N
102	26739	David Tull	16233	Police Officer	29008	David	Tull	2002-12-02 00:00:00	\N
1019	23478	Fred Davenport Jr	16581	Police Officer	6250	Fred	Davenport Jr	1998-08-31 00:00:00	\N
1316	28679	Edgar Del Olmo	9653	Police Officer	6604	Edgar	Del Olmo	2006-09-25 00:00:00	\N
1547	28875	Jose Deleon	14421	Police Officer	6655	Jose	Deleon	2006-12-18 00:00:00	\N
25	24454	Michael Dolan	1779	Sergeant Of Police	7072	Michael	Dolan	1999-10-25 00:00:00	\N
811	25761	Stephanie Doyle	10034	Police Officer	7311	Stephanie	Doyle	2001-05-29 00:00:00	2014-01-15 00:00:00
1711	23825	Kevin Doyle	10677	Police Officer	7319	Kevin	Doyle	1998-12-14 00:00:00	\N
453	29048	Dominik Drozdel	10781	Police Officer	7407	Dominik	Drozdel	2007-06-04 00:00:00	\N
1073	26422	Christine Dunn	6105	Police Officer	7566	Christine	Dunn	2002-07-29 00:00:00	\N
1260	26683	Michael Edens	13975	Po/Field Trning Off	7751	Michael	Edens	2002-12-02 00:00:00	\N
303	26424	Darryl Edwards	19970	Police Officer	7771	Darryl	Edwards	2002-07-29 00:00:00	\N
1375	28726	Jacob Eidinger	10865	Police Officer	7824	Jacob	Eidinger	2006-10-30 00:00:00	\N
84	30033	Brandon Ellison	12599	Police Officer	7916	Brandon	Ellison	2012-10-31 00:00:00	\N
571	23551	Joseph Fitzgerald	19954	Police Officer	8628	Joseph	Fitzgerald	1998-09-28 00:00:00	\N
467	13707	Sergio Flores	11404	Police Officer	8771	Sergio	Flores	1982-02-01 00:00:00	2014-12-30 00:00:00
193	29689	Phoebe Flores	17307	Police Officer	8804	Phoebe	Flores	2010-09-01 00:00:00	\N
1766	27291	Anthony Folino	8669	Police Officer	8886	Anthony	Folino	2004-04-26 00:00:00	\N
653	22136	Cordy Fouch Jr	19814	Police Officer	9001	Cordy	Fouch Jr	1996-08-05 00:00:00	\N
354	21942	Robert Franks	14426	Po Asgn Evid. Techni	9089	Robert	Franks	1996-05-06 00:00:00	\N
1485	23995	Thomas Freitag	10589	Po As Detective	9150	Thomas	Freitag	1999-05-10 00:00:00	\N
1484	24558	Joseph Fronczak	16924	Po As Detective	9213	Joseph	Fronczak	1999-11-15 00:00:00	\N
2336	23342	Keith Fuelling	13618	Police Officer	9237	Keith	Fuelling	1998-06-29 00:00:00	\N
963	26529	Ibn Furqan	13256	Police Officer	9289	Ibn	Furqan	2002-09-30 00:00:00	\N
1853	20207	David Garcia	20429	Po As Detective	9523	David	Garcia	1994-07-05 00:00:00	\N
121	21943	Adolfo Garcia	14438	Police Officer	9583	Adolfo	Garcia	1996-05-06 00:00:00	\N
181	27131	Armando Garza Jr	10124	Police Officer	9704	Armando	Garza Jr	2003-10-27 00:00:00	\N
943	24653	Timothy Gaskin	7474	Police Officer	9714	Timothy	Gaskin	1999-11-29 00:00:00	\N
1698	27350	Nick Beckman	16887	Police Officer	1647	Nick	Beckman	2004-09-27 00:00:00	\N
676	15034	David Blanco	794	Lieutenant Of Police	2144	David	Blanco	1986-06-16 00:00:00	2016-05-15 00:00:00
1864	27120	Nicholas Breier	3237	Police Officer	2748	Nicholas	Breier	2003-10-27 00:00:00	2015-05-08 00:00:00
1607	21921	Nicolas Chapello	19730	Police Officer	4408	Nicolas	Chapello	1996-05-06 00:00:00	\N
1363	27169	Daniel Cravens	4637	Sergeant Of Police	5645	Daniel	Cravens	2003-11-24 00:00:00	\N
1020	26340	Neil Evans	20988	Po As Detective	8120	Neil	Evans	2002-04-29 00:00:00	\N
1178	25136	Darren Foster	14410	Po Asgn Evid. Techni	8977	Darren	Foster	2000-08-14 00:00:00	\N
1354	19739	Nial Funchion	13605	Police Officer	9275	Nial	Funchion	1993-12-13 00:00:00	2016-01-05 00:00:00
638	22583	William Gentile	1399	Lieutenant Of Police	9807	William	Gentile	1997-05-05 00:00:00	\N
122	23996	George Ghorbanian	10893	Police Officer	9873	George	Ghorbanian	1999-05-10 00:00:00	\N
1235	26534	Derek Glowacki	15743	Police Officer	10120	Derek	Glowacki	2002-09-30 00:00:00	2015-03-20 00:00:00
1411	28624	Chris Gofron	18705	Police Officer	10188	Chris	Gofron	2006-08-28 00:00:00	2016-05-16 00:00:00
1888	27739	Kenneth Golden	7324	Police Officer	10213	Kenneth	Golden	2005-01-03 00:00:00	\N
671	29362	Robin Gonzales	5137	Police Officer	10284	Robin	Gonzales	2008-04-28 00:00:00	\N
515	24746	Duane Gordon	5977	Police Officer	10399	Duane	Gordon	1999-12-13 00:00:00	\N
2062	21947	Edwin Gorman	20289	Po As Detective	10435	Edwin	Gorman	1996-05-06 00:00:00	\N
2358	9105	Albert Graf	20480	Po As Detective	10530	Albert	Graf	1970-09-14 00:00:00	2003-07-02 00:00:00
1588	28625	Bill Graywal	17135	Police Officer	10637	Bill	Graywal	2006-08-28 00:00:00	\N
335	25453	Christoph Green	13996	Police Officer	10693	Christoph	Green	2000-12-18 00:00:00	\N
977	22686	Mike Gremo	10450	Police Officer	10750	Mike	Gremo	1997-07-07 00:00:00	\N
1575	24657	Neil Griffin	3384	Police Officer	10805	Neil	Griffin	1999-11-29 00:00:00	\N
1922	23210	Burdett Griffin Iii	19118	Police Officer	10809	Burdett	Griffin Iii	1998-05-26 00:00:00	\N
78	29842	Cesar Guerrero	7947	Police Officer	10960	Cesar	Guerrero	2012-07-02 00:00:00	\N
624	28347	Joseph Gunning	10547	Police Officer	11010	Joseph	Gunning	2006-03-27 00:00:00	\N
646	22472	Chris Hackett	7447	Police Officer	11129	Chris	Hackett	1997-03-17 00:00:00	\N
2040	22222	John Haleas	6719	Police Officer	11186	John	Haleas	1996-11-04 00:00:00	\N
1542	25233	Morad Haleem	21488	Po As Detective	11188	Morad	Haleem	2000-09-11 00:00:00	\N
85	26032	Tremayne Hall	5575	Po/Field Trning Off	11216	Tremayne	Hall	2001-09-24 00:00:00	\N
1451	20904	Lance Handzel	8116	Police Officer	11305	Lance	Handzel	1995-01-03 00:00:00	\N
1050	29624	Brian Harris	9773	Police Officer	11540	Brian	Harris	2010-04-16 00:00:00	\N
1798	23042	Douglas Hartz	11757	Police Officer	11617	Douglas	Hartz	1998-02-17 00:00:00	\N
1311	20909	Mikel Herman	14677	Po As Detective	11995	Mikel	Herman	1995-01-03 00:00:00	\N
63	28796	Priscilla Hernandez	7387	Police Officer	12062	Priscilla	Hernandez	2006-11-27 00:00:00	\N
1917	15748	Mark Higgs	1914	Sergeant Of Police	12183	Mark	Higgs	1986-10-13 00:00:00	2015-08-15 00:00:00
1248	23350	Jeffrey Hughes	1330	Sergeant Of Police	12763	Jeffrey	Hughes	1998-06-29 00:00:00	\N
692	27589	Brian Cahill	19478	Police Officer	3605	Brian	Cahill	2004-11-29 00:00:00	\N
1165	14740	Carlton Cook	17263	Police Officer	5293	Carlton	Cook	1985-09-09 00:00:00	2012-11-15 00:00:00
1784	26609	Brian Doyle	5272	Police Officer	7322	Brian	Doyle	2002-10-28 00:00:00	\N
39	21200	Daniel Mc Call	1786	Sergeant Of Police	17913	Daniel	Mc Call	1995-06-05 00:00:00	\N
2324	21293	Brian Forberg	21249	Sergeant Of Police	8902	Brian	Forberg	1995-07-10 00:00:00	\N
634	29753	Brendan Roberts	6889	Police Officer	24186	Brendan	Roberts	2010-09-01 00:00:00	\N
1767	26037	Admon Iramiya	4032	Sergeant Of Police	12947	Admon	Iramiya	2001-09-24 00:00:00	\N
1236	23793	Brian Schnier	1273	Sergeant Of Police	25717	Brian	Schnier	1998-11-30 00:00:00	\N
1728	28055	Francisco Iza	12649	Police Officer	13010	Francisco	Iza	2005-10-31 00:00:00	\N
101	26917	Brian Spreng	5688	Police Officer	27222	Brian	Spreng	2003-04-28 00:00:00	\N
709	29371	Bradley Jedlink	6938	Police Officer	13360	Bradley	Jedlink	2008-04-28 00:00:00	\N
1919	26187	Brian Storrie	7881	Police Officer	27626	Brian	Storrie	2001-12-17 00:00:00	\N
330	17065	Tyrone Jenkins	5282	Police Officer	13391	Tyrone	Jenkins	1989-02-14 00:00:00	2017-02-15 00:00:00
1730	26855	Kelly Vo	18574	Police Officer	29683	Kelly	Vo	2003-02-24 00:00:00	\N
120	18198	Shirley Johnson	11021	Police Officer	13528	Shirley	Johnson	1991-03-27 00:00:00	\N
196	27753	Sharnee Johnson	13358	Police Officer	13570	Sharnee	Johnson	2005-01-03 00:00:00	\N
957	25342	Michaelen Johnson	12309	Sergeant Of Police	13636	Michaelen	Johnson	2000-10-10 00:00:00	\N
654	19608	Mark Jones	10390	Police Officer	13776	Mark	Jones	1993-11-22 00:00:00	2015-05-15 00:00:00
1026	25465	Cory Jones	5647	Police Officer	13778	Cory	Jones	2000-12-18 00:00:00	\N
1744	27506	Patrick Josephs	13412	Sergeant Of Police	13873	Patrick	Josephs	2004-10-25 00:00:00	\N
418	25158	Daniel Kasper	3019	Police Officer	14163	Daniel	Kasper	2000-08-14 00:00:00	\N
1689	17694	Joseph Keeter	2647	Sergeant Of Police	14294	Joseph	Keeter	1990-07-30 00:00:00	\N
912	24665	Robert Keller	6451	Police Officer	14326	Robert	Keller	1999-11-29 00:00:00	\N
1445	28895	Robert Kelley	5689	Police Officer	14339	Robert	Kelley	2006-12-18 00:00:00	\N
770	29706	Patrick Kelly	12650	Po As Detective	14358	Patrick	Kelly	2010-09-01 00:00:00	\N
1051	20096	George Kelly	5112	Po Assg Canine Handl	14363	George	Kelly	1994-05-31 00:00:00	\N
945	26543	Steven Kelnosky	10972	Police Officer	14433	Steven	Kelnosky	2002-09-30 00:00:00	\N
1052	28446	Victor Keneard	8471	Police Officer	14453	Victor	Keneard	2006-05-22 00:00:00	\N
1858	23156	Michael Kennedy	20102	Po As Detective	14462	Michael	Kennedy	1998-04-13 00:00:00	\N
1176	29553	Patrick Kennedy	14414	Police Officer	14479	Patrick	Kennedy	2009-12-16 00:00:00	\N
1742	26292	Lawrence Kerr	4871	Police Officer	14526	Lawrence	Kerr	2002-03-25 00:00:00	\N
1599	29310	Brian Kieduk	6921	Police Officer	14567	Brian	Kieduk	2007-10-29 00:00:00	\N
754	24762	Kevin Killen	6535	Police Officer	14598	Kevin	Killen	1999-12-13 00:00:00	\N
411	25597	Eric Killion	11750	Police Officer	14602	Eric	Killion	2001-02-05 00:00:00	\N
946	27136	Greg Killmer	5095	Police Officer	14604	Greg	Killmer	2003-10-27 00:00:00	\N
361	25718	Brian Kinnane	1120	Sergeant Of Police	14691	Brian	Kinnane	2001-04-30 00:00:00	\N
2168	15763	Bruce Kischner	20282	Po As Detective	14743	Bruce	Kischner	1986-10-13 00:00:00	2016-01-15 00:00:00
834	29707	Michael Knight	17174	Police Officer	14863	Michael	Knight	2010-09-01 00:00:00	\N
1082	29374	Krzysztof Kobylarczyk	8705	Police Officer	14893	Krzysztof	Kobylarczyk	2008-04-28 00:00:00	\N
732	23286	Michael Kocanda	5330	Police Officer	14896	Michael	Kocanda	1998-06-08 00:00:00	\N
1901	12396	John Kohles	1252	Sergeant Of Police	14937	John	Kohles	1977-07-18 00:00:00	2008-05-15 00:00:00
1265	25036	Gerald Koll	16982	Po/Field Trning Off	14962	Gerald	Koll	2000-06-19 00:00:00	2011-11-17 00:00:00
1867	25847	Daniel Kolodziejski	7043	Police Officer	14969	Daniel	Kolodziejski	2001-06-25 00:00:00	\N
192	25473	John Korolis	21339	Po As Detective	15042	John	Korolis	2000-12-18 00:00:00	\N
1301	26040	Andrew Kraut	4116	Po/Field Trning Off	15194	Andrew	Kraut	2001-09-24 00:00:00	\N
917	17004	Joseph Kurpiel	10995	Police Officer	15416	Joseph	Kurpiel	1988-12-05 00:00:00	\N
1615	12845	Stanley Kus	6936	Police Officer	15430	Stanley	Kus	1978-12-18 00:00:00	2011-02-15 00:00:00
1138	25248	Margaret Labrizzi	14117	Police Officer	15522	Margaret	Labrizzi	2000-09-11 00:00:00	\N
1031	26293	Ineasie Lacefield	16036	Police Officer	15525	Ineasie	Lacefield	2002-03-25 00:00:00	\N
1726	26768	Ronald Lackage Jr	8535	Police Officer	15534	Ronald	Lackage Jr	2003-01-27 00:00:00	\N
1948	29117	Melyssa Laporte	12077	Police Officer	15697	Melyssa	Laporte	2007-07-09 00:00:00	\N
1894	15769	Victor Law	20560	Po As Detective	15813	Victor	Law	1986-10-13 00:00:00	2012-11-15 00:00:00
1511	28666	David Anderson	4720	Police Officer	642	David	Anderson	2006-09-25 00:00:00	\N
1710	13587	Kenneth Angarone	20	Captain Of Police	702	Kenneth	Angarone	1981-06-08 00:00:00	2017-01-14 00:00:00
37	28426	John Barak	2780	Police Officer	1278	John	Barak	2006-05-22 00:00:00	\N
1310	28277	Eric Brown	15572	Po/Field Trning Off	2991	Eric	Brown	2006-02-21 00:00:00	\N
1059	22633	Danny Riley	14476	Police Officer	23984	Danny	Riley	1997-05-05 00:00:00	\N
1966	19092	Patrick Crawford	1213	Lieutenant Of Police	5652	Patrick	Crawford	1992-06-29 00:00:00	\N
2015	24419	Frank Sarabia	14335	Police Officer	25442	Frank	Sarabia	1999-10-04 00:00:00	\N
466	25015	Gerald Di Pasquale	14224	Po As Detective	6821	Gerald	Di Pasquale	2000-06-19 00:00:00	\N
145	29232	Nicholas Vasselli	4902	Sergeant Of Police	29408	Nicholas	Vasselli	2007-08-27 00:00:00	\N
1716	23705	Brian Josephs	15576	Police Officer	13872	Brian	Josephs	1998-10-26 00:00:00	\N
1002	28374	Jose Villa	14319	Police Officer	29594	Jose	Villa	2006-03-27 00:00:00	\N
1849	27509	Scott Konior	14328	Police Officer	14991	Scott	Konior	2004-10-25 00:00:00	\N
1918	17962	James Laska	7957	Police Officer	15747	James	Laska	1991-01-02 00:00:00	2015-10-15 00:00:00
819	23500	Mark Lemus	19294	Sergeant Of Police	16002	Mark	Lemus	1998-08-31 00:00:00	\N
2151	14187	Elizabeth Lewis	11773	Police Officer	16156	Elizabeth	Lewis	1982-08-30 00:00:00	2007-09-01 00:00:00
117	25039	Christoph Lindahl	8634	Police Officer	16265	Christoph	Lindahl	2000-06-19 00:00:00	\N
820	25252	Mireya Lipsey	17080	Po As Detective	16311	Mireya	Lipsey	2000-09-11 00:00:00	\N
476	26297	Robert Lobianco	16764	Police Officer	16385	Robert	Lobianco	2002-03-25 00:00:00	\N
1654	26101	Carmen Lopez	9341	Police Officer	16520	Carmen	Lopez	2001-10-29 00:00:00	\N
564	23771	Carmen Lopez	6644	Police Officer	16521	Carmen	Lopez	1998-11-30 00:00:00	\N
442	28403	Jose Lopez	11943	Police Officer	16551	Jose	Lopez	2006-05-01 00:00:00	\N
1667	21963	Frank Mack	19804	Police Officer	16873	Frank	Mack	1996-05-06 00:00:00	2010-04-28 00:00:00
1112	20397	Michael Malecki	10075	Police Officer	17087	Michael	Malecki	1994-08-01 00:00:00	\N
2174	14085	Ricardo Mancha	562	Lieutenant Of Police	17176	Ricardo	Mancha	1982-07-19 00:00:00	2016-09-15 00:00:00
1429	21052	Robert Marshall	18977	Police Officer	17434	Robert	Marshall	1995-02-06 00:00:00	\N
986	21197	Ricardo Mata	11563	Sergeant Of Police	17711	Ricardo	Mata	1995-06-05 00:00:00	\N
606	18993	David Matual	20964	Po As Detective	17783	David	Matual	1992-01-02 00:00:00	\N
1230	10395	John Matula	82	Captain Of Police	17786	John	Matula	1972-11-20 00:00:00	2014-01-15 00:00:00
1706	28976	Zuzanna Matysiak	6353	Police Officer	17790	Zuzanna	Matysiak	2007-04-02 00:00:00	\N
1859	22385	Paul Mc Donagh	20225	Sergeant Of Police	18097	Paul	Mc Donagh	1996-12-02 00:00:00	\N
1626	15650	Daniel Mc Donald	1234	Sergeant Of Police	18104	Daniel	Mc Donald	1986-09-08 00:00:00	\N
1771	18994	John Mc Gee Jr	1254	Sergeant Of Police	18176	John	Mc Gee Jr	1992-01-02 00:00:00	\N
1668	10769	Daniel Mc Hugh	21119	Po As Detective	18269	Daniel	Mc Hugh	1973-03-19 00:00:00	2010-11-28 00:00:00
1627	14951	Michael Mc Laughlin	2537	Sergeant Of Police	18376	Michael	Mc Laughlin	1986-02-03 00:00:00	2012-11-15 00:00:00
267	29562	Ryan Mccarthy	7223	Police Officer	18536	Ryan	Mccarthy	2009-12-16 00:00:00	\N
1539	29171	Daniel Mcnamara Iv	8332	Police Officer	18653	Daniel	Mcnamara Iv	2007-07-30 00:00:00	\N
652	22836	William Meador	1003	Sergeant Of Police	18679	William	Meador	1997-08-04 00:00:00	\N
1130	29489	John Medina	15077	Police Officer	18706	John	Medina	2009-03-09 00:00:00	\N
182	26972	Francisco Mendoza	8138	Police Officer	18828	Francisco	Mendoza	2003-08-25 00:00:00	\N
1745	26549	Joseph Menoni	5666	Sergeant Of Police	18841	Joseph	Menoni	2002-09-30 00:00:00	\N
910	29124	Nyls Meredith	12547	Po Asgn Evid. Techni	18862	Nyls	Meredith	2007-07-09 00:00:00	\N
1524	18857	Jack Meseck	16664	Police Officer	18896	Jack	Meseck	1991-12-16 00:00:00	\N
1333	27892	Lynn Meuris	9591	Police Officer	18915	Lynn	Meuris	2005-08-29 00:00:00	\N
2327	12416	James Michaels	20317	Po As Detective	18950	James	Michaels	1977-07-18 00:00:00	2007-02-15 00:00:00
935	27069	Kenneth Miles Jr	16402	Police Officer	19053	Kenneth	Miles Jr	2003-09-29 00:00:00	\N
1500	15579	James Smith	20664	Sergeant Of Police	26828	James	Smith	1986-08-11 00:00:00	2016-10-15 00:00:00
1559	25579	Chris Dingle	\N	Po As Detective	6953	Chris	Dingle	2001-02-05 00:00:00	\N
2369	7773	Leroy Almanza	\N	Sergeant Of Police	421	Leroy	Almanza	1968-06-10 00:00:00	1998-07-16 00:00:00
491	16791	Jerome Anderson	3712	Police Officer	579	Jerome	Anderson	1988-05-02 00:00:00	\N
939	27455	Taras Andrushko	16678	Police Officer	694	Taras	Andrushko	2004-10-25 00:00:00	\N
1150	17742	Michael Bazarek	1913	Sergeant Of Police	1582	Michael	Bazarek	1990-08-27 00:00:00	\N
1764	28233	Joshua Bielema	9234	Police Officer	1989	Joshua	Bielema	2006-01-23 00:00:00	\N
2303	20047	Taras Bilyj	3243	Police Officer	2034	Taras	Bilyj	1994-05-31 00:00:00	\N
2337	10680	Paul Burg	8204	Police Officer	3307	Paul	Burg	1973-03-19 00:00:00	2011-04-15 00:00:00
1982	21612	Javier Celio	19460	Police Officer	4303	Javier	Celio	1995-10-23 00:00:00	\N
1870	26517	Alem Cerkic	15029	Police Officer	4339	Alem	Cerkic	2002-09-30 00:00:00	2010-07-19 00:00:00
1064	20054	Laurence Coleman	3377	Sergeant Of Police	4964	Laurence	Coleman	1994-05-31 00:00:00	\N
1151	15704	Patrick Conroy	267	Lieutenant Of Police	5216	Patrick	Conroy	1986-10-13 00:00:00	\N
1101	23477	Frank Covello	14022	Sergeant Of Police	5554	Frank	Covello	1998-08-31 00:00:00	\N
981	19303	Christine Dolan	20527	Po As Detective	7060	Christine	Dolan	1992-12-07 00:00:00	2017-01-15 00:00:00
1187	29619	Kellie Doyle	4419	Police Officer	7330	Kellie	Doyle	2010-04-16 00:00:00	\N
2222	23040	Herminio Flores Jr	11161	Police Officer	8813	Herminio	Flores Jr	1998-02-17 00:00:00	\N
434	19736	Patrick Ford	21029	Po As Detective	8911	Patrick	Ford	1993-12-13 00:00:00	\N
1904	19978	Richard Milz	21200	Po As Detective	19172	Richard	Milz	1994-05-02 00:00:00	2014-08-02 00:00:00
338	24146	Kenneth Molesky	6538	Police Officer	19347	Kenneth	Molesky	1999-06-21 00:00:00	\N
1131	28978	Janet Mondragon	4364	Police Officer	19376	Janet	Mondragon	2007-04-02 00:00:00	\N
1035	29632	Jesus Montesdeoca	7699	Police Officer	19410	Jesus	Montesdeoca	2010-04-16 00:00:00	\N
1756	28307	Titus Moore	14480	Po/Field Trning Off	19499	Titus	Moore	2006-02-21 00:00:00	\N
1868	27523	Jose Morales	14163	Police Officer	19549	Jose	Morales	2004-10-25 00:00:00	\N
1616	16255	Vincent Morales	3228	Sergeant Of Police	19558	Vincent	Morales	1987-02-02 00:00:00	2017-03-15 00:00:00
924	17018	William Moriarty	6316	Police Officer	19652	William	Moriarty	1988-12-05 00:00:00	2016-12-15 00:00:00
326	29734	Jonathan Morlock	15358	Police Officer	19671	Jonathan	Morlock	2010-09-01 00:00:00	\N
2069	12688	John Murphy	164	Captain Of Police	20025	John	Murphy	1978-02-27 00:00:00	2008-07-15 00:00:00
443	28361	Michelle Murphy	4176	Police Officer	20058	Michelle	Murphy	2006-03-27 00:00:00	\N
1669	15349	Michael Muzupappa Jr	21137	Po As Detective	20159	Michael	Muzupappa Jr	1986-07-14 00:00:00	2016-02-15 00:00:00
2265	19641	Michael Nallen	13812	Sergeant Of Police	20205	Michael	Nallen	1993-11-22 00:00:00	\N
1879	25856	Andre Nash	8049	Police Officer	20242	Andre	Nash	2001-06-25 00:00:00	\N
1113	15148	Kevin Navarro	45	First Deputy Supt.	20271	Kevin	Navarro	1986-06-16 00:00:00	\N
1208	27778	Piotr Nestorowicz	16883	Police Officer	20409	Piotr	Nestorowicz	2005-01-03 00:00:00	\N
1193	28076	Matilde Ocampo	13474	Police Officer	21139	Matilde	Ocampo	2005-10-31 00:00:00	\N
987	21668	Todd Olsen	13041	Police Officer	21286	Todd	Olsen	1995-10-23 00:00:00	\N
955	29070	Gino Pacetti	10051	Police Officer	21575	Gino	Pacetti	2007-06-04 00:00:00	\N
1056	28146	Brook Glynn	11113	Po As Detective	10128	Brook	Glynn	2005-12-05 00:00:00	\N
599	19613	Patrick Kearns	3221	Police Officer	14243	Patrick	Kearns	1993-11-22 00:00:00	\N
664	20931	Clifford Martin	\N	Sergeant Of Police	17456	Clifford	Martin	1995-01-03 00:00:00	\N
100	29798	Bernadette Kelly	7186	Police Officer	14409	Bernadette	Kelly	2011-10-17 00:00:00	\N
1927	25914	William Murphy	12167	Police Officer	20053	William	Murphy	2001-07-30 00:00:00	\N
427	29177	Patrick Niedzielak	4415	Police Officer	20506	Patrick	Niedzielak	2007-07-30 00:00:00	\N
175	28227	Alberto Zayas	\N	Police Officer	31598	Alberto	Zayas	2005-12-05 00:00:00	\N
569	29385	Arkadiusz Pachnik	3917	Po/Marine Officer	21586	Arkadiusz	Pachnik	2008-04-28 00:00:00	\N
1103	24692	Sheryl Panek	7259	Police Officer	21732	Sheryl	Panek	1999-11-29 00:00:00	\N
249	23989	Michael Dineen	\N	Sergeant Of Police	6949	Michael	Dineen	1999-05-10 00:00:00	\N
1005	24156	Chris Papaioannou	7644	Lieutenant Of Police	21774	Chris	Papaioannou	1999-06-21 00:00:00	\N
1237	23461	Charles Walters	\N	Police Officer	32404	Charles	Walters	1998-07-27 00:00:00	\N
1885	26987	Michael Papin	3020	Police Officer	21779	Michael	Papin	2003-08-25 00:00:00	\N
601	23736	Brian Spain	\N	Po As Detective	27114	Brian	Spain	1998-10-26 00:00:00	\N
1114	27080	Del Pearson	16462	Police Officer	22094	Del	Pearson	2003-09-29 00:00:00	\N
1132	26112	Juan Perez	17181	Sergeant Of Police	22277	Juan	Perez	2001-10-29 00:00:00	\N
369	26906	Martin Philbin	4211	Police Officer	22466	Martin	Philbin	2003-04-28 00:00:00	\N
629	26638	Richard Pellerano	\N	Police Officer	22150	Richard	Pellerano	2002-10-28 00:00:00	\N
804	28578	Reginald Pippen	15512	Police Officer	22645	Reginald	Pippen	2006-07-31 00:00:00	\N
2083	26113	Slawomir Plewa	14604	Police Officer	22709	Slawomir	Plewa	2001-10-29 00:00:00	2012-10-04 00:00:00
840	28225	Ryan Winfrey	\N	Police Officer	30992	Ryan	Winfrey	2005-12-05 00:00:00	\N
1202	24160	Daniel Printz	17347	Sergeant Of Police	23028	Daniel	Printz	1999-06-21 00:00:00	\N
1409	21133	Thomas Carey	\N	Police Officer	3897	Thomas	Carey	1995-06-05 00:00:00	\N
1522	21099	John Thill	\N	Police Officer	28404	John	Thill	1995-02-06 00:00:00	\N
2205	12736	Anthony Villardita	\N	Po As Detective	29611	Anthony	Villardita	1978-02-27 00:00:00	2010-04-01 00:00:00
318	28683	Sara Fazy	\N	Police Officer	18458	Sara	Fazy	2006-09-25 00:00:00	\N
98	28583	Eric Puszkiewicz	9913	Police Officer	23171	Eric	Puszkiewicz	2006-07-31 00:00:00	\N
2223	14508	Luis Munoz	\N	Po As Detective	19947	Luis	Munoz	1985-03-04 00:00:00	2012-04-13 00:00:00
419	26313	Charles Pye	5489	Police Officer	23181	Charles	Pye	2002-03-25 00:00:00	\N
2230	26250	Shaun Williams	\N	Police Officer	30834	Shaun	Williams	2002-02-25 00:00:00	\N
1528	19361	Craig Quarterman	10897	Police Officer	23206	Craig	Quarterman	1992-12-07 00:00:00	\N
1085	26639	Joseph Quinn Iii	15057	Po/Field Trning Off	23254	Joseph	Quinn Iii	2002-10-28 00:00:00	\N
1123	26562	Gerardo Quintero	5796	Police Officer	23266	Gerardo	Quintero	2002-09-30 00:00:00	\N
905	14646	Jane Raddatz	1813	Sergeant Of Police	23287	Jane	Raddatz	1985-05-06 00:00:00	2015-08-15 00:00:00
858	29497	David Rak	4594	Police Officer	23340	David	Rak	2009-03-09 00:00:00	\N
126	27546	Kevin Rake	7524	Sergeant Of Police	23344	Kevin	Rake	2004-10-25 00:00:00	\N
2271	14107	Maja Ramirez	5143	Police Officer	23376	Maja	Ramirez	1982-07-19 00:00:00	\N
2032	22512	Joseph Ramirez	19248	Police Officer	23379	Joseph	Ramirez	1997-03-17 00:00:00	\N
1013	28523	Monica Bailey	18958	Police Officer	1087	Monica	Bailey	2006-07-31 00:00:00	\N
190	27713	Kreighton Barr	13742	Police Officer	1381	Kreighton	Barr	2005-01-03 00:00:00	\N
2219	15431	Marvin Bonnstetter	1645	Sergeant Of Police	2375	Marvin	Bonnstetter	1986-08-11 00:00:00	2011-11-15 00:00:00
548	29672	Lee Caldwell	16952	Police Officer	3657	Lee	Caldwell	2010-09-01 00:00:00	\N
1513	27478	Nelson Crespo	10914	Police Officer	5706	Nelson	Crespo	2004-10-25 00:00:00	\N
483	30109	Pedro Diaz	13345	Police Officer	6859	Pedro	Diaz	2012-11-30 00:00:00	\N
1399	29129	Tony Ramirez	10974	Police Officer	23384	Tony	Ramirez	2007-07-09 00:00:00	\N
146	25736	Maria Ramirez	3446	Police Officer	23390	Maria	Ramirez	2001-04-30 00:00:00	\N
1006	22571	Joseph Ferenzi	11967	Police Officer	8374	Joseph	Ferenzi	1997-05-05 00:00:00	\N
600	28259	Ivan Ramos	3823	Police Officer	23421	Ivan	Ramos	2006-01-23 00:00:00	\N
1286	18520	John Foster	20288	Sergeant Of Police	8974	John	Foster	1991-11-18 00:00:00	\N
1303	28143	Jorge Garcia	14895	Po/Field Trning Off	9557	Jorge	Garcia	2005-12-05 00:00:00	\N
675	28345	Kevin Garcia	4890	Police Officer	9562	Kevin	Garcia	2006-03-27 00:00:00	\N
1809	25178	Miguel Renteria	19762	Police Officer	23725	Miguel	Renteria	2000-08-14 00:00:00	\N
390	26116	Erik Ricken	16271	Police Officer	23920	Erik	Ricken	2001-10-29 00:00:00	\N
1773	26565	Joel Rodriguez	9368	Police Officer	24434	Joel	Rodriguez	2002-09-30 00:00:00	\N
1086	26779	Joseph Rodriguez	7781	Police Officer	24435	Joseph	Rodriguez	2003-01-27 00:00:00	\N
31	27550	Donna Rogers	19371	Police Officer	24503	Donna	Rogers	2004-10-25 00:00:00	\N
386	16511	Michael Williamson	\N	Police Officer	30876	Michael	Williamson	1987-04-13 00:00:00	2017-02-15 00:00:00
62	29216	Ivar Mondragon	\N	Police Officer	19377	Ivar	Mondragon	2007-08-27 00:00:00	\N
2247	24563	William Greenwood Jr	18258	Police Officer	10727	William	Greenwood Jr	1999-11-15 00:00:00	\N
155	24265	Ryan Sheahan	\N	Police Officer	26141	Ryan	Sheahan	1999-08-02 00:00:00	\N
992	21260	Raymond Wilke Iii	\N	Police Officer	32420	Raymond	Wilke Iii	1995-06-05 00:00:00	\N
568	29214	Jonathan Mccabe	\N	Police Officer	18520	Jonathan	Mccabe	2007-08-27 00:00:00	\N
686	27705	Albert Wyroba	\N	Police Officer	32431	Albert	Wyroba	2004-11-29 00:00:00	\N
825	18214	Ricky O Neal	\N	Sergeant Of Police	21024	Ricky	O Neal	1991-03-27 00:00:00	\N
843	29464	Edgar Brown	\N	Police Officer	2996	Edgar	Brown	2009-03-09 00:00:00	\N
1171	21493	Brian Courtney	\N	Sergeant Of Police	5543	Brian	Courtney	1995-09-05 00:00:00	\N
1412	23678	Jason Burg	\N	Police Officer	3306	Jason	Burg	1998-10-26 00:00:00	\N
1560	25890	Marek Drozd	\N	Police Officer	31933	Marek	Drozd	2001-07-30 00:00:00	\N
1586	26612	James Franklin	\N	Police Officer	9087	James	Franklin	2002-10-28 00:00:00	\N
1990	28486	Guadalupe Deleon	\N	Police Officer	6656	Guadalupe	Deleon	2006-06-26 00:00:00	\N
2081	9072	Philip Cline	\N	Supt Of Police	4847	Philip	Cline	1970-09-14 00:00:00	2007-08-04 00:00:00
2110	28482	Thien Chaiket	\N	Police Officer	4369	Thien	Chaiket	2006-06-26 00:00:00	\N
2130	14589	Janice Robarts-Dillon	\N	Captain Of Police	24151	Janice	Robarts-Dillon	1985-04-08 00:00:00	2012-11-15 00:00:00
2354	21459	Richard Toolis	\N	Police Officer	28712	Richard	Toolis	1995-08-07 00:00:00	\N
128	25686	Myrian Swiatkowski	4159	Police Officer	3251	Myrian	Swiatkowski	2001-03-26 00:00:00	\N
2027	27931	Karina Aaron	17545	Police Officer	2	Karina	Aaron	2005-09-26 00:00:00	\N
82	29659	Ryan Adams	11786	Police Officer	116	Ryan	Adams	2010-09-01 00:00:00	\N
2000	25099	Luis Aguilar	11616	Police Officer	182	Luis	Aguilar	2000-08-14 00:00:00	\N
1981	26069	Brian Alaniz	13934	Police Officer	260	Brian	Alaniz	2001-10-29 00:00:00	\N
975	25753	George Artiga	10950	Sergeant Of Police	887	George	Artiga	2001-05-29 00:00:00	\N
1768	26794	Brian Baader	7582	Police Officer	1018	Brian	Baader	2003-02-24 00:00:00	\N
1126	28002	Benito Romero	15027	Police Officer	24601	Benito	Romero	2005-09-26 00:00:00	\N
1157	27260	Anthony Rosales	5516	Police Officer	24652	Anthony	Rosales	2004-01-26 00:00:00	\N
1759	27428	Erik Ruhnke	13698	Police Officer	24887	Erik	Ruhnke	2004-09-27 00:00:00	\N
471	14785	Daniel Sako	17637	Police Officer	25149	Daniel	Sako	1985-09-09 00:00:00	2014-10-15 00:00:00
579	26641	Luis Saldana	10315	Police Officer	25177	Luis	Saldana	2002-10-28 00:00:00	\N
705	28592	Leticia Samars	6918	Police Officer	25243	Leticia	Samars	2006-07-31 00:00:00	\N
757	28412	Daniel Sammon	6787	Police Officer	25248	Daniel	Sammon	2006-05-01 00:00:00	\N
1953	25276	Carlos Sanchez	12884	Sergeant Of Police	25320	Carlos	Sanchez	2000-09-11 00:00:00	\N
2020	28834	Steven Sanders	11082	Police Officer	25346	Steven	Sanders	2006-11-27 00:00:00	\N
1423	23454	Victor Sandoval	19663	Po As Detective	25365	Victor	Sandoval	1998-07-27 00:00:00	\N
928	20276	Roger Sandoval	21302	Po As Detective	25366	Roger	Sandoval	1994-07-05 00:00:00	\N
1938	26727	James Sankovich	3318	Police Officer	25391	James	Sankovich	2002-12-02 00:00:00	\N
408	28506	Carlos Santiago	13158	Police Officer	25415	Carlos	Santiago	2006-06-26 00:00:00	\N
1314	22641	Juan Santiago	16611	Police Officer	25416	Juan	Santiago	1997-05-05 00:00:00	\N
1087	26183	Jorge Santos	13673	Police Officer	25434	Jorge	Santos	2001-12-17 00:00:00	\N
2290	14711	Joseph Salemme	\N	Commander	25186	Joseph	Salemme	1985-07-01 00:00:00	2015-12-09 00:00:00
1215	26928	Lawrence Bond	11940	Police Officer	2346	Lawrence	Bond	2003-08-25 00:00:00	\N
1835	25310	Stephen Boyd	12598	Sergeant Of Police	2532	Stephen	Boyd	2000-10-10 00:00:00	\N
245	29670	Larry Branch Jr	15045	Police Officer	2660	Larry	Branch Jr	2010-09-01 00:00:00	\N
669	17343	Howard Burton	6227	Police Officer	3439	Howard	Burton	1990-03-26 00:00:00	2016-08-15 00:00:00
1347	26511	Walenty Byk     Jr	2819	Police Officer	3526	Walenty	Byk     Jr	2002-09-30 00:00:00	\N
396	15248	David Case	317	Lieutenant Of Police	4119	David	Case	1986-07-14 00:00:00	\N
1540	15045	Brett Casselle	2873	Police Officer	4164	Brett	Casselle	1986-06-16 00:00:00	2011-09-15 00:00:00
423	20146	Matthew Schenatzki	20868	Po As Detective	25615	Matthew	Schenatzki	1994-05-31 00:00:00	\N
609	28090	Richard Schmidt	7422	Police Officer	25678	Richard	Schmidt	2005-10-31 00:00:00	\N
2064	25530	Matthew Scott	5180	Police Officer	25864	Matthew	Scott	2000-12-18 00:00:00	\N
889	20147	Robert Seaberry	3110	Police Officer	25898	Robert	Seaberry	1994-05-31 00:00:00	2015-07-15 00:00:00
1797	26728	John Sego	16424	Police Officer	25942	John	Sego	2002-12-02 00:00:00	\N
2204	25533	Michael Shields	5951	Police Officer	26242	Michael	Shields	2000-12-18 00:00:00	\N
2184	18077	Joseph Silva	11845	Police Officer	26379	Joseph	Silva	1991-01-30 00:00:00	2008-05-05 00:00:00
661	18076	Alejandro Silva	1025	Sergeant Of Police	26381	Alejandro	Silva	1991-01-30 00:00:00	\N
1042	25931	Anthony Singleton	4772	Police Officer	26498	Anthony	Singleton	2001-07-30 00:00:00	\N
463	27094	Eugene Sledge	7704	Police Officer	26616	Eugene	Sledge	2003-09-29 00:00:00	\N
2061	22419	Robert Smith	20648	Po As Detective	26692	Robert	Smith	1996-12-02 00:00:00	\N
1961	25872	Kelly Smith	4850	Police Officer	26767	Kelly	Smith	2001-06-25 00:00:00	\N
1290	28596	Terry Smith	5387	Police Officer	26831	Terry	Smith	2006-07-31 00:00:00	\N
339	21368	Reggie Smith	18718	Police Officer	26855	Reggie	Smith	1995-07-10 00:00:00	\N
995	24169	Gregory Sobieraj	16479	Police Officer	26943	Gregory	Sobieraj	1999-06-21 00:00:00	\N
2346	16777	Milorad Sofrenovic	20761	Po As Detective	26959	Milorad	Sofrenovic	1988-01-25 00:00:00	\N
1865	27806	Leon Solana	17319	Police Officer	26968	Leon	Solana	2005-01-03 00:00:00	\N
2361	5148	John Solecki	20378	Po As Detective	26973	John	Solecki	1962-11-19 00:00:00	1997-08-05 00:00:00
163	27807	Jason Sollis	11022	Police Officer	26995	Jason	Sollis	2005-01-03 00:00:00	\N
846	22421	David Solski	19650	Police Officer	27001	David	Solski	1996-12-02 00:00:00	\N
1004	20284	Detlef Sommerfield	18479	Po (Per Arb Award)	27009	Detlef	Sommerfield	1994-07-05 00:00:00	\N
1639	22171	Salvador Soraparu	19774	Police Officer	27026	Salvador	Soraparu	1996-08-05 00:00:00	\N
2035	17721	Neftali Soto	12864	Police Officer	27075	Neftali	Soto	1990-07-30 00:00:00	\N
1686	26915	Terry Southard	7670	Police Officer	27094	Terry	Southard	2003-04-28 00:00:00	2013-07-04 00:00:00
1043	26005	George Spacek	3913	Police Officer	27103	George	Spacek	2001-08-27 00:00:00	\N
745	29327	Peter Spain	5434	Police Officer	27116	Peter	Spain	2007-10-29 00:00:00	\N
2038	21369	Nicholas Spanos	21020	Po As Detective	27124	Nicholas	Spanos	1995-07-10 00:00:00	\N
959	27690	Jennifer Spino	9873	Police Officer	27200	Jennifer	Spino	2004-11-29 00:00:00	\N
1158	26123	Ernest Spradley	7082	Lieutenant Of Police	27212	Ernest	Spradley	2001-10-29 00:00:00	\N
1044	22518	Lawrence Sprandel Jr	1905	Sergeant Of Police	27216	Lawrence	Sprandel Jr	1997-03-17 00:00:00	\N
1911	23957	James St Andrew	6303	Police Officer	27251	James	St Andrew	1999-03-08 00:00:00	\N
1372	27096	Michael St Clair Ii	15527	Po/Field Trning Off	27253	Michael	St Clair Ii	2003-09-29 00:00:00	\N
698	25801	George Stacker	11034	Police Officer	27279	George	Stacker	2001-05-29 00:00:00	\N
393	23072	James Stagen	11495	Police Officer	27286	James	Stagen	1998-02-17 00:00:00	\N
410	28096	Jeffrey Stanek	11399	Police Officer	27314	Jeffrey	Stanek	2005-10-31 00:00:00	\N
874	28599	Scott Stapleton	8945	Sergeant Of Police	27365	Scott	Stapleton	2006-07-31 00:00:00	\N
914	28319	Adam Stark	18655	Police Officer	27373	Adam	Stark	2006-02-21 00:00:00	\N
1584	28511	Jerome Starks	18543	Police Officer	27382	Jerome	Starks	2006-06-26 00:00:00	\N
801	16831	Nelson Stewart	4125	Police Officer	27538	Nelson	Stewart	1988-05-02 00:00:00	2012-10-02 00:00:00
2196	21689	Carl Suchocki	18391	Police Officer	27778	Carl	Suchocki	1995-10-23 00:00:00	\N
1308	27813	John Swarbrick	4089	Police Officer	27962	John	Swarbrick	2005-01-03 00:00:00	\N
1740	26319	Brian Swiatkowski	8784	Police Officer	27997	Brian	Swiatkowski	2002-03-25 00:00:00	2012-06-09 00:00:00
1629	20968	Barbara Sydel	12148	Police Officer	28017	Barbara	Sydel	1995-01-03 00:00:00	\N
508	28755	Charles Sykes	14658	Police Officer	28027	Charles	Sykes	2006-10-30 00:00:00	\N
739	19049	Timothy Szarzynski	1922	Sergeant Of Police	28043	Timothy	Szarzynski	1992-01-02 00:00:00	\N
1619	16236	William Buglio	3983	Po Asgn Evid. Techni	3254	William	Buglio	1987-02-02 00:00:00	2015-02-28 00:00:00
2122	17373	Stephen Czablewski	20965	Sergeant Of Police	6020	Stephen	Czablewski	1990-03-26 00:00:00	\N
2323	19099	William Davis	21157	Po As Detective	6285	William	Davis	1992-06-29 00:00:00	\N
1748	24737	William Dudley	6407	Police Officer	7457	William	Dudley	1999-12-13 00:00:00	\N
1645	24237	Richard Fiorito	11624	Police Officer	8578	Richard	Fiorito	1999-08-02 00:00:00	2011-12-24 00:00:00
1943	23559	William Grassi	1509	Sergeant Of Police	10609	William	Grassi	1998-09-28 00:00:00	\N
359	28396	Steven Hefel	13074	Police Officer	11847	Steven	Hefel	2006-05-01 00:00:00	2016-04-27 00:00:00
978	22611	William Johnson	14535	Po As Detective	13473	William	Johnson	1997-05-05 00:00:00	\N
851	25842	Ruth Johnson	6397	Police Officer	13606	Ruth	Johnson	2001-06-25 00:00:00	\N
1096	29576	Richard Rinella	4619	Police Officer	23997	Richard	Rinella	2009-12-16 00:00:00	\N
2067	27909	Matthew Ripley	16198	Police Officer	24039	Matthew	Ripley	2005-08-29 00:00:00	\N
1156	25382	Steven Rivera	15920	Po As Detective	24063	Steven	Rivera	2000-10-10 00:00:00	2013-01-29 00:00:00
1652	28585	Ricky Rivera	6396	Sergeant Of Police	24090	Ricky	Rivera	2006-07-31 00:00:00	\N
1672	26843	Michael Rivera	14499	Police Officer	24098	Michael	Rivera	2003-02-24 00:00:00	\N
1348	27998	Nidia Rivera	12867	Police Officer	24112	Nidia	Rivera	2005-09-26 00:00:00	\N
2088	22858	Richard Rizzo	17012	Police Officer	24140	Richard	Rizzo	1997-08-04 00:00:00	2015-09-23 00:00:00
1000	25383	Eliel Roa	8618	Police Officer	24146	Eliel	Roa	2000-10-10 00:00:00	\N
1860	20550	David Roberts	20764	Po As Detective	24163	David	Roberts	1994-09-06 00:00:00	\N
774	25929	Jeffrey Rodenberg	12406	Po As Detective	24326	Jeffrey	Rodenberg	2001-07-30 00:00:00	\N
1269	26844	Roberto Rodriguez	16967	Police Officer	24353	Roberto	Rodriguez	2003-02-24 00:00:00	\N
1143	21567	Ronald Rodriguez	15347	Police Officer	24359	Ronald	Rodriguez	1995-09-05 00:00:00	2012-10-07 00:00:00
391	29035	Josue Rodriguez	10650	Police Officer	24382	Josue	Rodriguez	2007-04-30 00:00:00	\N
1949	25075	Edgar Rodriguez	14576	Police Officer	24410	Edgar	Rodriguez	2000-06-19 00:00:00	\N
40	23859	Jesse Rodriguez	8364	Police Officer	24426	Jesse	Rodriguez	1998-12-14 00:00:00	\N
852	28410	Erika Rodriguez	11057	Police Officer	24455	Erika	Rodriguez	2006-05-01 00:00:00	2014-03-28 00:00:00
1141	25179	Alan Rogers	3836	Sergeant Of Police	24491	Alan	Rogers	2000-08-14 00:00:00	\N
2220	21232	Danilo Rojas	18704	Police Officer	24524	Danilo	Rojas	1995-06-05 00:00:00	\N
13	27152	Jose Rojas	15550	Sergeant Of Police	24525	Jose	Rojas	2003-10-27 00:00:00	\N
1211	28655	Kamari Ross	15146	Police Officer	24736	Kamari	Ross	2006-08-28 00:00:00	\N
1640	28750	Salvatore Ruggiero	6626	Police Officer	24883	Salvatore	Ruggiero	2006-10-30 00:00:00	\N
1928	26845	Michael Russow	6995	Police Officer	24962	Michael	Russow	2003-02-24 00:00:00	\N
389	14591	John Salemme	20769	Po As Detective	25185	John	Salemme	1985-04-08 00:00:00	\N
345	25687	Stefan Szubski	4443	Sergeant Of Police	28070	Stefan	Szubski	2001-03-26 00:00:00	\N
2312	19180	John Taitt	11644	Police Officer	28117	John	Taitt	1992-06-29 00:00:00	2017-02-15 00:00:00
1950	19258	Steve Tanaka	20055	Po As Detective	28143	Steve	Tanaka	1992-09-28 00:00:00	\N
1161	27001	Christine Taylor	13699	Police Officer	28247	Christine	Taylor	2003-08-25 00:00:00	\N
670	29088	Brandon Ternand	7808	Police Officer	28329	Brandon	Ternand	2007-06-04 00:00:00	\N
1266	29653	Stephanie Walsh	13519	Police Officer	29946	Stephanie	Walsh	2010-04-16 00:00:00	\N
1438	25692	Matthew Ward	4426	Police Officer	30012	Matthew	Ward	2001-03-26 00:00:00	\N
1291	26583	Daniel Warren	17444	Po/Field Trning Off	30071	Daniel	Warren	2002-09-30 00:00:00	\N
1585	28516	Robert Watson	4481	Police Officer	30203	Robert	Watson	2006-06-26 00:00:00	\N
1552	19889	Ronald Watts	2640	Sergeant Of Police	30215	Ronald	Watts	1994-01-18 00:00:00	2013-07-15 00:00:00
1630	9268	Kenneth Webb	20850	Po As Detective	30248	Kenneth	Webb	1970-09-14 00:00:00	2012-06-15 00:00:00
440	16711	Darcel Webb	1823	Sergeant Of Police	30254	Darcel	Webb	1987-12-07 00:00:00	\N
16	28847	Nicholas Wedster	7452	Police Officer	30290	Nicholas	Wedster	2006-11-27 00:00:00	\N
2330	15215	Alvin Weems	9400	Po As Detective	30293	Alvin	Weems	1986-06-16 00:00:00	2011-05-05 00:00:00
803	27923	Thomas Weigand	15958	Police Officer	30300	Thomas	Weigand	2005-08-29 00:00:00	\N
2226	11258	William Schober	20542	Po As Detective	25728	William	Schober	1973-10-22 00:00:00	2011-01-15 00:00:00
125	29181	Salvador Serrano Jr	12766	Sergeant Of Police	26017	Salvador	Serrano Jr	2007-07-30 00:00:00	\N
107	29275	Reynaldo Serrato Jr	19384	Po As Detective	26018	Reynaldo	Serrato Jr	2007-09-24 00:00:00	\N
2259	19173	Thomas Shannon	16066	Police Officer	26096	Thomas	Shannon	1992-06-29 00:00:00	\N
1526	20426	Isaac Shavers Jr	9519	Sergeant Of Police	26120	Isaac	Shavers Jr	1994-08-01 00:00:00	\N
1041	21573	David Shen	19373	Police Officer	26183	David	Shen	1995-09-05 00:00:00	\N
452	28092	Walter Shepler	15844	Sergeant Of Police	26196	Walter	Shepler	2005-10-31 00:00:00	\N
2239	26057	Eugene Shields	10169	Police Officer	26236	Eugene	Shields	2001-09-24 00:00:00	\N
1823	13671	Joseph Shine	2293	Sergeant Of Police	26262	Joseph	Shine	1981-06-08 00:00:00	2010-07-15 00:00:00
1571	28005	Michael Shrake	15345	Police Officer	26291	Michael	Shrake	2005-09-26 00:00:00	\N
1861	22423	Patrick Thelen	21247	Po As Detective	28378	Patrick	Thelen	1996-12-02 00:00:00	\N
2018	27265	Patrick Thiry	17026	Police Officer	28405	Patrick	Thiry	2004-01-26 00:00:00	\N
1356	22108	Aramon Thomas	19882	Po/Marine Officer	28429	Aramon	Thomas	1996-07-08 00:00:00	\N
1770	27565	Andrew Thomas	11701	Police Officer	28441	Andrew	Thomas	2004-10-25 00:00:00	\N
1047	26449	Isaac Thomas	15861	Police Officer	28464	Isaac	Thomas	2002-07-29 00:00:00	\N
285	29504	Rebecca Thuestad	12804	Police Officer	28565	Rebecca	Thuestad	2009-03-09 00:00:00	\N
1883	25805	Clifton Thurman	13653	Police Officer	28570	Clifton	Thurman	2001-05-29 00:00:00	\N
2047	24882	Lisa Tlapa	4267	Police Officer	28620	Lisa	Tlapa	2000-01-24 00:00:00	\N
1422	16369	Augusto Torres	12763	Police Officer	28741	Augusto	Torres	1987-03-09 00:00:00	\N
1195	29406	Robert Torres	14607	Police Officer	28752	Robert	Torres	2008-04-28 00:00:00	\N
1606	27439	Roman Torres	18424	Police Officer	28753	Roman	Torres	2004-09-27 00:00:00	\N
1516	26578	Michael Torres	13888	Police Officer	28760	Michael	Torres	2002-09-30 00:00:00	\N
478	25285	Lou Toth	14630	Police Officer	28795	Lou	Toth	2000-09-11 00:00:00	\N
1210	21251	John Towey	8339	Police Officer	28814	John	Towey	1995-06-05 00:00:00	\N
1722	23801	Daniel Trost	10859	Police Officer	28958	Daniel	Trost	1998-11-30 00:00:00	\N
900	28932	Ronald Troupe	7724	Police Officer	28967	Ronald	Troupe	2006-12-18 00:00:00	\N
1437	28212	Andrew Turner	14932	Police Officer	29063	Andrew	Turner	2005-12-05 00:00:00	\N
311	14239	Bryon Uding	2162	Sergeant Of Police	29120	Bryon	Uding	1982-08-30 00:00:00	2016-05-05 00:00:00
906	26407	Melissa Uldrych	6501	Po As Detective	29128	Melissa	Uldrych	2002-05-28 00:00:00	\N
1288	28423	Lester Vaughan	17244	Police Officer	29414	Lester	Vaughan	2006-05-01 00:00:00	\N
41	20163	Saturnino Velazquez	5981	Police Officer	29476	Saturnino	Velazquez	1994-05-31 00:00:00	\N
2199	20450	Frank Villareal	10438	Police Officer	29612	Frank	Villareal	1994-08-01 00:00:00	2007-06-25 00:00:00
1133	27159	Ricardo Viramontes	10590	Police Officer	29642	Ricardo	Viramontes	2003-10-27 00:00:00	\N
1569	19522	Landon Wade	2285	Sergeant Of Police	29741	Landon	Wade	1993-05-17 00:00:00	\N
1200	27573	Thomas Wake	7403	Police Officer	29784	Thomas	Wake	2004-10-25 00:00:00	\N
1231	24523	Tracy Walczak	13750	Sergeant Of Police	29795	Tracy	Walczak	1999-10-25 00:00:00	\N
89	30324	Theresa Waldbuesser	17083	Po/Field Trning Off	29797	Theresa	Waldbuesser	2013-02-19 00:00:00	\N
341	18084	Tommy Walker	2328	Sergeant Of Police	29841	Tommy	Walker	1991-01-30 00:00:00	2014-02-06 00:00:00
340	26582	Donnell Walker	19090	Police Officer	29843	Donnell	Walker	2002-09-30 00:00:00	\N
2272	9019	William Wallace	22	Captain Of Police	29869	William	Wallace	1970-06-15 00:00:00	2009-07-15 00:00:00
593	22774	Michael Walsh	20028	Po As Detective	29894	Michael	Walsh	1997-07-07 00:00:00	\N
1503	14017	Michael Walsh	510	Lieutenant Of Police	29935	Michael	Walsh	1982-06-14 00:00:00	2016-05-15 00:00:00
131	23387	Joseph Walsh	12865	Police Officer	29940	Joseph	Walsh	1998-06-29 00:00:00	2016-08-29 00:00:00
376	20022	Joseph Tuman	3074	Police Officer	29018	Joseph	Tuman	1994-05-02 00:00:00	\N
1674	23961	Mark Uczen	6857	Police Officer	29118	Mark	Uczen	1999-03-08 00:00:00	\N
2176	13350	Eldon Urbikas	2308	Sergeant Of Police	29167	Eldon	Urbikas	1981-01-19 00:00:00	2011-12-15 00:00:00
2012	26923	Mario Uribe Jr	8743	Police Officer	29175	Mario	Uribe Jr	2003-04-28 00:00:00	\N
639	24711	Robert Vahl	7350	Po As Detective	29209	Robert	Vahl	1999-11-29 00:00:00	\N
1400	25548	Israel Valentin	18000	Police Officer	29252	Israel	Valentin	2000-12-18 00:00:00	\N
1315	28214	Julian Valenzuela	16817	Police Officer	29269	Julian	Valenzuela	2005-12-05 00:00:00	\N
1796	26740	Jairo Valeriano	10649	Police Officer	29270	Jairo	Valeriano	2002-12-02 00:00:00	\N
2045	26322	Cesar Valerio	3033	Police Officer	29272	Cesar	Valerio	2002-03-25 00:00:00	\N
2039	19684	John Valkner	20111	Po As Detective	29282	John	Valkner	1993-11-22 00:00:00	\N
1376	28267	Nickolaos Vamvlas	11045	Police Officer	29300	Nickolaos	Vamvlas	2006-01-23 00:00:00	\N
132	25875	Jason Van Dyke	9465	Police Officer	29310	Jason	Van Dyke	2001-06-25 00:00:00	\N
2173	17603	James Van Vranken	2322	Sergeant Of Police	29322	James	Van Vranken	1990-03-26 00:00:00	\N
1331	27004	Jason Vanna	12126	Police Officer	29344	Jason	Vanna	2003-08-25 00:00:00	\N
1875	26785	Joseph Vanourek	18525	Sergeant Of Police	29347	Joseph	Vanourek	2003-01-27 00:00:00	\N
1313	21795	Kenneth Varchetto	19543	Police Officer	29355	Kenneth	Varchetto	1995-12-04 00:00:00	\N
1395	27240	Ronni Kane	\N	Police Officer	14059	Ronni	Kane	2004-01-26 00:00:00	2012-10-05 00:00:00
292	19973	Tamara Matthews	4640	Police Officer	32164	Tamara	Matthews	1994-05-02 00:00:00	\N
1561	17458	Dania Johnson	\N	Police Officer	32077	Dania	Johnson	1990-03-26 00:00:00	\N
878	22075	Patrick Mc Donough	14416	Police Officer	32167	Patrick	Mc Donough	1996-07-08 00:00:00	\N
1815	27241	Patrick Kelly	\N	Police Officer	14400	Patrick	Kelly	2004-01-26 00:00:00	\N
293	19789	Scott Mc Kenna	3942	Police Officer	32172	Scott	Mc Kenna	1993-12-13 00:00:00	\N
2370	11433	William Kelly	\N	Sergeant Of Police	14404	William	Kelly	1975-05-16 00:00:00	2007-05-15 00:00:00
342	27065	Robert Mccallum	15180	Police Officer	32175	Robert	Mccallum	2003-09-29 00:00:00	\N
2160	12744	Teresa Williams	\N	Police Officer	30841	Teresa	Williams	1978-02-27 00:00:00	2009-07-15 00:00:00
769	27890	Joy Mcclain	4915	Police Officer	32176	Joy	Mcclain	2005-08-29 00:00:00	\N
2238	11434	John Killackey Jr	\N	Dep Chief	14593	John	Killackey Jr	1975-05-16 00:00:00	2006-04-22 00:00:00
526	26218	Brian Mchale	8721	Police Officer	32178	Brian	Mchale	2002-02-25 00:00:00	\N
1228	27309	James Mcnichols	12314	Police Officer	32180	James	Mcnichols	2004-04-26 00:00:00	\N
1892	25723	Paul Meagher	8762	Police Officer	32181	Paul	Meagher	2001-04-30 00:00:00	\N
727	28903	Tiffany Meeks	8051	Police Officer	32182	Tiffany	Meeks	2006-12-18 00:00:00	\N
866	23292	Mark Mendoza	15744	Police Officer	32186	Mark	Mendoza	1998-06-08 00:00:00	\N
199	27893	Justin Michna	16013	Police Officer	32189	Justin	Michna	2005-08-29 00:00:00	\N
103	28359	Justin Mielcarz	12613	Police Officer	32190	Justin	Mielcarz	2006-03-27 00:00:00	\N
1600	28905	Bjornn Millan	6087	Police Officer	32191	Bjornn	Millan	2006-12-18 00:00:00	\N
289	28906	Kyle Mingari	4755	Police Officer	32194	Kyle	Mingari	2006-12-18 00:00:00	\N
59	27085	Daniel Rebeles	\N	Police Officer	23557	Daniel	Rebeles	2003-09-29 00:00:00	\N
1589	17605	Fidel Vargas	6255	Police Officer	29374	Fidel	Vargas	1990-03-26 00:00:00	\N
464	17455	Tyrone Jackson	\N	Po As Detective	13053	Tyrone	Jackson	1990-03-26 00:00:00	\N
1774	15667	Vidal Vasquez	2664	Sergeant Of Police	29389	Vidal	Vasquez	1986-09-08 00:00:00	\N
115	29508	Michael Vasquez	5875	Police Officer	29399	Michael	Vasquez	2009-03-09 00:00:00	\N
258	27698	Miguel Vazquez	16531	Police Officer	29436	Miguel	Vazquez	2004-11-29 00:00:00	\N
516	16704	Luis Vega	13853	Police Officer	29445	Luis	Vega	1987-12-07 00:00:00	2016-02-16 00:00:00
1405	27267	Jose Velez	19367	Police Officer	29493	Jose	Velez	2004-01-26 00:00:00	2015-11-24 00:00:00
495	29595	John Velez	17149	Po/Field Trning Off	29498	John	Velez	2009-12-16 00:00:00	\N
960	28844	Miguel Vera	8420	Police Officer	29529	Miguel	Vera	2006-11-27 00:00:00	\N
186	18083	Maria Viti	21267	Po As Detective	29663	Maria	Viti	1991-01-30 00:00:00	\N
695	23597	Daniel Vo	19891	Police Officer	29682	Daniel	Vo	1998-09-28 00:00:00	\N
2152	28017	Jonathan Voss	17664	Police Officer	29721	Jonathan	Voss	2005-09-26 00:00:00	\N
848	19992	Ronald Pellonari	\N	Sergeant Of Police	22151	Ronald	Pellonari	1994-05-02 00:00:00	\N
1077	17104	Karen Bright	\N	Police Officer	2825	Karen	Bright	1989-12-26 00:00:00	2015-02-15 00:00:00
1272	16226	Milan Vujic	2600	Sergeant Of Police	29730	Milan	Vujic	1986-12-22 00:00:00	2016-04-30 00:00:00
143	30385	Timothy Whitmer	14962	Police Officer	30552	Timothy	Whitmer	2013-03-05 00:00:00	\N
898	25198	David Williams	2999	Po As Detective	30671	David	Williams	2000-08-14 00:00:00	\N
398	22437	Juwana Williams	9963	Police Officer	30757	Juwana	Williams	1996-12-10 00:00:00	\N
71	29237	Vickie Williams	14382	Police Officer	30836	Vickie	Williams	2007-08-27 00:00:00	\N
129	15865	Anthony Wojcik	481	Lieutenant Of Police	31098	Anthony	Wojcik	1986-10-13 00:00:00	2016-05-15 00:00:00
1486	19064	William Wolf	1981	Sergeant Of Police	31134	William	Wolf	1992-01-02 00:00:00	\N
657	26067	Timothy Wolf	1333	Lieutenant Of Police	31135	Timothy	Wolf	2001-09-24 00:00:00	\N
566	22024	Rama Wolfe	19801	Police Officer	31138	Rama	Wolfe	1996-05-06 00:00:00	\N
1232	25300	John Wozniak	14606	Police Officer	31263	John	Wozniak	2000-09-11 00:00:00	\N
1289	28762	Marchand Wright	3164	Po As Detective	31279	Marchand	Wright	2006-10-30 00:00:00	\N
441	22898	Michael Wright	12391	Police Officer	31290	Michael	Wright	1997-08-04 00:00:00	\N
621	21808	Darren Wright	11984	Police Officer	31300	Darren	Wright	1995-12-04 00:00:00	\N
315	25640	Mark Damato	6150	Police Officer	6145	Mark	Damato	2001-03-26 00:00:00	\N
1795	26265	Mark Darcy	4499	Police Officer	6216	Mark	Darcy	2002-03-25 00:00:00	\N
1920	27365	Tahch Dejativong	14135	Police Officer	6590	Tahch	Dejativong	2004-09-27 00:00:00	\N
109	15128	Philip Kwasinski	\N	Captain Of Police	15465	Philip	Kwasinski	1986-06-16 00:00:00	\N
1076	28136	Ryan Delaney	4024	Po As Detective	6629	Ryan	Delaney	2005-12-05 00:00:00	\N
871	26267	Thomas Derouin	7619	Sergeant Of Police	6765	Thomas	Derouin	2002-03-25 00:00:00	\N
1079	19587	Daniel Diaz	10269	Police Officer	6848	Daniel	Diaz	1993-11-22 00:00:00	\N
1094	17384	Francisco Duarte	10400	Police Officer	7425	Francisco	Duarte	1990-03-26 00:00:00	\N
232	26348	Paul Habiak	\N	Police Officer	11116	Paul	Habiak	2002-04-29 00:00:00	\N
971	28336	Jose Duran	13930	Police Officer	7590	Jose	Duran	2006-03-27 00:00:00	\N
2084	25131	Jeffrey Everett	18661	Po As Detective	8159	Jeffrey	Everett	2000-08-14 00:00:00	\N
218	28434	Hector Flores	13549	Police Officer	8800	Hector	Flores	2006-05-22 00:00:00	\N
1723	23828	Hector Fuentes	11396	Police Officer	9238	Hector	Fuentes	1998-12-14 00:00:00	\N
21	27292	Michael Gaines	6030	Police Officer	9350	Michael	Gaines	2004-04-26 00:00:00	\N
1587	17152	Walter Gaskew Jr	2470	Sergeant Of Police	9712	Walter	Gaskew Jr	1989-12-26 00:00:00	2011-05-06 00:00:00
1148	29251	Nicholas Gilbert	15552	Police Officer	9954	Nicholas	Gilbert	2007-09-24 00:00:00	\N
246	20046	Patrick Bernico	\N	Police Officer	1882	Patrick	Bernico	1994-05-31 00:00:00	\N
1184	16514	David Wright Jr	1336	Sergeant Of Police	31305	David	Wright Jr	1987-04-13 00:00:00	2017-02-15 00:00:00
358	26452	John Wrigley	7179	Police Officer	31307	John	Wrigley	2002-07-29 00:00:00	\N
838	24789	James Wynn	6880	Police Officer	31337	James	Wynn	1999-12-13 00:00:00	\N
648	22695	Brian Hood	\N	Police Officer	12509	Brian	Hood	1997-07-07 00:00:00	\N
2169	24626	Pedro Yanga	10056	Police Officer	31371	Pedro	Yanga	1999-11-15 00:00:00	\N
1473	28662	Nicholaus Yates	11586	Police Officer	31380	Nicholaus	Yates	2006-08-28 00:00:00	\N
226	27707	Chris Young	10305	Police Officer	31442	Chris	Young	2004-11-29 00:00:00	\N
817	28568	Jeffrey Muehlfelder	\N	Po As Detective	19831	Jeffrey	Muehlfelder	2006-07-31 00:00:00	\N
1951	27015	Jennifer Zaidan	8171	Police Officer	31503	Jennifer	Zaidan	2003-08-25 00:00:00	\N
2016	22900	Veejay Zala	12684	Police Officer	31512	Veejay	Zala	1997-08-04 00:00:00	\N
1147	26588	Javier Zambrano	5475	Police Officer	31536	Javier	Zambrano	2002-09-30 00:00:00	\N
1049	27490	Andre Frierson	\N	Police Officer	9191	Andre	Frierson	2004-10-25 00:00:00	\N
1061	28938	Maria Zapata	5711	Police Officer	31552	Maria	Zapata	2006-12-18 00:00:00	\N
1914	23933	Kevin Kusinski	\N	Police Officer	32119	Kevin	Kusinski	1999-03-08 00:00:00	\N
1825	27167	Craig Brownfield	15752	Police Officer	31846	Craig	Brownfield	2003-11-24 00:00:00	\N
243	24641	Jeffrey Chevalier	7206	Police Officer	31870	Jeffrey	Chevalier	1999-11-29 00:00:00	\N
2082	15120	Debra Kirby	\N	Chief	14717	Debra	Kirby	1986-06-16 00:00:00	2014-01-08 00:00:00
2150	21053	Gail Martin	\N	Police Officer	17526	Gail	Martin	1995-02-06 00:00:00	2015-05-30 00:00:00
2348	17302	Alejandro Almazan	\N	Po As Detective	424	Alejandro	Almazan	1990-03-26 00:00:00	2016-07-08 00:00:00
351	26934	Baneond Chinchilla	9445	Police Officer	31872	Baneond	Chinchilla	2003-08-25 00:00:00	\N
1326	29445	Michael Collins	14288	Police Officer	31885	Michael	Collins	2008-07-28 00:00:00	\N
49	20886	Andrew Dakuras	6643	Sergeant Of Police	31899	Andrew	Dakuras	1995-01-03 00:00:00	\N
2028	25959	Kenneth Deady	12374	Police Officer	31913	Kenneth	Deady	2001-08-27 00:00:00	\N
7	28384	Scott Blair	17364	Po As Detective	2110	Scott	Blair	2006-05-01 00:00:00	\N
1663	27717	Anthony Blessing	18445	Police Officer	2180	Anthony	Blessing	2005-01-03 00:00:00	\N
407	30276	Kevin Burg	14083	Police Officer	3310	Kevin	Burg	2013-02-19 00:00:00	\N
2022	26675	Fred Coffey	13580	Sergeant Of Police	4918	Fred	Coffey	2002-12-02 00:00:00	\N
756	28131	Angel Colon	13373	Police Officer	5089	Angel	Colon	2005-12-05 00:00:00	\N
83	30024	Paul Corso	12158	Police Officer	5429	Paul	Corso	2012-10-31 00:00:00	\N
682	25577	Roberto Delcid	19548	Police Officer	31916	Roberto	Delcid	2001-02-05 00:00:00	\N
299	28339	Jason Edwards	19173	Police Officer	31946	Jason	Edwards	2006-03-27 00:00:00	\N
1267	28729	Matthew Gallagher	11132	Police Officer	31978	Matthew	Gallagher	2006-10-30 00:00:00	\N
1592	21632	John Gregoire	8600	Police Officer	32007	John	Gregoire	1995-10-23 00:00:00	\N
290	27232	Mark Gutkowski	16228	Police Officer	32015	Mark	Gutkowski	2004-01-26 00:00:00	\N
44	21303	Saud Haidari	18379	Police Officer	32018	Saud	Haidari	1995-07-10 00:00:00	\N
1174	28652	Fernando Rodriguez	\N	Police Officer	24393	Fernando	Rodriguez	2006-08-28 00:00:00	\N
377	13225	Thomas Glynn	\N	Sergeant Of Police	10138	Thomas	Glynn	1980-09-29 00:00:00	2016-11-15 00:00:00
2384	3543	James Delaney	\N	Captain Of Police	6636	James	Delaney	1958-02-16 00:00:00	1992-03-01 00:00:00
558	14451	Brian Smith	\N	Pol Forensic Inv I	26703	Brian	Smith	1983-02-14 00:00:00	\N
1635	15630	James Egan	\N	Po As Detective	7788	James	Egan	1986-09-08 00:00:00	2013-10-15 00:00:00
786	20976	Sharon Walker	\N	Po As Detective	29804	Sharon	Walker	1995-01-03 00:00:00	\N
1220	27812	Kenneth Stubblefield	\N	Police Officer	27739	Kenneth	Stubblefield	2005-01-03 00:00:00	\N
1242	26938	Markee Cooper	\N	Police Officer	5328	Markee	Cooper	2003-08-25 00:00:00	\N
1299	22224	Edward Heerdt	\N	Po As Detective	11845	Edward	Heerdt	1996-11-04 00:00:00	\N
1370	29264	Richard Mccallum	\N	Police Officer	18527	Richard	Mccallum	2007-09-24 00:00:00	\N
701	26280	Thomas Hanrahan	4780	Police Officer	32024	Thomas	Hanrahan	2002-03-25 00:00:00	\N
344	21023	Brian Hawkins	2506	Sergeant Of Police	32032	Brian	Hawkins	1995-02-06 00:00:00	\N
1677	25897	Donta Hayes	17288	Police Officer	32033	Donta	Hayes	2001-07-30 00:00:00	\N
1377	27866	Patrick Grube	\N	Police Officer	10894	Patrick	Grube	2005-08-29 00:00:00	\N
2255	23631	Mark Hein	19700	Police Officer	32034	Mark	Hein	1998-10-13 00:00:00	\N
1404	17267	Linda Szefc	\N	Sergeant Of Police	28051	Linda	Szefc	1989-12-26 00:00:00	2015-05-15 00:00:00
1848	26698	Bridget Herlehy	18364	Police Officer	32037	Bridget	Herlehy	2002-12-02 00:00:00	\N
1463	12379	Joseph Gorzkowski	\N	Captain Of Police	10471	Joseph	Gorzkowski	1977-07-18 00:00:00	2011-02-10 00:00:00
768	27616	Mark Hernandez	12289	Police Officer	32039	Mark	Hernandez	2004-11-29 00:00:00	\N
1841	29269	Adam Paulsen	\N	Police Officer	22023	Adam	Paulsen	2007-09-24 00:00:00	\N
150	27054	Raul Hernandez Jr	14308	Police Officer	32042	Raul	Hernandez Jr	2003-09-29 00:00:00	\N
1890	24760	Kevin Keel	\N	Po/Exp Det Can Hand	14282	Kevin	Keel	1999-12-13 00:00:00	\N
539	23154	William Hronopoulos	9785	Police Officer	32052	William	Hronopoulos	1998-04-13 00:00:00	\N
1934	26115	Margaret Repetto	\N	Police Officer	23728	Margaret	Repetto	2001-10-29 00:00:00	\N
1688	28153	Donald Hummons	13126	Police Officer	32058	Donald	Hummons	2005-12-05 00:00:00	\N
2277	16844	Robert Bartik	\N	Sergeant Of Police	1458	Robert	Bartik	1988-11-07 00:00:00	\N
909	29054	Roderick Hummons	7749	Police Officer	32059	Roderick	Hummons	2007-06-04 00:00:00	\N
2281	14260	Ernest Brown	\N	Chief	2957	Ernest	Brown	1982-11-29 00:00:00	2011-12-15 00:00:00
468	22059	Michael Iglesias Ii	19945	Police Officer	32061	Michael	Iglesias Ii	1996-07-08 00:00:00	\N
1482	22061	Mark Jakob	19987	Police Officer	32068	Mark	Jakob	1996-07-08 00:00:00	\N
1487	15110	Ronald Jenkins	21257	Po As Detective	32074	Ronald	Jenkins	1986-06-16 00:00:00	\N
718	25843	Michael Jolliff-Blake	11158	Police Officer	32084	Michael	Jolliff-Blake	2001-06-25 00:00:00	\N
11	27756	Shane Jones	3695	Police Officer	32086	Shane	Jones	2005-01-03 00:00:00	\N
631	29552	Matthew Kennedy	5409	Police Officer	32099	Matthew	Kennedy	2009-12-16 00:00:00	\N
279	25243	Kevin Kilroy	10398	Police Officer	32104	Kevin	Kilroy	2000-09-11 00:00:00	\N
12	24134	David Koenig	1676	Sergeant Of Police	32108	David	Koenig	1999-06-21 00:00:00	\N
1227	27303	Brian Leahy	13624	Police Officer	32125	Brian	Leahy	2004-04-26 00:00:00	\N
1820	27762	Daniel Lopez	18707	Police Officer	32141	Daniel	Lopez	2005-01-03 00:00:00	\N
1323	21046	Jose Lopez	809	Sergeant Of Police	32142	Jose	Lopez	1995-02-06 00:00:00	\N
1320	25485	Pablo Mariano	6691	Police Officer	32154	Pablo	Mariano	2000-12-18 00:00:00	\N
352	28405	Jorge Martinez Jr	14377	Police Officer	32159	Jorge	Martinez Jr	2006-05-01 00:00:00	\N
723	20244	Marshall Mason Jr	7840	Police Officer	32161	Marshall	Mason Jr	1994-07-05 00:00:00	\N
642	28815	Nicholas Masters	13880	Police Officer	32162	Nicholas	Masters	2006-11-27 00:00:00	\N
356	24597	Lemornet Miller	10424	Police Officer	32193	Lemornet	Miller	1999-11-15 00:00:00	\N
2051	26977	Abraham Mora	10636	Police Officer	32202	Abraham	Mora	2003-08-25 00:00:00	\N
1181	28455	Linda Morales	15407	Police Officer	32204	Linda	Morales	2006-05-22 00:00:00	\N
93	20944	Gerald O Malley	17187	Police Officer	32227	Gerald	O Malley	1995-01-03 00:00:00	\N
915	29493	Darren Ohle	10925	Police Officer	32232	Darren	Ohle	2009-03-09 00:00:00	\N
865	21344	Louis Ortoneda	16168	Police Officer	32237	Louis	Ortoneda	1995-07-10 00:00:00	\N
1604	28462	Laura Pagan	9351	Police Officer	32240	Laura	Pagan	2006-05-22 00:00:00	\N
2171	24155	Angelo Panagiotopoulos	7915	Police Officer	32241	Angelo	Panagiotopoulos	1999-06-21 00:00:00	\N
674	28185	Joseph Papke	4904	Police Officer	32245	Joseph	Papke	2005-12-05 00:00:00	\N
1229	22268	Gerardo Perez	19697	Police Officer	32255	Gerardo	Perez	1996-11-04 00:00:00	\N
195	17423	Roberto Gonzalez	8115	Police Officer	10338	Roberto	Gonzalez	1990-03-26 00:00:00	\N
2132	18436	Michael Lynch	\N	Po As Detective	16793	Michael	Lynch	1991-06-19 00:00:00	\N
2258	18869	Robert O Neill	\N	Sergeant Of Police	21041	Robert	O Neill	1991-12-16 00:00:00	2012-09-04 00:00:00
2141	23914	John Folino Jr	\N	Sergeant Of Police	31964	John	Folino Jr	1999-03-08 00:00:00	\N
2034	25033	John Killackey Iii	\N	Po As Detective	14592	John	Killackey Iii	2000-06-19 00:00:00	\N
144	29221	Joseph Perez	4692	Police Officer	32257	Joseph	Perez	2007-08-27 00:00:00	\N
1251	29074	Joseph Plovanich	3804	Police Officer	32266	Joseph	Plovanich	2007-06-04 00:00:00	\N
1662	17549	John Roberts	2196	Sergeant Of Police	32293	John	Roberts	1990-03-26 00:00:00	\N
795	24222	Porfirio Santiago	17685	Police Officer	32321	Porfirio	Santiago	1999-07-12 00:00:00	\N
1476	21882	Michael Santos	12347	Sergeant Of Police	32322	Michael	Santos	1996-03-18 00:00:00	\N
1262	20556	Timothy Schumpp	9207	Police Officer	32328	Timothy	Schumpp	1994-09-06 00:00:00	\N
310	27804	Robert Slechter	4924	Police Officer	32341	Robert	Slechter	2005-01-03 00:00:00	\N
1642	28104	Joseph Verble	10053	Police Officer	32394	Joseph	Verble	2005-10-31 00:00:00	\N
1897	17623	Christoph Wilson	11091	Police Officer	32427	Christoph	Wilson	1990-03-26 00:00:00	\N
27	28551	Johnny King	\N	Police Officer	14672	Johnny	King	2006-07-31 00:00:00	\N
48	30507	Pedro Vianna	\N	Police Officer	29566	Pedro	Vianna	2013-04-01 00:00:00	\N
201	30786	Jonathan Moy	\N	Police Officer	19805	Jonathan	Moy	2013-11-25 00:00:00	\N
349	22780	Federico Andaverde	\N	Sergeant Of Police	31802	Federico	Andaverde	1997-08-04 00:00:00	\N
424	26602	Seung Cho	4513	Police Officer	4549	Seung	Cho	2002-10-28 00:00:00	\N
496	17705	Vince Morgan	\N	Police Officer	32206	Vince	Morgan	1990-07-30 00:00:00	\N
562	23068	Oscar Simmons	\N	Police Officer	26414	Oscar	Simmons	1998-02-17 00:00:00	\N
696	26159	Paul Lauber	\N	Police Officer	15778	Paul	Lauber	2001-12-17 00:00:00	\N
787	20023	Jerome Turbyville	15959	Police Officer	29033	Jerome	Turbyville	1994-05-02 00:00:00	\N
806	26871	Zachary Cuatchon	\N	Po/Field Trning Off	5838	Zachary	Cuatchon	2003-04-28 00:00:00	\N
822	17595	Jesse Terrazas	\N	Sergeant Of Police	28335	Jesse	Terrazas	1990-03-26 00:00:00	2012-07-07 00:00:00
1003	17599	Mark Thompson	\N	Sergeant Of Police	28540	Mark	Thompson	1990-03-26 00:00:00	2012-11-15 00:00:00
1070	18304	Neal Schultz	\N	Sergeant Of Police	25781	Neal	Schultz	1991-04-24 00:00:00	\N
1222	28109	Kelli Williams	\N	Police Officer	30807	Kelli	Williams	2005-10-31 00:00:00	\N
1373	23639	Rafael Magallon	\N	Sergeant Of Police	16945	Rafael	Magallon	1998-10-13 00:00:00	\N
1534	26185	Alfredo Silva	\N	Police Officer	26384	Alfredo	Silva	2001-12-17 00:00:00	\N
1564	24586	Patrick Lee Palmer	\N	Sergeant Of Police	15957	Patrick	Lee Palmer	1999-11-15 00:00:00	\N
1568	23008	Oscar Valenzuela	\N	Po As Detective	32387	Oscar	Valenzuela	1997-09-02 00:00:00	\N
1763	23225	Anna Mc Lean	\N	Police Officer	18383	Anna	Mc Lean	1998-05-26 00:00:00	\N
1862	10380	William Kaupert	\N	Sergeant Of Police	14193	William	Kaupert	1972-11-20 00:00:00	2012-03-15 00:00:00
1908	14695	Maureen Mc Mahon	19812	Lieutenant Of Police	18396	Maureen	Mc Mahon	1985-07-01 00:00:00	2012-12-15 00:00:00
1913	25455	Shayon Harris	\N	Police Officer	32029	Shayon	Harris	2000-12-18 00:00:00	\N
1954	14131	Michael Alexander	\N	Captain Of Police	323	Michael	Alexander	1982-08-30 00:00:00	2015-05-15 00:00:00
1955	23624	Daniel Dahill	\N	Police Officer	6072	Daniel	Dahill	1998-10-13 00:00:00	\N
1959	20286	Alvin Spikener	\N	Police Officer	27190	Alvin	Spikener	1994-07-05 00:00:00	\N
1979	27580	Richard Yi	\N	Police Officer	31397	Richard	Yi	2004-10-25 00:00:00	\N
2059	24226	Ronald Turner	\N	Police Officer	29057	Ronald	Turner	1999-07-12 00:00:00	2015-10-01 00:00:00
2074	25542	Kevin Thomas	\N	Police Officer	28476	Kevin	Thomas	2000-12-18 00:00:00	\N
2076	27102	Ana Valeriano	\N	Police Officer	29271	Ana	Valeriano	2003-09-29 00:00:00	\N
2089	19547	Randall Bacon	\N	Po As Detective	1040	Randall	Bacon	1993-11-22 00:00:00	\N
2105	25344	Keith Karczewski	\N	Police Officer	14125	Keith	Karczewski	2000-10-10 00:00:00	\N
2114	25284	Piotr Szczurowski	\N	Police Officer	28049	Piotr	Szczurowski	2000-09-11 00:00:00	\N
1546	29197	Joseph Byrne	5304	Police Officer	3549	Joseph	Byrne	2007-08-27 00:00:00	\N
300	27721	Richard Caro	5368	Police Officer	3955	Richard	Caro	2005-01-03 00:00:00	\N
1109	28387	Steven Carroll	12236	Police Officer	4038	Steven	Carroll	2006-05-01 00:00:00	\N
1223	26536	Ramiro Gonzalez	2776	Police Officer	10347	Ramiro	Gonzalez	2002-09-30 00:00:00	\N
1945	26469	Jose Hernandez	16811	Police Officer	12039	Jose	Hernandez	2002-08-26 00:00:00	\N
1107	15751	Joel Howard	1684	Lieutenant Of Police	12628	Joel	Howard	1986-10-13 00:00:00	\N
608	26622	Marc Jarocki	2778	Police Officer	13304	Marc	Jarocki	2002-10-28 00:00:00	\N
944	28803	Dennis Kamradt Jr	13684	Police Officer	14046	Dennis	Kamradt Jr	2006-11-27 00:00:00	\N
715	21852	James Laufer	1917	Sergeant Of Police	15780	James	Laufer	1996-03-18 00:00:00	\N
873	25369	Marvin Otten	2773	Police Officer	21522	Marvin	Otten	2000-10-10 00:00:00	\N
2133	27898	Thomas Muehlfelder	\N	Police Officer	19833	Thomas	Muehlfelder	2005-08-29 00:00:00	\N
2140	24921	Sheamus Fergus	\N	Po As Detective	8381	Sheamus	Fergus	2000-02-28 00:00:00	\N
2207	12972	Paul Zacharias	\N	Po As Detective	31487	Paul	Zacharias	1980-01-28 00:00:00	2013-11-15 00:00:00
2275	15721	Edward Farley	\N	Po As Detective	8252	Edward	Farley	1986-10-13 00:00:00	\N
2371	11447	Anthony Maslanka	\N	Po As Detective	17659	Anthony	Maslanka	1975-05-16 00:00:00	2005-01-16 00:00:00
2386	9723	Stephen Hood	11885	Sergeant Of Police	12507	Stephen	Hood	1971-07-26 00:00:00	2004-02-15 00:00:00
2390	8156	George Basile	\N	Po As Detective	1496	George	Basile	1969-01-06 00:00:00	2004-06-01 00:00:00
2276	13127	Robert Lenihan	\N	Po As Detective	16008	Robert	Lenihan	1980-06-23 00:00:00	2008-03-15 00:00:00
2209	14561	John Halloran	\N	Po As Detective	11232	John	Halloran	1985-04-08 00:00:00	\N
168	18980	Kenneth Jackson	\N	Police Officer	13085	Kenneth	Jackson	1992-01-02 00:00:00	\N
1447	21759	Ruben Martinez Jr	\N	Sergeant Of Police	17628	Ruben	Martinez Jr	1995-12-04 00:00:00	\N
202	29804	Michael Margolis	\N	Police Officer	17332	Michael	Margolis	2011-10-17 00:00:00	\N
280	27280	Chris Chmelar	\N	Police Officer	31873	Chris	Chmelar	2004-04-26 00:00:00	\N
282	25831	Peter Fleming	\N	Police Officer	31962	Peter	Fleming	2001-06-25 00:00:00	\N
350	22567	James Echols	12392	Police Officer	31944	James	Echols	1997-05-05 00:00:00	\N
521	26782	Paul Sznura	\N	Police Officer	32365	Paul	Sznura	2003-01-27 00:00:00	\N
651	19497	Michael Rigoli	\N	Lieutenant Of Police	23959	Michael	Rigoli	1993-05-17 00:00:00	\N
973	14534	German Vazquez	\N	Sergeant Of Police	29432	German	Vazquez	1985-03-04 00:00:00	2016-05-15 00:00:00
1066	14990	David Jackowiak	\N	Po As Detective	13040	David	Jackowiak	1986-03-31 00:00:00	2012-10-15 00:00:00
1360	20053	James Cascone	\N	Lieutenant Of Police	4118	James	Cascone	1994-05-31 00:00:00	\N
1695	21457	Jeffrey Stahl	\N	Police Officer	27291	Jeffrey	Stahl	1995-08-07 00:00:00	\N
1718	21840	Richard Houlihan	\N	Police Officer	12582	Richard	Houlihan	1996-03-18 00:00:00	\N
1814	24176	Roger Williams	\N	Po As Detective	30685	Roger	Williams	1999-06-21 00:00:00	\N
2107	22303	Scott Wolff	\N	Police Officer	31141	Scott	Wolff	1996-11-04 00:00:00	\N
2108	16082	Eddie Yoshimura	\N	Sergeant Of Police	31411	Eddie	Yoshimura	1986-11-17 00:00:00	\N
2162	26672	Kevin Carey	\N	Police Officer	3900	Kevin	Carey	2002-12-02 00:00:00	2011-12-01 00:00:00
2246	20697	Martin Smith	16455	Police Officer	26866	Martin	Smith	1994-10-03 00:00:00	\N
2288	10117	Steven Peterson	\N	Deputy Supt.	22372	Steven	Peterson	1972-04-03 00:00:00	2011-08-15 00:00:00
2381	8147	William Pedersen	\N	Po As Detective	22118	William	Pedersen	1968-12-09 00:00:00	1992-06-23 00:00:00
979	26596	Justin Blas	4741	Police Officer	2157	Justin	Blas	2002-10-28 00:00:00	\N
375	26598	Russell Blomstrand	14176	Police Officer	2202	Russell	Blomstrand	2002-10-28 00:00:00	2013-11-14 00:00:00
493	29523	Maureen Boyle	5525	Police Officer	2557	Maureen	Boyle	2009-12-16 00:00:00	\N
790	26754	Michael Bubacz	5515	Police Officer	3191	Michael	Bubacz	2003-01-27 00:00:00	\N
929	19723	Carlos Cortez	20023	Po As Detective	5445	Carlos	Cortez	1993-12-13 00:00:00	\N
710	28393	Michael Durkin	10663	Police Officer	7603	Michael	Durkin	2006-05-01 00:00:00	\N
108	29688	Michael Fietko	7513	Police Officer	8485	Michael	Fietko	2010-09-01 00:00:00	\N
1268	27174	Gary Frear	16852	Police Officer	9121	Gary	Frear	2003-11-24 00:00:00	2012-09-01 00:00:00
886	25450	Rebecca Garcia	5529	Police Officer	9528	Rebecca	Garcia	2000-12-18 00:00:00	\N
2193	24475	Margaret Hopkins	5545	Police Officer	12524	Margaret	Hopkins	1999-10-25 00:00:00	2008-01-23 00:00:00
1946	27885	Valente Lara	13954	Police Officer	15708	Valente	Lara	2005-08-29 00:00:00	\N
821	28495	Andrew Larson	9552	Police Officer	15734	Andrew	Larson	2006-06-26 00:00:00	\N
253	29722	Lance Mc Clendon	\N	Police Officer	17998	Lance	Mc Clendon	2010-09-01 00:00:00	\N
747	21137	Robert Cranston	\N	Police Officer	5640	Robert	Cranston	1995-06-05 00:00:00	\N
827	16058	Matthew Tobias	\N	Dep Chief	28625	Matthew	Tobias	1986-11-17 00:00:00	2012-05-30 00:00:00
829	25192	Francisca Vergara	\N	Sergeant Of Police	29543	Francisca	Vergara	2000-08-14 00:00:00	\N
830	25312	Patrick Brennan	\N	Police Officer	2767	Patrick	Brennan	2000-10-10 00:00:00	\N
1116	28669	Brian Berka	\N	Police Officer	1849	Brian	Berka	2006-09-25 00:00:00	\N
1244	25758	Paul Clavijo	\N	Police Officer	4792	Paul	Clavijo	2001-05-29 00:00:00	2011-06-17 00:00:00
1369	29452	Evan Komosa	\N	Sergeant Of Police	14982	Evan	Komosa	2008-07-28 00:00:00	\N
1397	26315	Kristophe Rigan	\N	Sergeant Of Police	23951	Kristophe	Rigan	2002-03-25 00:00:00	\N
1550	22150	Jeffrey Kriv	\N	Police Officer	15228	Jeffrey	Kriv	1996-08-05 00:00:00	\N
1930	27367	Chris Dieball	\N	Police Officer	6882	Chris	Dieball	2004-09-27 00:00:00	\N
2212	26104	Steve Marino	\N	Police Officer	17351	Steve	Marino	2001-10-29 00:00:00	\N
2262	12211	Raymond Schalk	\N	Po As Detective	25598	Raymond	Schalk	1977-01-03 00:00:00	2006-07-15 00:00:00
1298	18327	Patrick Barker	1390	Sergeant Of Police	1316	Patrick	Barker	1991-05-22 00:00:00	\N
2365	8280	Stephen Barnas	20203	Po As Detective	1330	Stephen	Barnas	1969-03-17 00:00:00	2004-04-09 00:00:00
637	24380	Steve Barsch	18287	Sergeant Of Police	1444	Steve	Barsch	1999-10-04 00:00:00	\N
454	29190	Miguel Bautista	5521	Police Officer	1570	Miguel	Bautista	2007-08-27 00:00:00	\N
1098	24535	Brian Bernath	8175	Police Officer	1873	Brian	Bernath	1999-11-15 00:00:00	\N
708	24428	Mario Acosta	11164	Police Officer	75	Mario	Acosta	1999-10-25 00:00:00	\N
855	28126	Arthur Carlson	11870	Po As Detective	3928	Arthur	Carlson	2005-12-05 00:00:00	\N
1287	28722	Isaura Carmona	9914	Police Officer	3943	Isaura	Carmona	2006-10-30 00:00:00	\N
596	23681	Raquel Castaneda	13253	Police Officer	4178	Raquel	Castaneda	1998-10-26 00:00:00	\N
10	22334	Derrick Denton	19152	Police Officer	6743	Derrick	Denton	1996-12-02 00:00:00	\N
1776	25125	James Dillon	17331	Police Officer	6922	James	Dillon	2000-08-14 00:00:00	\N
2014	21834	John Dowling	19486	Po As Detective	7265	John	Dowling	1996-03-18 00:00:00	\N
1021	24741	Jeffrey Felton	5968	Po As Detective	8349	Jeffrey	Felton	1999-12-13 00:00:00	\N
1460	29010	Matthew Fetzer	9504	Police Officer	8442	Matthew	Fetzer	2007-04-30 00:00:00	\N
1022	18810	Keith Fleming	12318	Police Officer	8706	Keith	Fleming	1991-12-16 00:00:00	\N
2043	26273	Wayne Frano Jr	8064	Police Officer	9094	Wayne	Frano Jr	2002-03-25 00:00:00	\N
1080	28889	Mark Goddard	5070	Police Officer	10159	Mark	Goddard	2006-12-18 00:00:00	2013-10-31 00:00:00
504	20618	Anthony Granat	18571	Po As Detective	10558	Anthony	Granat	1994-10-03 00:00:00	\N
1724	23696	Pete Gurskis	14029	Police Officer	11021	Pete	Gurskis	1998-10-26 00:00:00	\N
1866	17637	Bruce Askew	9015	Police Officer	910	Bruce	Askew	1990-07-30 00:00:00	\N
1427	19900	Carmelo Baglieri	2178	Sergeant Of Police	1063	Carmelo	Baglieri	1994-05-02 00:00:00	2016-12-16 00:00:00
993	28867	Jesse Carreno	9021	Sergeant Of Police	3987	Jesse	Carreno	2006-12-18 00:00:00	\N
1192	28677	Macario Chavez	9084	Police Officer	4464	Macario	Chavez	2006-09-25 00:00:00	\N
1729	27039	Marc Debose	12694	Police Officer	6540	Marc	Debose	2003-09-29 00:00:00	\N
1177	29469	Louis Del Coiro	11738	Police Officer	6599	Louis	Del Coiro	2009-03-09 00:00:00	\N
70	28728	Adrien Franklin	9188	Police Officer	9086	Adrien	Franklin	2006-10-30 00:00:00	\N
1916	25968	Matthew Graf	11571	Po As Detective	10529	Matthew	Graf	2001-08-27 00:00:00	\N
373	26969	Bernardo Manjarrez	9057	Police Officer	17217	Bernardo	Manjarrez	2003-08-25 00:00:00	\N
1994	27644	Patrick Mcgarry	9063	Police Officer	18588	Patrick	Mcgarry	2004-11-29 00:00:00	\N
2341	13153	Luigi Riggio	40170	Po As Detective	23956	Luigi	Riggio	1980-06-23 00:00:00	2010-04-15 00:00:00
2128	25078	Lloyd Root	16311	Police Officer	24636	Lloyd	Root	2000-06-19 00:00:00	2012-04-20 00:00:00
1431	25395	John Stanley	9024	Police Officer	27338	John	Stanley	2000-10-10 00:00:00	\N
1261	26851	Gregory Sweeney	8981	Police Officer	27981	Gregory	Sweeney	2003-02-24 00:00:00	\N
1998	23958	David Tencza	9203	Police Officer	28315	David	Tencza	1999-03-08 00:00:00	\N
1787	24891	Joseph Warnke	9138	P O Assgn Sec Spec	30063	Joseph	Warnke	2000-01-24 00:00:00	2014-03-15 00:00:00
777	26919	Kris Stipanov	9128	Police Officer	32357	Kris	Stipanov	2003-04-28 00:00:00	\N
213	25286	Marc Vanek	21728	Sergeant Of Police	32388	Marc	Vanek	2000-09-11 00:00:00	\N
154	25191	Anthony Varchetto	9031	Police Officer	32390	Anthony	Varchetto	2000-08-14 00:00:00	\N
1379	29191	Sean Berry	933	Police Officer	1900	Sean	Berry	2007-08-27 00:00:00	2014-03-15 00:00:00
1932	25001	Elizabeth Alaniz	14751	Police Officer	263	Elizabeth	Alaniz	2000-06-19 00:00:00	\N
233	28854	Josephjam Alfaro	8030	Police Officer	340	Josephjam	Alfaro	2006-12-18 00:00:00	\N
1753	27114	Regan Allen	15090	Police Officer	403	Regan	Allen	2003-10-27 00:00:00	\N
147	28665	Jose Alvarez	13055	Police Officer	487	Jose	Alvarez	2006-09-25 00:00:00	2016-06-20 00:00:00
1899	25002	Joseph Amoje	18644	Police Officer	541	Joseph	Amoje	2000-06-19 00:00:00	2012-07-09 00:00:00
1164	22655	Maurice Anderson	11348	Police Officer	650	Maurice	Anderson	1997-07-07 00:00:00	\N
1374	26592	Jason Bala	9112	Police Officer	1146	Jason	Bala	2002-10-28 00:00:00	\N
895	25630	Christoph Barajas	7367	Police Officer	1277	Christoph	Barajas	2001-03-26 00:00:00	\N
721	14031	Kelvin Blanks	1674	Sergeant Of Police	2149	Kelvin	Blanks	1982-07-19 00:00:00	2012-12-15 00:00:00
712	18333	James Boreczky	4231	Police Officer	2409	James	Boreczky	1991-05-22 00:00:00	\N
781	27847	Jonathan Chibicki	13157	Police Officer	4506	Jonathan	Chibicki	2005-08-29 00:00:00	\N
1974	26869	Walldy Colon	2929	Police Officer	5088	Walldy	Colon	2003-04-28 00:00:00	\N
1295	28144	Brian Garner	8984	Police Officer	31986	Brian	Garner	2005-12-05 00:00:00	\N
\.


--
-- Name: officer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jennie
--

SELECT pg_catalog.setval('public.officer_id_seq', 1, false);


--
-- Name: settlement_officer_info officer_pkey; Type: CONSTRAINT; Schema: public; Owner: jennie
--

ALTER TABLE ONLY public.settlement_officer_info
    ADD CONSTRAINT officer_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

