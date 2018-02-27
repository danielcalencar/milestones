--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

-- Started on 2018-02-27 15:05:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 189 (class 1259 OID 270289)
-- Name: answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE answer (
    id character varying(255),
    participant_fk integer,
    answer character varying(255),
    question_fk double precision
);


ALTER TABLE answer OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 270306)
-- Name: code_supercode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE code_supercode (
    code character varying(255),
    freq integer,
    question_fk double precision,
    super_code character varying(255)
);


ALTER TABLE code_supercode OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 270296)
-- Name: codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE codes (
    participant_question integer,
    code character varying(255)
);


ALTER TABLE codes OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 270076)
-- Name: participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE participant (
    id integer NOT NULL,
    user_id character varying
);


ALTER TABLE participant OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 270074)
-- Name: participant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE participant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE participant_id_seq OWNER TO postgres;

--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 187
-- Name: participant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE participant_id_seq OWNED BY participant.id;


--
-- TOC entry 186 (class 1259 OID 270065)
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE question (
    id integer NOT NULL,
    description character varying
);


ALTER TABLE question OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 270063)
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE question_id_seq OWNER TO postgres;

--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 185
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE question_id_seq OWNED BY question.id;


--
-- TOC entry 2024 (class 2604 OID 270079)
-- Name: participant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY participant ALTER COLUMN id SET DEFAULT nextval('participant_id_seq'::regclass);


--
-- TOC entry 2023 (class 2604 OID 270068)
-- Name: question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY question ALTER COLUMN id SET DEFAULT nextval('question_id_seq'::regclass);


--
-- TOC entry 2146 (class 0 OID 270289)
-- Dependencies: 189
-- Data for Name: answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY answer (id, participant_fk, answer, question_fk) FROM stdin;
1	1	4	11
2	2	10	11
3	3	10	11
4	4	10	11
5	5	5	11
6	6	5	11
7	7	10	11
8	8	4	11
9	9	9	11
10	10	10	11
11	11	10	11
12	12	7	11
13	13	10	11
14	14	10	11
15	15	5	11
16	16	8	11
17	17	5	11
18	18	7	11
19	19	10	11
20	20	10	11
21	21	10	11
22	22	0	11
23	23	5	11
24	24	10	11
25	25	0	11
26	26	10	11
27	27	9	11
28	28	10	11
29	29	10	11
30	30	5	11
31	31	7	11
32	32	2	11
33	33	10	11
34	34	6	11
35	35	10	11
36	36	10	11
37	37	10	11
38	38	4	11
39	39	0	11
40	40	6	11
41	1	\N	12
42	2	\N	12
43	3	nodejs modbus stream	12
44	4	pmctire.com	12
45	5	Latis project	12
46	6	Puppet modules	12
47	7	mobile fiance	12
48	8	homee	12
49	9	frontendReboot	12
50	10	AP	12
51	11	\N	12
52	12	GitLab	12
53	13	InmoPro	12
54	14	GitLab EE	12
55	15	GitLab	12
56	16	Research projects	12
57	17	Internal Puppet Code	12
58	18	Gitlab Community Edition	12
59	19	Sentinel Elite	12
60	20	Mailtop	12
61	21	LoopbackJS	12
62	22	NewVidLand	12
63	23	GitLab	12
64	24	internal ecommerce	12
65	25	APP	12
66	26	Absurde SÃ©ance Website	12
67	27	Tarkin	12
68	28	EdenNetwork	12
69	29	WordPress	12
70	30	Flockademic	12
71	31	Under NDA on it	12
72	32	Private code for work	12
73	33	CrossPeak	12
74	34	rest-api Frilans Finans	12
75	35	Marine	12
76	36	Private source app client	12
77	37	DMS/DDS	12
78	38	PlayerTimes	12
79	39	Nikola	12
80	40	Gitlab	12
81	1	4	24
82	2	2	24
83	3	2	24
84	4	\N	24
85	5	0	24
86	6	4	24
87	7	5	24
88	8	\N	24
89	9	\N	24
90	10	5	24
91	11	5	24
92	12	\N	24
93	13	0	24
94	14	\N	24
95	15	4	24
96	16	0	24
97	17	\N	24
98	18	0	24
99	19	\N	24
100	20	\N	24
101	21	2	24
102	22	2	24
103	23	\N	24
104	24	\N	24
105	25	0	24
106	26	\N	24
107	27	0	24
108	28	5	24
109	29	5	24
110	30	0	24
111	31	\N	24
112	32	\N	24
113	33	2	24
114	34	2	24
115	35	0	24
116	36	\N	24
117	37	4	24
118	38	0	24
119	39	0	24
120	40	0	24
121	1	1	13
122	2	Developer	13
123	3	developer	13
124	4	Lead programmer	13
125	5	Developer	13
126	6	Ops / devops / ops automation	13
127	7	Architect	13
128	8	lead developer, CTO	13
129	9	Developer	13
130	10	Architect	13
131	11	developer	13
132	12	Frontend Engineer	13
133	13	Lead Developer	13
134	14	Developer	13
135	15	VP of Product	13
136	16	Analyst	13
137	17	Developer	13
138	18	UX Designer	13
139	19	developer	13
140	20	Technical Leader	13
141	21	Contributor	13
142	22	Developer, tester, everything 	13
143	23	Frontend Engineer	13
144	24	technical head	13
145	25	tester	13
146	26	Developer / Product Owner	13
147	27	Engineer Manager	13
148	28	Main developer	13
149	29	Developer	13
150	30	Developer	13
151	31	a project manager/programmer	13
152	32	developer	13
153	33	developer and tester	13
154	34	team leader	13
155	35	Developer	13
156	36	Designer, developer	13
157	37	Project lead and developer	13
158	38	Developer	13
159	39	A user who contributes a few patches to fix bugs he finds using the software	13
160	40	Developer	13
161	1	Java	14
162	2	Python	14
163	3	nodejs	14
164	4	PHP, JS, HTML, CSS, etc.	14
165	5	C/c++, java	14
166	6	Puppet, ruby	14
167	7	Java / Erlang / Objective-C 	14
168	8	c++, javascript, swift, java	14
169	9	javascript	14
170	10	Java	14
171	11	Java	14
172	12	JavaScript & Ruby	14
173	13	Swift	14
174	14	Ruby, Go	14
175	15	Ruby	14
176	16	python	14
177	17	Ruby, Puppet, Bash	14
178	18	Markdown	14
179	19	C#	14
180	20	Ruby, Go	14
181	21	Nodejs	14
182	22	Ruby	14
183	23	JavaScript, Ruby	14
184	24	python, javascript, golang, sql, java	14
185	25	JAVA, C+	14
186	26	HTML / SASS / TypeScript / Ruby	14
187	27	Python	14
188	28	C#	14
189	29	PHP, JavaScript, Python	14
190	30	TypeScript	14
191	31	Java	14
192	32	C	14
193	33	php	14
194	34	PHP	14
195	35	Python	14
196	36	TypeScript, HTML, CSS	14
197	37	C++, Python, Ruby	14
198	38	Java	14
199	39	Python	14
200	40	Ruby	14
201	1	2	15
202	2	5	15
203	3	5	15
204	4	5	15
205	5	2	15
206	6	4	15
207	7	5	15
208	8	5	15
209	9	5	15
210	10	2	15
211	11	5	15
212	12	5	15
213	13	5	15
214	14	5	15
215	15	4	15
216	16	\N	15
217	17	5	15
218	18	5	15
219	19	5	15
220	20	5	15
221	21	2	15
222	22	5	15
223	23	5	15
224	24	5	15
225	25	2	15
226	26	5	15
227	27	1	15
228	28	5	15
229	29	4	15
230	30	5	15
231	31	5	15
232	32	5	15
233	33	\N	15
234	34	4	15
235	35	5	15
236	36	4	15
237	37	5	15
238	38	4	15
239	39	1	15
240	40	\N	15
241	1	\N	16
242	2	\N	16
243	3	2	16
244	4	\N	16
245	5	\N	16
246	6	1	16
247	7	2	16
248	8	\N	16
249	9	\N	16
250	10	1	16
251	11	4	16
252	12	1	16
253	13	2	16
254	14	1	16
255	15	5	16
256	16	5	16
257	17	2	16
258	18	\N	16
259	19	2	16
260	20	1	16
261	21	4	16
262	22	5	16
263	23	1	16
264	24	2	16
265	25	2	16
266	26	\N	16
267	27	\N	16
268	28	2	16
269	29	\N	16
270	30	\N	16
271	31	\N	16
272	32	1	16
273	33	4	16
274	34	4	16
275	35	\N	16
276	36	2	16
277	37	4	16
278	38	5	16
279	39	2	16
280	40	2	16
281	1	\N	25
282	2	2	25
283	3	\N	25
284	4	4	25
285	5	\N	25
286	6	4	25
287	7	4	25
288	8	4	25
289	9	1	25
290	10	4	25
291	11	4	25
292	12	4	25
293	13	2	25
294	14	\N	25
295	15	4	25
296	16	4	25
297	17	4	25
298	18	4	25
299	19	2	25
300	20	4	25
301	21	\N	25
302	22	4	25
303	23	2	25
304	24	4	25
305	25	\N	25
306	26	4	25
307	27	\N	25
308	28	4	25
309	29	4	25
310	30	4	25
311	31	2	25
312	32	\N	25
313	33	4	25
314	34	1	25
315	35	4	25
316	36	4	25
317	37	4	25
318	38	4	25
319	39	4	25
320	40	4	25
321	1	4	17
322	2	4	17
323	3	4	17
324	4	\N	17
325	5	\N	17
326	6	\N	17
327	7	\N	17
328	8	2	17
329	9	2	17
330	10	4	17
331	11	2	17
332	12	1	17
333	13	2	17
334	14	\N	17
335	15	4	17
336	16	4	17
337	17	4	17
338	18	4	17
339	19	1	17
340	20	1	17
341	21	\N	17
342	22	4	17
343	23	\N	17
344	24	2	17
345	25	4	17
346	26	1	17
347	27	\N	17
348	28	4	17
349	29	\N	17
350	30	4	17
351	31	4	17
352	32	4	17
353	33	4	17
354	34	4	17
355	35	4	17
356	36	4	17
357	37	\N	17
358	38	\N	17
359	39	\N	17
360	40	4	17
361	1	2	18
362	2	4	18
363	3	4	18
364	4	\N	18
365	5	\N	18
366	6	4	18
367	7	4	18
368	8	4	18
369	9	2	18
370	10	2	18
371	11	\N	18
372	12	4	18
373	13	4	18
374	14	\N	18
375	15	4	18
376	16	\N	18
377	17	4	18
378	18	4	18
379	19	\N	18
380	20	4	18
381	21	4	18
382	22	4	18
383	23	1	18
384	24	1	18
385	25	\N	18
386	26	4	18
387	27	4	18
388	28	4	18
389	29	4	18
390	30	\N	18
391	31	4	18
392	32	4	18
393	33	4	18
394	34	\N	18
395	35	4	18
396	36	\N	18
397	37	4	18
398	38	1	18
399	39	4	18
400	40	\N	18
401	1	4	19
402	2	1	19
403	3	1	19
404	4	\N	19
405	5	\N	19
406	6	1	19
407	7	1	19
408	8	1	19
409	9	\N	19
410	10	1	19
411	11	2	19
412	12	\N	19
413	13	1	19
414	14	\N	19
415	15	2	19
416	16	4	19
417	17	2	19
418	18	2	19
419	19	1	19
420	20	1	19
421	21	4	19
422	22	2	19
423	23	1	19
424	24	2	19
425	25	4	19
426	26	1	19
427	27	2	19
428	28	2	19
429	29	1	19
430	30	4	19
431	31	\N	19
432	32	1	19
433	33	2	19
434	34	4	19
435	35	2	19
436	36	2	19
437	37	2	19
438	38	1	19
439	39	4	19
440	40	1	19
441	1	2	20
442	2	\N	20
443	3	\N	20
444	4	4	20
445	5	\N	20
446	6	2	20
447	7	4	20
448	8	4	20
449	9	\N	20
450	10	2	20
451	11	4	20
452	12	2	20
453	13	2	20
454	14	\N	20
455	15	4	20
456	16	4	20
457	17	\N	20
458	18	\N	20
459	19	1	20
460	20	\N	20
461	21	1	20
462	22	2	20
463	23	1	20
464	24	4	20
465	25	4	20
466	26	1	20
467	27	2	20
468	28	4	20
469	29	4	20
470	30	4	20
471	31	2	20
472	32	1	20
473	33	4	20
474	34	2	20
475	35	4	20
476	36	4	20
477	37	\N	20
478	38	4	20
479	39	\N	20
480	40	4	20
481	1	4	21
482	2	4	21
483	3	4	21
484	4	\N	21
485	5	\N	21
486	6	4	21
487	7	4	21
488	8	4	21
489	9	\N	21
490	10	4	21
491	11	1	21
492	12	2	21
493	13	1	21
494	14	\N	21
495	15	4	21
496	16	4	21
497	17	4	21
498	18	4	21
499	19	1	21
500	20	4	21
501	21	2	21
502	22	4	21
503	23	\N	21
504	24	4	21
505	25	4	21
506	26	1	21
507	27	\N	21
508	28	\N	21
509	29	2	21
510	30	4	21
511	31	4	21
512	32	\N	21
513	33	\N	21
514	34	2	21
515	35	4	21
516	36	2	21
517	37	4	21
518	38	\N	21
519	39	\N	21
520	40	\N	21
521	1	2	22
522	2	4	22
523	3	4	22
524	4	4	22
525	5	\N	22
526	6	4	22
527	7	4	22
528	8	4	22
529	9	4	22
530	10	4	22
531	11	4	22
532	12	4	22
533	13	4	22
534	14	\N	22
535	15	4	22
536	16	4	22
537	17	4	22
538	18	\N	22
539	19	4	22
540	20	4	22
541	21	2	22
542	22	4	22
543	23	\N	22
544	24	4	22
545	25	4	22
546	26	4	22
547	27	4	22
548	28	\N	22
549	29	4	22
550	30	2	22
551	31	4	22
552	32	4	22
553	33	4	22
554	34	4	22
555	35	4	22
556	36	\N	22
557	37	4	22
558	38	4	22
559	39	4	22
560	40	4	22
561	1	4	23
562	2	2	23
563	3	1	23
564	4	\N	23
565	5	\N	23
566	6	2	23
567	7	1	23
568	8	2	23
569	9	1	23
570	10	1	23
571	11	\N	23
572	12	2	23
573	13	1	23
574	14	\N	23
575	15	1	23
576	16	\N	23
577	17	4	23
578	18	\N	23
579	19	1	23
580	20	1	23
581	21	2	23
582	22	4	23
583	23	1	23
584	24	1	23
585	25	\N	23
586	26	1	23
587	27	2	23
588	28	2	23
589	29	\N	23
590	30	2	23
591	31	1	23
592	32	1	23
593	33	1	23
594	34	1	23
595	35	2	23
596	36	2	23
597	37	1	23
598	38	1	23
599	39	4	23
600	40	4	23
601	1	understand the progress of the project	2
602	2	Planning, tracking features	2
603	4	To scope sprints and to scope "big features", separately	2
604	5	As agile development sprints	2
605	7	Group tasks for a production release	2
606	8	Group Issues	2
607	10	Communication point for delivery points of functionality (new or changed)	2
608	12	To know which issues we need to work for in next releases.\nTo know which MRs need to be picked to being deployed.	2
609	13	We map milestones to Sprints, and keep one as a Product Backlog.	2
610	14	Scheduling work (issues) for a particular release of GitLab and tracking progress	2
786	17	Wrong prioritisation, bad planning (e.g. unexpected difficulties)	8
611	15	We use them as sprints (e.g. in milestone X, we're doing A, B, C) and as a deadline (due date 12-23)	2
612	17	Tracking tasks which require a large amount of time but can be determined "done".	2
613	18	They are stand-ins for release dates	2
614	19	Containers of open/active issues attached to a target release date	2
615	20	Group issues / MRs to trach what is done in a month.	2
616	23	To mark monthly releases	2
617	24	release management	2
618	25	ACHIEVE SUCCESS  	2
619	26	To keep track of the progress of many features when we have a deadline	2
620	27	Project management	2
621	29	releases	2
622	31	We use it to strategize releases	2
623	32	Keep track of issues relating to specific release	2
624	33	Grouping issues/features into everything a customer needs.	2
625	35	For release versions, eg. 1.0, 1.1, etc.	2
626	36	Sprint deadlines or release goals	2
627	37	Track enhancements and bugs for future releases	2
628	39	To schedule a given feature or bugfix to a given version (if it isn't fixed or implemented in time, the milestone moves to the next version)	2
629	40	To organize issues and merge requests	2
630	1	PO, stakeholder	3
631	2	I am	3
632	4	All team members (management, programmers, etc.)	3
633	5	Me	3
634	7	Me 	3
635	8	developers themselves	3
636	10	Product Manager	3
637	12	In issues, the managers. In MRs, the engineers.	3
638	13	Myself	3
639	14	Me!	3
640	15	Technical leads (engineering managers) and product managers	3
641	17	Everyone	3
642	18	Upper management	3
643	19	Joint effort between product business owner and technical lead	3
644	20	ItÂ´s me.	3
645	23	Product Manager	3
646	24	product owner	3
647	25	manager	3
648	26	Everyone (we are a very small team)	3
649	27	manager and team leader	3
650	29	release lead	3
651	31	Me, as a project manager	3
652	32	Senior devleoper	3
653	33	Me	3
654	35	Myself	3
655	36	Senior software developer and product manager	3
656	37	Myself and customer	3
657	39	The lead developers	3
658	40	Manager & Product Owner	3
659	1	tasks and due date	4
660	2	Major version milestones don't have a due date in the beginning	4
661	4	For the sprint, we have a fixed length of 1 week. For "big features" the milestone is delivered from an original issue that aims to tackle the unknown from design, analysis, risks, prototyping, etc.	4
662	5	Due date 	4
663	7	Tasks and due date regarding business objectives	4
664	8	due date	4
665	10	Auto-scheduled on a monthly basis	4
666	12	In GitLab milestones have a length of each release cycle, which is a month.	4
667	13	We track estimates on a separate tool.	4
668	14	Scheduling meeting with product manager at the start of each development month (7th) considering backlog items for the upcoming milestone	4
669	15	length is also the same: 7th to 7th to 22nd. Meaning: 7-7 is when we build new functionality, to then release that particular release on the 22nd.\n\nThe tasks that fall within it are decided by product managers working together with technical leads.	4
670	17	In a monthly meeting we decide which issues are important and if they are too big and contain at least 3 sub-issues we'll consider them for a milestone.	4
671	18	We release on the 22nd of every month. The milestone signifies that as a due date.	4
672	19	Pretty much solely tasks included and due date	4
673	20	What it's planned to be done in the month, is added to the milestone.	4
674	23	Dates	4
675	24	due date	4
676	25	IT DEPENDS	4
677	26	The due date corresponds to a release date minus few days	4
678	27	date, description and estimation	4
679	29	due date	4
680	31	We create releases, aimed at 3-4 weeks of work, and tie to a milestone	4
681	32	Around due date and parameters given by a customer	4
682	33	which tasks are in it.	4
683	35	Features	4
684	36	During meeting: gather goals, figure out tasks and length, prioritize them	4
685	37	Due date	4
686	39	There seems to not be any due date for milestones, and its length is not tracked.	4
687	40	Monthly	4
688	1	very milestones 	5
689	2	A few	5
690	4	Releasing is NOT couple to milestones. We release more often than we milestone. For example, patches.	5
691	5	One. At the end of the milestone, the project is updated and a new production version is released	5
692	7	1	5
693	8	1	5
694	10	\N	5
695	12	We release every month, so one. 	5
696	13	2	5
697	14	Each milestone corresponds to a release	5
698	15	1 per release (we name them after releases)	5
699	17	None, our puppet code is never "finished".	5
700	18	1	5
701	19	N/A - we use milestones to plan/track deployments, not really related to "versions" in our use-case	5
702	20	None.	5
703	23	Due to m monthly release model, we do not have any milestones that mark pre-release versions	5
704	24	1	5
705	25	3+	5
706	26	1	5
707	27	1 at least	5
708	29	5-6	5
709	31	We just use a single milestone per release/version	5
710	32	Main version is released on a date (not by number of milestones)	5
711	33	We release as every feature is complete	5
712	35	one	5
713	36	~8	5
714	37	1	5
715	39	1	5
716	40	\N	5
717	1	\N	6
718	2	\N	6
719	4	We keep a "feature milestone" as a "minimal viable product". It is not great when we don't deliver according to a due date, but we rarely put a due date in the first place. We deliver value, we don't deliver milestones.	6
720	5	Not very. This project is open source and with less than five developers. 	6
721	7	No	6
722	8	No	6
723	10	Always, the rest of the schedule is majorly impacted (testing, release, the future milestones have less time)	6
724	12	Yes. It is something we should have been able to do and failed :)	6
725	13	\N	6
726	14	\N	6
727	15	we move everything over to the next. Nothing negative. They always expire, we almost never ship 100%, but get close.	6
728	17	Depending on if its an internal or external (build functionality for a customer) and theres a deadline, there can be negative consequences.	6
729	18	No	6
730	19	Typically only requires written cause as to why we need to reschedule the maintenance window for release	6
731	20	No. We just move issues to another milestone.	6
732	23	Yes, it usually means that a feature or an issue that was supposed to go in particular release couldn't go.	6
733	24	no, other milestones move as well	6
734	25	NOT SURE	6
735	26	In our case, it means that we might be late on the release if we do not catch up quickly	6
736	27	Estimation reassessment	6
737	29	\N	6
738	31	Not on our end, we just adjust	6
739	32	Customer will be upset	6
740	33	No, it ships when it is ready.	6
741	35	Not really	6
742	36	Moves subsequent milestones back, can be a headache to consolidate that	6
743	37	Not usually, release dates are pretty flexible	6
744	39	No, there is no negative impact.	6
745	40	Work keeps accumulated for the next milestone	6
746	1	\N	7
747	2	It's bad, but expected	7
748	4	I think it is BAD to constraint development effort too much inside a hard time limit box. You have to balance both the delivered features and the budget. This is why you have to keep your milestone as SHORT as possible.	7
749	5	No idea	7
750	7	bad thing	7
751	8	Bad	7
752	10	for opensource code this isn't out of norm	7
753	12	I was expecting to see a smaller number on gitlab-ce	7
754	13	Not surprising	7
755	14	It's unavoidable that some work slips. Weight estimation is imprecise, and unexpected developments can cause things to be blocked anyway.\n\nI don't like your graph. I think in some cases (especially gitlab), it's measuring how tidy the product manager, or 	7
756	15	Great data. Similar to my expectations.	7
757	17	\N	7
758	18	It is what I expected. There are many moving parts to an issue, they often live on well past the milestone date. Often, the work is done but they are kept open until all questions, regressions have been solved for.	7
759	19	Not sure I understand the intent of this question.	7
760	20	\N	7
761	23	It is bad	7
762	24	good, makes owner of milestones aware of it and bring us to more realistic planing	7
763	25	expected	7
764	26	It might not be a bad thing: completion of a milestone depends on whether issues are completed are not, but sometimes they are "almost completed" which means that very little work remains (sometimes we are awaiting for something)	7
765	27	Good	7
766	29	good	7
767	31	Seems expected	7
768	32	It's bad. Milestones should be completed before due date. Expected that it will take longer in software development :)	7
769	33	Looks like I would have expected with most going over the due date.	7
770	35	It's expected	7
771	36	Don't really understand the question or what answer you seek?	7
772	37	We rarely hit a milestone, no surprise others don't as well.	7
773	39	I can't see the figure. But the 78% is expected in some cases, as people tend to be overly optimistic.	7
774	40	Interesting data. It was more than I expected!	7
775	1	\N	8
776	2	Incorrect estimation of time needed to complete the task 	8
777	4	When planning you ask to deal with the unknown. The more the milestone is lengthy the more you risk to be off in your planning. We separate our development in 2 phases: \n\n1. discovery, so we identify the risks and we figure the high level design/architect	8
778	5	\N	8
779	7	too many task for milestones	8
780	8	Bad planning, unexperienced 	8
781	10	Ran into technical issues, higher priority took away time from developer, harder to implement than planed for.	8
782	12	We scheduled too much or we did not foreseen a technical problem that prevents us from delivering.	8
783	13	Poor planning, unexpected complexity on large issues.	8
784	14	\N	8
785	15	Scoping capacity / issue weight is near impossible. That's why.	8
787	18	Mitigating development issues, regressions.	8
788	19	Two things come to mind - new (high priority) issues coming in outside of the current milestone, and also some underestimation (of time/scope) to complete individual issues	8
789	20	\N	8
790	23	Lack of planning around feature set that we wish to go in particular milestone	8
791	24	unrealistic planing, scope extended, other risks as sickness and/or tech failures/outtakes.	8
792	25	\N	8
793	26	Tasks take longer than expected / Tasks were added to the milestone without re-evaluating its due date	8
794	27	Unplanned work and amount of parallel work in progress	8
795	29	bad estimation	8
796	31	It's hard to estimate time for completion, and new tasks always arise unexpectedly	8
797	32	\N	8
798	33	Everyone always underestimates how long something will take.	8
799	35	We are more worried about quality than dates	8
800	36	Time estimate for tasks was inaccurate, either due to reasons within or outside of control	8
801	37	\N	8
802	39	The priorities that a project has aren't scheduled taking into  account the necessary time to work on them.	8
803	40	Work that wasn't planned in the milestone,  but it's also necessary to finish it	8
804	1	\N	9
805	2	\N	9
806	4	You should not rely only on experience. You have to acknowledge the things you don't know and you have to balance them and address some BEFORE you kick the milestone. Otherwise, as soon as you start designing / coding, etc. your milestone really risk to b	9
807	5	\N	9
808	7	work in multiple projects	9
809	8	no	9
810	10	no	9
811	12	No	9
812	13	\N	9
813	14	\N	9
814	15	reasons => factors. Issue weight. Past success.	9
815	17	\N	9
816	18	Placing issues into a milestone before they have the proper requirements.	9
817	19	The other factor I would put in the "correlated" or "strongly correlated" category is: The experience of assigners; i.e. how experienced are the PMs who are adding issues to a milestone with a specific date. Are their expectations unrealistic? Could be th	9
818	20	\N	9
819	23	Pre-planning before marking an issue to close with milestone	9
820	24	\N	9
821	25	\N	9
822	26	Bad separation of tasks (= one big issue instead of several well-defined)	9
823	27	Unplanned work, innaccurate planning and management	9
824	29	no	9
825	31	Length of time between merge request creation, and merge into a project	9
826	32	\N	9
827	33	\N	9
828	35	Overall complexity of the issues	9
829	36	None	9
830	37	Bad planning	9
831	39	\N	9
832	40	\N	9
833	1	\N	10
834	2	\N	10
835	4	Managing the unknown. De-corelate project delivery and milestone; milestones for "big features" and sprint management separately.	10
836	5	\N	10
837	7	N/a	10
838	8	Group Milestones should be also available in projects of subgroups, same goes for group labels.	10
839	10	with the new "agile" workflow, I think milestones are going to become much shorter in duration.	10
840	12	\N	10
841	13	How many issues are moved from one milestone to other upon expiration	10
842	14	\N	10
843	15	How we can do a better job not exceeding them.	10
844	17	\N	10
845	18	Proper planning / discovery on issues placed into a milestone.	10
846	19	No opinion	10
847	20	\N	10
848	23	How scope of features are decided, assignees are added	10
849	24	average duration, tickets per duration	10
850	25	\N	10
851	26	I think the field of Empirical Software Engineering is interesting, so why not?	10
852	27	How estimations are calculated, what is factored in during this initial stage	10
853	29	used tools	10
854	31	\N	10
855	32	\N	10
856	33	Better reporting on milestones in progress.	10
857	35	\N	10
858	36	Base on averages, alert when a milestone is in danger of being delayed due to similarities (ie: this milestone has this many merge requests, which is above the typical amount seen in milestones that actually deliver on time).	10
859	37	\N	10
860	39	Developers should (a) move to fixed dates for release, working in two branches (development and upstream); b) stop using due dates; or c) increase the due dates.	10
861	40	\N	10
\.


--
-- TOC entry 2148 (class 0 OID 270306)
-- Dependencies: 191
-- Data for Name: code_supercode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY code_supercode (code, freq, question_fk, super_code) FROM stdin;
agile methodology	1	2	project tracking
communication	1	2	project tracking
delivery of functionality	1	2	project tracking
feature management	4	2	scope
group tasks	6	2	scope
long tasks	1	2	project tracking
milestone type	1	2	scope
planning	4	2	project tracking
prioritization	3	2	scope
product backlog	1	2	scope
project management	3	2	project tracking
release	1	2	scope
release dates	10	2	project tracking
setting goals	1	2	project planning
sprints	5	2	scope
success	1	2	project tracking
tracking	7	2	project tracking
\.


--
-- TOC entry 2147 (class 0 OID 270296)
-- Dependencies: 190
-- Data for Name: codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY codes (participant_question, code) FROM stdin;
601	tracking
602	tracking
602	planning
602	feature management
603	sprints
603	milestone type
603	feature management
604	sprints
604	agile methodology
605	group tasks
605	release
606	group tasks
607	communication
607	delivery of functionality
607	project management
608	prioritization
608	planning
609	sprints
609	product backlog
610	prioritization
610	planning
610	tracking
611	sprints
611	prioritization
611	project management
612	long tasks
612	tracking
613	release dates
614	release dates
614	planning
615	group tasks
615	tracking
615	feature management
616	release dates
617	release dates
618	success
619	tracking
619	feature management
620	project management
621	release dates
622	release dates
623	group tasks
623	release dates
624	group tasks
625	release dates
626	sprints
626	setting goals
627	tracking
627	release dates
628	release dates
629	group tasks
630	project owner
630	stakeholder
631	developer
632	all team
633	developer
634	architect
635	developer
636	product manager
637	engineering managers (tech lead)
637	product managers
638	developer
639	developer
640	engineering managers (tech lead)
640	product managers
641	all team
642	manager
643	engineering managers (tech lead)
643	product managers
644	engineering managers (tech lead)
645	product managers
646	product owner
647	manager
648	all team
649	engineering managers (tech lead)
649	product managers
650	release leader
651	project manager
652	developer
653	developer
654	team leader
655	engineering managers (tech lead)
655	product managers
656	customer
657	lead developer
658	manager
658	product owner
659	tasks
659	due date
660	due date
661	fixed length
661	features size
661	tasks
662	due date
663	tasks
663	due date
664	due date
665	due date
665	fixed length
666	fixed length
667	separate tool
668	backlog items
668	meetings
668	product manager
668	due date
669	delivery of functionality
669	fixed length
670	meetings
670	features size
670	prioritization
671	fixed length
672	tasks
672	due date
673	backlog items
673	prioritization
674	due date
675	due date
677	due date
677	release mapping
678	due date
678	estimations
679	due date
680	release mapping
681	due date
681	customer
682	scope
683	scope
684	meetings
684	prioritization
684	setting goals
685	due date
687	fixed length
688	several
689	few
690	unrelated to release
691	one to one
692	one to one
693	one to one
694	\N
695	one to one
696	few
697	one to one
698	one to one
699	none
700	one to one
701	varies
701	unrelated to release
702	None
703	\N
704	one to one
705	several
706	one to one
707	few
708	several
709	one to one
710	unrelated to release
711	unrelated to release
712	one to one
713	several
714	one to one
715	one to one
716	\N
717	\N
718	\N
719	value of delivery
719	fail
720	small impact
720	smal project
721	no
722	no
723	accumulating
723	development process
723	yes
724	fail
724	yes
725	\N
726	\N
727	no
727	accumulating
728	customer
728	functionality
729	no
730	justification
731	no
731	accumulating
732	fail
732	yes
733	no
733	accumulating
734	maybe
735	yes
735	accumulating
735	delay
736	yes
736	estimations
737	\N
738	no
739	customer
740	no
740	when ready
741	no
742	yes
742	accumulating
743	no
743	flexible
744	no
745	accumulating
745	yes
746	\N
747	bad
747	expected
748	bad
748	effort
748	milestone length
748	trade-off
749	don't know
750	bad
751	bad
752	expected
753	expected
754	expected
755	mismatch
755	bad planning
756	expected
757	\N
758	expected
759	\N
760	\N
761	bad
762	bad
762	good
762	bad planning
763	expected
764	almost completed
765	good
766	good
767	expected
768	expected
769	expected
770	expected
771	\N
772	expected
773	bad planning
774	expected
775	\N
776	estimations
777	estimations
777	risk
777	milestone length
777	milestone phases
777	planning
777	requirements
778	\N
779	number of tasks
780	bad planning
780	experience
781	prioritization
781	bad planning
781	technical issues
781	risk
782	number of tasks
782	technical issues
782	risk
783	bad planning
783	complexity
783	task weight
784	\N
785	number of tasks
785	task weight
786	bad planning
786	prioritization
786	risk
787	risk
787	regression
788	bad planning
788	unexpected tasks
789	\N
790	bad planning
791	bad planning
791	risks
791	sickness
791	unexpected tasks
792	\N
793	bad planning
793	unexpected tasks
794	unexpected tasks
794	parallel work
795	bad planning
795	estimations
796	unexpected tasks
796	risk
796	bad planning
797	\N
798	bad planning
798	estimations
799	quality
800	bad planning
800	risk
800	estimations
801	\N
802	prioritization
803	risk
803	unexpected tasks
804	\N
805	\N
806	risk
806	before milestone
806	experience
806	planning
806	requirements
807	\N
808	multiple projects
809	\N
810	\N
811	\N
812	\N
813	\N
814	issue weight
814	past success
815	\N
816	requirements
817	experience
818	\N
819	planning
820	\N
821	\N
822	separation of tasks
823	risk
823	bad planning
823	bad management
824	\N
825	merge length
826	\N
827	\N
828	complexity
829	\N
830	planning
831	\N
832	\N
833	\N
834	\N
835	risk
835	milestone type
835	unrelated to release
835	feature management
835	sprint management
836	\N
837	\N
838	milestone management
839	milestone management
840	\N
841	moved issues
842	\N
843	milestone management
844	\N
845	planning
845	milestone management
846	\N
847	\N
848	assignees
848	milestone scope
848	milestone management
849	milestone duration
849	number of tasks
850	\N
851	\N
852	estimations
852	factored in
853	tools
854	\N
855	\N
856	better reporting
856	progress reports
857	\N
858	warnings
858	statistics
858	tools
859	\N
860	expectations management
860	delayed milestones
861	\N
\.


--
-- TOC entry 2145 (class 0 OID 270076)
-- Dependencies: 188
-- Data for Name: participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY participant (id, user_id) FROM stdin;
1	#1
2	#2
3	#3
4	#4
5	#5
6	#6
7	#7
8	#8
9	#9
10	#10
11	#11
12	#12
13	#13
14	#14
15	#15
16	#16
17	#17
18	#18
19	#19
20	#20
21	#21
22	#22
23	#23
24	#24
25	#25
26	#26
27	#27
28	#28
29	#29
30	#30
31	#31
32	#32
33	#33
34	#34
35	#35
36	#36
37	#37
38	#38
39	#39
\.


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 187
-- Name: participant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('participant_id_seq', 40, true);


--
-- TOC entry 2143 (class 0 OID 270065)
-- Dependencies: 186
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY question (id, description) FROM stdin;
1	In which role do you see yourself when working on this project? (e.g., a developer? A tester?)
2	To which purpose are milestones used?
3	Who is mostly responsible for tracking milestones (e.g., a manager)?
4	How is the milestone planned (e.g., its length, tasks and due date)?
5	How many milestones are necessary before releasing a main version of your project?
6	Is there any negative impact when a milestone expires? Why? (i.e., when it passes its due date)
7	We actually collected data from GitLab. The figure below shows "bean-plots" containing how long milestones took to be completed after being expired. What do you think about this observation, is it a bad thing or you expected that?
9	Can you think of other reasons that might be correlated with milestones expiration?
10	In your opinion, what do you think that should be more investigated/studied or improved in the way that milestones are used?
11	Overall experience
12	Project
13	Role
14	Programming language
15	Active
16	Perceived expiration frequency
17	Number of assignees
18	Number of postponed issues
19	Number of labels
20	Number of merge requests
21	Number of participants
22	Assignee experience
23	Reporter popularity
24	Project experience
25	Number of issues
8	What reasons can you think of that lead milestones to expire?
\.


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 185
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('question_id_seq', 10, true);


-- Completed on 2018-02-27 15:05:05

--
-- PostgreSQL database dump complete
--

