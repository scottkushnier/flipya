--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.7

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

DROP DATABASE flipya2;
--
-- Name: flipya2; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE flipya2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


\connect flipya2

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
-- Name: words; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.words (
    id integer NOT NULL,
    word1 character varying NOT NULL,
    word2 character varying NOT NULL,
    wordset_id integer
);


--
-- Name: words_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.words_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: words_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.words_id_seq OWNED BY public.words.id;


--
-- Name: wordsets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wordsets (
    id integer NOT NULL,
    language1 character varying,
    language2 character varying,
    theme character varying,
    color character varying,
    enabled boolean,
    size integer
);


--
-- Name: wordsets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wordsets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wordsets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wordsets_id_seq OWNED BY public.wordsets.id;


--
-- Name: words id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.words ALTER COLUMN id SET DEFAULT nextval('public.words_id_seq'::regclass);


--
-- Name: wordsets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wordsets ALTER COLUMN id SET DEFAULT nextval('public.wordsets_id_seq'::regclass);


--
-- Data for Name: words; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.words (id, word1, word2, wordset_id) FROM stdin;
1	man	homme	2
2	woman	femme	2
3	boy	garçon	2
4	girl	jeune fille	2
5	house	maison	2
6	man	גבר	1
7	woman	אִשָׁה	1
8	boy	יֶלֶד	1
9	girl	יַלדָה	1
10	house	בַּיִת	1
11	bird	ציפור	1
12	cat	חתול	1
13	cheese	גבינה	1
14	fish	דג	1
15	apartment	דירה	1
16	bread	pain	3
17	to eat	manger	3
18	chicken	poulet	3
19	beef	bœuf	3
20	world	עוֹלָם	4
21	to bless	לברך	4
22	king	מֶלֶך	4
23	about	עַל	4
24	ice cream	גְלִידָה	5
25	investigation	חֲקִירָה	5
26	knife	סַכִּין	5
27	red	rosso	6
28	green	verde	6
29	yellow	giallo	6
30	abandon	לִנְטוֹשׁ	7
31	ability	יְכוֹלֶת	7
32	able	מְסוּגָל	7
33	about	אוֹדוֹת	7
34	above	מֵעַל	7
35	abroad	בחול	7
36	absolute	מוּחלָט	7
37	absolutely	בְּהֶחלֵט	7
38	academic	אֲקָדֵמִי	7
39	accept	לְקַבֵּל	7
40	acceptable	קָבִיל	7
41	access	גִישָׁה	7
42	accident	תְאוּנָה	7
43	accommodation	דִיוּר	7
44	accompany	לְהִתְלַווֹת	7
45	according to	לְפִי	7
46	account	חֶשְׁבּוֹן	7
47	accurate	מְדוּיָק	7
48	accuse	לְהַאֲשִׁים	7
49	achieve	לְהַשִׂיג	7
50	achievement	הֶשֵׂג	7
51	acknowledge	לְהוֹדוֹת	7
52	acquire	לִרְכּוֹשׁ	7
53	across	לְרוֹחָב	7
54	act	חוֹק	7
55	action	פְּעוּלָה	7
56	active	פָּעִיל	7
57	activity	פְּעִילוּת	7
58	actor	שַׂחְקָן	7
59	actress	שַׂחְקָנִית	7
60	actual	מַמָשִׁי	7
61	actually	לְמַעֲשֶׂה	7
62	ad	מוֹדָעָה	7
63	adapt	לְהִסְתָגֵל	7
64	add	לְהוֹסִיף	7
65	addition	תוֹסֶפֶת	7
66	additional	נוֹסָף	7
67	address	כְּתוֹבֶת	7
68	administration	מִנהָל	7
69	admire	לְהִתְפַּעֵל	7
70	admit	לְהוֹדוֹת	7
71	adopt	לְאַמֵץ	7
72	adult	מְבוּגָר	7
73	advance	לְקַדֵם	7
74	advanced	מִתקַדֵם	7
75	advantage	יִתרוֹן	7
76	adventure	הַרפַּתקָה	7
77	advertise	לְפַרְסֵם	7
78	advertisement	פִּרסוֹמֶת	7
79	advertising	פִּרסוּם	7
80	advice	עֵצָה	7
81	advise	לְהוֹדִיעַ	7
82	affair	פָּרָשָׁה	7
83	affect	לְהַשְׁפִּיעַ עַל	7
84	afford	לְהַרְשׁוֹת לְעַצמוֹ	7
85	afraid	חוֹשֵׁשׁ	7
86	after	לְאַחַר	7
87	afternoon	צָהֳרַיִים	7
88	afterwards	לְאַחַר מִכֵּן	7
89	again	שׁוּב	7
90	against	נֶגֶד	7
91	age	גִיל	7
92	aged	זָקֵן	7
93	agency	סוֹכְנוּת	7
94	agenda	סֵדֶר הַיוֹם	7
95	agent	סוֹכֵן	7
96	aggressive	תוֹקפָּנִי	7
97	ago	לִפנֵי	7
98	agree	לְהַסכִּים	7
99	agreement	הֶסכֵּם	7
100	ah	אה	7
101	ahead	קָדִימָה	7
102	aid	סִיוּעַ	7
103	aim	מַטָרָה	7
104	air	אֲוִיר	7
105	aircraft	כְּלִי טַיִס	7
106	airline	חֶברַת תְעוּפָה	7
107	airport	נְמַל תְעוּפָה	7
108	alarm	אַזעָקָה	7
109	album	אַלבּוֹם	7
110	alcohol	כּוֹהֶל	7
111	alcoholic	כּוֹהָלִי	7
112	alive	בְּחַיִים	7
113	all	כֹּל	7
114	all right	בְּסֵדֶר	7
115	allow	לְהַתִיר	7
116	almost	כִּמעַט	7
117	alone	לְבַד	7
118	along	לְאוֹרֶך	7
119	already	כְּבָר	7
120	also	גַם	7
121	alter	לְשַׁנוֹת	7
122	alternative	חֲלוּפָה	7
123	although	לַמרוֹת	7
124	always	תָמִיד	7
125	amazed	מוּפתָע	7
126	amazing	מדהים	7
127	ambition	שְׁאַפתָנוּת	7
128	ambitious	שְׁאַפתָנִי	7
129	among	בֵּין	7
130	amount	סְכוּם	7
131	analyse	לְנַתֵחַ	7
132	analysis	אָנָלִיזָה	7
133	ancient	עַתִיק	7
134	and	ו	7
135	anger	כַּעַס	7
136	angle	זָוִית	7
137	angrily	בכעס	7
138	angry	כּוֹעֵס	7
139	animal	חַיָה	7
140	ankle	קַרסוֹל	7
141	anniversary	יוֹם הַשָׁנָה	7
142	announce	לְהַכרִיז	7
143	announcement	הַכרָזָה	7
144	annoy	לְהַרְגִיז	7
145	annoyed	מְרוּגָז	7
146	annoying	מְעַצבֵּן	7
147	annual	שְׁנָתִי	7
148	another	אַחֵר	7
149	answer	תְשׁוּבָה	7
150	anxious	חָרֵד	7
151	any	כֹּל	7
152	any more	עוד	7
153	anybody	מִישֶׁהוּ	7
154	anyone	כֹּל אֶחָד	7
155	anything	דָבָר	7
156	anyway	בכל מקרה	7
157	anywhere	בְּכָל מָקוֹם	7
158	apart	בְּנִפרָד	7
159	apartment	דִירָה	7
160	apologize	לְהִתְנַצֵל	7
161	app	אפליקציה	7
162	apparent	נִרְאֶה	7
163	apparently	כַּנִראֶה	7
164	appeal	עִרעוּר	7
165	appear	לְהוֹפִיעַ	7
166	appearance	הוֹפָעָה	7
167	apple	תַפּוּחַ	7
168	application	בַּקָשָׁה	7
169	apply	לִפְנוֹת	7
170	appointment	פְּגִישָׁה	7
171	appreciate	לְהַעֲרִיך	7
172	approach	גִישָׁה	7
173	appropriate	מַתְאִים	7
174	approval	הַסכָּמָה	7
175	approve	לְאַשֵׁר	7
176	approximately	בְּעֵרֶך	7
177	april	אַפּרִיל	7
178	architect	אַדְרִיכָל	7
179	architecture	אַדְרִיכָלוּת	7
180	area	אֵזוֹר	7
181	argue	לִטעוֹן	7
182	argument	טַעֲנָה	7
183	arise	לְהִתְעוֹרֵר	7
184	arm	זְרוֹעַ	7
185	armed	חָמוּשׁ	7
186	arms	נֶשֶׁק	7
187	army	צָבָא	7
188	around	סְבִיב	7
189	arrange	לְאַרגֵן	7
190	arrangement	הֶסדֵר	7
191	arrest	מַעְצָר	7
192	arrival	הַגָעָה	7
193	arrive	לְהַגִיעַ	7
194	art	אָמָנוּת	7
195	article	סָעִיף	7
196	artificial	מְלָאכוּתִי	7
197	artist	אָמָן	7
198	artistic	אָמָנוּתִי	7
199	as	כְּמוֹ	7
200	ashamed	מְבוּיָשׁ	7
201	ask	לִשְׁאוֹל	7
202	asleep	יָשֵׁן	7
203	aspect	אַספֶּקט	7
204	assess	לְהַעֲרִיך	7
205	assessment	הַעֲרָכָה	7
206	assignment	מְשִׁימָה	7
207	assist	לַעֲזוֹר	7
208	assistant	עוֹזֵר	7
209	associate	חָבֵר	7
210	associated	משויך	7
211	association	אִרגוּן	7
212	assume	לְהַנִיחַ	7
213	at	בְּ-	7
214	athlete	אַתלֵט	7
215	atmosphere	אַטמוֹספֵרָה	7
216	attach	לְצַרֵף	7
217	attack	לִתְקוֹף	7
218	attempt	לְנַסוֹת	7
219	attend	לְטַפֵּל	7
220	attention	תְשׁוּמַת לֵב	7
221	attitude	יַחַס	7
222	attract	לִמְשׁוֹך	7
223	attraction	מְשִׁיכָה	7
224	attractive	מוֹשֵׁך	7
225	audience	קהל	7
226	august	אוֹגוּסט	7
227	aunt	דוֹדָה	7
228	author	מְחַבֵּר	7
229	authority	רְשׁוּת	7
230	autumn	סתָיו	7
231	available	זָמִין	7
232	average	מְמוּצָע	7
233	avoid	לְהִמָנַע	7
234	award	פְּרָס	7
235	aware	מוּדָע	7
236	away	רָחוֹק	7
237	awful	נוֹרָא	7
238	baby	תִינוֹק	7
239	back	בְּחֲזָרָה	7
240	background	רֶקַע	7
241	backwards	אֲחוֹרָה	7
242	bacteria	בַּקטֶרִיָה	7
243	bad	רַע	7
244	badly	בצורה גרועה	7
245	bag	תִיק	7
246	bake	לֶאֱפוֹת	7
247	balance	לְאַזֵן	7
248	ball	כַּדוּר	7
249	ban	לֶאֱסוֹר	7
250	banana	בָּנָנָה	7
251	band	לְהִתְאַגֵד	7
252	bank	בַּנק	7
253	bar	בַּר	7
254	barrier	מַחסוֹם	7
255	base	בָּסִיס	7
256	baseball	כַּדוּר בָּסִיס	7
257	based	מְבוּסָס	7
258	basic	בְּסִיסִי	7
259	basically	בעצם	7
260	basis	בָּסִיס	7
261	basketball	כַּדוּרסַל	7
262	bath	מֶרחָץ	7
263	bathroom	חֲדַר אַמְבַּטִיָה	7
264	battery	סוֹלְלָה	7
265	battle	קְרָב	7
266	be	לִהיוֹת	7
267	beach	חוֹף	7
268	bean	שְׁעוּעִית	7
269	bear	דוֹב	7
270	beat	לְהַכּוֹת	7
271	beautiful	יָפֶה	7
272	beauty	יוֹפִי	7
273	because	כִּי	7
274	become	לִהיוֹת	7
275	bed	מיטה	7
276	bedroom	חדר שינה	7
277	bee	דְבוֹרָה	7
278	beef	בָּקָר	7
279	beer	בִּירָה	7
280	before	לִפנֵי	7
281	beg	לְהִתְחַנֵן	7
282	begin	לְהַתְחִיל	7
283	beginning	רֵאשִׁית	7
284	behave	לְהִתְנַהֵג	7
285	behaviour	הִתְנַהֲגוּת	7
286	behind	מֵאָחוֹר	7
287	being	יְצוּר	7
288	belief	אֱמוּנָה	7
289	believe	לְהֶאֱמִין	7
290	bell	פַּעֲמוֹן	7
291	belong	שייך	7
292	below	לְהַלָן	7
293	belt	חֲגוֹרָה	7
294	bend	לְכּוֹפֵף	7
295	benefit	תוֹעֶלֶת	7
296	bent	כִּפּוּף	7
297	best	טוֹב בִּיוֹתֵר	7
298	bet	לְהִתְעַרֵב	7
299	better	לְשַׁפֵּר	7
300	between	בֵּין	7
301	beyond	מעבר	7
302	bicycle	אופניים	7
303	big	גָדוֹל	7
304	bike	אופניים	7
305	bill	הַצָעַת חוֹק	7
306	billion	מיליארד	7
307	bin	פַּח	7
308	biology	ביולוגיה	7
309	bird	צִפּוֹר	7
310	birth	הוּלֶדֶת	7
311	birthday	יוֹם הוּלֶדֶת	7
312	biscuit	עוּגִיָה	7
313	bit	קצת	7
314	bite	נְשִׁיכָה	7
315	bitter	מָרִיר	7
316	black	שָׁחוֹר	7
317	blame	לְהַאֲשִׁים	7
318	blank	רֵיק	7
319	blind	לְסַמֵא	7
320	block	לַחסוֹם	7
321	blog	בלוג	7
322	blonde	בְּלוֹנדִינִית	7
323	blood	דָם	7
324	blow	מַכָּה	7
325	blue	כְּחוֹל	7
326	board	לוּחַ	7
327	boat	סִירָה	7
328	body	גוּף	7
329	boil	רְתִיחָה	7
330	bomb	פְּצָצָה	7
331	bond	קֶשֶׁר	7
332	bone	עֶצֶם	7
333	book	סֵפֶר	7
334	boot	מַגָף	7
335	border	גְבוּל	7
336	bored	מְשׁוּעֲמָם	7
337	boring	מְשַׁעֲמֵם	7
338	born	נוֹלָד	7
339	borrow	לִלווֹת	7
340	boss	בּוֹס	7
341	both	שְׁנֵיהֶם	7
342	bother	לְהטרִיד	7
343	bottle	בַּקבּוּק	7
344	bottom	תַחתִית	7
345	bowl	קְעָרָה	7
346	box	קוּפסָה	7
347	boy	יֶלֶד	7
348	boyfriend	הֶחָבֵר	7
349	brain	מוֹחַ	7
350	branch	עָנָף	7
351	brand	מותג	7
352	brave	אַמִיץ	7
353	bread	לֶחֶם	7
354	break	לִשְׁבּוֹר	7
355	breakfast	ארוחת בוקר	7
356	breast	חָזֶה	7
357	breath	נְשִׁימָה	7
358	breathe	לִנְשׁוֹם	7
359	breathing	נְשִׁימָה	7
360	bride	כַּלָה	7
361	bridge	לְגַשֵׁר	7
362	brief	קָצָר	7
363	bright	בָּהִיר	7
364	brilliant	מַברִיק	7
365	bring	לְהָבִיא	7
366	broad	רָחָב	7
367	broadcast	מִשׁדָר	7
368	broken	שָׁבוּר	7
369	brother	אָח	7
370	brown	חוּם	7
371	brush	מִברֶשֶׁת	7
372	bubble	בּוּעָה	7
373	budget	תַקצִיב	7
374	build	לִבנוֹת	7
375	building	בִּניָן	7
376	bullet	כַּדוּר	7
377	bunch	צְרוֹר	7
378	burn	לִשְׂרוֹף	7
379	bury	לִקְבּוֹר	7
380	bus	אוֹטוֹבּוּס	7
381	bush	שִׂיחַ	7
382	business	עֵסֶק	7
383	businessman	אִישׁ עַסָקִים	7
384	busy	עָסוּק	7
385	but	אֲבָל	7
386	butter	חֶמאָה	7
387	button	לַחְצָן	7
388	buy	לִקְנוֹת	7
389	by	עַל יְדֵי	7
390	bye	ביי	7
391	cable	כֶּבֶל	7
392	cafe	בֵּית קָפֶה	7
393	cake	עוּגָה	7
394	calculate	לְחַשֵׁב	7
395	call	שִׂיחָה	7
396	calm	לְהַרְגִיעַ	7
397	camera	מַצלֵמָה	7
398	camp	מַחֲנֶה	7
399	campaign	מַסָע	7
400	camping	קֶמפִּינג	7
401	campus	קַמפּוּס	7
402	can	פַּחִית	7
403	cancel	לְבַטֵל	7
404	cancer	סַרְטָן	7
405	candidate	מוּעֲמָד	7
406	cannot	לא יכול	7
407	cap	כּוֹבַע	7
408	capable	מְסוּגָל	7
409	capacity	יְכוֹלֶת	7
410	capital	הוֹן	7
411	captain	סֶרֶן	7
412	capture	לִלְכּוֹד	7
413	car	מְכוֹנִית	7
414	card	כַּרְטִיס	7
415	care	לְטַפֵּל	7
416	career	קריירה	7
417	careful	זָהִיר	7
418	carefully	בזהירות	7
419	careless	רַשְׁלָנִי	7
420	carpet	שָׁטִיחַ	7
421	carrot	גֶזֶר	7
422	carry	לשאת	7
423	cartoon	קָרִיקָטוּרָה	7
424	case	מִקרֶה	7
425	cash	מְזוּמָנִים	7
426	cast	יָצוּק	7
427	castle	טִירָה	7
428	cat	חָתוּל	7
429	catch	לִתְפּוֹס	7
430	category	קָטֵגוֹרִיָה	7
431	cause	לִגרוֹם	7
432	cd	CD	7
433	ceiling	תִקרָה	7
434	celebrate	לַחֲגוֹג	7
435	celebration	חֲגִיגָה	7
436	celebrity	אִישִׁיוּת מְפוּרְסֶמֶת	7
437	cell	תָא	7
438	cent	סֶנט	7
439	central	מֶרכָּזִי	7
440	centre	מֶרְכָּז	7
441	century	מֵאָה	7
442	ceremony	טֶקֶס	7
443	certain	מְסוּיָם	7
444	certainly	בְּהֶחלֵט	7
445	chain	שַׁרשֶׁרֶת	7
446	chair	כִּסֵא	7
447	chairman	יוֹשֵׁב רֹאשׁ	7
448	challenge	אֶתגָר	7
449	champion	אַלוּף	7
450	chance	הִזדַמְנוּת	7
451	change	לְשַׁנוֹת	7
452	channel	עָרוּץ	7
453	chapter	פֶּרֶק	7
454	character	אוֹפִי	7
455	characteristic	מְאַפיֵן	7
456	charge	תַשְׁלוּם	7
457	charity	צְדָקָה	7
458	chart	תַרשִׁים	7
459	chat	לְשׂוֹחֵחַ	7
460	cheap	זוֹל	7
461	cheat	לְרַמוֹת	7
462	check	לִבדוֹק	7
463	cheerful	עַלִיז	7
464	cheese	גְבִינָה	7
465	chef	שֶׁף	7
466	chemical	כִּימִי	7
467	chemistry	כִּימִיָה	7
468	chest	חָזֶה	7
469	chicken	עוֹף	7
470	chief	רֹאשׁ	7
471	child	יֶלֶד	7
472	childhood	יַלדוּת	7
473	chip	שְׁבָב	7
474	chocolate	שׁוֹקוֹלַד	7
475	choice	בְּחִירָה	7
476	choose	לִבחוֹר	7
477	church	כְּנֵסִיָה	7
478	cigarette	סִיגַרִיָה	7
479	cinema	קוֹלנוֹעַ	7
480	circle	מַעְגָל	7
481	circumstance	נסיבות	7
482	cite	לְצַטֵט	7
483	citizen	אֶזרָח	7
484	city	עִיר	7
485	civil	אֶזרָחִי	7
486	claim	תְבִיעָה	7
487	class	מַחלָקָה	7
488	classic	קלַאסִי	7
489	classical	קלַאסִי	7
490	classroom	בכיתה	7
491	clause	סָעִיף	7
492	clean	לְנַקוֹת	7
493	clear	בָּרוּר	7
494	clearly	בְּבִירוּר	7
495	clever	חָכָם	7
496	click	נְקִישָׁה	7
497	client	לָקוּחַ	7
498	climate	אַקלִים	7
499	climb	לְטַפֵּס	7
500	clock	שָׁעוֹן	7
501	close	לִסְגוֹר	7
502	closed	סָגוּר	7
503	closely	מקרוב	7
504	cloth	בַּד	7
505	clothes	בגדים	7
506	clothing	הַלבָּשָׁה	7
507	cloud	עָנָן	7
508	club	מוֹעֲדוֹן	7
509	clue	רֶמֶז	7
510	coach	מְאַמֵן	7
511	coal	פֶּחָם	7
512	coast	חוֹף	7
513	coat	מְעִיל	7
514	code	קוד	7
515	coffee	קָפֶה	7
516	coin	מַטְבֵּעַ	7
517	cold	קַר	7
518	collapse	הִתמוֹטְטוּת	7
519	colleague	עָמִית	7
520	collect	לֶאֱסוֹף	7
521	collection	גְבִיָה	7
522	college	מִכלָלָה	7
523	colour	צֶבַע	7
524	coloured	צבעוני	7
525	column	עַמוּדָה	7
526	combination	קוֹמבִּינַצִיָה	7
527	combine	לְשַׁלֵב	7
528	come	לָבוֹא	7
529	comedy	קוֹמֶדִיָה	7
530	comfort	נוֹחוּת	7
531	comfortable	נוֹחַ	7
532	command	פְּקוּדָה	7
533	comment	הֶעָרָה	7
534	commercial	מִסְחָרִי	7
535	commission	עֲמָלָה	7
536	commit	לְבַצֵעַ	7
537	commitment	מְחוּיָבוּת	7
538	committee	וַעֲדָה	7
539	common	מְשׁוּתָף	7
540	commonly	בדרך כלל	7
541	communicate	לְהַעֲבִיר	7
542	communication	תִקשׁוֹרֶת	7
543	community	קהילה	7
544	company	חֶברָה	7
545	compare	לְהַשְׁווֹת	7
546	comparison	השוואה	7
547	compete	לְהִתְחַרוֹת	7
548	competition	תַחֲרוּת	7
549	competitive	תַחֲרוּתִי	7
550	competitor	מִתחָרֶה	7
551	complain	לְהִתְלוֹנֵן	7
552	complaint	תְלוּנָה	7
553	complete	לְהַשְׁלִים	7
554	completely	לַחֲלוּטִין	7
555	complex	מוּרכָּב	7
556	complicated	מְסוּבָּך	7
557	component	רְכִיב	7
558	computer	מַחשֵׁב	7
559	concentrate	לְהִתְרַכֵּז	7
560	concentration	ריכוז	7
561	concept	מוּשָׂג	7
562	concern	דְאָגָה	7
563	concerned	מוּדְאָג	7
564	concert	קוֹנצֶרט	7
565	conclude	לְהַסִיק	7
566	conclusion	מַסְקָנָה	7
567	condition	מַצָב	7
568	conduct	הִתְנַהֲגוּת	7
569	conference	וְעִידָה	7
570	confidence	אֵמוּן	7
571	confident	בַּטוּחַ	7
572	confirm	לְאַשֵׁר	7
573	conflict	סְתִירָה	7
574	confuse	לְבַלבֵּל	7
575	confused	מְבוּלבָּל	7
576	confusing	מְבַלבֵּל	7
577	connect	לְחַבֵּר	7
578	connected	מְחוּבָּר	7
579	connection	קֶשֶׁר	7
580	conscious	מוּדָע	7
581	consequence	תוֹצָאָה	7
582	conservative	שַׁמְרָנִי	7
583	consider	לִשְׁקוֹל	7
584	consideration	הִתחַשְׁבוּת	7
585	consist	לְהַכִיל	7
586	consistent	עִקבִי	7
587	constant	קָבוּעַ	7
588	constantly	תָמִיד	7
589	construct	לִבנוֹת	7
590	construction	בְּנִיָה	7
591	consume	לִצְרוֹך	7
592	consumer	צַרכָן	7
593	contact	מַגָע	7
594	contain	לְהַכִיל	7
595	container	מְכוֹלָה	7
596	contemporary	עַכשָׁוִי	7
597	content	תוֹכֶן	7
598	contest	תַחֲרוּת	7
599	context	הֶקשֵׁר	7
600	continent	יַבֶּשֶׁת	7
601	continue	לְהַמשִׁיך	7
602	continuous	רָצִיף	7
603	contract	חוֹזֶה	7
604	contrast	לְהַשְׁווֹת	7
605	contribute	לִתְרוֹם	7
606	contribution	תְרוּמָה	7
607	control	לִשְׁלוֹט	7
608	convenient	נוֹחַ	7
609	conversation	שִׂיחָה	7
610	convert	לְהַמִיר	7
611	convince	לְשַׁכְנֵעַ	7
612	convinced	מְשׁוּכנָע	7
613	cook	לְבַשֵׁל	7
614	cooker	מְבַשֵׁל	7
615	cooking	בישול	7
616	cool	לְהִתְקַרֵר	7
617	copy	לְהַעְתִיק	7
618	core	ליבה	7
619	corner	קֶרֶן	7
620	corporate	תאגיד	7
621	correct	נָכוֹן	7
622	correctly	נְכוֹנָה	7
623	cost	עֲלוּת	7
624	costume	תִלְבּוֹשֶׁת	7
625	cottage	קוֹטֶג'	7
626	cotton	כּוּתנָה	7
627	could	הָיָה יָכוֹל	7
628	council	מועצה	7
629	count	לִסְפּוֹר	7
630	country	מְדִינָה	7
631	countryside	אֵזוֹר כָּפרִי	7
632	county	מָחוֹז	7
633	couple	זוּג	7
634	courage	גְבוּרָה	7
635	course	קוּרס	7
636	court	לְחַזֵר	7
637	cousin	בֶּן דוֹד	7
638	cover	לְכַסוֹת	7
639	covered	מְכוּסֶה	7
640	cow	פָּרָה	7
641	crash	לְהִתְרַסֵק	7
642	crazy	מְטוּרָף	7
643	cream	קרֶם	7
644	create	לִיצוֹר	7
645	creation	יְצִירָה	7
646	creative	יְצִירָתִי	7
647	creature	יְצוּר	7
648	credit	אַשׁרַאי	7
649	crew	צוות	7
650	crime	פֶּשַׁע	7
651	criminal	פְּלִילִי	7
652	crisis	מַשׁבֵּר	7
653	criterion	קרִיטֶרִיוֹן	7
654	critic	מְבַקֵר	7
655	critical	קרִיטִי	7
656	criticism	בִּקוֹרֶת	7
657	criticize	לְבַקֵר	7
658	crop	יְבוּל	7
659	cross	לַחֲצוֹת	7
660	crowd	קָהָל	7
661	crowded	צָפוּף	7
662	crucial	מַכרִיעַ	7
663	cruel	אַכְזָרִי	7
664	cry	לִבכּוֹת	7
665	cultural	תַרְבּוּתִי	7
666	culture	תַרְבּוּת	7
667	cup	גָבִיעַ	7
668	cupboard	אָרוֹן	7
669	cure	לְרַפֵּא	7
670	curly	מְתוּלתָל	7
671	currency	מַטְבֵּעַ	7
672	current	נוֹכְחִי	7
673	currently	כַּיוֹם	7
674	curtain	וִילוֹן	7
675	curve	עֲקוּמָה	7
676	curved	מְעוּקָל	7
677	custom	מִנְהָג	7
678	customer	לָקוּחַ	7
679	cut	גְזִירָה	7
680	cycle	מַחזוֹר	7
681	dad	אַבָּא	7
682	daily	יוֹמִי	7
683	damage	נֵזֶק	7
684	dance	לִרְקוֹד	7
685	dancer	רַקדָן	7
686	dancing	ריקוד	7
687	danger	סַכָּנָה	7
688	dangerous	מְסוּכָּן	7
689	dark	כֵּהֶה	7
690	data	נְתוּנִים	7
691	date	תַאֲרִיך	7
692	daughter	בַּת	7
693	day	יְוֹם	7
694	dead	מֵת	7
695	deal	עִסקָה	7
696	dear	יָקָר	7
697	death	מָוֶת	7
698	debate	דִיוּן	7
699	debt	חוֹב	7
700	decade	עָשׂוֹר	7
701	december	דֵצֶמבֶּר	7
702	decent	הָגוּן	7
703	decide	לְהַחלִיט	7
704	decision	הַחְלָטָה	7
705	declare	לְהַכרִיז	7
706	decline	יְרִידָה	7
707	decorate	לְקַשֵׁט	7
708	decoration	תַפאוּרָה	7
709	decrease	לְהַקְטִין	7
710	deep	עָמוֹק	7
711	deeply	לְעוֹמֶק	7
712	defeat	לִהַבִיס	7
713	defence	הֲגָנָה	7
714	defend	לְהַגֵן	7
715	define	לְהַגדִיר	7
716	definite	מוּגדָר	7
717	definitely	בְּהֶחלֵט	7
718	definition	הַגדָרָה	7
719	degree	תוֹאַר	7
720	delay	לְעַכֵּב	7
721	deliberate	מְכוּוָן	7
722	deliberately	בכוונה	7
723	delicious	טָעִים מְאוֹד	7
724	delight	תַעֲנוּג	7
725	delighted	שַׂמֵחַ	7
726	deliver	לִמְסוֹר	7
727	delivery	מְסִירָה	7
728	demand	לִדרוֹשׁ	7
729	demonstrate	לְהַפְגִין	7
730	dentist	רופא שיניים	7
731	deny	לְהַכּחִישׁ	7
732	department	מַחלָקָה	7
733	departure	יְצִיאָה	7
734	depend	לִסְמוֹך	7
735	depressed	מְדוּכָּא	7
736	depressing	מְדַכֵּא	7
737	depth	עוֹמֶק	7
738	describe	לְתַאֵר	7
739	description	תֵאוּר	7
740	desert	מִדבָּר	7
741	deserve	ראוי	7
742	design	לְעַצֵב	7
743	designer	מְעַצֵב	7
744	desire	תְשׁוּקָה	7
745	desk	שׁוּלְחָן כְּתִיבָה	7
746	desperate	נוֹאָשׁ	7
747	despite	לַמרוֹת	7
748	destination	יַעַד	7
749	destroy	לְהַשְׁמִיד	7
750	detail	פְּרָט	7
751	detailed	מְפוֹרָט	7
752	detect	לְגַלוֹת	7
753	detective	בַּלָשׁ	7
754	determine	לִקְבּוֹעַ	7
755	determined	נָחוּשׁ	7
756	develop	לְפַתֵחַ	7
757	development	הִתפַּתְחוּת	7
758	device	הֶתקֵן	7
759	diagram	תַרשִׁים	7
760	dialogue	דִיאָלוֹג	7
761	diamond	יַהֲלוֹם	7
762	diary	יְוֹמָן	7
763	dictionary	מילון	7
764	die	לָמוּת	7
765	diet	דִיאֵטָה	7
766	difference	הֶבדֵל	7
767	different	שׁוֹנֶה	7
768	differently	אחרת	7
769	difficult	קָשֶׁה	7
770	difficulty	קוֹשִׁי	7
771	dig	לַחפּוֹר	7
772	digital	דִיגִיטָלי	7
773	dinner	אֲרוּחַת עֶרֶב	7
774	direct	יָשִׁיר	7
775	direction	כיוון	7
776	directly	יָשִׁירוֹת	7
777	director	מְנַהֵל	7
778	dirt	עָפָר	7
779	dirty	מְלוּכלָך	7
780	disadvantage	חִסָרוֹן	7
781	disagree	לֹא לְהַסכִּים	7
782	disappear	לְהֵעָלֵם	7
783	disappointed	מְאוּכזָב	7
784	disappointing	מְאַכזֵב	7
785	disaster	אָסוֹן	7
786	disc	דיסק	7
787	discipline	מִשְׁמַעַת	7
788	discount	דִיסקוֹנט	7
789	discover	לְגַלוֹת	7
790	discovery	תַגלִית	7
791	discuss	לָדוּן	7
792	discussion	דִיוּן	7
793	disease	מַחֲלָה	7
794	dish	צַלַחַת	7
795	dishonest	לֹא יָשָׁר	7
796	dislike	לִשְׂנוֹא	7
797	dismiss	לְפַטֵר	7
798	display	לְהַצִיג	7
799	distance	מֶרְחָק	7
800	distribute	לְהָפִיץ	7
801	distribution	הֲפָצָה	7
802	district	מָחוֹז	7
803	divide	לְחַלֵק	7
804	division	חֲלוּקָה	7
805	divorced	גרושה	7
806	do	לַעֲשׂוֹת	7
807	doctor	דוֹקטוֹר	7
808	document	מִסְמָך	7
809	documentary	תְעוּדָה	7
810	dog	כֶּלֶב	7
811	dollar	דוֹלָר	7
812	domestic	בֵּיתִי	7
813	dominate	לִשְׁלוֹט	7
814	donate	לִתְרוֹם	7
815	door	דֶלֶת	7
816	double	לְהַכפִּיל	7
817	doubt	סָפֵק	7
818	down	לְמַטָה	7
819	download	להוריד	7
820	downstairs	לְמַטָה	7
821	downwards	כלפי מטה	7
822	dozen	תְרֵיסַר	7
823	draft	טְיוּטָה	7
824	drag	לִגרוֹר	7
825	drama	דְרָמָה	7
826	dramatic	דְרָמָטִי	7
827	draw	לִמְשׁוֹך	7
828	drawing	צִיוּר	7
829	dream	חֲלוֹם	7
830	dress	לְהִתְלַבֵּשׁ	7
831	dressed	לָבוּשׁ	7
832	drink	לִשְׁתוֹת	7
833	drive	לִנְהוֹג	7
834	driver	נֶהָג	7
835	driving	נְהִיגָה	7
836	drop	יְרִידָה	7
837	drug	תְרוּפָה	7
838	drum	תוֹף	7
839	drunk	שָׁתוּי	7
840	dry	יָבֵשׁ	7
841	due	בשל	7
842	during	בְּמַהֲלָך	7
843	dust	אָבָק	7
844	duty	חוֹבָה	7
845	dvd	DVD	7
846	each	כֹּל	7
847	ear	אֹזֶן	7
848	early	מוּקדָם	7
849	earn	לִזכּוֹת	7
850	earth	כַּדוּר הָאָרֶץ	7
851	earthquake	רְעִידַת אֲדָמָה	7
852	easily	בְּקַלוּת	7
853	east	מִזְרָח	7
854	eastern	מִזְרָחִי	7
855	easy	קַל	7
856	eat	לֶאֱכוֹל	7
857	economic	כַּלְכָּלִי	7
858	economy	כַּלְכָּלָה	7
859	edge	קָצֶה	7
860	edit	לַעֲרוֹך	7
861	edition	מַהֲדוּרָה	7
862	editor	עוֹרֵך	7
863	educate	לְחַנֵך	7
864	educated	מְחוּנָך	7
865	education	הַשׂכָּלָה	7
866	educational	חינוכית	7
867	effect	אֵפֶקְט	7
868	effective	יָעִיל	7
869	effectively	ביעילות	7
870	efficient	יָעִיל	7
871	effort	מַאֲמָץ	7
872	egg	בֵּיצָה	7
873	eight	שְׁמוֹנֶה	7
874	eighteen	שְׁמוֹנֶה עֶשְׂרֵה	7
875	eighty	שְׁמוֹנִים	7
876	either	אוֹ	7
877	elderly	קָשִׁישׁ	7
878	elect	לִבחוֹר	7
879	election	בְּחִירָה	7
880	electric	חַשׁמַלִי	7
881	electrical	חַשׁמַלִי	7
882	electricity	חַשְׁמַל	7
883	electronic	אֶלֶקטרוֹנִי	7
884	element	אֵלֵמֶנט	7
885	elephant	פִּיל	7
886	eleven	אַחַד עָשָׂר	7
887	else	אַחֵר	7
888	elsewhere	בְּמָקוֹם אַחֵר	7
889	email	אֶלֶקטרוֹנִי	7
890	embarrassed	נָבוֹך	7
891	embarrassing	מֵבִיך	7
892	emerge	לָצֵאת	7
893	emergency	חֵרוּם	7
894	emotion	רֶגֶשׁ	7
895	emotional	רִגשִׁי	7
896	emphasis	דָגֵשׁ	7
897	emphasize	לְהַדגִישׁ	7
898	employ	לְהַעֲסִיק	7
899	employee	עוֹבֵד	7
900	employer	מַעֲסִיק	7
901	employment	תַעֲסוּקָה	7
902	empty	רֵיק	7
903	enable	לְאַפשֵׁר	7
904	encounter	פְּגִישָׁה	7
905	encourage	לְעוֹדֵד	7
906	end	סוֹף	7
907	ending	סִיוּם	7
908	enemy	אוֹיֵב	7
909	energy	אֵנֶרְגִיָה	7
910	engage	לְהַעֲסִיק	7
911	engaged	מְאוּרָס	7
912	engine	מָנוֹעַ	7
913	engineer	מְהַנדֵס	7
914	engineering	הַנדָסָה	7
915	enhance	לְהַגבִּיר	7
916	enjoy	ליהנות	7
917	enormous	עֲנָקִי	7
918	enough	מַסְפִּיק	7
919	enquiry	חֲקִירָה	7
920	ensure	לְהַבטִיחַ	7
921	enter	לְהַכנִיס	7
922	entertain	לְבַדֵר	7
923	entertainment	בידור	7
924	enthusiasm	הִתלַהֲבוּת	7
925	enthusiastic	נִלהָב	7
926	entire	שָׁלֵם	7
927	entirely	לַחֲלוּטִין	7
928	entrance	כְּנִיסָה	7
929	entry	כְּנִיסָה	7
930	environment	סְבִיבָה	7
931	environmental	סְבִיבָתִי	7
932	episode	אֶפִּיזוֹדָה	7
933	equal	לְהִשְׁתַווֹת	7
934	equally	באותה מידה	7
935	equipment	צִיוּד	7
936	error	שְׁגִיאָה	7
937	escape	לִברוֹחַ	7
938	especially	בִּמְיוּחָד	7
939	essay	מַסָה	7
940	essential	חִיוּנִי	7
941	establish	לְהַקִים	7
942	estate	נְכָסִים	7
943	estimate	לְהַעֲרִיך	7
944	ethical	אֶתִי	7
945	euro	יוֹרוֹ	7
946	evaluate	לְהַעֲרִיך	7
947	even	אֲפִילוּ	7
948	evening	עֶרֶב	7
949	event	מִקרֶה	7
950	eventually	בסופו של דבר	7
951	ever	אֵיִ פַּעַם	7
952	every	כֹּל	7
953	everybody	כּוּלָם	7
954	everyday	כל יום	7
955	everyone	כֹּל אֶחָד	7
956	everything	הַכֹּל	7
957	everywhere	בְּכָל מָקוֹם	7
958	evidence	עֵדוּת	7
959	evil	רַע	7
960	exact	מְדוּיָק	7
961	exactly	בְּדִיוּק	7
962	exam	בְּחִינָה	7
963	examination	בְּדִיקָה	7
964	examine	לִבחוֹן	7
965	example	דוּגמָה	7
966	excellent	מְעוּלֶה	7
967	except	אֶלָא	7
968	exchange	לְהַחלִיף	7
969	excited	נִרגָשׁ	7
970	excitement	הִתרַגְשׁוּת	7
971	exciting	מְרַגֵשׁ	7
972	excuse	סְלִיחָה	7
973	executive	מְנַהֵל	7
974	exercise	תַרגִיל	7
975	exhibition	תַעֲרוּכָה	7
976	exist	לְהִתְקַיֵם	7
977	existence	קִיוּם	7
978	expand	לְהַרְחִיב	7
979	expect	לְצַפּוֹת	7
980	expectation	תוֹחֶלֶת	7
981	expected	צָפוּי	7
982	expedition	מִשׁלַחַת	7
983	expense	הוֹצָאָה	7
984	expensive	יָקָר	7
985	experience	הִתנַסוּת	7
986	experienced	מְנוּסֶה	7
987	experiment	לְנַסוֹת	7
988	expert	מוּמחֶה	7
989	explain	לְהַסבִּיר	7
990	explanation	הֶסבֵּר	7
991	explode	לְהִתְפּוֹצֵץ	7
992	exploration	חֲקִירָה	7
993	explore	לַחקוֹר	7
994	explosion	הִתְפּוֹצְצוּת	7
995	export	יְצוּא	7
996	expose	לַחשׂוֹף	7
997	express	אֶקְסְפּרֶס	7
998	expression	הַבָּעָה	7
999	extend	לְהַאֲרִיך	7
1000	extent	היקף	7
1001	external	חִיצוֹנִי	7
1002	extra	תוֹסֶפֶת	7
1003	extraordinary	יוֹצֵא דוֹפֶן	7
1004	extreme	קיצוני	7
1005	extremely	מְאוֹד	7
1006	eye	עַיִן	7
1007	face	פָּנִים	7
1008	facility	מִתקָן	7
1009	fact	עוּבדָה	7
1010	factor	גוֹרֵם	7
1011	factory	מִפְעָל	7
1012	fail	לְהִכָּשֵׁל	7
1013	failure	כֶּשֶׁל	7
1014	fair	הוֹגֶן	7
1015	fairly	לְמַדַי	7
1016	faith	אֱמוּנָה	7
1017	fall	סתָיו	7
1018	FALSE	שֶׁקֶר	7
1019	familiar	מוּכָּר	7
1020	family	מִשׁפָּחָה	7
1021	famous	מְפוּרסָם	7
1022	fan	מְנִיפָה	7
1023	fancy	לְחַבֵּב	7
1024	fantastic	פַנטַסטִי	7
1025	far	רָחוֹק	7
1026	farm	לְעַבֵּד	7
1027	farmer	חַקלאַי	7
1028	farming	חַקלָאוּת	7
1029	fascinating	מַקסִים	7
1030	fashion	לְעַצֵב	7
1031	fashionable	אופנתי	7
1032	fast	מָהִיר	7
1033	fasten	לְהַדֵק	7
1034	fat	שׁוּמָן	7
1035	father	אַבָּא	7
1036	fault	תַקָלָה	7
1037	favour	טוֹבָה	7
1038	favourite	מוּעֲדָף	7
1039	fear	פַּחַד	7
1040	feather	נוֹצָה	7
1041	feature	תכונה	7
1042	february	פֶבּרוּאָר	7
1043	fee	תַשְׁלוּם	7
1044	feed	לְהַאֲכִיל	7
1045	feedback	מָשׁוֹב	7
1046	feel	תְחוּשָׁה	7
1047	feeling	מַרגִישׁ	7
1048	fellow	עָמִית	7
1049	female	נְקֵבָה	7
1050	fence	גָדֵר	7
1051	festival	פֶסטִיבָל	7
1052	few	מְעַטִים	7
1053	fiction	פִיקצִיָה	7
1054	field	שָׂדֶה	7
1055	fifteen	חֲמֵשׁ עֶשׂרֵה	7
1056	fifth	חֲמִישִׁית	7
1057	fifty	חֲמִישִׁים	7
1058	fight	מַאֲבָק	7
1059	fighting	לְחִימָה	7
1060	figure	דְמוּת	7
1061	file	קוֹבֶץ	7
1062	fill	לְמַלֵא	7
1063	film	סֶרֶט	7
1064	final	סוֹפִי	7
1065	finally	לְבָסוֹף	7
1066	finance	לְמַמֵן	7
1067	financial	כַּספִּי	7
1068	find	לִמצוֹא	7
1069	finding	מִמצָא	7
1070	fine	עָדִין	7
1071	finger	אֶצבַּע	7
1072	finish	סִיוּם	7
1073	fire	אֵשׁ	7
1074	firm	מוּצָק	7
1075	first	רֵאשִׁית	7
1076	firstly	קוֹדֶם כֹּל	7
1077	fish	לָדוּג	7
1078	fishing	דַיִג	7
1079	fit	לְהַתְאִים	7
1080	fitness	הַתאָמָה	7
1081	five	חָמֵשׁ	7
1082	fix	לִקְבּוֹעַ	7
1083	fixed	קָבוּעַ	7
1084	flag	דֶגֶל	7
1085	flame	לֶהָבָה	7
1086	flash	הֶבזֵק	7
1087	flat	שָׁטוּחַ	7
1088	flexible	גָמִישׁ	7
1089	flight	טִיסָה	7
1090	float	לָצוּף	7
1091	flood	לְהַצִיף	7
1092	floor	קוֹמָה	7
1093	flour	קֶמַח	7
1094	flow	זְרִימָה	7
1095	flower	פֶּרַח	7
1096	flu	שַׁפַעַת	7
1097	fly	לָטוּס	7
1098	flying	עַף	7
1099	focus	מוֹקֵד	7
1100	fold	לְקַפֵּל	7
1101	folding	מִתקַפֵּל	7
1102	folk	אֲנָשִׁים	7
1103	follow	לַעֲקוֹב	7
1104	following	הַבָּא	7
1105	food	מָזוֹן	7
1106	foot	רֶגֶל	7
1107	football	כַּדוּרֶגֶל	7
1108	for	עֲבוּר	7
1109	force	כּוֹחַ	7
1110	foreign	זָר	7
1111	forest	יַעַר	7
1112	forever	לָנֶצַח	7
1113	forget	לִשְׁכּוֹחַ	7
1114	forgive	לִסְלוֹחַ	7
1115	fork	מַזלֵג	7
1116	form	טוֹפֶס	7
1117	formal	רִשְׁמִי	7
1118	former	לְשֶׁעָבַר	7
1119	fortunately	לְמַרְבֶּה הַמַזָל	7
1120	fortune	מַזָל	7
1121	forty	אַרבָּעִים	7
1122	forward	קָדִימָה	7
1123	found	נמצא	7
1124	four	ארבע	7
1125	fourteen	אַרְבַּע עֶשְׂרֵה	7
1126	fourth	רְבִיעִית	7
1127	frame	מִסגֶרֶת	7
1128	free	לְשַׁחְרֵר	7
1129	freedom	חוֹפֶשׁ	7
1130	freeze	הַקפָּאָה	7
1131	frequency	תֶדֶר	7
1132	frequently	לְעִתִים קְרוֹבוֹת	7
1133	fresh	טָרִי	7
1134	friday	יוֹם שִׁישִׁי	7
1135	fridge	מְקָרֵר	7
1136	friend	חבר	7
1137	friendly	יְדִידוּתִי	7
1138	friendship	חֲבֵרוּת	7
1139	frighten	לְהַפחִיד	7
1140	frightened	נִבהָל	7
1141	frightening	מַפְחִיד	7
1142	frog	צְפַרְדֵעַ	7
1143	from	מִן	7
1144	front	חֲזִית	7
1145	frozen	קָפוּא	7
1146	fruit	פְּרִי	7
1147	fry	לְטַגֵן	7
1148	fuel	דֶלֶק	7
1149	full	מָלֵא	7
1150	fully	לְגַמרֵי	7
1151	fun	כֵּיף	7
1152	function	פוּנקצִיָה	7
1153	fund	קֶרֶן	7
1154	fundamental	יְסוֹד	7
1155	funding	מימון	7
1156	funny	מַצחִיק	7
1157	fur	פרווה	7
1158	furniture	רְהִיטִים	7
1159	further	לְקַדֵם	7
1160	furthermore	יֶתֶר עַל כֵּן	7
1161	future	עָתִידִי	7
1162	gain	לְהַשִׂיג	7
1163	gallery	גָלֶרֵיָה	7
1164	game	מִשְׂחָק	7
1165	gang	כְּנוּפִיָה	7
1166	gap	פַּעַר	7
1167	garage	מוּסָך	7
1168	garden	גַן	7
1169	gas	גַז	7
1170	gate	שַׁעַר	7
1171	gather	לֶאֱסוֹף	7
1172	general	כְּלָלִי	7
1173	generally	בְּדֶרֶך כְּלַל	7
1174	generate	לִיצוֹר	7
1175	generation	דוֹר	7
1176	generous	נָדִיב	7
1177	genre	ז'ָאנר	7
1178	gentle	עָדִין	7
1179	gentleman	ג'ֶנטֶלמֶן	7
1180	geography	גֵאוֹגרַפיָה	7
1181	get	לְקַבֵּל	7
1182	ghost	רוּחַ	7
1183	giant	עֲנָק	7
1184	gift	מַתָנָה	7
1185	girl	יַלדָה	7
1186	girlfriend	חֲבֵרָה	7
1187	give	לָתֵת	7
1188	glad	שַׂמֵחַ	7
1189	glass	זְכוּכִית	7
1190	global	גלוֹבָּלִי	7
1191	glove	כְּפָפָה	7
1192	go	לָלֶכֶת	7
1193	goal	יַעַד	7
1194	god	אֵל	7
1195	gold	זָהָב	7
1196	golf	גוֹלף	7
1197	good	טוֹב	7
1198	goodbye	להתראות	7
1199	goods	סְחוֹרוֹת	7
1200	govern	לִמשְׁוֹל	7
1201	government	מֶמְשָׁלָה	7
1202	grab	לִתְפּוֹס	7
1203	grade	צִיוּן	7
1204	gradually	בְּהַדרָגָה	7
1205	graduate	בּוֹגֵר	7
1206	grain	תְבוּאָה	7
1207	grand	גָדוֹל	7
1208	grandfather	סָבָּא	7
1209	grandmother	סַבתָא	7
1210	grandparent	סָבָּא אוֹ סָבתָא	7
1211	grant	מַעֲנָק	7
1212	grass	דֶשֶׁא	7
1213	grateful	אֲסִיר תוֹדָה	7
1214	great	גָדוֹל	7
1215	green	יָרוֹק	7
1216	greet	לְבָרֵך	7
1217	grey	אָפוֹר	7
1218	ground	טָחוּן	7
1219	group	קְבוּצָה	7
1220	grow	לִגדוֹל	7
1221	growth	צְמִיחָה	7
1222	guarantee	אַחֲרָיוּת	7
1223	guard	מִשׁמָר	7
1224	guess	לְנַחֵשׁ	7
1225	guest	אוֹרֵחַ	7
1226	guide	מַדְרִיך	7
1227	guilty	אָשֵׁם	7
1228	guitar	גִיטָרָה	7
1229	gun	אֶקְדָח	7
1230	guy	בָּחוּר	7
1231	gym	חדר כושר	7
1232	habit	הֶרגֵל	7
1233	hair	שֵׂעַר	7
1234	half	חֲצִי	7
1235	hall	אוּלָם	7
1236	hand	יָד	7
1237	handle	יָדִית	7
1238	hang	לִתְלוֹת	7
1239	happen	לִקְרוֹת	7
1240	happily	בְּשִׂמחָה	7
1241	happiness	שִׂמְחָה	7
1242	happy	שַׂמֵחַ	7
1243	hard	קָשֶׁה	7
1244	hardly	בְּקוֹשִׁי	7
1245	harm	לִפְגוֹעַ	7
1246	harmful	מַזִיק	7
1247	hat	כּוֹבַע	7
1248	hate	שִׂנאָה	7
1249	have	יש	7
1250	have to	מוּכְרָח	7
1251	he	הוּא	7
1252	head	רֹאשׁ	7
1253	headache	כְּאֵב רֹאשׁ	7
1254	headline	כּוֹתֶרֶת	7
1255	health	בְּרִיאוּת	7
1256	healthy	בָּרִיא	7
1257	hear	לִשְׁמוֹעַ	7
1258	hearing	שְׁמִיעָה	7
1259	heart	לֵב	7
1260	heat	חוֹם	7
1261	heating	הַסָקָה	7
1262	heaven	שָׁמַיִם	7
1263	heavily	בִּכְבֵדוּת	7
1264	heavy	כָּבֵד	7
1265	heel	עָקֵב	7
1266	height	גוֹבַה	7
1267	helicopter	מַסוֹק	7
1268	hell	גֵיהִנוֹם	7
1269	hello	שלום	7
1270	help	עֶזרָה	7
1271	helpful	מוֹעִיל	7
1272	her	שֶׁלָה	7
1273	here	כָּאן	7
1274	hero	גיבור	7
1275	hers	שֶׁלָה	7
1276	herself	עַצמָה	7
1277	hesitate	לְהַסֵס	7
1278	hey	היי	7
1279	hi	היי	7
1280	hide	לְהַסתִיר	7
1281	high	גָבוֹהַ	7
1282	highlight	שִׂיא	7
1283	highly	מְאוֹד	7
1284	hill	גִבעָה	7
1285	him	אוֹתוֹ	7
1286	himself	עַצמוֹ	7
1287	hire	לִשְׂכּוֹר	7
1288	his	שֶׁלוֹ	7
1289	historic	הִיסטוֹרִי	7
1290	historical	הִיסטוֹרִי	7
1291	history	הִיסטוֹרִיָה	7
1292	hit	לָהִיט	7
1293	hobby	תַחבִּיב	7
1294	hockey	הוֹקֵי	7
1295	hold	לְהַחזִיק	7
1296	hole	חוֹר	7
1297	holiday	חַג	7
1298	hollow	חָלוּל	7
1299	holy	קָדוֹשׁ	7
1300	home	בַּיִת	7
1301	homework	שִׁעוּרֵי בַּיִת	7
1302	honest	יָשָׁר	7
1303	honour	כָּבוֹד	7
1304	hope	לְקַווֹת	7
1305	horrible	מַחרִיד	7
1306	horror	חֲרָדָה	7
1307	horse	סוּס	7
1308	hospital	בֵּית חוֹלִים	7
1309	host	מְאָרֵחַ	7
1310	hot	חַם	7
1311	hotel	מָלוֹן	7
1312	hour	שָׁעָה	7
1313	house	בַּיִת	7
1314	household	בַּיִת	7
1315	housing	דִיוּר	7
1316	how	אֵיך	7
1317	however	אוּלָם	7
1318	huge	עָצוּם	7
1319	human	אֶנוֹשִׁי	7
1320	humorous	מַצחִיק	7
1321	humour	הוּמוֹר	7
1322	hundred	מֵאָה	7
1323	hungry	רָעֵב	7
1324	hunt	לָצוּד	7
1325	hunting	צַיִד	7
1326	hurricane	הוֹרִיקָן	7
1327	hurry	לְמַהֵר	7
1328	hurt	פְּגִיעָה	7
1329	husband	בַּעַל	7
1330	i	אֲנִי	7
1331	ice	קֶרַח	7
1332	ice cream	גְלִידָה	7
1333	idea	רַעְיוֹן	7
1334	ideal	אִידֵאָלִי	7
1335	identify	לְזַהוֹת	7
1336	identity	זֶהוּת	7
1337	if	אִם	7
1338	ignore	לְהִתְעַלֵם	7
1339	ill	חוֹלֶה	7
1340	illegal	בִּלתִי חוּקִי	7
1341	illness	מחלה	7
1342	illustrate	לְהַדגִים	7
1343	illustration	אִיוּר	7
1344	image	תְמוּנָה	7
1345	imaginary	דִמיוֹנִי	7
1346	imagination	דִמיוֹן	7
1347	imagine	לדמיין	7
1348	immediate	מִיָדִי	7
1349	immediately	מִיָד	7
1350	immigrant	מְהַגֵר	7
1351	impact	פְּגִיעָה	7
1352	impatient	קְצַר רוּחַ	7
1353	imply	לִרְמוֹז	7
1354	import	יְבוּא	7
1355	importance	חֲשִׁיבוּת	7
1356	important	חָשׁוּב	7
1357	impose	לֶאֱכוֹף	7
1358	impossible	בִּלתִי אֶפשָׂרִי	7
1359	impress	לְהַרְשִׁים	7
1360	impressed	טָבוּעַ	7
1361	impression	רוֹשֶׁם	7
1362	impressive	מַרשִׁים	7
1363	improve	לְשַׁפֵּר	7
1364	improvement	הַשׁבָּחָה	7
1365	in	ב	7
1366	inch	אִינְטשׁ	7
1367	incident	תַקרִית	7
1368	include	לִכלוֹל	7
1369	included	כּוֹלֵל	7
1370	including	לְרַבּוֹת	7
1371	income	הַכנָסָה	7
1372	increase	לְהַגדִיל	7
1373	increasingly	יותר ויותר	7
1374	incredible	לא ייאמן	7
1375	incredibly	בצורה מדהימה	7
1376	indeed	אָכֵן	7
1377	independent	עַצמָאִי	7
1378	indicate	לְהַצְבִּיעַ	7
1379	indirect	עָקִיף	7
1380	individual	אִישִׁי	7
1381	indoor	בתוך הבית	7
1382	indoors	בְּתוֹך הַבַּיִת	7
1383	industrial	תַעֲשִׂיָתִי	7
1384	industry	תַעֲשִׂיָה	7
1385	infection	הַדבָּקָה	7
1386	influence	לְהַשְׁפִּיעַ	7
1387	inform	לְהוֹדִיעַ	7
1388	informal	לֹא פוֹרמָלִי	7
1389	information	מֵידָע	7
1390	ingredient	מַרכִּיב	7
1391	initial	הַתחָלַתִי	7
1392	initially	בְּהַתחָלָה	7
1393	initiative	יָזמָה	7
1394	injure	לִפְגוֹעַ	7
1395	injured	נִפגָע	7
1396	injury	פְּצִיעָה	7
1397	inner	פְּנִימִי	7
1398	innocent	תָמִים	7
1399	insect	חֶרֶק	7
1400	inside	בְּתוֹך	7
1401	insight	תוֹבָנָה	7
1402	insist	לְהִתְעַקֵשׁ	7
1403	inspire	לְעוֹרֵר	7
1404	install	לְהַתְקִין	7
1405	instance	דוּגמָה	7
1406	instead	במקום זאת	7
1407	institute	מָכוֹן	7
1408	institution	מוֹסָד	7
1409	instruction	הוֹרָאָה	7
1410	instructor	מַדְרִיך	7
1411	instrument	מַכשִׁיר	7
1412	insurance	ביטוח	7
1413	intelligence	מוֹדִיעִין	7
1414	intelligent	אִינְטֶלִיגֶנְטִי	7
1415	intend	מתכוון	7
1416	intended	מְיוּעָד	7
1417	intense	אִינטֶנסִיבִי	7
1418	intention	מַטָרָה	7
1419	interest	אִינטֶרֶס	7
1420	interested	מתעניינים	7
1421	interesting	מעניין	7
1422	internal	פְּנִימִי	7
1423	international	בינלאומי	7
1424	internet	לַאִינטֶרנֶט	7
1425	interpret	לְפַרֵשׁ	7
1426	interrupt	לְהַפְרִיעַ	7
1427	interview	רֵאָיוֹן	7
1428	into	לְתוֹך	7
1429	introduce	לְהַצִיג	7
1430	introduction	מָבוֹא	7
1431	invent	לִהַמצִיא	7
1432	invention	הַמצָאָה	7
1433	invest	לְהַשְׁקִיעַ	7
1434	investigate	לַחקוֹר	7
1435	investigation	חֲקִירָה	7
1436	investment	הַשׁקָעָה	7
1437	invitation	הַזמָנָה	7
1438	invite	לְהַזמִין	7
1439	involve	לְעַרֵב	7
1440	involved	מְעוּרָב	7
1441	iron	בַּרזֶל	7
1442	island	אִי	7
1443	issue	לְהַנפִּיק	7
1444	it	זֶה	7
1445	item	פָּרִיט	7
1446	its	שֶׁלָה	7
1447	itself	עצמו	7
1448	jacket	ז'ָקֵט	7
1449	jam	לִדחוֹס	7
1450	january	יָנוּאָר	7
1451	jazz	ג'ֶז	7
1452	jeans	גִ'ינס	7
1453	jewellery	תַכשִׁיטִים	7
1454	job	מִשׂרָה	7
1455	join	לְהִצְטַרֵף	7
1456	joke	בְּדִיחָה	7
1457	journal	כְּתַב הָעֵת	7
1458	journalist	עִתוֹנָאִי	7
1459	journey	מַסָע	7
1460	joy	שִׂמְחָה	7
1461	judge	לִשְׁפּוֹט	7
1462	judgement	פְּסַק דִין	7
1463	juice	מִיץ	7
1464	july	יוּלִי	7
1465	jump	קְפִיצָה	7
1466	june	יוּנִי	7
1467	junior	זוּטָר	7
1468	just	רַק	7
1469	justice	צֶדֶק	7
1470	justify	לְהַצְדִיק	7
1471	keen	נִלהָב	7
1472	keep	לִשְׁמוֹר	7
1473	key	מַפְתֵחַ	7
1474	keyboard	מִקלֶדֶת	7
1475	kick	בְּעִיטָה	7
1476	kid	יֶלֶד	7
1477	kill	לַהֲרוֹג	7
1478	killing	הֶרֶג	7
1479	kilometre	קִילוֹמֶטֶר	7
1480	kind	סוּג	7
1481	king	מֶלֶך	7
1482	kiss	נְשִׁיקָה	7
1483	kitchen	מִטְבָּח	7
1484	knee	בֶּרֶך	7
1485	knife	סַכִּין	7
1486	knock	נְקִישָׁה	7
1487	know	לָדַעַת	7
1488	knowledge	יֶדַע	7
1489	lab	מַעבָּדָה	7
1490	label	מַדבֵּקָה	7
1491	laboratory	מַעבָּדָה	7
1492	labour	עֲבוֹדָה	7
1493	lack	חוֹסֶר	7
1494	lady	גְבֶרֶת	7
1495	lake	אֲגַם	7
1496	lamp	מְנוֹרָה	7
1497	land	אֶרֶץ	7
1498	landscape	נוֹף	7
1499	language	שָׂפָה	7
1500	laptop	מחשב נייד	7
1501	large	גָדוֹל	7
1502	largely	במידה רבה	7
1503	last	אַחֲרוֹן	7
1504	late	מְאוּחָר	7
1505	later	מְאוּחָר יוֹתֵר	7
1506	latest	האחרון	7
1507	laugh	לִצְחוֹק	7
1508	laughter	צְחוֹק	7
1509	launch	לְהַשִׁיק	7
1510	law	חוֹק	7
1511	lawyer	עוֹרֵך דִין	7
1512	lay	לְהַנִיחַ	7
1513	layer	שִׁכבָה	7
1514	lazy	עָצֵל	7
1515	lead	עוֹפֶרֶת	7
1516	leader	מַנהִיג	7
1517	leadership	מַנהִיגוּת	7
1518	leading	מוֹבִיל	7
1519	leaf	עָלֶה	7
1520	league	לִיגָה	7
1521	lean	רָזֶה	7
1522	learn	לִלמוֹד	7
1523	learning	לְמִידָה	7
1524	least	פָּחוּת	7
1525	leather	עוֹר	7
1526	leave	לַעֲזוֹב	7
1527	lecture	הַרצָאָה	7
1528	left	שְׁמֹאל	7
1529	leg	רֶגֶל	7
1530	legal	מִשׁפָּטִי	7
1531	leisure	פְּנַאִי	7
1532	lemon	לִימוֹן	7
1533	lend	לְהַלווֹת	7
1534	length	מֶשֶׁך	7
1535	less	פָּחוֹת	7
1536	lesson	לֶקַח	7
1537	let	לְאַפשֵׁר	7
1538	letter	מִכְתָב	7
1539	level	רָמָה	7
1540	library	סִפְרִיָה	7
1541	licence	רִשָׁיוֹן	7
1542	lie	שֶׁקֶר	7
1543	life	חַיִים	7
1544	lifestyle	אורח חיים	7
1545	lift	מַעֲלִית	7
1546	light	אוֹר	7
1547	like	כְּמוֹ	7
1548	likely	סָבִיר	7
1549	limit	לְהַגבִּיל	7
1550	limited	מוּגבָּל	7
1551	line	קַו	7
1552	link	לְקַשֵׁר	7
1553	lion	אַריֵה	7
1554	lip	שָׂפָה	7
1555	liquid	נוֹזֵל	7
1556	list	רְשִׁימָה	7
1557	listen	לְהַקְשִׁיב	7
1558	listener	מַאֲזִין	7
1559	literature	סִפְרוּת	7
1560	little	קְצָת	7
1561	live	לִחיוֹת	7
1562	lively	מָלֵא חַיִים	7
1563	living	חַי	7
1564	load	לִטעוֹן	7
1565	loan	לְהַלווֹת	7
1566	local	מְקוֹמִי	7
1567	locate	לְאַתֵר	7
1568	located	ממוקם	7
1569	location	מִקוּם	7
1570	lock	לִנְעוֹל	7
1571	logical	הֶגיוֹנִי	7
1572	lonely	בּוֹדֵד	7
1573	long	אָרוֹך	7
1574	long-term	לטווח ארוך	7
1575	look	מַבָּט	7
1576	loose	מְשׁוּחרָר	7
1577	lord	אָדוֹן	7
1578	lorry	מַשָׂאִית	7
1579	lose	לְאַבֵּד	7
1580	loss	הֶפסֵד	7
1581	lost	אָבֵד	7
1582	lot	מִגרָשׁ	7
1583	loud	בְּקוֹל רָם	7
1584	loudly	בְּקוֹל רָם	7
1585	love	אַהֲבָה	7
1586	lovely	יָפֶה	7
1587	low	נָמוּך	7
1588	lower	לְהוֹרִיד	7
1589	luck	מַזָל	7
1590	lucky	בַּר מַזָל	7
1591	lunch	אֲרוּחַת צָהֳרִים	7
1592	lung	ריאה	7
1593	luxury	מוּתָרוּת	7
1594	machine	מְכוֹנָה	7
1595	mad	מְטוּרָף	7
1596	magazine	מָגָזִין	7
1597	magic	קֶסֶם	7
1598	mail	דוֹאַר	7
1599	main	רָאשִׁי	7
1600	mainly	בעיקר	7
1601	maintain	לְתַחְזֵק	7
1602	major	רַב סֶרֶן	7
1603	majority	רוֹב	7
1604	make	לַעֲשׂוֹת	7
1605	male	זָכָר	7
1606	mall	קֶנִיוֹן	7
1607	man	אָדָם	7
1608	manage	לְנַהֵל	7
1609	management	הַנהָלָה	7
1610	manager	מְנַהֵל	7
1611	manner	דֶרֶך	7
1612	many	רַבִּים	7
1613	map	מַפָּה	7
1614	march	מַרס	7
1615	mark	סִימָן	7
1616	market	שׁוּק	7
1617	marketing	שיווק	7
1618	marriage	חֲתוּנָה	7
1619	married	נָשׂוּי	7
1620	marry	לְהִתְחַתֵן	7
1621	mass	מִסָה	7
1622	massive	מַסִיבִי	7
1623	master	לִשְׁלוֹט	7
1624	match	לְהַתְאִים	7
1625	matching	תוֹאֵם	7
1626	material	חוֹמֶר	7
1627	mathematics	מָתֵימָטִיקָה	7
1628	maths	מָתֵימָטִיקָה	7
1629	matter	חוֹמֶר	7
1630	maximum	מַקסִימוּם	7
1631	may	מַאִי	7
1632	maybe	אוּלַי	7
1633	me	לִי	7
1634	meal	אֲרוּחָה	7
1635	mean	מְמוּצָע	7
1636	meaning	מַשְׁמָעוּת	7
1637	means	אֶמְצָעִי	7
1638	meanwhile	בינתיים	7
1639	measure	לִמְדוֹד	7
1640	measurement	מְדִידָה	7
1641	meat	בָּשָׂר	7
1642	media	כְּלֵי תִקְשׁוֹרֶת	7
1643	medical	רְפוּאִי	7
1644	medicine	תרופה	7
1645	medium	בֵּינוֹנִי	7
1646	meet	לִפְגוֹשׁ	7
1647	meeting	פְּגִישָׁה	7
1648	melt	לְהַמִיס	7
1649	member	חָבֵר	7
1650	memory	זֵכֶר	7
1651	mental	נַפשִׁי	7
1652	mention	אִזְכּוּר	7
1653	menu	תַפרִיט	7
1654	mess	בָּלָגָן	7
1655	message	הוֹדָעָה	7
1656	metal	מַתֶכֶת	7
1657	method	שִׁיטָה	7
1658	metre	מֶטֶר	7
1659	middle	אֶמצַע	7
1660	midnight	חֲצוֹת	7
1661	might	יָכוֹל	7
1662	mild	מָתוּן	7
1663	mile	מִיל	7
1664	military	צְבָאִי	7
1665	milk	חָלָב	7
1666	million	מִילִיוֹן	7
1667	mind	דֵעָה	7
1668	mine	שֶׁלִי	7
1669	mineral	מִינֵרָלִי	7
1670	minimum	מִינִימוּם	7
1671	minister	שַׂר	7
1672	minor	קַטִין	7
1673	minority	מיעוט	7
1674	minute	דַקָה	7
1675	mirror	מַרְאָה	7
1676	miss	לְהַחמִיץ	7
1677	missing	חָסֵר	7
1678	mission	מְשִׁימָה	7
1679	mistake	טָעוּת	7
1680	mix	לְעַרְבֵּב	7
1681	mixed	מְעוּרָב	7
1682	mixture	תַעֲרוֹבֶת	7
1683	mobile	נייד	7
1684	model	דֶגֶם	7
1685	modern	מוֹדֶרנִי	7
1686	modify	לְשַׁנוֹת	7
1687	moment	רֶגַע	7
1688	monday	יוֹם שֵׁנִי	7
1689	money	כֶּסֶף	7
1690	monitor	לפקח	7
1691	monkey	קוֹף	7
1692	month	חוֹדֶשׁ	7
1693	mood	מַצַב רוּחַ	7
1694	moon	יָרֵחַ	7
1695	moral	מוּסָרִי	7
1696	more	יוֹתֵר	7
1697	morning	שַׁחַר	7
1698	most	רוֹב	7
1699	mostly	לָרוֹב	7
1700	mother	אִמָא	7
1701	motor	מָנוֹעַ	7
1702	motorcycle	אוֹפנוֹעַ	7
1703	mount	הַר	7
1704	mountain	הַר	7
1705	mouse	עַכְבָּר	7
1706	mouth	פֶּה	7
1707	move	מַהֲלָך	7
1708	movement	תְנוּעָה	7
1709	movie	סֶרֶט	7
1710	much	הַרבֵּה	7
1711	mud	בּוֹץ	7
1712	multiple	מְרוּבֶּה	7
1713	multiply	לְהַכפִּיל	7
1714	mum	אמא	7
1715	murder	רֶצַח	7
1716	muscle	שְׁרִיר	7
1717	museum	מוּזֵיאוֹן	7
1718	music	מוּסִיקָה	7
1719	musical	מוּסִיקָלִי	7
1720	musician	מוּסִיקָאִי	7
1721	must	חוֹבָה	7
1722	my	שֶׁלִי	7
1723	myself	עַצמִי	7
1724	mysterious	מִסתוֹרִי	7
1725	mystery	מִסתוֹרִין	7
1726	nail	מַסְמֵר	7
1727	name	שֵׁם	7
1728	narrative	נרטיב	7
1729	narrow	לְצַמְצֵם	7
1730	nation	אוּמָה	7
1731	national	לְאוּמִי	7
1732	native	יָלִיד	7
1733	natural	טִבעִי	7
1734	naturally	כַּמוּבָן	7
1735	nature	טֶבַע	7
1736	near	לְיַד	7
1737	nearly	כִּמעַט	7
1738	neat	מסודר	7
1739	necessarily	בהכרח	7
1740	necessary	הֶכְרֵחִי	7
1741	neck	עוֹרֶף	7
1742	need	צוֹרֶך	7
1743	needle	מַחַט	7
1744	negative	שְׁלִילִי	7
1745	neighbour	שָׁכֵן	7
1746	neighbourhood	שְׁכוּנָה	7
1747	neither	גַם לֹא	7
1748	nerve	עָצָב	7
1749	nervous	עַצבָּנִי	7
1750	net	נֶטוֹ	7
1751	network	רֶשֶׁת	7
1752	never	לְעוֹלָם לֹא	7
1753	nevertheless	אַף עַל פִּי כֵן	7
1754	new	חָדָשׁ	7
1755	news	חֲדָשׁוֹת	7
1756	newspaper	עִתוֹן	7
1757	next	הַבָּא	7
1758	next to	לְיַד	7
1759	nice	נֶחְמָד	7
1760	night	לַיְלָה	7
1761	nightmare	סִיוּט	7
1762	nine	תֵשַׁע	7
1763	nineteen	תֵשַׁע עֶשׂרֵה	7
1764	ninety	תִשׁעִים	7
1765	no	לֹא	7
1766	no one	אַף אֶחָד לֹא	7
1767	nobody	אַף אֶחָד	7
1768	noise	רַעַשׁ	7
1769	noisy	רוֹעֵשׁ	7
1770	none	אַף לֹא אֶחָד	7
1771	nor	גַם לֹא	7
1772	normal	נוֹרמָלִי	7
1773	normally	בדרך כלל	7
1774	north	צָפוֹן	7
1775	northern	צְפוֹנִי	7
1776	nose	אַף	7
1777	not	לֹא	7
1778	note	פֶּתֶק	7
1779	nothing	שׁוּם דָבָר	7
1780	notice	הוֹדָעָה	7
1781	notion	רַעְיוֹן	7
1782	novel	רוֹמָן	7
1783	november	נוֹבֶמבֶּר	7
1784	now	עַכשָׁיו	7
1785	nowhere	לְשׁוּם מָקוֹם	7
1786	nuclear	גַרעִינִי	7
1787	number	מִספָּר	7
1788	numerous	רַבִּים	7
1789	nurse	אָחוֹת	7
1790	nut	אֱגוֹז	7
1791	o'clock	השעה	7
1792	obey	לציית	7
1793	object	לְהִתְנַגֵד	7
1794	objective	מַטָרָה	7
1795	obligation	חוֹבָה	7
1796	observation	תַצְפִּית	7
1797	observe	לִצְפּוֹת	7
1798	obtain	לְהַשִׂיג	7
1799	obvious	בָּרוּר	7
1800	obviously	בָּרוּר	7
1801	occasion	הִזדַמְנוּת	7
1802	occasionally	לִפְעָמִים	7
1803	occur	לְהִתְרַחֵשׁ	7
1804	ocean	יָם	7
1805	october	אוֹקְטוֹבֶּר	7
1806	odd	מְשׁוּנֶה	7
1807	of	שֶׁל	7
1808	off	כבוי	7
1809	offence	הַתקָפָה	7
1810	offend	לְהַעֲלִיב	7
1811	offensive	הֶתקֵפִי	7
1812	offer	הַצָעָה	7
1813	office	מִשׂרָד	7
1814	officer	קָצִין	7
1815	official	רִשְׁמִי	7
1816	often	לְעִתִים קְרוֹבוֹת	7
1817	oh	הו	7
1818	oil	שֶׁמֶן	7
1819	ok	בְּסֵדֶר	7
1820	old	יָשָׁן	7
1821	old-fashioned	מְיוּשָׁן	7
1822	on	עַל	7
1823	once	פַּעַם	7
1824	one	אֶחָד	7
1825	onion	בָּצָל	7
1826	online	באינטרנט	7
1827	only	רַק	7
1828	onto	עַל גַבֵּי	7
1829	open	לִפְתוֹחַ	7
1830	opening	פְּתִיחָה	7
1831	operate	לְהַפְעִיל	7
1832	operation	מִבצָע	7
1833	opinion	דֵעָה	7
1834	opponent	יָרִיב	7
1835	opportunity	הִזדַמְנוּת	7
1836	oppose	לְהִתְנַגֵד	7
1837	opposed	מִתנַגֵד	7
1838	opposite	מוּל	7
1839	opposition	הִתנַגְדוּת	7
1840	option	אוֹפְּצִיָה	7
1841	or	אוֹ	7
1842	orange	כָּתוֹם	7
1843	order	לְהַזמִין	7
1844	ordinary	רָגִיל	7
1845	organ	אֵיבָר	7
1846	organization	אִרגוּן	7
1847	organize	לְאַרגֵן	7
1848	organized	מְאוּרגָן	7
1849	organizer	מְאַרגֵן	7
1850	origin	מָקוֹר	7
1851	original	מְקוֹרִי	7
1852	originally	בְּמָקוֹר	7
1853	other	אַחֵר	7
1854	otherwise	אַחֶרֶת	7
1855	ought	צריך	7
1856	our	שֶׁלָנוּ	7
1857	ours	שֶׁלָנוּ	7
1858	ourselves	בְּעָצמֵנוּ	7
1859	out	הַחוּצָה	7
1860	outcome	תוֹצָאָה	7
1861	outdoor	בָּחוּץ	7
1862	outdoors	בָּחוּץ	7
1863	outer	חִיצוֹנִי	7
1864	outline	מִתְאָר	7
1865	outside	בָּחוּץ	7
1866	oven	תַנוּר	7
1867	over	מֵעַל	7
1868	overall	בסך הכל	7
1869	owe	חייב	7
1870	own	שֶׁלוֹ	7
1871	owner	בַּעַל	7
1872	pace	לִפְסוֹעַ	7
1873	pack	לֶאֱרוֹז	7
1874	package	חֲבִילָה	7
1875	page	עַמוּד	7
1876	pain	כְּאֵב	7
1877	painful	כּוֹאֵב	7
1878	paint	צֶבַע	7
1879	painter	צייר	7
1880	painting	צִיוּר	7
1881	pair	זוּג	7
1882	palace	אַרְמוֹן	7
1883	pale	חיוור	7
1884	pan	פָּאן	7
1885	panel	לוּחַ	7
1886	pants	מִכְנָסַיִים	7
1887	paper	נְיָר	7
1888	paragraph	סָעִיף	7
1889	parent	הוֹרֶה	7
1890	park	פַּארק	7
1891	parking	חֲנָיָה	7
1892	parliament	פַּרלָמֶנט	7
1893	part	חֵלֶק	7
1894	participant	מִשׁתַתֵף	7
1895	participate	לְהִשְׂתַתֵף	7
1896	particular	מְסוּיָם	7
1897	particularly	בִּמְיוּחָד	7
1898	partly	חֶלקִית	7
1899	partner	שׁוּתָף	7
1900	party	צַד	7
1901	pass	לַעֲבוֹר	7
1902	passage	מַעֲבָר	7
1903	passenger	נוֹסֵעַ	7
1904	passion	תְשׁוּקָה	7
1905	passport	דַרכּוֹן	7
1906	past	עָבָר	7
1907	path	נָתִיב	7
1908	patient	חוֹלֶה	7
1909	pattern	תַבְנִית	7
1910	pay	לְשַׁלֵם	7
1911	payment	תַשְׁלוּם	7
1912	peace	שָׁלוֹם	7
1913	peaceful	שָׁקֶט	7
1914	pen	עֵט	7
1915	pencil	עִפָּרוֹן	7
1916	penny	פֶּנִי	7
1917	pension	פֶּנסִיָה	7
1918	people	אֲנָשִׁים	7
1919	pepper	פִּלְפֵּל	7
1920	per	לְכָל	7
1921	per cent	אחוזים	7
1922	percentage	אֲחוּזִים	7
1923	perfect	מוּשׁלָם	7
1924	perfectly	בצורה מושלמת	7
1925	perform	לְבַצֵעַ	7
1926	performance	ביצועים	7
1927	perhaps	אוּלַי	7
1928	period	תְקוּפָה	7
1929	permanent	קָבוּעַ	7
1930	permission	רְשׁוּת	7
1931	permit	לְהַתִיר	7
1932	person	אָדָם	7
1933	personal	אִישִׁי	7
1934	personality	אִישִׁיוּת	7
1935	personally	אִישִׁית	7
1936	perspective	פֶּרספֶּקטִיבָה	7
1937	persuade	לְשַׁכְנֵעַ	7
1938	pet	לְלַטֵף	7
1939	petrol	בֶּנזִין	7
1940	phase	שָׁלָב	7
1941	phenomenon	תוֹפָעָה	7
2068	process	תַהֲלִיך	7
1942	philosophy	פִילוֹסוֹפִיָה	7
1943	phone	טֵלֵפוֹן	7
1944	photo	תַצלוּם	7
1945	photograph	תַצלוּם	7
1946	photographer	צַלָם	7
1947	photography	צילום	7
1948	phrase	מִשׁפָּט	7
1949	physical	גוּפָנִי	7
1950	physics	פִיסִיקָה	7
1951	piano	פְּסַנְתֵר	7
1952	pick	לִבחוֹר	7
1953	picture	תְמוּנָה	7
1954	piece	לְחַבֵּר	7
1955	pig	חֲזִיר	7
1956	pile	עֲרֵמָה	7
1957	pilot	טַיָס	7
1958	pin	פִּין	7
1959	pink	וָרוֹד	7
1960	pipe	מִקטֶרֶת	7
1961	pitch	פְּסִיעָה	7
1962	place	מָקוֹם	7
1963	plain	מִישׁוֹר	7
1964	plan	לְתַכְנֵן	7
1965	plane	מָטוֹס	7
1966	planet	כּוֹכַב לֶכֶת	7
1967	planning	תִכנוּן	7
1968	plant	לִשְׁתוֹל	7
1969	plastic	פּלָסטִי	7
1970	plate	צַלַחַת	7
1971	platform	פּלַטפוֹרמָה	7
1972	play	לְשַׂחֵק	7
1973	player	נַגָן	7
1974	pleasant	נָעִים	7
1975	please	אָנָא	7
1976	pleased	מְרוּצֶה	7
1977	pleasure	הֲנָאָה	7
1978	plenty	הַרבֵּה	7
1979	plot	מִגרָשׁ	7
1980	plus	פְּלוּס	7
1981	pocket	כִּיס	7
1982	poem	שִׁיר	7
1983	poet	מְשׁוֹרֵר	7
1984	poetry	שִׁירָה	7
1985	point	נְקוּדָה	7
1986	pointed	מְחוּדָד	7
1987	poison	רַעַל	7
1988	poisonous	רַעִיל	7
1989	police	מִשׁטָרָה	7
1990	policeman	שׁוֹטֵר	7
1991	policy	מְדִינִיוּת	7
1992	polite	מְנוּמָס	7
1993	political	פּוֹלִיטִי	7
1994	politician	פּוֹלִיטִיקָאִי	7
1995	politics	פּוֹלִיטִיקָה	7
1996	pollution	זיהום	7
1997	pool	פּוּל	7
1998	poor	יָרוּד	7
1999	pop	פּוֹפּ	7
2000	popular	פּוֹפּוּלָרִי	7
2001	popularity	פּוֹפּוּלָרִיוּת	7
2002	population	אוּכְלוֹסִיָה	7
2003	port	נָמָל	7
2004	portrait	דְיוֹקָן	7
2005	pose	פּוֹזָה	7
2006	position	מַצָב	7
2007	positive	חִיוּבִי	7
2008	possess	לְהַחזִיק	7
2009	possession	רְשׁוּת	7
2010	possibility	אֶפשָׁרוּת	7
2011	possible	אֶפשָׁרִי	7
2012	possibly	יִתָכֵן	7
2013	post	שֶׁלְאַחַר	7
2014	poster	פּוֹסטֵר	7
2015	pot	סִיר	7
2016	potato	תַפּוּחַ אַדֲמָה	7
2017	potential	פּוֹטֶנצִיאָל	7
2018	pound	לִירָה	7
2019	pour	לִשְׁפּוֹך	7
2020	poverty	עוֹנִי	7
2021	powder	אֲבָקָה	7
2022	power	כּוֹחַ	7
2023	powerful	חָזָק	7
2024	practical	מַעֲשִׂי	7
2025	practice	לְתַרְגֵל	7
2026	practise	לְתַרְגֵל	7
2027	praise	שֶׁבַח	7
2028	pray	לְהִתְפַּלֵל	7
2029	prayer	תְפִלָה	7
2030	predict	לַחֲזוֹת	7
2031	prediction	נְבוּאָה	7
2032	prefer	לְהַעֲדִיף	7
2033	pregnant	בְּהֵרָיוֹן	7
2034	preparation	הֲכָנָה	7
2035	prepare	לְהַכִין	7
2036	prepared	מוּכָן	7
2037	presence	נוֹכְחוּת	7
2038	present	לְהַצִיג	7
2039	presentation	הַצָגָה	7
2040	preserve	לְשַׁמֵר	7
2041	president	נָשִׂיא	7
2042	press	לִלְחוֹץ	7
2043	pressure	לַחַץ	7
2044	pretend	לְהַעֲמִיד פָּנִים	7
2045	pretty	יָפֶה	7
2046	prevent	לִמְנוֹעַ	7
2047	previous	קוֹדֵם	7
2048	previously	קוֹדֶם	7
2049	price	מְחִיר	7
2050	priest	כּוֹמֶר	7
2051	primary	יְסוֹדִי	7
2052	prime	רִאשׁוֹנִי	7
2053	prince	נָסִיך	7
2054	princess	נְסִיכָה	7
2055	principle	עִקָרוֹן	7
2056	print	הֶדפֵּס	7
2057	printer	מַדפֶּסֶת	7
2058	printing	הַדפָּסָה	7
2059	priority	עֲדִיפוּת	7
2060	prison	כֵּלֵא	7
2061	prisoner	אָסִיר	7
2062	privacy	פְּרָטִיוּת	7
2063	private	פְּרָטִי	7
2064	prize	פְּרָס	7
2065	probably	כַּנִראֶה	7
2066	problem	בְּעָיָה	7
2067	procedure	נוֹהָל	7
2069	produce	תוֹצֶרֶת	7
2070	producer	יַצרָן	7
2071	product	מוּצָר	7
2072	production	הֲפָקָה	7
2073	profession	מִקצוֹעַ	7
2074	professional	מִקצוֹעִי	7
2075	professor	פּרוֹפֶסוֹר	7
2076	profile	פּרוֹפִיל	7
2077	profit	לְהַרְוִיחַ	7
2078	program	תָכְנִית	7
2079	programme	תָכְנִית	7
2080	progress	הִתקַדְמוּת	7
2081	project	פּרוֹיֶקט	7
2082	promise	הַבטָחָה	7
2083	promote	לְקַדֵם	7
2084	pronounce	לְבַטֵא	7
2085	proof	הוֹכָחָה	7
2086	proper	תָקִין	7
2087	properly	כַּהֲלָכָה	7
2088	property	נֶכֶס	7
2089	proposal	הַצָעָה	7
2090	propose	לְהַצִיעַ	7
2091	prospect	פרוספקט	7
2092	protect	לְהַגֵן	7
2093	protection	הֲגָנָה	7
2094	protest	מְחָאָה	7
2095	proud	גֵאֶה	7
2096	prove	לְהוֹכִיחַ	7
2097	provide	לְסַפֵּק	7
2098	psychologist	פְּסִיכוֹלוֹג	7
2099	psychology	פְּסִיכוֹלוֹגִיָה	7
2100	pub	פָּאבּ	7
2101	public	פּוּמְבֵּי	7
2102	publication	פִּרסוּם	7
2103	publish	לְפַרְסֵם	7
2104	pull	מְשׁוֹך	7
2105	punish	לְהַעֲנִישׁ	7
2106	punishment	עֲנִישָׁה	7
2107	pupil	תַלמִיד	7
2108	purchase	לִרְכּוֹשׁ	7
2109	pure	טָהוֹר	7
2110	purple	סָגוֹל	7
2111	purpose	מַטָרָה	7
2112	pursue	לִרְדוֹף	7
2113	push	לִדחוֹף	7
2114	put	לָשִׂים	7
2115	qualification	הַכשָׁרָה	7
2116	qualified	מוּסמָך	7
2117	qualify	להעפיל	7
2118	quality	אֵיכוּת	7
2119	quantity	כַּמוּת	7
2120	quarter	רוֹבַע	7
2121	queen	מַלכָּה	7
2122	question	שְׁאֵלָה	7
2123	queue	תוֹר	7
2124	quick	מָהִיר	7
2125	quickly	בִּמְהִירוּת	7
2126	quiet	שֶׁקֶט	7
2127	quietly	בְּשֶׁקֶט	7
2128	quit	לְהַפְסִיק	7
2129	quite	דַי	7
2130	quotation	הַצָעַת מְחִיר	7
2131	quote	לְצַטֵט	7
2132	race	גֶזַע	7
2133	racing	מירוץ	7
2134	radio	רָדִיוֹ	7
2135	railway	רכבת	7
2136	rain	גֶשֶׁם	7
2137	raise	הַעֲלָאָה	7
2138	range	לָנוּעַ	7
2139	rank	דַרגָה	7
2140	rapid	מָהִיר	7
2141	rapidly	מַהֵר	7
2142	rare	נָדִיר	7
2143	rarely	לְעִתִים רְחוֹקוֹת	7
2144	rate	קֶצֶב	7
2145	rather	אלא	7
2146	raw	נָא	7
2147	reach	לְהַגִיעַ	7
2148	react	לְהָגִיב	7
2149	reaction	תְגוּבָה	7
2150	read	לִקְרוֹא	7
2151	reader	קוֹרֵא	7
2152	reading	קְרִיאָה	7
2153	ready	מוּכָן	7
2154	real	רִיאָל	7
2155	realistic	מְצִיאוּתִי	7
2156	reality	מְצִיאוּת	7
2157	realize	לִהַבִין	7
2158	really	בֶּאֱמֶת	7
2159	reason	לְנַמֵק	7
2160	reasonable	סָבִיר	7
2161	recall	לִזכּוֹר	7
2162	receipt	קַבָּלָה	7
2163	receive	לְקַבֵּל	7
2164	recent	לאחרונה	7
2165	recently	לָאַחֲרוֹנָה	7
2166	reception	קַבָּלָה	7
2167	recipe	מַתכּוֹן	7
2168	recognize	לְהַכִּיר	7
2169	recommend	לְהַמלִיץ	7
2170	recommendation	הַמלָצָה	7
2171	record	רְשׁוּמָה	7
2172	recording	הַקלָטָה	7
2173	recover	לְהַחלִים	7
2174	recycle	לְמַחְזֵר	7
2175	red	אָדוֹם	7
2176	reduce	לְהַפחִית	7
2177	reduction	צִמצוּם	7
2178	refer	לְהַפְנוֹת	7
2179	reference	הַפנָיָה	7
2180	reflect	לְשַׁקֵף	7
2181	refuse	אַשׁפָּה	7
2182	regard	לְהִתְיַחֵס	7
2183	region	אֵזוֹר	7
2184	regional	אֵזוֹרִי	7
2185	register	לִרְשׁוֹם	7
2186	regret	חֲרָטָה	7
2187	regular	קָבוּעַ	7
2188	regularly	בִּקְבִיעוּת	7
2189	regulation	תַקָנָה	7
2190	reject	לִדחוֹת	7
2191	relate	לְסַפֵּר	7
2192	related	קָשׁוּר	7
2193	relation	יַחַס	7
2194	relationship	קֶשֶׁר	7
2195	relative	יַחֲסִי	7
2196	relatively	יַחֲסִית	7
2197	relax	לְהִרָגַע	7
2198	relaxed	רָגוּעַ	7
2199	relaxing	מַרגִיעַ	7
2200	release	לְשַׁחְרֵר	7
2201	relevant	רלוונטי	7
2202	reliable	אָמִין	7
2203	relief	הֲקָלָה	7
2204	religion	דָת	7
2205	religious	דָתִי	7
2206	rely	לִסְמוֹך	7
2207	remain	לְהִשָׁאֵר	7
2208	remark	הֶעָרָה	7
2209	remember	לִזכּוֹר	7
2210	remind	לְהַזכִּיר	7
2211	remote	מְרוּחָק	7
2212	remove	לְהַסִיר	7
2213	rent	לִשְׂכּוֹר	7
2214	repair	לְתַקֵן	7
2215	repeat	לַחֲזוֹר עַל	7
2216	repeated	חזר על עצמו	7
2217	replace	לְהַחלִיף	7
2218	reply	תְגוּבָה	7
2219	report	דִוּוּחַ	7
2220	reporter	כַתָב	7
2221	represent	לְיַצֵג	7
2222	representative	נָצִיג	7
2223	reputation	מוֹנֵיטִין	7
2224	request	בַּקָשָׁה	7
2225	require	לִדרוֹשׁ	7
2226	requirement	דְרִישָׁה	7
2227	rescue	לְהַצִיל	7
2228	research	מֶחקָר	7
2229	researcher	חוֹקֵר	7
2230	reservation	הַזמָנָה	7
2231	reserve	לְהַזמִין	7
2232	resident	תוֹשָׁב	7
2233	resist	לְהִתְנַגֵד	7
2234	resolve	לִפְתוֹר	7
2235	resort	אתר נופש	7
2236	resource	מַשׁאָב	7
2237	respect	כִּבּוּד	7
2238	respond	לְהָגִיב	7
2239	response	תְגוּבָה	7
2240	responsibility	אַחֲרָיוּת	7
2241	responsible	אַחֲרַאִי	7
2242	rest	לָנוּחַ	7
2243	restaurant	מִסעָדָה	7
2244	result	תוֹצָאָה	7
2245	retain	לִשְׁמוֹר	7
2246	retire	לִפְרוֹשׁ	7
2247	retired	בְּדִימוּס	7
2248	return	לַחֲזוֹר	7
2249	reveal	לְגַלוֹת	7
2250	review	סְקִירָה	7
2251	revise	לְשַׁנוֹת	7
2252	revolution	מַהְפֵּכָה	7
2253	reward	גְמוּל	7
2254	rhythm	קֶצֶב	7
2255	rice	אוֹרֶז	7
2256	rich	עָשִׁיר	7
2257	rid	לְשַׁחְרֵר	7
2258	ride	לִרְכּוֹב	7
2259	right	יָמִינָה	7
2260	ring	טַבַּעַת	7
2261	rise	לַעֲלוֹת	7
2262	risk	לְהִסְתָכֵּן	7
2263	river	נָהָר	7
2264	road	כְּבִישׁ	7
2265	robot	רוֹבּוֹט	7
2266	rock	רוֹק	7
2267	role	תַפְקִיד	7
2268	roll	גָלִיל	7
2269	romantic	רוֹמַנטִי	7
2270	roof	גַג	7
2271	room	חֶדֶר	7
2272	root	שׁוֹרֶשׁ	7
2273	rope	חֶבֶל	7
2274	rough	מְחוּספָּס	7
2275	round	עִגוּל	7
2276	route	מַסלוּל	7
2277	routine	שִׁגרָתִי	7
2278	row	שׁוּרָה	7
2279	royal	מַלכּוּתִי	7
2280	rub	לְשַׁפשֵׁף	7
2281	rubber	גוּמִי	7
2282	rubbish	שְׁטוּיוֹת	7
2283	rude	גַס	7
2284	rugby	רוגבי	7
2285	rule	כְּלָל	7
2286	run	לָרוּץ	7
2287	runner	רָץ	7
2288	running	רִיצָה	7
2289	rural	כַּפרִי	7
2290	rush	לְמַהֵר	7
2291	sad	עָצוּב	7
2292	sadly	למרבה הצער	7
2293	safe	כַּסֶפֶת	7
2294	safety	בְּטִיחוּת	7
2295	sail	לְהַפְלִיג	7
2296	sailing	שַׁיִט	7
2297	sailor	מַלָח	7
2298	salad	סָלָט	7
2299	salary	מַשׂכּוֹרֶת	7
2300	sale	מְכִירָה	7
2301	salt	מֶלַח	7
2302	same	אוֹתוֹ	7
2303	sample	לִטעוֹם	7
2304	sand	חוֹל	7
2305	sandwich	כָּרִיך	7
2306	satellite	לוויין	7
2307	satisfied	מְרוּצֶה	7
2308	satisfy	לְסַפֵּק	7
2309	saturday	שַׁבָּת	7
2310	sauce	רוֹטֶב	7
2311	save	לְהַצִיל	7
2312	saving	חִסָכוֹן	7
2313	say	לוֹמַר	7
2314	scale	סוּלָם	7
2315	scan	לִסְרוֹק	7
2316	scared	מפחד	7
2317	scary	מַפְחִיד	7
2318	scene	סְצֵינָה	7
2319	schedule	לוּחַ זְמַנִים	7
2320	scheme	תָכְנִית	7
2321	school	בֵּית סֵפֶר	7
2322	science	מַדָע	7
2323	scientific	מַדָעִי	7
2324	scientist	מַדְעָן	7
2325	score	צִיוּן	7
2326	scream	לִצְרוֹחַ	7
2327	screen	מָסָך	7
2328	script	תַסרִיט	7
2329	sculpture	פֶּסֶל	7
2330	sea	יָם	7
2331	search	לְחַפֵּשׂ	7
2332	season	עוֹנָה	7
2333	seat	מוֹשָׁב	7
2334	second	שְׁנִיָה	7
2335	secondary	מִשׁנִי	7
2336	secondly	שֵׁנִית	7
2337	secret	סוֹד	7
2338	secretary	מַזכִּיר	7
2339	section	סָעִיף	7
2340	sector	מִגזָר	7
2341	secure	מְאוּבטָח	7
2342	security	בִּטָחוֹן	7
2343	see	לִרְאוֹת	7
2344	seed	זֶרַע	7
2345	seek	לְחַפֵּשׂ	7
2346	seem	לְהֵרָאוֹת	7
2347	select	לִבחוֹר	7
2348	selection	בְּחִירָה	7
2349	self	עַצמִי	7
2350	sell	מְכִירָה	7
2351	send	לִשְׁלוֹחַ	7
2352	senior	בָּכִיר	7
2353	sense	לָחוּשׁ	7
2354	sensible	נָבוֹן	7
2355	sensitive	רָגִישׁ	7
2356	sentence	מִשׁפָּט	7
2357	separate	נִפרָד	7
2358	september	סֶפּטֶמבֶּר	7
2359	sequence	רֶצֶף	7
2360	series	סִדרָה	7
2361	serious	רְצִינִי	7
2362	seriously	בִּרְצִינוּת	7
2363	servant	מְשָׁרֵת	7
2364	serve	לְשָׁרֵת	7
2365	service	שֵׁרוּת	7
2366	session	מוֹשָׁב	7
2367	set	מַעֲרֶכֶת	7
2368	setting	סְבִיבָה	7
2369	settle	לִשְׁקוֹעַ	7
2370	seven	שבע	7
2371	seventeen	שְׁבַע עֶשׂרֵה	7
2372	seventy	שִׁבעִים	7
2373	several	כַּמָה	7
2374	severe	חָמוּר	7
2375	sex	מִין	7
2376	sexual	מִינִי	7
2377	shade	צֵל	7
2378	shadow	צֵל	7
2379	shake	לְנַעֵר	7
2380	shall	יהיה	7
2381	shallow	רָדוּד	7
2382	shame	בּוּשָׁה	7
2383	shape	צוּרָה	7
2384	share	לַחֲלוֹק	7
2385	sharp	חַד	7
2386	she	הִיא	7
2387	sheep	כִּבשָׂה	7
2388	sheet	דַף	7
2389	shelf	מַדָף	7
2390	shell	פָּגָז	7
2391	shelter	מִקְלָט	7
2392	shift	מִשׁמֶרֶת	7
2393	shine	צִחצוּחַ	7
2394	shiny	מַברִיק	7
2395	ship	סְפִינָה	7
2396	shirt	חוּלצָה	7
2397	shock	הֶלֶם	7
2398	shocked	מְזוּעזָע	7
2399	shoe	נַעַל	7
2400	shoot	לִירוֹת	7
2401	shooting	יְרִי	7
2402	shop	לִקְנוֹת	7
2403	shopping	קניות	7
2404	short	קָצָר	7
2405	shot	בְּעִיטָה	7
2406	should	צריך	7
2407	shoulder	כָּתֵף	7
2408	shout	לִצְעוֹק	7
2409	show	לְהַצִיג	7
2410	shower	מִקלַחַת	7
2411	shut	לִסְגוֹר	7
2412	shy	ביישן	7
2413	sick	חוֹלֶה	7
2414	side	צַד	7
2415	sight	מַרְאֶה	7
2416	sign	סִימָן	7
2417	signal	אוֹת	7
2418	significant	מַשְׁמָעוּתִי	7
2419	significantly	באופן משמעותי	7
2420	silence	לְהַשְׁתִיק	7
2421	silent	שָׁקֶט	7
2422	silk	מֶשִׁי	7
2423	silly	טִפּשִׁי	7
2424	silver	כֶּסֶף	7
2425	similar	דוֹמֶה	7
2426	similarity	דִמיוֹן	7
2427	similarly	באופן דומה	7
2428	simple	פָּשׁוּט	7
2429	simply	פָּשׁוּט	7
2430	since	מֵאָז	7
2431	sincere	כֵּן	7
2432	sing	לָשִׁיר	7
2433	singer	זַמֶרֶת	7
2434	singing	שִׁירָה	7
2435	single	אֶחָד	7
2436	sink	כִּיוֹר	7
2437	sir	אֲדוֹנִי	7
2438	sister	אָחוֹת	7
2439	sit	לָשֶׁבֶת	7
2440	site	אֲתַר	7
2441	situation	מַצָב	7
2442	six	שֵׁשׁ	7
2443	sixteen	שֵׁשׁ עֶשׂרֵה	7
2444	sixty	שִׁשִׁים	7
2445	size	גוֹדֶל	7
2446	ski	סקִי	7
2447	skiing	סקִי	7
2448	skill	מְיוּמָנוּת	7
2449	skin	עוֹר	7
2450	skirt	חֲצָאִית	7
2451	sky	שָׁמַיִם	7
2452	slave	עֶבֶד	7
2453	sleep	לִישׁוֹן	7
2454	slice	פְּרוּסָה	7
2455	slide	לְהַחלִיק	7
2456	slight	קָלוּשׁ	7
2457	slightly	מְעַט	7
2458	slip	לְהַחלִיק	7
2459	slope	מִדרוֹן	7
2460	slow	לְהַאֵט	7
2461	slowly	לְאַט	7
2462	small	קָטָן	7
2463	smart	לִכאוֹב	7
2464	smell	רֵיחַ	7
2465	smile	חִיוּך	7
2466	smoke	עָשָׁן	7
2467	smoking	עִשׁוּן	7
2468	smooth	לְהַחלִיק	7
2469	snake	נָחָשׁ	7
2470	snow	שֶׁלֶג	7
2471	so	כָּך	7
2472	soap	סַבּוֹן	7
2473	soccer	כַּדוּרֶגֶל	7
2474	social	חֶברָתִי	7
2475	society	חֶברָה	7
2476	sock	גֶרֶב	7
2477	soft	רַך	7
2478	software	תוֹכנָה	7
2479	soil	אֲדָמָה	7
2480	solar	סוֹלָרִי	7
2481	soldier	לוֹחֶם	7
2482	solid	מוּצָק	7
2483	solution	פִּתָרוֹן	7
2484	solve	לִפְתוֹר	7
2485	some	כַּמָה	7
2486	somebody	מִישֶׁהוּ	7
2487	someone	מִישֶׁהוּ	7
2488	something	מַשֶׁהוּ	7
2489	sometimes	לִפְעָמִים	7
2490	somewhat	קְצָת	7
2491	somewhere	אֵיִ שָׁם	7
2492	son	בֵּן	7
2493	song	שִׁיר	7
2494	soon	בְּקָרוּב	7
2495	sorry	מִצטַעֵר	7
2496	sort	סוּג	7
2497	soul	נֶפֶשׁ	7
2498	sound	קוֹל	7
2499	soup	מָרָק	7
2500	source	מָקוֹר	7
2501	south	דָרוֹם	7
2502	southern	דְרוֹמִי	7
2503	space	מֶרחָב	7
2504	speak	לְדַבֵּר	7
2505	speaker	רַמקוֹל	7
2506	special	מְיוּחָד	7
2507	specialist	מוּמחֶה	7
2508	species	מִין	7
2509	specific	ספֵּצִיפִי	7
2510	specifically	ספציפית	7
2511	speech	נְאוּם	7
2512	speed	מְהִירוּת	7
2513	spell	לַחַשׁ	7
2514	spelling	אִיוּת	7
2515	spend	לְבַלוֹת	7
2516	spending	הוצאות	7
2517	spicy	חָרִיף	7
2518	spider	עַכָּבִישׁ	7
2519	spirit	רוּחַ	7
2520	spiritual	רוּחָנִי	7
2521	split	לְפַצֵל	7
2522	spoken	נֱאֶמַר	7
2523	sponsor	לָתֵת חָסוּת	7
2524	spoon	כַּף	7
2525	sport	ספּוֹרט	7
2526	spot	לְזַהוֹת	7
2527	spread	התפשטות	7
2528	spring	אָבִיב	7
2529	square	מְרוּבָּע	7
2530	stable	יַצִיב	7
2531	stadium	אִצטַדיוֹן	7
2532	staff	סֶגֶל	7
2533	stage	שָׁלָב	7
2534	stair	מַדרֵגָה	7
2535	stamp	חוֹתֶמֶת	7
2536	stand	לַעֲמוֹד	7
2537	standard	תֶקֶן	7
2538	star	כּוֹכָב	7
2539	stare	לִנְעוֹץ מַבָּט	7
2540	start	הַתחָלָה	7
2541	state	מְדִינָה	7
2542	statement	הַצהָרָה	7
2543	station	תַחֲנָה	7
2544	statistic	סטטיסטיקה	7
2545	statue	פֶּסֶל	7
2546	status	סטָטוּס	7
2547	stay	שָׁהוּת	7
2548	steady	יַצִיב	7
2549	steal	לִגנוֹב	7
2550	steel	פְּלָדָה	7
2551	steep	תָלוּל	7
2552	step	שָׁלָב	7
2553	stick	מַקֵל	7
2554	sticky	דָבִיק	7
2555	stiff	נוּקשֶׁה	7
2556	still	עוֹד	7
2557	stock	מְנָיוֹת	7
2558	stomach	בֶּטֶן	7
2559	stone	אֶבֶן	7
2560	stop	לְהַפְסִיק	7
2561	store	חנות	7
2562	storm	סְעָרָה	7
2563	story	כַּתָבָה	7
2564	straight	יָשָׁר	7
2565	strange	מוּזָר	7
2566	stranger	זָר	7
2567	strategy	אִסטרָטֶגִיָה	7
2568	stream	זֶרֶם	7
2569	street	רְחוֹב	7
2570	strength	כּוֹחַ	7
2571	stress	לְהַדגִישׁ	7
2572	stretch	לִמְתוֹחַ	7
2573	strict	קַפְּדָנִי	7
2574	strike	לְהַכּוֹת	7
2575	string	חוּט	7
2576	strong	חָזָק	7
2577	strongly	בְּתוֹקֶף	7
2578	structure	מִבְנֶה	7
2579	struggle	מַאֲבָק	7
2580	student	סטוּדֶנט	7
2581	studio	סטוּדִיוֹ	7
2582	study	לִלמוֹד	7
2583	stuff	דְבָרִים	7
2584	stupid	מְטוּפָּשׁ	7
2585	style	סִגְנוֹן	7
2586	subject	נוֹשֵׂא	7
2587	sublist	רשימת משנה	7
2588	submit	לְהַגִישׁ	7
2589	substance	חוֹמֶר	7
2590	succeed	לְהַצְלִיחַ	7
2591	success	הַצלָחָה	7
2592	successful	מוּצלָח	7
2593	successfully	בְּהַצלָחָה	7
2594	such	כָּזֶה	7
2595	sudden	פִּתְאוֹמִי	7
2596	suddenly	פִּתְאוֹם	7
2597	suffer	לִסְבּוֹל	7
2598	sugar	סוּכָּר	7
2599	suggest	לְהַצִיעַ	7
2600	suggestion	הַצָעָה	7
2601	suit	חֲלִיפָה	7
2602	suitable	מַתְאִים	7
2603	sum	סְכוּם	7
2604	summarize	לְסַכֵּם	7
2605	summary	תַקצִיר	7
2606	summer	קַיִץ	7
2607	sun	שֶׁמֶש	7
2608	sunday	יוֹם רִאשׁוֹן	7
2609	supermarket	סוּפֶּרמַרקֶט	7
2610	supply	לְסַפֵּק	7
2611	support	תְמִיכָה	7
2612	supporter	תוֹמֵך	7
2613	suppose	לְהַנִיחַ	7
2614	sure	בַּטוּחַ	7
2615	surely	לְלֹא סָפֵק	7
2616	surface	מִשׁטָח	7
2617	surgery	כִּירוּרגִיָה	7
2618	surprise	הַפתָעָה	7
2619	surprised	מוּפתָע	7
2620	surprising	מַפתִיעַ	7
2621	surround	לְהַקִיף	7
2622	surrounding	מַקִיף	7
2623	survey	סֶקֶר	7
2624	survive	לִשְׂרוֹד	7
2625	suspect	חָשׁוּד	7
2626	swear	לְקַלֵל	7
2627	sweater	סווֶדֶר	7
2628	sweep	לְטַאטֵא	7
2629	sweet	מָתוֹק	7
2630	swim	לִשְׂחוֹת	7
2631	swimming	שְׂחִיָה	7
2632	switch	מֶתֶג	7
2633	symbol	סֵמֶל	7
2634	sympathy	אַהֲדָה	7
2635	symptom	סִימפּטוֹם	7
2636	system	מַעֲרֶכֶת	7
2637	t-shirt	חוּלצַת טִי	7
2638	table	לוּחַ	7
2639	tablet	לוּחַ	7
2640	tail	זָנָב	7
2641	take	לִיטוֹל	7
2642	tale	מַעֲשִׂיָה	7
2643	talent	כִּשָׁרוֹן	7
2644	talented	מוּכשָׁר	7
2645	talk	לְדַבֵּר	7
2646	tall	גָבוֹהַ	7
2647	tank	טַנק	7
2648	tape	סֶרֶט	7
2649	target	יַעַד	7
2650	task	מְשִׁימָה	7
2651	taste	טַעַם	7
2652	tax	מַס	7
2653	taxi	מוֹנִית	7
2654	tea	תֵה	7
2655	teach	לְלַמֵד	7
2656	teacher	מוֹרֶה	7
2657	teaching	הוֹרָאָה	7
2658	team	קְבוּצָה	7
2659	tear	דִמעָה	7
2660	technical	טֶכנִי	7
2661	technique	טֶכנִיקָה	7
2662	technology	טֶכנוֹלוֹגִיָה	7
2663	teenage	שֶׁל גִיל הָעֶשׂרֵה	7
2664	teenager	מִתבַּגֵר	7
2665	telephone	טֵלֵפוֹן	7
2666	television	טֵלֶוִיזִיָה	7
2667	tell	לְסַפֵּר	7
2668	temperature	טֶמפֶּרָטוּרָה	7
2669	temporary	זְמַנִי	7
2670	ten	עֶשֶׂר	7
2671	tend	נוטים	7
2672	tennis	טֶנִיס	7
2673	tent	אוֹהֶל	7
2674	term	מוּנָח	7
2675	terrible	נוֹרָא	7
2676	test	מִבְחָן	7
2677	text	טֶקסט	7
2678	than	מֵאֲשֶׁר	7
2679	thank	לְהוֹדוֹת	7
2680	thanks	תוֹדָה	7
2681	that	זֶה	7
2682	the	את	7
2683	theatre	תֵאַטרוֹן	7
2684	their	שֶׁלָהֶם	7
2685	theirs	שֶׁלָהֶם	7
2686	them	אוֹתָם	7
2687	theme	נוֹשֵׂא	7
2688	themselves	עַצמָם	7
2689	then	אָז	7
2690	theory	תֵאוֹרִיָה	7
2691	therapy	תֶרַפּיָה	7
2692	there	שָׁם	7
2693	therefore	לָכֵן	7
2694	they	הֵם	7
2695	thick	עָבֶה	7
2696	thief	גַנָב	7
2697	thin	דַק	7
2698	thing	דָבָר	7
2699	think	לַחשׁוֹב	7
2700	thinking	חֲשִׁיבָה	7
2701	third	שְׁלִישִׁי	7
2702	thirsty	צמא	7
2703	thirteen	שְׁלוֹשׁ עֶשׂרֵה	7
2704	thirty	שְׁלוֹשִׁים	7
2705	this	זֶה	7
2706	though	אמנם	7
2707	thought	מַחֲשָׁבָה	7
2708	thousand	אֶלֶף	7
2709	threat	אִיוּם	7
2710	threaten	לְאַיֵם	7
2711	three	שְׁלוֹשָׁה	7
2712	throat	גָרוֹן	7
2713	through	בְּאֶמצָעוּת	7
2714	throughout	בְּמֶשֶך	7
2715	throw	לִזרוֹק	7
2716	thursday	יוֹם חֲמִישִׁי	7
2717	thus	כָּך	7
2718	ticket	כַּרְטִיס	7
2719	tidy	לְנַקוֹת וֵלְסַדֵר	7
2720	tie	עֲנִיבָה	7
2721	tight	צָמוּד	7
2722	till	עַד	7
2723	time	זְמַן	7
2724	tin	פַּח	7
2725	tiny	זָעִיר	7
2726	tip	עֵצָה	7
2727	tired	עייף	7
2728	title	כּוֹתֶרֶת	7
2729	to	אֶל	7
2730	today	הַיוֹם	7
2731	toe	אֶצבַּע	7
2732	together	יַחַד	7
2733	toilet	שֵׁרוּתִים	7
2734	tomato	עַגְבָנִיָה	7
2735	tomorrow	מָחָר	7
2736	tone	טוֹן	7
2737	tongue	לָשׁוֹן	7
2738	tonight	הַלַילָה	7
2739	too	גַם	7
2740	tool	כְּלִי	7
2741	tooth	שֵׁן	7
2742	top	רֹאשׁ	7
2743	topic	נוֹשֵׂא	7
2744	total	סַך הַכֹּל	7
2745	totally	לְגַמרֵי	7
2746	touch	לָגַעַת	7
2747	tough	קָשֶׁה	7
2748	tour	סִיוּר	7
2749	tourism	תיירות	7
2750	tourist	תייר	7
2751	towards	לִקרַאת	7
2752	towel	מַגֶבֶת	7
2753	tower	מִגדָל	7
2754	town	עִיר	7
2755	toy	צַעֲצוּעַ	7
2756	track	מַסלוּל	7
2757	trade	סַחַר	7
2758	tradition	מָסוֹרֶת	7
2759	traditional	מָסוֹרתִי	7
2760	traffic	תְנוּעָה	7
2761	train	רַכֶּבֶת	7
2762	trainer	מְאַמֵן	7
2763	training	הַדְרָכָה	7
2764	transfer	לְהַעֲבִיר	7
2765	transform	לְשַׁנוֹת	7
2766	transition	מַעֲבָר	7
2767	translate	לְתַרְגֵם	7
2768	translation	תִרגוּם	7
2769	transport	תַחְבּוּרָה	7
2770	travel	לִנְסוֹעַ	7
2771	traveller	נוֹסֵעַ	7
2772	treat	לְטַפֵּל	7
2773	treatment	יַחַס	7
2774	tree	עֵץ	7
2775	trend	מְגַמָה	7
2776	trial	מִשׁפָּט	7
2777	trick	טְרִיק	7
2778	trip	טִיוּל	7
2779	tropical	טְרוֹפִּי	7
2780	trouble	צָרָה	7
2781	trousers	מִכְנָסַיִים	7
2782	truck	מַשָׂאִית	7
2783	TRUE	נָכוֹן	7
2784	truly	בֶּאֱמֶת	7
2785	trust	אֵמוּן	7
2786	truth	אֶמֶת	7
2787	try	לְנַסוֹת	7
2788	tube	שְׁפוֹפֶרֶת	7
2789	tuesday	יוֹם שְׁלִישִׁי	7
2790	tune	מַנגִינָה	7
2791	tunnel	מִנהָרָה	7
2792	turn	פִּנָה	7
2793	tv	טֵלֶוִיזִיָה	7
2794	twelve	שְׁתֵים עֶשׂרֵה	7
2795	twenty	עֶשְׂרִים	7
2796	twice	פַּעֲמַיִם	7
2797	twin	תְאוֹם	7
2798	two	דוּ	7
2799	type	סוּג	7
2800	typical	טיפוסי	7
2801	typically	בדרך כלל	7
2802	tyre	צְמִיג	7
2803	ugly	מְכוֹעָר	7
2804	ultimately	בסופו של דבר	7
2805	umbrella	מִטְרִיָה	7
2806	unable	לא מסוגל	7
2807	uncle	דוֹד	7
2808	uncomfortable	לֹא נוֹחַ	7
2809	unconscious	חֲסַר הַכָּרָה	7
2810	under	תַחַת	7
2811	underground	מַחתֶרֶת	7
2812	understand	לִהַבִין	7
2813	understanding	הֲבָנָה	7
2814	underwear	תַחתוֹנִים	7
2815	unemployed	מוּבטָל	7
2816	unemployment	אַבטָלָה	7
2817	unexpected	לֹא צָפוּי	7
2818	unfair	לֹא הוֹגֶן	7
2819	unfortunately	לְמַרְבֶּה הַצַעַר	7
2820	unhappy	אוּמלָל	7
2821	uniform	אָחִיד	7
2822	union	הִתאַחֲדוּת	7
2823	unique	ייחודי	7
2824	unit	יְחִידָה	7
2825	united	מְאוּחָד	7
2826	universe	עוֹלָם	7
2827	university	אוּנִיבֶרְסִיטָה	7
2828	unknown	לֹא יְדוּעַ	7
2829	unless	אֶלָא אִם	7
2830	unlike	שׁוֹנֶה	7
2831	unlikely	לא סביר	7
2832	unnecessary	מְיוּתָר	7
2833	unpleasant	לֹא נָעִים	7
2834	until	עַד	7
2835	unusual	יוֹצֵא דוֹפֶן	7
2836	up	לְמַעלָה	7
2837	update	לְעַדְכֵּן	7
2838	upon	עַל	7
2839	upper	עֶלִיוֹן	7
2840	upset	לְשַׁבֵּשׁ	7
2841	upstairs	לְמַעלָה	7
2842	upwards	כְּלַפֵּי מַעְלָה	7
2843	urban	עִירוֹנִי	7
2844	urge	דַחַף	7
2845	us	לָנוּ	7
2846	use	לְהִשְׁתַמֵשׁ	7
2847	used	מְשׁוּמָשׁ	7
2848	used to	רגילה	7
2849	useful	מוֹעִיל	7
2850	user	מִשׁתַמֵשׁ	7
2851	usual	רָגִיל	7
2852	usually	בְּדֶרֶך כְּלַל	7
2853	vacation	חוּפשָׁה	7
2854	valley	עֶמֶק	7
2855	valuable	בַּעַל עֵרֶך	7
2856	value	עֵרֶך	7
2857	van	טֶנדֶר	7
2858	variety	מגוון	7
2859	various	שׁוֹנִים	7
2860	vary	לְהִשְׁתַנוֹת	7
2861	vast	עָצוּם	7
2862	vegetable	יֶרֶק	7
2863	vehicle	רֶכֶב	7
2864	venue	מָקוֹם מִפגָשׁ	7
2865	version	גִרְסָה	7
2866	very	מְאוֹד	7
2867	via	בְּאֶמצָעוּת	7
2868	victim	קָרבָּן	7
2869	victory	נִצָחוֹן	7
2870	video	וִידֵאוֹ	7
2871	view	נוֹף	7
2872	viewer	צוֹפֶה	7
2873	village	כְּפָר	7
2874	violence	אַלִימוּת	7
2875	violent	אַלִים	7
2876	virtual	וירטואלי	7
2877	virus	נגיף	7
2878	vision	חָזוֹן	7
2879	visit	לְבַקֵר	7
2880	visitor	אוֹרֵחַ	7
2881	visual	חָזוּתִי	7
2882	vital	חִיוּנִי	7
2883	vitamin	וִיטָמִין	7
2884	voice	קוֹל	7
2885	volume	כֶּרֶך	7
2886	volunteer	לְהִתְנַדֵב	7
2887	vote	הַצבָּעָה	7
2888	wage	שָׂכָר	7
2889	wait	לַחֲכוֹת	7
2890	waiter	מֶלְצַר	7
2891	wake	לְהִתְעוֹרֵר	7
2892	walk	לָלֶכֶת	7
2893	wall	קִיר	7
2894	want	מַחְסוֹר	7
2895	war	מִלחָמָה	7
2896	warm	חַם	7
2897	warn	לְהַזהִיר	7
2898	warning	אַזהָרָה	7
2899	wash	לִשְׁטוֹף	7
2900	washing	כְּבָסִים	7
2901	waste	לְבַזבֵּז	7
2902	watch	לִצְפּוֹת	7
2903	water	מַיִם	7
2904	wave	גַל	7
2905	way	דֶרֶך	7
2906	we	אָנוּ	7
2907	weak	חַלָשׁ	7
2908	weakness	חוּלשָׁה	7
2909	wealth	עוֹשֶׁר	7
2910	wealthy	עָשִׁיר	7
2911	weapon	נֶשֶׁק	7
2912	wear	לִלבּוֹשׁ	7
2913	weather	מֶזֶג אֲוִיר	7
2914	web	אינטרנט	7
2915	website	אֲתַר אִינטֶרנֶט	7
2916	wedding	חֲתוּנָה	7
2917	wednesday	יוֹם רְבִיעִי	7
2918	week	שָׁבוּעַ	7
2919	weekend	סוֹף שָׁבוּעַ	7
2920	weigh	לִשְׁקוֹל	7
2921	weight	מִשׁקָל	7
2922	welcome	קַבָּלַת פָּנִים	7
2923	well	טוֹב	7
2924	west	מַעֲרָב	7
2925	western	מערבי	7
2926	wet	רָטוֹב	7
2927	what	מַה	7
2928	whatever	מה שלא יהיה	7
2929	wheel	גַלגַל	7
2930	when	כַּאֲשֵׁר	7
2931	whenever	בְּכָל פַּעַם	7
2932	where	אֵיפֹה	7
2933	whereas	ואילו	7
2934	wherever	בַּאֲשֶׁר	7
2935	whether	אִם	7
2936	which	אֵיזֶה	7
2937	while	בְּעוֹד	7
2938	whisper	לַחַשׁ	7
2939	white	לָבָן	7
2940	who	WHO	7
2941	whole	כֹּל	7
2942	whom	מִי	7
2943	whose	שֶׁל מִי	7
2944	why	מַדוּעַ	7
2945	wide	רָחָב	7
2946	widely	באופן נרחב	7
2947	wife	אִשָׁה	7
2948	wild	פְּרָאִי	7
2949	wildlife	חַיוֹת בַּר	7
2950	will	רָצוֹן	7
2951	willing	מוּכָן	7
2952	win	לְנַצֵחַ	7
2953	wind	רוּחַ	7
2954	window	חַלוֹן	7
2955	wine	יַיִן	7
2956	wing	אֲגַף	7
2957	winner	זוֹכֵה	7
2958	winter	חוֹרֶף	7
2959	wire	חוּט	7
2960	wise	חָכָם	7
2961	wish	בַּקָשָׁה	7
2962	with	עִם	7
2963	within	בְּתוֹך	7
2964	without	לְלֹא	7
2965	witness	עֵד	7
2966	woman	אִשָׁה	7
2967	wonder	פֶּלֶא	7
2968	wonderful	נִפלָא	7
2969	wood	עֵץ	7
2970	wooden	עץ	7
2971	wool	צֶמֶר	7
2972	word	מִלָה	7
2973	work	עֲבוֹדָה	7
2974	worker	עוֹבֵד	7
2975	working	עובד	7
2976	world	עוֹלָם	7
2977	worldwide	עוֹלָמִי	7
2978	worried	מוּדְאָג	7
2979	worry	דְאָגָה	7
2980	worse	גָרוּעַ יוֹתֵר	7
2981	worst	גָרוּעַ בִּיוֹתֵר	7
2982	worth	שִׁוּוּי	7
2983	would	היה	7
2984	wound	פֶּצַע	7
2985	wow	וואו	7
2986	wrap	לַעֲטוֹף	7
2987	write	לִכתוֹב	7
2988	writer	סוֹפֵר	7
2989	writing	כְּתִיבָה	7
2990	written	שֶׁבִּכְתָב	7
2991	wrong	טָעוּת	7
2992	yard	חָצֵר	7
2993	yeah	כֵּן	7
2994	year	שָׁנָה	7
2995	yellow	צָהוֹב	7
2996	yes	כֵּן	7
2997	yesterday	אֶתמוֹל	7
2998	yet	אוּלָם	7
2999	you	אַתָה	7
3000	young	צָעִיר	7
3001	your	שֶׁלְךָ	7
3002	yours	שֶׁלְךָ	7
3003	yourself	עַצמְךָ	7
3004	youth	נוֹעַר	7
3005	zero	אֶפֶס	7
3006	zone	אֵזוֹר	7
3007	lor	בְּסֵדֶ	8
3008	Lore	בְּסֵדֶר	8
3009	Lorem	לִנְטוֹשׁ	8
3010	Loremi	טלִנְטוֹשׁ	8
3011	Loremip	סוֹכֵן בְּ	8
3012	Loremips	סוֹכֵן בְּדֶ	8
3013	Lorem ips	דֶסוֹכֵן בְּסֵ	8
3014	Lorem ipsu	סוֹכֵן בְּסֵדֶר 	8
3015	Lorem ipsum	סוֹכֵן בְּסֵסֵדֶר 	8
3016	Lorem ipsumd	סוֹכֵן בְּסֵדֶר צָ	8
3017	Lorem ipsum d	סוֹכֵן בְּסֵדֶר צָהֳ	8
3018	Lorem ipsum do	סוֹכֵן בְּסֵדֶר צָהֳרַ	8
3019	Lorem ipsum dol	סוֹכֵן בְּסֵדֶר צָהֳרַיִ	8
3020	Lorem ipsum dolo	סוֹכֵן בְּסֵדֶר צָהֳרַיִי	8
3021	Lorem ipsum dolor	סוֹכֵן בְּסֵדֶר צָהֳרַיִים 	8
3022	Lorem ipsum dolors	סוֹכֵן בְּסֵסֵדֶר צָהֳרַיִים 	8
3023	Lorem ipsum dolorsi	סוֹכֵן בְּסֵדֶר צָהֳרַיִים לִ	8
3024	Lorem ipsum dolorsit	סוֹכֵן בְּסֵדֶר צָהֳרַיִים לִנְ	8
3025	Lorem ipsum dolor sit	סוֹכֵן בְּסֵדֶר צָהֳרַיִים לִנְט	8
3026	Lorem ipsum dolor sita	סוֹכֵן בְּסֵדֶר צָהֳרַיִים לִנְטוֹשׁ	8
3027	Lorem ipsum dolor sitam	סוֹכֵן	8
3028	Lorem ipsum dolor sitame	סוֹכֵן	8
3029	Lorem ipsum dolor sit ame	סוֹכֵן	8
3030	Lorem ipsum dolor sit amet	סוֹכֵן	8
3031	Lorem ipsum dolor sit ametc	סוֹכֵן	8
3032	Lorem ipsum dolor sit ametco	סוֹכֵן	8
3033	Lorem ipsum dolor sit ametcon	סוֹכֵן	8
3034	Lorem ipsum dolor sit ametcons	סוֹכֵן 	8
3035	claim	réclamer	9
3036	stuff	truc	9
3037	improve	améliorer	9
3038	instead	plutôt	9
3039	property	propriété	9
3040	beautiful	beau	9
3041	bar	bar	9
3042	dream	rêve	9
3043	sea	mer	9
3044	middle	milieu	9
3045	institution	institution	9
3046	shoulder	épaule	9
3047	fear	peur	9
3048	challenge	défi	9
3049	throughout	tout au long de	9
3050	necessary	nécessaire	9
3051	trouble	inquiéter	9
3052	writer	écrivain	9
3053	specific	spécifique	9
3054	individual	individuel	9
3055	edge	bord	9
3056	front	devant	9
3057	deep	profond	9
3058	far	loin	9
3059	rather	plutôt	9
3060	mention	mention	9
3061	range	gamme	9
3062	worry	inquiétude	9
3063	adult	adulte	9
3064	style	style	9
3065	best	meilleur	9
3066	unit	unité	9
3067	conference	conférence	9
3068	inside	à l'intérieur	9
3069	affect	affecter	9
3070	evening	soirée	9
3071	trip	voyage	9
3072	treat	traiter	9
3073	production	production	9
3074	top	haut	9
3075	candidate	candidat	9
3076	discover	découvrir	9
3077	suddenly	soudainement	9
3078	weight	poids	9
3079	bit	peu	9
3080	perform	effectuer	9
3081	politics	politique	9
3082	structure	structure	9
3083	camera	caméra	9
3084	particular	particulier	9
3085	fish	poisson	9
3086	chair	chaise	9
3087	manage	gérer	9
3088	interview	entretien	9
3089	fly	voler	9
3090	shake	secouer	9
3091	wide	large	9
3092	measure	mesure	9
3093	play	jouer	9
3094	apply	appliquer	9
3095	pain	douleur	9
3096	base	base	9
3097	control	contrôle	9
3098	head	tête	9
3099	peace	paix	9
3100	contain	contenir	9
3101	cultural	culturel	9
3102	employee	employé	9
3103	weapon	arme	9
3104	direction	direction	9
3105	reveal	révéler	9
3106	onto	sur	9
3107	traditional	traditionnel	9
3108	popular	populaire	9
3109	charge	charge	9
3110	maintain	maintenir	9
3111	statement	déclaration	9
3112	respond	répondre	9
3113	impact	impact	9
3114	theory	théorie	9
3115	talk	parler	9
3116	yourself	toi-même	9
3117	finish	finition	9
3118	close	fermer	9
3119	no	Non	9
3120	ball	balle	9
3121	huge	énorme	9
3122	tonight	ce soir	9
3123	imagine	imaginer	9
3124	avoid	éviter	9
3125	care	soins	9
3126	management	gestion	9
3127	visit	visite	9
3128	radio	radio	9
3129	Democrat	Démocrate	9
3130	firm	ferme	9
3131	spring	printemps	9
3132	that	que	9
3133	expert	expert	9
3134	trial	procès	9
3135	nice	bon	9
3136	establish	établir	9
3137	cell	cellule	9
3138	seat	siège	9
3139	above	au-dessus de	9
3140	card	carte	9
3141	memory	mémoire	9
3142	green	vert	9
3143	science	science	9
3144	main	principal	9
3145	final	final	9
3146	form	formulaire	9
3147	cold	froid	9
3148	religious	religieux	9
3149	legal	légal	9
3150	network	réseau	9
3151	enjoy	apprécier	9
3152	sound	son	9
3153	close	fermer	9
3154	help	aide	9
3155	manager	directeur	9
3156	remove	retirer	9
3157	note	note	9
3158	claim	réclamer	9
3159	since	depuis	9
3160	forget	oublier	9
3161	enough	assez	9
3162	design	conception	9
3163	rock	rocher	9
3164	entire	entier	9
3165	hang	accrocher	9
3166	prove	prouver	9
3167	study	étude	9
3168	set	ensemble	9
3169	executive	exécutif	9
3170	guess	deviner	9
3171	laugh	rire	9
3172	rather	plutôt	9
3173	various	divers	9
3174	public	publique	9
3175	dark	sombre	9
3176	leg	jambe	9
3177	environment	environnement	9
3178	check	vérifier	9
3179	democratic	démocratique	9
3180	example	exemple	9
3181	song	chanson	9
3182	truth	vérité	9
3183	force	forcer	9
3184	indeed	en effet	9
3185	discuss	discuter	9
3186	clearly	clairement	9
3187	little	petit	9
3188	strategy	stratégie	9
3189	state	État	9
3190	blue	bleu	9
3191	station	gare	9
3192	gun	pistolet	9
3193	knowledge	connaissance	9
3194	ten	dix	9
3195	act	acte	9
3196	one	un	9
3197	sort	trier	9
3198	design	conception	9
3199	miss	manquer	9
3200	authority	autorité	9
3201	compare	comparer	9
3202	ok	d'accord	9
3203	stage	scène	9
3204	crime	crime	9
3205	financial	financier	9
3206	operation	opération	9
3207	professor	professeur	9
3208	PM	MP	9
3209	sister	sœur	9
3210	skill	compétence	9
3211	answer	répondre	9
3212	glass	verre	9
3213	environmental	environnemental	9
3214	section	section	9
3215	present	présent	9
3216	lawyer	avocat	9
3217	forward	avant	9
3218	sex	sexe	9
3219	name	nom	9
3220	benefit	avantage	9
3221	analysis	analyse	9
3222	arrive	arriver	9
3223	outside	dehors	9
3224	fail	échouer	9
3225	message	message	9
3226	bill	facture	9
3227	standard	standard	9
3228	feeling	sentiment	9
3229	general	général	9
3230	lay	poser	9
3231	physical	physique	9
3232	everybody	tout le monde	9
3233	election	élection	9
3234	deal	accord	9
3235	trade	commerce	9
3236	pretty	joli	9
3237	training	entraînement	9
3238	TV	TV	9
3239	box	boîte	9
3240	television	télévision	9
3241	region	région	9
3242	herself	se	9
3243	attack	attaque	9
3244	wonder	merveille	9
3245	degree	degré	9
3246	loss	perte	9
3247	growth	croissance	9
3248	character	personnage	9
3249	indicate	indiquer	9
3250	recognize	reconnaître	9
3251	staff	personnel	9
3252	ability	capacité	9
3253	amount	montant	9
3254	particularly	particulièrement	9
3255	cup	tasse	9
3256	argue	argumenter	9
3257	success	succès	9
3258	whatever	peu importe	9
3259	disease	maladie	9
3260	prepare	préparer	9
3261	determine	déterminer	9
3262	meeting	réunion	9
3263	left	gauche	9
3264	identify	identifier	9
3265	resource	ressource	9
3266	hard	dur	9
3267	answer	répondre	9
3268	accept	accepter	9
3269	pressure	pression	9
3270	quality	qualité	9
3271	simple	simple	9
3272	individual	individuel	9
3273	list	liste	9
3274	thought	pensée	9
3275	sign	signe	9
3276	ready	prêt	9
3277	media	médias	9
3278	occur	se produire	9
3279	serious	sérieux	9
3280	fund	fonds	9
3281	dog	chien	9
3282	size	taille	9
3283	lie	mensonge	9
3284	approach	approche	9
3285	protect	protéger	9
3286	exactly	exactement	9
3287	happy	heureux	9
3288	beyond	au-delà	9
3289	treatment	traitement	9
3290	thus	ainsi	9
3291	eight	huit	9
3292	central	central	9
3293	despite	malgré	9
3294	career	carrière	9
3295	stock	action	9
3296	scene	scène	9
3297	away	loin	9
3298	artist	artiste	9
3299	seven	Sept	9
3300	save	sauvegarder	9
3301	east	est	9
3302	shoot	tirer	9
3303	article	article	9
3304	decade	décennie	9
3305	factor	facteur	9
3306	animal	animal	9
3307	rise	augmenter	9
3308	dead	mort	9
3309	response	réponse	9
3310	usually	généralement	9
3311	each	chaque	9
3312	language	langue	9
3313	hot	chaud	9
3314	similar	similaire	9
3315	significant	significatif	9
3316	series	série	9
3317	concern	préoccupation	9
3318	race	course	9
3319	natural	naturel	9
3320	other	autre	9
3321	poor	pauvre	9
3322	common	commun	9
3323	than	que	9
3324	share	partager	9
3325	enter	entrer	9
3326	page	page	9
3327	movement	mouvement	9
3328	near	près	9
3329	before	avant	9
3330	fine	bien	9
3331	note	note	9
3332	sound	son	9
3333	reduce	réduire	9
3334	store	magasin	9
3335	recently	récemment	9
3336	no	Non	9
3337	color	couleur	9
3338	nature	nature	9
3339	push	pousser	9
3340	agency	agence	9
3341	upon	sur	9
3342	blood	sang	9
3343	plan	plan	9
3344	drop	baisse	9
3345	foreign	étranger	9
3346	focus	se concentrer	9
3347	represent	représenter	9
3348	fill	remplir	9
3349	author	auteur	9
3350	order	commande	9
3351	bed	lit	9
3352	second	deuxième	9
3353	goal	but	9
3354	past	passé	9
3355	quickly	rapidement	9
3356	top	haut	9
3357	throw	lancer	9
3358	fight	lutte	9
3359	performance	performance	9
3360	deal	accord	9
3361	behavior	comportement	9
3362	rest	repos	9
3363	private	privé	9
3364	officer	officier	9
3365	subject	sujet	9
3366	per	par	9
3367	seek	chercher	9
3368	board	conseil	9
3369	sport	sport	9
3370	west	Ouest	9
3371	certainly	certainement	9
3372	myself	moi-même	9
3373	bank	banque	9
3374	security	sécurité	9
3375	increase	augmenter	9
3376	anyone	n'importe qui	9
3377	defense	défense	9
3378	involve	impliquer	9
3379	wrong	faux	9
3380	future	avenir	9
3381	fire	feu	9
3382	current	actuel	9
3383	risk	risque	9
3384	thousand	mille	9
3385	close	fermer	9
3386	church	église	9
3387	hospital	hôpital	9
3388	medical	médical	9
3389	economy	économie	9
3390	call	appel	9
3391	well	Bien	9
3392	population	population	9
3393	material	matériel	9
3394	campaign	campagne	9
3395	floor	sol	9
3396	Congress	Congrès	9
3397	husband	mari	9
3398	south	sud	9
3399	administration	administration	9
3400	daughter	fille	9
3401	rule	règle	9
3402	single	célibataire	9
3403	place	lieu	9
3404	choice	choix	9
3405	condition	condition	9
3406	letter	lettre	9
3407	short	court	9
3408	term	terme	9
3409	opportunity	opportunité	9
3410	likely	probable	9
3411	plant	usine	9
3412	available	disponible	9
3413	hundred	cent	9
3414	realize	réaliser	9
3415	less	moins	9
3416	summer	été	9
3417	course	cours	9
3418	period	période	9
3419	energy	énergie	9
3420	brother	frère	9
3421	chance	chance	9
3422	billion	milliard	9
3423	culture	culture	9
3424	soon	bientôt	9
3425	listen	écouter	9
3426	difficult	difficile	9
3427	window	fenêtre	9
3428	evidence	preuve	9
3429	century	siècle	9
3430	point	indiquer	9
3431	look	regarder	9
3432	hair	cheveux	9
3433	cause	cause	9
3434	choose	choisir	9
3435	organization	organisation	9
3436	nearly	presque	9
3437	red	rouge	9
3438	source	source	9
3439	tree	arbre	9
3440	Republican	Républicain	9
3441	film	film	9
3442	draw	dessiner	9
3443	attention	attention	9
3444	type	taper	9
3445	computer	ordinateur	9
3446	baby	bébé	9
3447	step	étape	9
3448	catch	attraper	9
3449	technology	technologie	9
3450	third	troisième	9
3451	simply	simplement	9
3452	support	soutien	9
3453	open	ouvrir	9
3454	personal	personnel	9
3455	love	amour	9
3456	north	nord	9
3457	certain	certain	9
3458	movie	film	9
3459	test	test	9
3460	news	nouvelles	9
3461	worker	travailleur	9
3462	patient	patient	9
3463	wall	mur	9
3464	doctor	médecin	9
3465	product	produit	9
3466	describe	décrire	9
3467	recent	récent	9
3468	land	atterrir	9
3469	piece	morceau	9
3470	practice	pratique	9
3471	clear	clair	9
3472	picture	image	9
3473	quite	assez	9
3474	cover	couverture	9
3475	data	données	9
3476	either	soit	9
3477	phone	téléphone	9
3478	itself	lui-même	9
3479	image	image	9
3480	street	rue	9
3481	face	affronter	9
3482	figure	chiffre	9
3483	industry	industrie	9
3484	cost	coût	9
3485	easy	facile	9
3486	situation	situation	9
3487	half	moitié	9
3488	oil	huile	9
3489	teach	enseigner	9
3490	American	Américain	9
3491	eat	manger	9
3492	produce	produire	9
3493	court	tribunal	9
3494	need	besoin	9
3495	table	tableau	9
3496	star	étoile	9
3497	activity	activité	9
3498	base	base	9
3499	hit	frapper	9
3500	project	projet	9
3501	end	fin	9
3502	site	site	9
3503	couple	couple	9
3504	center	centre	9
3505	everyone	tout le monde	9
3506	matter	matière	9
3507	whose	dont	9
3508	official	officiel	9
3509	event	événement	9
3510	support	soutien	9
3511	form	formulaire	9
3512	ground	sol	9
3513	space	espace	9
3514	special	spécial	9
3515	paper	papier	9
3516	wear	porter	9
3517	pick	prendre	9
3518	record	enregistrer	9
3519	especially	en particulier	9
3520	agree	accepter	9
3521	player	joueur	9
3522	position	position	9
3523	early	tôt	9
3524	director	directeur	9
3525	tax	impôt	9
3526	because	parce que	9
3527	society	société	9
3528	season	saison	9
3529	join	rejoindre	9
3530	model	modèle	9
3531	full	complet	9
3532	action	action	9
3533	building	bâtiment	9
3534	international	international	9
3535	value	valeur	9
3536	receive	recevoir	9
3537	thank	remercier	9
3538	difference	différence	9
3539	better	mieux	9
3540	break	casser	9
3541	federal	fédéral	9
3542	TRUE	VRAI	9
3543	arm	bras	9
3544	drive	conduire	9
3545	road	route	9
3546	town	ville	9
3547	carry	porter	9
3548	relationship	relation	9
3549	view	voir	9
3550	develop	développer	9
3551	even	même	9
3552	hope	espoir	9
3553	son	fils	9
3554	explain	expliquer	9
3555	decision	décision	9
3556	according	selon	9
3557	less	moins	9
3558	report	rapport	9
3559	price	prix	9
3560	military	militaire	9
3561	free	gratuit	9
3562	return	retour	9
3563	pull	tirer	9
3564	finally	enfin	9
3565	mind	esprit	9
3566	police	police	9
3567	whole	entier	9
3568	wife	épouse	9
3569	voice	voix	9
3570	light	lumière	9
3571	leader	chef	9
3572	show	montrer	9
3573	drug	médicament	9
3574	heart	cœur	9
3575	possible	possible	9
3576	strong	fort	9
3577	rate	taux	9
3578	decide	décider	9
3579	up	en haut	9
3580	effort	effort	9
3581	economic	économique	9
3582	better	mieux	9
3583	role	rôle	9
3584	report	rapport	9
3585	themselves	eux-mêmes	9
3586	development	développement	9
3587	along	le long de	9
3588	require	exiger	9
3589	sometimes	parfois	9
3590	major	majeur	9
3591	sell	vendre	9
3592	former	ancien	9
3593	pass	passer	9
3594	else	autre	9
3595	field	champ	9
3596	hard	dur	9
3597	late	en retard	9
3598	little	petit	9
3599	perhaps	peut-être	9
3600	care	soins	9
3601	raise	augmenter	9
3602	control	contrôle	9
3603	class	classe	9
3604	suggest	suggérer	9
3605	yeah	Ouais	9
3606	use	utiliser	9
3607	effect	effet	9
3608	remain	rester	9
3609	six	six	9
3610	kill	tuer	9
3611	local	locale	9
3612	reach	atteindre	9
3613	behind	derrière	9
3614	experience	expérience	9
3615	someone	quelqu'un	9
3616	course	cours	9
3617	death	la mort	9
3618	interest	intérêt	9
3619	college	collège	9
3620	cut	couper	9
3621	plan	plan	9
3622	nation	nation	9
3623	oh	Oh	9
3624	fall	automne	9
3625	stay	rester	9
3626	build	construire	9
3627	sense	sens	9
3628	home	maison	9
3629	expect	attendre	9
3630	send	envoyer	9
3631	die	mourir	9
3632	market	marché	9
3633	serve	servir	9
3634	wait	attendez	9
3635	human	humain	9
3636	probably	probablement	9
3637	buy	acheter	9
3638	actually	en fait	9
3639	appear	apparaître	9
3640	consider	considérer	9
3641	including	y compris	9
3642	music	musique	9
3643	process	processus	9
3644	love	amour	9
3645	everything	tout	9
3646	policy	politique	9
3647	off	désactivé	9
3648	age	âge	9
3649	able	capable	9
3650	toward	vers	9
3651	maybe	peut être	9
3652	boy	garçon	9
3653	second	deuxième	9
3654	foot	pied	9
3655	remember	souviens-toi	9
3656	although	bien que	9
3657	across	à travers	9
3658	education	éducation	9
3659	both	les deux	9
3660	enough	assez	9
3661	offer	offre	9
3662	force	forcer	9
3663	teacher	professeur	9
3664	air	air	9
3665	himself	se	9
3666	moment	moment	9
3667	before	avant	9
3668	food	nourriture	9
3669	early	tôt	9
3670	guy	gars	9
3671	girl	fille	9
3672	research	recherche	9
3673	win	gagner	9
3674	low	faible	9
3675	reason	raison	9
3676	walk	marcher	9
3677	morning	matin	9
3678	change	changement	9
3679	open	ouvrir	9
3680	result	résultat	9
3681	grow	grandir	9
3682	within	dans	9
3683	party	faire la fête	9
3684	history	histoire	9
3685	war	guerre	9
3686	such	tel	9
3687	sure	bien sûr	9
3688	art	art	9
3689	person	personne	9
3690	health	santé	9
3691	door	porte	9
3692	spend	dépenser	9
3693	office	bureau	9
3694	add	ajouter	9
3695	allow	permettre	9
3696	level	niveau	9
3697	read	lire	9
3698	others	autres	9
3699	speak	parler	9
3700	already	déjà	9
3701	public	publique	9
3702	create	créer	9
3703	anything	rien	9
3704	face	affronter	9
3705	stop	arrêt	9
3706	only	seulement	9
3707	parent	mère	9
3708	around	autour	9
3709	follow	suivre	9
3710	together	ensemble	9
3711	watch	montre	9
3712	back	dos	9
3713	whether	si	9
3714	understand	comprendre	9
3715	social	sociale	9
3716	lead	plomb	9
3717	right	droite	9
3718	ago	il y a	9
3719	nothing	rien	9
3720	information	information	9
3721	body	corps	9
3722	kid	enfant	9
3723	idea	idée	9
3724	several	plusieurs	9
3725	best	meilleur	9
3726	minute	minute	9
3727	team	équipe	9
3728	change	changement	9
3729	real	réel	9
3730	learn	apprendre	9
3731	president	président	9
3732	least	moins	9
3733	white	blanc	9
3734	once	une fois	9
3735	five	cinq	9
3736	name	nom	9
3737	much	beaucoup	9
3738	community	communauté	9
3739	later	plus tard	9
3740	set	ensemble	9
3741	continue	continuer	9
3742	include	inclure	9
3743	almost	presque	9
3744	city	ville	9
3745	car	voiture	9
3746	meet	rencontrer	9
3747	law	loi	9
3748	pay	payer	9
3749	member	membre	9
3750	however	cependant	9
3751	lose	perdre	9
3752	bad	mauvais	9
3753	stand	rester	9
3754	ever	jamais	9
3755	among	parmi	9
3756	end	fin	9
3757	political	politique	9
3758	line	doubler	9
3759	yet	encore	9
3760	often	souvent	9
3761	game	jeu	9
3762	hour	heure	9
3763	power	pouvoir	9
3764	until	jusqu'à	9
3765	away	loin	9
3766	sit	s'asseoir	9
3767	father	père	9
3768	important	important	9
3769	friend	ami	9
3770	around	autour	9
3771	service	service	9
3772	provide	fournir	9
3773	long	long	9
3774	since	depuis	9
3775	after	après	9
3776	yes	Oui	9
3777	house	maison	9
3778	little	petit	9
3779	both	les deux	9
3780	long	long	9
3781	black	noir	9
3782	far	loin	9
3783	head	tête	9
3784	four	quatre	9
3785	kind	gentil	9
3786	side	côté	9
3787	issue	problème	9
3788	business	entreprise	9
3789	though	cependant	9
3790	word	mot	9
3791	job	emploi	9
3792	eye	œil	9
3793	book	livre	9
3794	study	étude	9
3795	right	droite	9
3796	lot	parcelle	9
3797	different	différent	9
3798	month	mois	9
3799	fact	fait	9
3800	young	jeune	9
3801	story	histoire	9
3802	money	argent	9
3803	national	national	9
3804	area	zone	9
3805	mother	mère	9
3806	write	écrire	9
3807	room	chambre	9
3808	water	eau	9
3809	under	sous	9
3810	home	maison	9
3811	must	doit	9
3812	million	million	9
3813	all	tous	9
3814	large	grand	9
3815	before	avant	9
3816	without	sans	9
3817	next	suivant	9
3818	happen	arriver	9
3819	bring	apporter	9
3820	today	aujourd'hui	9
3821	hold	prise	9
3822	believe	croire	9
3823	point	indiquer	9
3824	Mr.	M.	9
3825	live	en direct	9
3826	night	nuit	9
3827	like	comme	9
3828	move	se déplacer	9
3829	always	toujours	9
3830	off	désactivé	9
3831	number	nombre	9
3832	small	petit	9
3833	run	courir	9
3834	government	gouvernement	9
3835	play	jouer	9
3836	work	travail	9
3837	during	pendant	9
3838	question	question	9
3839	so	donc	9
3840	hear	entendre	9
3841	program	programme	9
3842	right	droite	9
3843	each	chaque	9
3844	system	système	9
3845	where	où	9
3846	company	entreprise	9
3847	week	semaine	9
3848	most	la plupart	9
3849	case	cas	9
3850	few	peu	9
3851	again	encore	9
3852	such	tel	9
3853	over	sur	9
3854	place	lieu	9
3855	against	contre	9
3856	about	à propos	9
3857	part	partie	9
3858	show	montrer	9
3859	American	Américain	9
3860	might	pourrait	9
3861	hand	main	9
3862	start	commencer	9
3863	every	chaque	9
3864	problem	problème	9
3865	turn	tourner	9
3866	where	où	9
3867	talk	parler	9
3868	help	aide	9
3869	country	pays	9
3870	seem	sembler	9
3871	begin	commencer	9
3872	group	groupe	9
3873	big	grand	9
3874	same	même	9
3875	great	super	9
3876	let	laisser	9
3877	why	pourquoi	9
3878	student	étudiant	9
3879	keep	garder	9
3880	on	sur	9
3881	mean	signifier	9
3882	while	alors que	9
3883	old	vieux	9
3884	put	mettre	9
3885	leave	partir	9
3886	out	dehors	9
3887	own	propre	9
3888	family	famille	9
3889	much	beaucoup	9
3890	another	un autre	9
3891	most	la plupart	9
3892	something	quelque chose	9
3893	really	vraiment	9
3894	high	haut	9
3895	between	entre	9
3896	become	devenir	9
3897	never	jamais	9
3898	state	État	9
3899	when	quand	9
3900	three	trois	9
3901	feel	sentir	9
3902	too	aussi	9
3903	need	besoin	9
3904	ask	demander	9
3905	last	dernier	9
3906	as	comme	9
3907	in	dans	9
3908	try	essayer	9
3909	still	toujours	9
3910	school	école	9
3911	over	sur	9
3912	world	monde	9
3913	call	appel	9
3914	should	devrait	9
3915	after	après	9
3916	may	peut	9
3917	down	vers le bas	9
3918	work	travail	9
3919	there	là	9
3920	child	enfant	9
3921	life	vie	9
3922	us	nous	9
3923	through	à travers	9
3924	woman	femme	9
3925	good	bien	9
3926	any	n'importe lequel	9
3927	back	dos	9
3928	even	même	9
3929	her	son	9
3930	very	très	9
3931	one	un	9
3932	tell	dire	9
3933	those	ceux	9
3934	only	seulement	9
3935	well	Bien	9
3936	many	beaucoup	9
3937	give	donner	9
3938	thing	chose	9
3939	here	ici	9
3940	find	trouver	9
3941	man	homme	9
3942	no	Non	9
3943	use	utiliser	9
3944	more	plus	9
3945	day	jour	9
3946	because	parce que	9
3947	new	nouveau	9
3948	also	aussi	9
3949	first	d'abord	9
3950	look	regarder	9
3951	way	chemin	9
3952	want	vouloir	9
3953	these	ces	9
3954	more	plus	9
3955	two	deux	9
3956	our	notre	9
3957	its	c'est	9
3958	then	alors	9
3959	how	comment	9
3960	other	autre	9
3961	like	comme	9
3962	than	que	9
3963	now	maintenant	9
3964	could	pourrait	9
3965	come	viens	9
3966	your	ton	9
3967	him	lui	9
3968	see	voir	9
3969	just	juste	9
3970	into	dans	9
3971	out	dehors	9
3972	take	prendre	9
3973	people	personnes	9
3974	me	moi	9
3975	some	quelques	9
3976	them	eux	9
3977	which	lequel	9
3978	when	quand	9
3979	think	pense	9
3980	so	donc	9
3981	year	année	9
3982	there	là	9
3983	time	temps	9
3984	one	un	9
3985	up	en haut	9
3986	as	comme	9
3987	will	volonté	9
3988	know	savoir	9
3989	about	à propos	9
3990	make	faire	9
3991	my	mon	9
3992	all	tous	9
3993	her	son	9
3994	would	serait	9
3995	if	si	9
3996	get	obtenir	9
3997	who	OMS	9
3998	can	peut	9
3999	their	leur	9
4000	go	aller	9
4001	what	quoi	9
4002	as	comme	9
4003	or	ou	9
4004	she	elle	9
4005	by	par	9
4006	won’t	ne le fera pas	9
4007	can’t	ne peut pas	9
4008	not	pas	9
4009	that	que	9
4010	from	depuis	9
4011	his	son	9
4012	we	nous	9
4013	but	mais	9
4014	at	à	9
4015	they	ils	9
4016	this	ce	9
4017	say	dire	9
4018	do	faire	9
4019	on	sur	9
4020	with	avec	9
4021	he	il	9
4022	you	toi	9
4023	for	pour	9
4024	that	que	9
4025	I	je	9
4026	it	il	9
4027	too	aussi	9
4028	have	avoir	9
4029	to	à	9
4030	in	dans	9
4031	a	un	9
4032	of	de	9
4033	and	et	9
4034	be	être	9
4069	praiseworthy	אשרי	10
4070	who dwell in	יושבי	10
4071	your house	ביתך	10
4072	more	עוד	10
4073	they will praise you	יהללוך	10
4074	(think upon it)	סלה	10
4075	the people	העם	10
4076	for which	שככה	10
4077	his	לו	10
4078	his G-d	אלקיו	10
4079	that G-d	שיי	10
4080	song of praise	תהלה	10
4081	by David	לדוד	10
4082	I will exalt you	ארוממך	10
4083	my G-d	אלוקי	10
4084	the king	המלך	10
4085	I will bless you	אברכה	10
4086	your name	שמך	10
4087	forever	לעולם ועד	10
4088	in every	בכל	10
4089	day	יום	10
4090	I will praise	אהללה	10
4091	great	גדול	10
4092	G-d	יי	10
4093	praised	מהולל	10
4094	much	מאד	10
4095	his greatness	גדולתו	10
4096	not	אין	10
4097	investigation	חקר	10
4098	generation	דור	10
4099	will praise	ישבח	10
4100	your deeds	מעשיך	10
4101	your mighty deeds	גבורתך	10
4102	they will tell	יגידו	10
4103	you	אַתָה	11
4104	I	אֲנִי	11
4105	to	אֶל	11
4106	the	את	11
4107	and	ו	11
4108	that	זֶה	11
4109	of	שֶׁל	11
4110	me	לִי	11
4111	in	ב	11
4112	this	זֶה	11
4113	for	עֲבוּר	11
4114	no	לֹא	11
4115	have	יש	11
4116	my	שֶׁלִי	11
4117	just	רַק	11
4118	not	לֹא	11
4119	do	לַעֲשׂוֹת	11
4120	be	לִהיוֹת	11
4121	on	עַל	11
4122	your	שֶׁלְךָ	11
4123	was	היה	11
4124	we	אָנוּ	11
4125	with	עִם	11
4126	but	אֲבָל	11
4127	all	כֹּל	11
4128	well	טוֹב	11
4129	he	הוּא	11
4130	about	אוֹדוֹת	11
4131	right	יָמִינָה	11
4132	get	לְקַבֵּל	11
4133	here	כָּאן	11
4134	out	הַחוּצָה	11
4135	if	אִם	11
4136	her	שֶׁלָה	11
4137	she	הִיא	11
4138	can	פַּחִית	11
4139	up	לְמַעלָה	11
4140	want	מַחְסוֹר	11
4141	now	עַכשָׁיו	11
4142	go	לָלֶכֶת	11
4143	him	אוֹתוֹ	11
4144	there	שָׁם	11
4145	one	אֶחָד	11
4146	why	מַדוּעַ	11
4147	see	לִרְאוֹת	11
4148	come	לָבוֹא	11
4149	good	טוֹב	11
4150	they	הֵם	11
4151	really	בֶּאֱמֶת	11
4152	when	כַּאֲשֵׁר	11
4153	back	בְּחֲזָרָה	11
4154	from	מִן	11
4155	were	היו	11
4156	yes	כֵּן	11
4157	his	שֶׁלוֹ	11
4158	or	אוֹ	11
4159	who	WHO	11
4160	because	כִּי	11
4161	some	כַּמָה	11
4162	then	אָז	11
4163	say	לוֹמַר	11
4164	an	an	11
4165	way	דֶרֶך	11
4166	us	לָנוּ	11
4167	little	קְצָת	11
4168	never	לְעוֹלָם לֹא	11
4169	too	גַם	11
4170	sure	בַּטוּחַ	11
4171	more	יוֹתֵר	11
4172	over	מֵעַל	11
4173	our	שֶׁלָנוּ	11
4174	sorry	מִצטַעֵר	11
4175	where	אֵיפֹה	11
4176	let	לְאַפשֵׁר	11
4177	maybe	אוּלַי	11
4178	down	לְמַטָה	11
4179	man	אָדָם	11
4180	very	מְאוֹד	11
4181	by	עַל יְדֵי	11
4182	anything	דָבָר	11
4183	much	הַרבֵּה	11
4184	any	כֹּל	11
4185	life	חַיִים	11
4186	even	אֲפִילוּ	11
4187	off	כבוי	11
4188	please	אָנָא	11
4189	thank	לְהוֹדוֹת	11
4190	only	רַק	11
4191	help	עֶזרָה	11
4192	two	דוּ	11
4193	talk	לְדַבֵּר	11
4194	people	אֲנָשִׁים	11
4195	God	אֵל	11
4196	still	עוֹד	11
4197	wait	לַחֲכוֹת	11
4198	into	לְתוֹך	11
4199	find	לִמצוֹא	11
4200	again	שׁוּב	11
4201	thing	דָבָר	11
4202	call	שִׂיחָה	11
4203	told	סיפר	11
4204	great	גָדוֹל	11
4205	before	לִפנֵי	11
4206	better	לְשַׁפֵּר	11
4207	ever	אֵיִ פַּעַם	11
4208	night	לַיְלָה	11
4209	than	מֵאֲשֶׁר	11
4210	away	רָחוֹק	11
4211	first	רֵאשִׁית	11
4212	believe	לְהֶאֱמִין	11
4213	fine	עָדִין	11
4214	home	בַּיִת	11
4215	after	לְאַחַר	11
4216	last	אַחֲרוֹן	11
4217	these	אֵלֶה	11
4218	put	לָשִׂים	11
4219	around	סְבִיב	11
4220	stop	לְהַפְסִיק	11
4221	long	אָרוֹך	11
4222	always	תָמִיד	11
4223	listen	לְהַקְשִׁיב	11
4224	those	הָהֵן	11
4225	big	גָדוֹל	11
4226	lot	מִגרָשׁ	11
4227	kind	סוּג	11
4228	wrong	טָעוּת	11
4229	through	בְּאֶמצָעוּת	11
4230	new	חָדָשׁ	11
4231	guess	לְנַחֵשׁ	11
4232	care	לְטַפֵּל	11
4233	bad	רַע	11
4234	mom	אִמָא	11
4235	remember	לִזכּוֹר	11
4236	together	יַחַד	11
4237	dad	אַבָּא	11
4238	leave	לַעֲזוֹב	11
4239	mother	אִמָא	11
4240	place	מָקוֹם	11
4241	understand	לִהַבִין	11
4242	actually	לְמַעֲשֶׂה	11
4243	hear	לִשְׁמוֹעַ	11
4244	baby	תִינוֹק	11
4245	nice	נֶחְמָד	11
4246	father	אַבָּא	11
4247	else	אַחֵר	11
4248	stay	שָׁהוּת	11
4249	their	שֶׁלָהֶם	11
4250	course	קוּרס	11
4251	might	יָכוֹל	11
4252	mind	דֵעָה	11
4253	every	כֹּל	11
4254	enough	מַסְפִּיק	11
4255	try	לְנַסוֹת	11
4256	hell	גֵיהִנוֹם	11
4257	came	הגיע	11
4258	someone	מִישֶׁהוּ	11
4259	own	שֶׁלוֹ	11
4260	family	מִשׁפָּחָה	11
4261	whole	כֹּל	11
4262	another	אַחֵר	11
4263	house	בַּיִת	11
4264	yourself	עַצמְךָ	11
4265	idea	רַעְיוֹן	11
4266	ask	לִשְׁאוֹל	11
4267	best	טוֹב בִּיוֹתֵר	11
4268	must	חוֹבָה	11
4269	old	יָשָׁן	11
4270	woman	אִשָׁה	11
4271	hello	שלום	11
4272	which	אֵיזֶה	11
4273	room	חֶדֶר	11
4274	money	כֶּסֶף	11
4275	left	שְׁמֹאל	11
4276	tonight	הַלַילָה	11
4277	real	רִיאָל	11
4278	son	בֵּן	11
4279	hope	לְקַווֹת	11
4280	name	שֵׁם	11
4281	same	אוֹתוֹ	11
4282	happy	שַׂמֵחַ	11
4283	pretty	יָפֶה	11
4284	girl	יַלדָה	11
4285	sir	אֲדוֹנִי	11
4286	show	לְהַצִיג	11
4287	already	כְּבָר	11
4288	may	מַאִי	11
4289	next	הַבָּא	11
4290	three	שְׁלוֹשָׁה	11
4291	found	נמצא	11
4292	world	עוֹלָם	11
4293	honey	דְבַשׁ	11
4294	myself	עַצמִי	11
4295	exactly	בְּדִיוּק	11
4296	probably	כַּנִראֶה	11
4297	hurt	פְּגִיעָה	11
4298	both	שְׁנֵיהֶם	11
4299	while	בְּעוֹד	11
4300	dead	מֵת	11
4301	alone	לְבַד	11
4302	since	מֵאָז	11
4303	excuse	סְלִיחָה	11
4304	start	הַתחָלָה	11
4305	kill	לַהֲרוֹג	11
4306	hard	קָשֶׁה	11
4307	today	הַיוֹם	11
4308	car	מְכוֹנִית	11
4309	ready	מוּכָן	11
4310	until	עַד	11
4311	without	לְלֹא	11
4312	whatever	מה שלא יהיה	11
4313	deal	עִסקָה	11
4314	took	לקח	11
4315	once	פַּעַם	11
4316	friend	חבר	11
4317	head	רֹאשׁ	11
4318	stuff	דְבָרִים	11
4319	most	רוֹב	11
4320	worry	דְאָגָה	11
4321	second	שְׁנִיָה	11
4322	part	חֵלֶק	11
4323	truth	אֶמֶת	11
4324	school	בֵּית סֵפֶר	11
4325	face	פָּנִים	11
4326	forget	לִשְׁכּוֹחַ	11
4327	business	עֵסֶק	11
4328	each	כֹּל	11
4329	cause	לִגרוֹם	11
4330	soon	בְּקָרוּב	11
4331	wife	אִשָׁה	11
4332	use	לְהִשְׁתַמֵשׁ	11
4333	chance	הִזדַמְנוּת	11
4334	run	לָרוּץ	11
4335	move	מַהֲלָך	11
4336	anyone	כֹּל אֶחָד	11
4337	person	אָדָם	11
4338	bye	ביי	11
4339	somebody	מִישֶׁהוּ	11
4340	heart	לֵב	11
4341	such	כָּזֶה	11
4342	point	נְקוּדָה	11
4343	later	מְאוּחָר יוֹתֵר	11
4344	meet	לִפְגוֹשׁ	11
4345	anyway	בכל מקרה	11
4346	phone	טֵלֵפוֹן	11
4347	reason	לְנַמֵק	11
4348	lost	אָבֵד	11
4349	look	מַבָּט	11
4350	bring	לְהָבִיא	11
4351	case	מִקרֶה	11
4352	wish	בַּקָשָׁה	11
4353	tomorrow	מָחָר	11
4354	trust	אֵמוּן	11
4355	check	לִבדוֹק	11
4356	end	סוֹף	11
4357	late	מְאוּחָר	11
4358	anymore	יותר	11
4359	five	חָמֵשׁ	11
4360	least	פָּחוּת	11
4361	town	עִיר	11
4362	year	שָׁנָה	11
4363	make	לַעֲשׂוֹת	11
4364	mean	מְמוּצָע	11
4365	play	לְשַׂחֵק	11
4366	hate	שִׂנאָה	11
4367	ago	לִפנֵי	11
4368	beautiful	יָפֶה	11
4369	fact	עוּבדָה	11
4370	crazy	מְטוּרָף	11
4371	party	צַד	11
4372	sit	לָשֶׁבֶת	11
4373	open	לִפְתוֹחַ	11
4374	afraid	חוֹשֵׁשׁ	11
4375	between	בֵּין	11
4376	important	חָשׁוּב	11
4377	rest	לָנוּחַ	11
4378	fun	כֵּיף	11
4379	kid	יֶלֶד	11
4380	glad	שַׂמֵחַ	11
4381	everyone	כֹּל אֶחָד	11
4382	day	יְוֹם	11
4383	sister	אָחוֹת	11
4384	minute	דַקָה	11
4385	everybody	כּוּלָם	11
4386	bit	קצת	11
4387	couple	זוּג	11
4388	either	אוֹ	11
4389	daughter	בַּת	11
4390	under	תַחַת	11
4391	break	לִשְׁבּוֹר	11
4392	door	דֶלֶת	11
4393	set	מַעֲרֶכֶת	11
4394	close	לִסְגוֹר	11
4395	easy	קַל	11
4396	doctor	דוֹקטוֹר	11
4397	far	רָחוֹק	11
4398	walk	לָלֶכֶת	11
4399	need	צוֹרֶך	11
4400	trouble	צָרָה	11
4401	mine	שֶׁלִי	11
4402	though	אמנם	11
4403	time	זְמַן	11
4404	different	שׁוֹנֶה	11
4405	hospital	בֵּית חוֹלִים	11
4406	anybody	מִישֶׁהוּ	11
4407	alright	בְּסֵדֶר	11
4408	wedding	חֲתוּנָה	11
4409	shut	לִסְגוֹר	11
4410	able	מְסוּגָל	11
4411	die	לָמוּת	11
4412	perfect	מוּשׁלָם	11
4413	police	מִשׁטָרָה	11
4414	stand	לַעֲמוֹד	11
4415	hit	לָהִיט	11
4416	story	כַּתָבָה	11
4417	dinner	אֲרוּחַת עֶרֶב	11
4418	against	נֶגֶד	11
4419	funny	מַצחִיק	11
4420	husband	בַּעַל	11
4421	almost	כִּמעַט	11
4422	stupid	מְטוּפָּשׁ	11
4423	pay	לְשַׁלֵם	11
4424	answer	תְשׁוּבָה	11
4425	four	ארבע	11
4426	office	מִשׂרָד	11
4427	cool	לְהִתְקַרֵר	11
4428	news	חֲדָשׁוֹת	11
4429	child	יֶלֶד	11
4430	half	חֲצִי	11
4431	yours	שֶׁלְךָ	11
4432	moment	רֶגַע	11
4433	sleep	לִישׁוֹן	11
4434	young	צָעִיר	11
4435	men	אֲנָשִׁים	11
4436	sonny	סוני	11
4437	lucky	בַּר מַזָל	11
4438	pick	לִבחוֹר	11
4439	sometimes	לִפְעָמִים	11
4440	them	אוֹתָם	11
4441	bed	מיטה	11
4442	also	גַם	11
4443	date	תַאֲרִיך	11
4444	line	קַו	11
4445	lose	לְאַבֵּד	11
4446	fire	אֵשׁ	11
4447	free	לְשַׁחְרֵר	11
4448	hand	יָד	11
4449	serious	רְצִינִי	11
4450	shit	לְחַרְבֵּן	11
4451	behind	מֵאָחוֹר	11
4452	inside	בְּתוֹך	11
4453	high	גָבוֹהַ	11
4454	ahead	קָדִימָה	11
4455	wonderful	נִפלָא	11
4456	fight	מַאֲבָק	11
4457	past	עָבָר	11
4458	cut	גְזִירָה	11
4459	quite	דַי	11
4460	number	מִספָּר	11
4461	sick	חוֹלֶה	11
4462	game	מִשְׂחָק	11
4463	eat	לֶאֱכוֹל	11
4464	nobody	אַף אֶחָד	11
4465	death	מָוֶת	11
4466	along	לְאוֹרֶך	11
4467	finally	לְבָסוֹף	11
4468	upset	לְשַׁבֵּשׁ	11
4469	seem	לְהֵרָאוֹת	11
4470	safe	כַּסֶפֶת	11
4471	children	יְלָדִים	11
4472	front	חֲזִית	11
4473	shot	בְּעִיטָה	11
4474	love	אַהֲבָה	11
4475	clear	בָּרוּר	11
4476	hot	חַם	11
4477	six	שֵׁשׁ	11
4478	drink	לִשְׁתוֹת	11
4479	absolutely	בְּהֶחלֵט	11
4480	how	אֵיך	11
4481	sweet	מָתוֹק	11
4482	alive	בְּחַיִים	11
4483	sense	לָחוּשׁ	11
4484	happen	לִקְרוֹת	11
4485	special	מְיוּחָד	11
4486	bet	לְהִתְעַרֵב	11
4487	blood	דָם	11
4488	lie	שֶׁקֶר	11
4489	full	מָלֵא	11
4490	meeting	פְּגִישָׁה	11
4491	dear	יָקָר	11
4492	coffee	קָפֶה	11
4493	sound	קוֹל	11
4494	fault	תַקָלָה	11
4495	water	מַיִם	11
4496	ten	עֶשֶׂר	11
4497	women	נָשִׁים	11
4498	welcome	קַבָּלַת פָּנִים	11
4499	buy	לִקְנוֹת	11
4500	hour	שָׁעָה	11
4501	speak	לְדַבֵּר	11
4502	think	לַחשׁוֹב	11
4503	Christmas	חַג הַמוֹלָד	11
4504	body	גוּף	11
4505	order	לְהַזמִין	11
4506	outside	בָּחוּץ	11
4507	hang	לִתְלוֹת	11
4508	worse	גָרוּעַ יוֹתֵר	11
4509	company	חֶברָה	11
4510	mistake	טָעוּת	11
4511	handle	יָדִית	11
4512	spend	לְבַלוֹת	11
4513	totally	לְגַמרֵי	11
4514	control	לִשְׁלוֹט	11
4515	marriage	חֲתוּנָה	11
4516	power	כּוֹחַ	11
4517	president	נָשִׂיא	11
4518	unless	אֶלָא אִם	11
4519	sex	מִין	11
4520	send	לִשְׁלוֹחַ	11
4521	picture	תְמוּנָה	11
4522	hundred	מֵאָה	11
4523	change	לְשַׁנוֹת	11
4524	explain	לְהַסבִּיר	11
4525	certainly	בְּהֶחלֵט	11
4526	sign	סִימָן	11
4527	boy	יֶלֶד	11
4528	relationship	קֶשֶׁר	11
4529	hair	שֵׂעַר	11
4530	choice	בְּחִירָה	11
4531	anywhere	בְּכָל מָקוֹם	11
4532	secret	סוֹד	11
4533	future	עָתִידִי	11
4534	weird	מְשׁוּנֶה	11
4535	luck	מַזָל	11
4536	touch	לָגַעַת	11
4537	kiss	נְשִׁיקָה	11
4538	crane	מָנוֹף	11
4539	question	שְׁאֵלָה	11
4540	obviously	בָּרוּר	11
4541	pain	כְּאֵב	11
4542	straight	יָשָׁר	11
4543	grace	חֶסֶד	11
4544	white	לָבָן	11
4545	fast	מָהִיר	11
4546	word	מִלָה	11
4547	food	מָזוֹן	11
4548	none	אַף לֹא אֶחָד	11
4549	drive	לִנְהוֹג	11
4550	work	עֲבוֹדָה	11
4551	marry	לְהִתְחַתֵן	11
4552	light	אוֹר	11
4553	test	מִבְחָן	11
4554	drop	יְרִידָה	11
4555	frank	גָלוּי לֵב	11
4556	sent	נשלח	11
4557	city	עִיר	11
4558	dream	חֲלוֹם	11
4559	protect	לְהַגֵן	11
4560	twenty	עֶשְׂרִים	11
4561	class	מַחלָקָה	11
4562	surprise	הַפתָעָה	11
4563	forever	לָנֶצַח	11
4564	poor	יָרוּד	11
4565	mad	מְטוּרָף	11
4566	except	אֶלָא	11
4567	gun	אֶקְדָח	11
4568	know	לָדַעַת	11
4569	dance	לִרְקוֹד	11
4570	take	לִיטוֹל	11
4571	especially	בִּמְיוּחָד	11
4572	situation	מַצָב	11
4573	besides	מִלְבַד	11
4574	week	שָׁבוּעַ	11
4575	himself	עַצמוֹ	11
4576	act	חוֹק	11
4577	worth	שִׁוּוּי	11
4578	top	רֹאשׁ	11
4579	expect	לְצַפּוֹת	11
4580	rather	אלא	11
4581	involve	לְעַרֵב	11
4582	swear	לְקַלֵל	11
4583	piece	לְחַבֵּר	11
4584	busy	עָסוּק	11
4585	law	חוֹק	11
4586	black	שָׁחוֹר	11
4587	movie	סֶרֶט	11
4588	catch	לִתְפּוֹס	11
4589	country	מְדִינָה	11
4590	less	פָּחוֹת	11
4591	perhaps	אוּלַי	11
4592	step	שָׁלָב	11
4593	fall	סתָיו	11
4594	dog	כֶּלֶב	11
4595	win	לְנַצֵחַ	11
4596	personal	אִישִׁי	11
4597	admit	לְהוֹדוֹת	11
4598	problem	בְּעָיָה	11
4599	murder	רֶצַח	11
4600	strong	חָזָק	11
4601	evil	רַע	11
4602	feel	תְחוּשָׁה	11
4603	honest	יָשָׁר	11
4604	eye	עַיִן	11
4605	broke	חֲסַר פְּרוּטָה	11
4606	miss	לְהַחמִיץ	11
4607	tired	עייף	11
4608	evening	עֶרֶב	11
4609	human	אֶנוֹשִׁי	11
4610	red	אָדוֹם	11
4611	entire	שָׁלֵם	11
4612	trip	טִיוּל	11
4613	club	מוֹעֲדוֹן	11
4614	suppose	לְהַנִיחַ	11
4615	calm	לְהַרְגִיעַ	11
4616	imagine	לדמיין	11
4617	fair	הוֹגֶן	11
4618	blame	לְהַאֲשִׁים	11
4619	street	רְחוֹב	11
4620	apartment	דִירָה	11
4621	court	לְחַזֵר	11
4622	terrible	נוֹרָא	11
4623	clean	לְנַקוֹת	11
4624	learn	לִלמוֹד	11
4625	relax	לְהִרָגַע	11
4626	million	מִילִיוֹן	11
4627	charity	צְדָקָה	11
4628	accident	תְאוּנָה	11
4629	prove	לְהוֹכִיחַ	11
4630	smart	לִכאוֹב	11
4631	message	הוֹדָעָה	11
4632	small	קָטָן	11
4633	interest	אִינטֶרֶס	11
4634	table	לוּחַ	11
4635	become	לִהיוֹת	11
4636	mouth	פֶּה	11
4637	pregnant	בְּהֵרָיוֹן	11
4638	middle	אֶמצַע	11
4639	ring	טַבַּעַת	11
4640	careful	זָהִיר	11
4641	shall	יהיה	11
4642	team	קְבוּצָה	11
4643	ride	לִרְכּוֹב	11
4644	figure	דְמוּת	11
4645	wear	לִלבּוֹשׁ	11
4646	shoot	לִירוֹת	11
4647	stick	מַקֵל	11
4648	ray	קֶרֶן	11
4649	follow	לַעֲקוֹב	11
4650	angry	כּוֹעֵס	11
4651	instead	במקום זאת	11
4652	buddy	חָבֵר	11
4653	write	לִכתוֹב	11
4654	early	מוּקדָם	11
4655	angel	מַלְאָך	11
4656	nick	ניק	11
4657	ran	רץ	11
4658	war	מִלחָמָה	11
4659	forgive	לִסְלוֹחַ	11
4660	jail	כֵּלֵא	11
4661	lunch	אֲרוּחַת צָהֳרִים	11
4662	eight	שְׁמוֹנֶה	11
4663	thousand	אֶלֶף	11
4664	music	מוּסִיקָה	11
4665	tough	קָשֶׁה	11
4666	tape	סֶרֶט	11
4667	count	לִסְפּוֹר	11
4668	college	מִכלָלָה	11
4669	boyfriend	הֶחָבֵר	11
4670	proud	גֵאֶה	11
4671	agree	לְהַסכִּים	11
4672	birthday	יוֹם הוּלֶדֶת	11
4673	bill	הַצָעַת חוֹק	11
4674	seven	שבע	11
4675	history	הִיסטוֹרִיָה	11
4676	share	לַחֲלוֹק	11
4677	offer	הַצָעָה	11
4678	hurry	לְמַהֵר	11
4679	feet	רגליים	11
4680	wonder	פֶּלֶא	11
4681	simple	פָּשׁוּט	11
4682	decision	הַחְלָטָה	11
4683	building	בִּניָן	11
4684	finish	סִיוּם	11
4685	voice	קוֹל	11
4686	herself	עַצמָה	11
4687	would	היה	11
4688	list	רְשִׁימָה	11
4689	mess	בָּלָגָן	11
4690	deserve	ראוי	11
4691	cute	חָמוּד	11
4692	dress	לְהִתְלַבֵּשׁ	11
4693	interesting	מעניין	11
4694	Jesus	יֵשׁוּעַ	11
4695	hotel	מָלוֹן	11
4696	enjoy	ליהנות	11
4697	quiet	שֶׁקֶט	11
4698	road	כְּבִישׁ	11
4699	eve	עֶרֶב	11
4700	short	קָצָר	11
4701	beat	לְהַכּוֹת	11
4702	mention	אִזְכּוּר	11
4703	clothe	לְהַלבִּישׁ	11
4704	neither	גַם לֹא	11
4705	fix	לִקְבּוֹעַ	11
4706	respect	כִּבּוּד	11
4707	spent	מוּתַשׁ	11
4708	prison	כֵּלֵא	11
4709	attention	תְשׁוּמַת לֵב	11
4710	near	לְיַד	11
4711	bar	בַּר	11
4712	pass	לַעֲבוֹר	11
4713	gift	מַתָנָה	11
4714	dark	כֵּהֶה	11
4715	self	עַצמִי	11
4716	normal	נוֹרמָלִי	11
4717	aunt	דוֹדָה	11
4718	dollar	דוֹלָר	11
4719	lawyer	עוֹרֵך דִין	11
4720	apart	בְּנִפרָד	11
4721	certain	מְסוּיָם	11
4722	plan	לְתַכְנֵן	11
4723	girlfriend	חֲבֵרָה	11
4724	floor	קוֹמָה	11
4725	whether	אִם	11
4726	everything	הַכֹּל	11
4727	present	לְהַצִיג	11
4728	earth	כַּדוּר הָאָרֶץ	11
4729	private	פְּרָטִי	11
4730	box	קוּפסָה	11
4731	cover	לְכַסוֹת	11
4732	judge	לִשְׁפּוֹט	11
4733	sake	טוֹבָה	11
4734	mommy	אמא	11
4735	possibly	יִתָכֵן	11
4736	worst	גָרוּעַ בִּיוֹתֵר	11
4737	station	תַחֲנָה	11
4738	accept	לְקַבֵּל	11
4739	blow	מַכָּה	11
4740	strange	מוּזָר	11
4741	save	לְהַצִיל	11
4742	plane	מָטוֹס	11
4743	yesterday	אֶתמוֹל	11
4744	quick	מָהִיר	11
4745	lately	לָאַחֲרוֹנָה	11
4746	stuck	תָקוּעַ	11
4747	lovely	יָפֶה	11
4748	security	בִּטָחוֹן	11
4749	report	דִוּוּחַ	11
4750	difference	הֶבדֵל	11
4751	store	חנות	11
4752	bag	תִיק	11
4753	ball	כַּדוּר	11
4754	single	אֶחָד	11
4755	doubt	סָפֵק	11
4756	blue	כְּחוֹל	11
4757	deep	עָמוֹק	11
4758	park	פַּארק	11
4759	record	רְשׁוּמָה	11
4760	lord	אָדוֹן	11
4761	join	לְהִצְטַרֵף	11
4762	key	מַפְתֵחַ	11
4763	captain	סֶרֶן	11
4764	card	כַּרְטִיס	11
4765	crime	פֶּשַׁע	11
4766	window	חַלוֹן	11
4767	return	לַחֲזוֹר	11
4768	guilty	אָשֵׁם	11
4769	difficult	קָשֶׁה	11
4770	soul	נֶפֶשׁ	11
4771	joke	בְּדִיחָה	11
4772	service	שֵׁרוּת	11
4773	magic	קֶסֶם	11
4774	uncle	דוֹד	11
4775	promise	הַבטָחָה	11
4776	public	פּוּמְבֵּי	11
4777	bother	לְהטרִיד	11
4778	island	אִי	11
4779	seriously	בִּרְצִינוּת	11
4780	cell	תָא	11
4781	lead	עוֹפֶרֶת	11
4782	broken	שָׁבוּר	11
4783	advice	עֵצָה	11
4784	somehow	איכשהו	11
4785	push	לִדחוֹף	11
4786	concern	דְאָגָה	11
4787	usually	בְּדֶרֶך כְּלַל	11
4788	boss	בּוֹס	11
4789	rule	כְּלָל	11
4790	summer	קַיִץ	11
4791	thirty	שְׁלוֹשִׁים	11
4792	risk	לְהִסְתָכֵּן	11
4793	letting	מניחה	11
4794	officer	קָצִין	11
4795	support	תְמִיכָה	11
4796	afternoon	צָהֳרַיִים	11
4797	born	נוֹלָד	11
4798	apologise	לְהִתְנַצֵל	11
4799	seat	מוֹשָׁב	11
4800	nervous	עַצבָּנִי	11
4801	across	לְרוֹחָב	11
4802	song	שִׁיר	11
4803	charge	תַשְׁלוּם	11
4804	patient	חוֹלֶה	11
4805	boat	סִירָה	11
4806	brain	מוֹחַ	11
4807	hide	לְהַסתִיר	11
4808	general	כְּלָלִי	11
4809	nine	תֵשַׁע	11
4810	huge	עָצוּם	11
4811	breakfast	ארוחת בוקר	11
4812	horrible	מַחרִיד	11
4813	age	גִיל	11
4814	awful	נוֹרָא	11
4815	pleasure	הֲנָאָה	11
4816	driving	נְהִיגָה	11
4817	system	מַעֲרֶכֶת	11
4818	sell	מְכִירָה	11
4819	quit	לְהַפְסִיק	11
4820	dying	גְסִיסָה	11
4821	chief	רֹאשׁ	11
4822	faith	אֱמוּנָה	11
4823	gay	הומו	11
4824	month	חוֹדֶשׁ	11
4825	visit	לְבַקֵר	11
4826	screw	לִדפּוֹק	11
4827	letter	מִכְתָב	11
4828	decide	לְהַחלִיט	11
4829	double	לְהַכפִּיל	11
4830	sad	עָצוּב	11
4831	press	לִלְחוֹץ	11
4832	forward	קָדִימָה	11
4833	fool	שׁוֹטֶה	11
4834	smell	רֵיחַ	11
4835	spell	לַחַשׁ	11
4836	memory	זֵכֶר	11
4837	mark	סִימָן	11
4838	slow	לְהַאֵט	11
4839	hungry	רָעֵב	11
4840	board	לוּחַ	11
4841	position	מַצָב	11
4842	hearing	שְׁמִיעָה	11
4843	rose	וֶרֶד	11
4844	kitchen	מִטְבָּח	11
4845	force	כּוֹחַ	11
4846	fly	לָטוּס	11
4847	during	בְּמַהֲלָך	11
4848	space	מֶרחָב	11
4849	kick	בְּעִיטָה	11
4850	other	אַחֵר	11
4851	grab	לִתְפּוֹס	11
4852	discuss	לָדוּן	11
4853	third	שְׁלִישִׁי	11
4854	cat	חָתוּל	11
4855	fifty	חֲמִישִׁים	11
4856	mile	מִיל	11
4857	fat	שׁוּמָן	11
4858	reading	קְרִיאָה	11
4859	idiot	אִידיוֹט	11
4860	rock	רוֹק	11
4861	suddenly	פִּתְאוֹם	11
4862	agent	סוֹכֵן	11
4863	bunch	צְרוֹר	11
4864	destroy	לְהַשְׁמִיד	11
4865	track	מַסלוּל	11
4866	shoes	נעליים	11
4867	scene	סְצֵינָה	11
4868	peace	שָׁלוֹם	11
4869	demon	שֵׁד	11
4870	low	נָמוּך	11
4871	consider	לִשְׁקוֹל	11
4872	drunk	שָׁתוּי	11
4873	tell	לְסַפֵּר	11
4874	knock	נְקִישָׁה	11
4875	bell	פַּעֲמוֹן	11
4876	cash	מְזוּמָנִים	11
4877	give	לָתֵת	11
4878	department	מַחלָקָה	11
4879	nose	אַף	11
4880	turn	פִּנָה	11
4881	keep	לִשְׁמוֹר	11
4882	beer	בִּירָה	11
4883	sooner	מוקדם יותר	11
4884	plenty	הַרבֵּה	11
4885	extra	תוֹסֶפֶת	11
4886	attack	לִתְקוֹף	11
4887	ground	טָחוּן	11
4888	whose	שֶׁל מִי	11
4889	weekend	סוֹף שָׁבוּעַ	11
4890	matter	חוֹמֶר	11
4891	wrote	כתב	11
4892	type	סוּג	11
4893	opportunity	הִזדַמְנוּת	11
4894	king	מֶלֶך	11
4895	impossible	בִּלתִי אֶפשָׂרִי	11
4896	book	סֵפֶר	11
4897	machine	מְכוֹנָה	11
4898	waste	לְבַזבֵּז	11
4899	pretend	לְהַעֲמִיד פָּנִים	11
4900	danger	סַכָּנָה	11
4901	wall	קִיר	11
4902	jump	קְפִיצָה	11
4903	proof	הוֹכָחָה	11
4904	complete	לְהַשְׁלִים	11
4905	arrest	מַעְצָר	11
4906	perfectly	בצורה מושלמת	11
4907	warm	חַם	11
4908	pull	מְשׁוֹך	11
4909	twice	פַּעֲמַיִם	11
4910	easier	קל יותר	11
4911	suit	חֲלִיפָה	11
4912	romantic	רוֹמַנטִי	11
4913	drug	תְרוּפָה	11
4914	comfortable	נוֹחַ	11
4915	fit	לְהַתְאִים	11
4916	divorce	לְהִתְגַרֵשׁ	11
4917	begin	לְהַתְחִיל	11
4918	closely	מקרוב	11
4919	ruin	לַהֲרוֹס	11
4920	although	לַמרוֹת	11
4921	smile	חִיוּך	11
4922	laugh	לִצְחוֹק	11
4923	fish	לָדוּג	11
4924	treat	לְטַפֵּל	11
4925	fear	פַּחַד	11
4926	amber	עַנבָּר	11
4927	guy	בָּחוּר	11
4928	otherwise	אַחֶרֶת	11
4929	excited	נִרגָשׁ	11
4930	mail	דוֹאַר	11
4931	green	יָרוֹק	11
4932	stole	צָעִיף	11
4933	notice	הוֹדָעָה	11
4934	excellent	מְעוּלֶה	11
4935	pop	פּוֹפּ	11
4936	paper	נְיָר	11
4937	bottom	תַחתִית	11
4938	note	פֶּתֶק	11
4939	sudden	פִּתְאוֹמִי	11
4940	church	כְּנֵסִיָה	11
4941	bathroom	חֲדַר אַמְבַּטִיָה	11
4942	sing	לָשִׁיר	11
4943	glass	זְכוּכִית	11
4944	tree	עֵץ	11
4945	contact	מַגָע	11
4946	shop	לִקְנוֹת	11
4947	reach	לְהַגִיעַ	11
4948	cry	לִבכּוֹת	11
4949	cake	עוּגָה	11
4950	partner	שׁוּתָף	11
4951	bus	אוֹטוֹבּוּס	11
4952	computer	מַחשֵׁב	11
4953	study	לִלמוֹד	11
4954	star	כּוֹכָב	11
4955	area	אֵזוֹר	11
4956	wind	רוּחַ	11
4957	chicken	עוֹף	11
4958	dry	יָבֵשׁ	11
4959	hero	גיבור	11
4960	error	שְׁגִיאָה	11
4961	are	הם	11
4962	build	לִבנוֹת	11
4963	sea	יָם	11
4964	Saturday	שַׁבָּת	11
4965	add	לְהוֹסִיף	11
4966	birth	הוּלֶדֶת	11
4967	bird	צִפּוֹר	11
4968	grandmother	סַבתָא	11
4969	heavy	כָּבֵד	11
4970	west	מַעֲרָב	11
4971	lesson	לֶקַח	11
4972	heat	חוֹם	11
4973	speed	מְהִירוּת	11
4974	milk	חָלָב	11
4975	rain	גֶשֶׁם	11
4976	sugar	סוּכָּר	11
4977	market	שׁוּק	11
4978	process	תַהֲלִיך	11
4979	stone	אֶבֶן	11
4980	serve	לְשָׁרֵת	11
4981	river	נָהָר	11
4982	super	סוּפֶּר	11
4983	monkey	קוֹף	11
4984	pig	חֲזִיר	11
4985	chat	לְשׂוֹחֵחַ	11
4986	signal	אוֹת	11
4987	cup	גָבִיעַ	11
4988	bee	דְבוֹרָה	11
4989	a	א	11
4990	above	מֵעַל	11
4991	addition	תוֹסֶפֶת	11
4992	among	בֵּין	11
4993	amount	סְכוּם	11
4994	angle	זָוִית	11
4995	animal	חַיָה	11
4996	appear	לְהוֹפִיעַ	11
4997	apple	תַפּוּחַ	11
4998	art	אָמָנוּת	11
4999	as	כְּמוֹ	11
5000	at	בְּ-	11
5001	bank	בַּנק	11
5002	base	בָּסִיס	11
5003	bear	דוֹב	11
5004	belong	שייך	11
5005	block	לַחסוֹם	11
5006	bone	עֶצֶם	11
5007	brown	חוּם	11
5008	cannot	לא יכול	11
5009	capital	הוֹן	11
5010	carry	לשאת	11
5011	centre	מֶרְכָּז	11
5012	century	מֵאָה	11
5013	circle	מַעְגָל	11
5014	cloud	עָנָן	11
5015	cost	עֲלוּת	11
5016	cold	קַר	11
5017	column	עַמוּדָה	11
5018	common	מְשׁוּתָף	11
5019	compere	מַנחֶה	11
5020	condition	מַצָב	11
5021	contain	לְהַכִיל	11
5022	continue	לְהַמשִׁיך	11
5023	cook	לְבַשֵׁל	11
5024	copy	לְהַעְתִיק	11
5025	cow	פָּרָה	11
5026	create	לִיצוֹר	11
5027	cross	לַחֲצוֹת	11
5028	crowd 	קָהָל	11
5029	describe	לְתַאֵר	11
5030	desert	מִדבָּר	11
5031	design	לְעַצֵב	11
5032	detail	פְּרָט	11
5033	dictionary	מילון	11
5034	direction	כיוון	11
5035	ear	אֹזֶן	11
5036	east	מִזְרָח	11
5037	like	כְּמוֹ	11
5038	edge	קָצֶה	11
5039	effect	אֵפֶקְט	11
5040	egg	בֵּיצָה	11
5041	element	אֵלֵמֶנט	11
5042	energy	אֵנֶרְגִיָה	11
5043	engine	מָנוֹעַ	11
5044	England	אַנְגלִיָה	11
5045	English	אַנגְלִית	11
5046	example	דוּגמָה	11
5047	express	אֶקְסְפּרֶס	11
5048	famous	מְפוּרסָם	11
5049	farm 	לְעַבֵּד	11
5050	field	שָׂדֶה	11
5051	finger	אֶצבַּע	11
5052	flat	שָׁטוּחַ	11
5053	flower	פֶּרַח	11
5054	foot	רֶגֶל	11
5055	forest	יַעַר	11
5056	form	טוֹפֶס	11
5057	fresh	טָרִי	11
5058	fruit	פְּרִי	11
5059	garden	גַן	11
5060	gas	גַז	11
5061	gold	זָהָב	11
5062	group	קְבוּצָה	11
5063	grow	לִגדוֹל	11
5064	hat	כּוֹבַע	11
5065	hole	חוֹר	11
5066	horse	סוּס	11
5067	hunt	לָצוּד	11
5068	ice	קֶרַח	11
5069	inch	אִינְטשׁ	11
5070	include	לִכלוֹל	11
5071	increase	לְהַגדִיל	11
5072	indicate	לְהַצְבִּיעַ	11
5073	information	מֵידָע	11
5074	insect	חֶרֶק	11
5075	instrument	מַכשִׁיר	11
5076	iron	בַּרזֶל	11
5077	is	הוא	11
5078	itself	עצמו	11
5079	job	מִשׂרָה	11
5080	lady	גְבֶרֶת	11
5081	lake	אֲגַם	11
5082	land	אֶרֶץ	11
5083	language	שָׂפָה	11
5084	large	גָדוֹל	11
5085	lay	לְהַנִיחַ	11
5086	leg	רֶגֶל	11
5087	length	מֶשֶׁך	11
5088	level	רָמָה	11
5089	lift	מַעֲלִית	11
5090	main	רָאשִׁי	11
5091	many	רַבִּים	11
5092	map	מַפָּה	11
5093	march	מַרס	11
5094	bacon	בְּשַׂר חֲזִיר	11
5095	gap	פַּעַר	11
5096	pan	פָּאן	11
5097	read	לִקְרוֹא	11
5098	made	עָשׂוּי	11
5099	morning 	שַׁחַר	11
5100	okay	בְּסֵדֶר	11
5101	autumn	סתָיו	11
5102	aggravation	הַחמָרָה	11
5103	Archaic	אַרְכָאִי	11
5104	pertinent	רלוונטי	11
5105	rid	לְשַׁחְרֵר	11
5106	defense	הֲגָנָה	11
5107	planning	תִכנוּן	11
5108	flight	טִיסָה	11
5109	honestly	בִּיוֹשֶׁר	11
5110	remind	לְהַזכִּיר	11
5111	witness	עֵד	11
5112	dare	לְהַעֵז	11
5113	hardly	בְּקוֹשִׁי	11
5114	steal	לִגנוֹב	11
5115	princess	נְסִיכָה	11
5116	silly	טִפּשִׁי	11
5117	teach	לְלַמֵד	11
5118	plus	פְּלוּס	11
5119	trial	מִשׁפָּט	11
5120	roll	גָלִיל	11
5121	radio	רָדִיוֹ	11
5122	dirty	מְלוּכלָך	11
5123	choose	לִבחוֹר	11
5124	emergency	חֵרוּם	11
5125	credit	אַשׁרַאי	11
5126	obvious	בָּרוּר	11
5127	loving	אוהב	11
5128	positive	חִיוּבִי	11
5129	nut	אֱגוֹז	11
5130	price	מְחִיר	11
5131	goodbye	להתראות	11
5132	guard	מִשׁמָר	11
5133	mood	מַצַב רוּחַ	11
5134	total	סַך הַכֹּל	11
5135	crap	שְׁטוּיוֹת	11
5136	crying	בְּכִי	11
5137	trick	טְרִיק	11
5138	pressure	לַחַץ	11
5139	arm	זְרוֹעַ	11
5140	dressed	לָבוּשׁ	11
5141	taste	טַעַם	11
5142	neck	עוֹרֶף	11
5143	south	דָרוֹם	11
5144	something	מַשֶׁהוּ	11
5145	nurse	אָחוֹת	11
5146	raise	הַעֲלָאָה	11
5147	lots	המון	11
5148	mister	מַר	11
5149	whoever	מִי	11
5150	breaking	שְׁבִירָה	11
5151	file	קוֹבֶץ	11
5152	lock	לִנְעוֹל	11
5153	wine	יַיִן	11
5154	writing	כְּתִיבָה	11
5155	spot	לְזַהוֹת	11
5156	assume	לְהַנִיחַ	11
5157	asleep	יָשֵׁן	11
5158	legal	מִשׁפָּטִי	11
5159	justice	צֶדֶק	11
5160	bedroom	חדר שינה	11
5161	shower	מִקלַחַת	11
5162	camera	מַצלֵמָה	11
5163	fill	לְמַלֵא	11
5164	forty	אַרבָּעִים	11
5165	bigger	גדול יותר	11
5166	nope	לֹא	11
5167	breath	נְשִׁימָה	11
5168	pants	מִכְנָסַיִים	11
5169	freak	מְשׁוּנֶה	11
5170	French	צָרְפָתִית	11
5171	action	פְּעוּלָה	11
5172	folks	אנשים	11
5173	cream	קרֶם	11
5174	focus	מוֹקֵד	11
5175	wild	פְּרָאִי	11
5176	truly	בֶּאֱמֶת	11
5177	desk	שׁוּלְחָן כְּתִיבָה	11
5178	convince	לְשַׁכְנֵעַ	11
5179	client	לָקוּחַ	11
5180	threw	זרק	11
5181	band	לְהִתְאַגֵד	11
5182	allow	לְהַתִיר	11
5183	grand	גָדוֹל	11
5184	shirt	חוּלצָה	11
5185	chair	כִּסֵא	11
5186	rough	מְחוּספָּס	11
5187	government	מֶמְשָׁלָה	11
5188	harry	לְהָצִיק	11
5189	going	הולך	11
5190	empty	רֵיק	11
5191	round	עִגוּל	11
5192	insane	מְשׁוּגָע	11
5193	hall	אוּלָם	11
5194	aware	מוּדָע	11
5195	pack	לֶאֱרוֹז	11
5196	meaning	מַשְׁמָעוּת	11
5197	tight	צָמוּד	11
5198	ship	סְפִינָה	11
5199	subject	נוֹשֵׂא	11
5200	guest	אוֹרֵחַ	11
5201	match	לְהַתְאִים	11
5202	sun	שֶׁמֶש	11
5203	confused	מְבוּלבָּל	11
5204	surgery	כִּירוּרגִיָה	11
5205	bottle	בַּקבּוּק	11
5206	beyond	מעבר	11
5207	opinion	דֵעָה	11
5208	naked	עֵירוֹם	11
5209	held	מוּחזָק	11
5210	necessary	הֶכְרֵחִי	11
5211	barely	בְּקוֹשִׁי	11
5212	health	בְּרִיאוּת	11
5213	video	וִידֵאוֹ	11
5214	cousin	בֶּן דוֹד	11
5215	twelve	שְׁתֵים עֶשׂרֵה	11
5216	simply	פָּשׁוּט	11
5217	skin	עוֹר	11
5218	often	לְעִתִים קְרוֹבוֹת	11
5219	fifteen	חֲמֵשׁ עֶשׂרֵה	11
5220	spirit	רוּחַ	11
5221	speech	נְאוּם	11
5222	issue	לְהַנפִּיק	11
5223	final	סוֹפִי	11
5224	result	תוֹצָאָה	11
5225	code	קוד	11
5226	research	מֶחקָר	11
5227	nowhere	לְשׁוּם מָקוֹם	11
5228	escape	לִברוֹחַ	11
5229	biggest	הגדול ביותר	11
5230	restaurant	מִסעָדָה	11
5231	page	עַמוּד	11
5232	grateful	אֲסִיר תוֹדָה	11
5233	usual	רָגִיל	11
5234	burn	לִשְׂרוֹף	11
5235	address	כְּתוֹבֶת	11
5236	within	בְּתוֹך	11
5237	someplace	במקום כלשהו	11
5238	everywhere	בְּכָל מָקוֹם	11
5239	train	רַכֶּבֶת	11
5240	film	סֶרֶט	11
5241	regret	חֲרָטָה	11
5242	goodness	טוּב לֵב	11
5243	heaven	שָׁמַיִם	11
5244	responsibility	אַחֲרָיוּת	11
5245	suspect	חָשׁוּד	11
5246	corner	קֶרֶן	11
5247	terrific	מְצוּיָן	11
5248	mission	מְשִׁימָה	11
5249	further	לְקַדֵם	11
5250	truck	מַשָׂאִית	11
5251	following	הַבָּא	11
5252	teeth	שיניים	11
5253	ruined	הָרוּס	11
5254	split	לְפַצֵל	11
5255	airport	נְמַל תְעוּפָה	11
5256	bite	נְשִׁיכָה	11
5257	older	מבוגרים יותר	11
5258	liar	שַׁקרָן	11
5259	van	טֶנדֶר	11
5260	project	פּרוֹיֶקט	11
5261	desperate	נוֹאָשׁ	11
5262	themselves	עַצמָם	11
5263	search	לְחַפֵּשׂ	11
5264	damage	נֵזֶק	11
5265	spoke	דיבר	11
5266	quickly	בִּמְהִירוּת	11
5267	scare	לְהַפחִיד	11
5268	beach	חוֹף	11
5269	afford	לְהַרְשׁוֹת לְעַצמוֹ	11
5270	vote	הַצבָּעָה	11
5271	settle	לִשְׁקוֹעַ	11
5272	passion	תְשׁוּקָה	11
5273	Friday	יוֹם שִׁישִׁי	11
5274	tie	עֲנִיבָה	11
5275	upon	עַל	11
5276	rush	לְמַהֵר	11
5277	natural	טִבעִי	11
5278	champagne	שַׁמפַּנִיָה	11
5279	connection	קֶשֶׁר	11
5280	happiness	שִׂמְחָה	11
5281	saving	חִסָכוֹן	11
5282	personally	אִישִׁית	11
5283	suggest	לְהַצִיעַ	11
5284	ticket	כַּרְטִיס	11
5285	taught	לימד	11
5286	loose	מְשׁוּחרָר	11
5287	holy	קָדוֹשׁ	11
5288	staff	סֶגֶל	11
5289	planet	כּוֹכַב לֶכֶת	11
5290	duty	חוֹבָה	11
5291	loud	בְּקוֹל רָם	11
5292	practice	לְתַרְגֵל	11
5293	bright	בָּהִיר	11
5294	army	צָבָא	11
5295	warning	אַזהָרָה	11
5296	miracle	נֵס	11
5297	carrying	נְשִׂיאָה	11
5298	flying	עַף	11
5299	blind	לְסַמֵא	11
5300	queen	מַלכָּה	11
5301	ugly	מְכוֹעָר	11
5302	shopping	קניות	11
5303	monster	מִפלֶצֶת	11
5304	sight	מַרְאֶה	11
5305	vampire	עַרפָּד	11
5306	bride	כַּלָה	11
5307	coat	מְעִיל	11
5308	account	חֶשְׁבּוֹן	11
5309	clearly	בְּבִירוּר	11
5310	celebrate	לַחֲגוֹג	11
5311	brilliant	מַברִיק	11
5312	moon	יָרֵחַ	11
5313	lips	שפתיים	11
5314	custody	מִשׁמוֹרֶת	11
5315	center	מֶרְכָּז	11
5316	size	גוֹדֶל	11
5317	toast	טוֹסט	11
5318	student	סטוּדֶנט	11
5319	however	אוּלָם	11
5320	professional	מִקצוֹעִי	11
5321	reality	מְצִיאוּת	11
5322	attitude	יַחַס	11
5323	advantage	יִתרוֹן	11
5324	grandfather	סָבָּא	11
5325	sold	נמכר	11
5326	grandma	סַבתָא	11
5327	beg	לְהִתְחַנֵן	11
5328	someday	יום אחד	11
5329	grade	צִיוּן	11
5330	cheese	גְבִינָה	11
5331	roof	גַג	11
5332	pizza	פִּיצָה	11
5333	powerful	חָזָק	11
5334	fake	מְזוּיָף	11
5335	opening	פְּתִיחָה	11
5336	sally	סאלי	11
5337	eventually	בסופו של דבר	11
5338	exciting	מְרַגֵשׁ	11
5339	covered	מְכוּסֶה	11
5340	familiar	מוּכָּר	11
5341	bomb	פְּצָצָה	11
5342	bout	הֶתקֵף	11
5343	television	טֵלֶוִיזִיָה	11
5344	harmony	הַרמוֹנִיָה	11
5345	colour	צֶבַע	11
5346	schedule	לוּחַ זְמַנִים	11
5347	capable	מְסוּגָל	11
5348	master	לִשְׁלוֹט	11
5349	practically	לְמַעֲשֶׂה	11
5350	correct	נָכוֹן	11
5351	clue	רֶמֶז	11
5352	forgotten	שָׁכוּחַ	11
5353	appointment	פְּגִישָׁה	11
5354	social	חֶברָתִי	11
5355	nature	טֶבַע	11
5356	teacher	מוֹרֶה	11
5357	threat	אִיוּם	11
5358	bloody	אָרוּר	11
5359	lonely	בּוֹדֵד	11
5360	shame	בּוּשָׁה	11
5361	local	מְקוֹמִי	11
5362	jacket	ז'ָקֵט	11
5363	hook	וָו	11
5364	scary	מַפְחִיד	11
5365	loser	מפסיד	11
5366	invite	לְהַזמִין	11
5367	merry	שַׂמֵחַ	11
5368	port	נָמָל	11
5369	precious	יָקָר	11
5370	criminal	פְּלִילִי	11
5371	growing	גָדֵל	11
5372	victim	קָרבָּן	11
5373	professor	פּרוֹפֶסוֹר	11
5374	funeral	הַלוָיָה	11
5375	couch	סַפָּה	11
5376	strength	כּוֹחַ	11
5377	loss	הֶפסֵד	11
5378	view	נוֹף	11
5379	beauty	יוֹפִי	11
5380	several	כַּמָה	11
5381	shock	הֶלֶם	11
5382	chocolate	שׁוֹקוֹלַד	11
5383	greatest	הגדול ביותר	11
5384	miserable	אוּמלָל	11
5385	character	אוֹפִי	11
5386	became	הפך	11
5387	enemy	אוֹיֵב	11
5388	crash	לְהִתְרַסֵק	11
5389	recognize	לְהַכִּיר	11
5390	healthy	בָּרִיא	11
5391	boring	מְשַׁעֲמֵם	11
5392	feed	לְהַאֲכִיל	11
5393	engage	לְהַעֲסִיק	11
5394	percent	אָחוּז	11
5395	purpose	מַטָרָה	11
5396	north	צָפוֹן	11
5397	knife	סַכִּין	11
5398	drag	לִגרוֹר	11
5399	fan	מְנִיפָה	11
5400	badly	בצורה גרועה	11
5401	hire	לִשְׂכּוֹר	11
5402	curious	סַקרָן	11
5403	paint	צֶבַע	11
5404	pardon	חֲנִינָה	11
5405	built	בנוי	11
5406	closet	אָרוֹן	11
5407	candy	סוּכַּרִיוֹת	11
5408	warn	לְהַזהִיר	11
5409	post	שֶׁלְאַחַר	11
5410	survive	לִשְׂרוֹד	11
5411	operation	מִבצָע	11
5412	dump	מִזבָּלָה	11
5413	rent	לִשְׂכּוֹר	11
5414	trade	סַחַר	11
5415	thanksgiving	הוֹדָיָה	11
5416	revenge	נְקָמָה	11
5417	available	זָמִין	11
5418	program	תָכְנִית	11
5419	prefer	לְהַעֲדִיף	11
5420	spare	נוֹסָף	11
5421	pray	לְהִתְפַּלֵל	11
5422	aside	בַּצַד	11
5423	statement	הַצהָרָה	11
5424	sometime	מתישהו	11
5425	meat	בָּשָׂר	11
5426	fantastic	פַנטַסטִי	11
5427	launch	לְהַשִׁיק	11
5428	tip	עֵצָה	11
5429	affair	פָּרָשָׁה	11
5430	depend	לִסְמוֹך	11
5431	jury	חֶבֶר מוּשׁבַּעִים	11
5432	national	לְאוּמִי	11
5433	brave	אַמִיץ	11
5434	storm	סְעָרָה	11
5435	prince	נָסִיך	11
5436	interview	רֵאָיוֹן	11
5437	football	כַּדוּרֶגֶל	11
5438	sexy	סֶקסִי	11
5439	explanation	הֶסבֵּר	11
5440	style	סִגְנוֹן	11
5441	assistant	עוֹזֵר	11
5442	stronger	חזק יותר	11
5443	pie	פַּאִי	11
5444	handsome	נָאֶה	11
5445	unbelievable	לֹא יְאוּמָן	11
5446	anytime	בכל עת	11
5447	nearly	כִּמעַט	11
5448	shake	לְנַעֵר	11
5449	wherever	בַּאֲשֶׁר	11
5450	medicine	תרופה	11
5451	lousy	מְחוּרבָּן	11
5452	circumstance	נסיבות	11
5453	stage	שָׁלָב	11
5454	weak	חַלָשׁ	11
5455	license	רִשָׁיוֹן	11
5456	nothing	שׁוּם דָבָר	11
5457	community	קהילה	11
5458	trash	אַשׁפָּה	11
5459	slip	לְהַחלִיק	11
5460	awake	עֵר	11
5461	friendship	חֲבֵרוּת	11
5462	stomach	בֶּטֶן	11
5463	weapon	נֶשֶׁק	11
5464	mystery	מִסתוֹרִין	11
5465	official	רִשְׁמִי	11
5466	regular	קָבוּעַ	11
5467	valley	עֶמֶק	11
5468	contract	חוֹזֶה	11
5469	sexual	מִינִי	11
5470	race	גֶזַע	11
5471	basically	בעצם	11
5472	switch	מֶתֶג	11
5473	frankly	בכנות	11
5474	cheap	זוֹל	11
5475	lifetime	מֶשֶׁך הָחַיִים	11
5476	deny	לְהַכּחִישׁ	11
5477	painting	צִיוּר	11
5478	clock	שָׁעוֹן	11
5479	weight	מִשׁקָל	11
5480	tear	דִמעָה	11
5481	dig	לַחפּוֹר	11
5482	bullet	כַּדוּר	11
5483	indeed	אָכֵן	11
5484	changing	מִשְׁתַנֶה	11
5485	tiny	זָעִיר	11
5486	particular	מְסוּיָם	11
5487	draw	לִמְשׁוֹך	11
5488	decent	הָגוּן	11
5489	spring	אָבִיב	11
5490	avoid	לְהִמָנַע	11
5491	united	מְאוּחָד	11
5492	score	צִיוּן	11
5493	disappear	לְהֵעָלֵם	11
5494	stranger	זָר	11
5495	exact	מְדוּיָק	11
5496	harm	לִפְגוֹעַ	11
5497	recently	לָאַחֲרוֹנָה	11
5498	snow	שֶׁלֶג	11
5499	fortune	מַזָל	11
5500	strike	לְהַכּוֹת	11
5501	insurance	ביטוח	11
5502	fancy	לְחַבֵּב	11
5503	drove	נהג	11
5504	career	קריירה	11
5505	shape	צוּרָה	11
5506	stock	מְנָיוֹת	11
5507	fashion	לְעַצֵב	11
5508	freedom	חוֹפֶשׁ	11
5509	timing	תִזמוּן	11
5510	guarantee	אַחֲרָיוּת	11
5511	chest	חָזֶה	11
5512	bridge	לְגַשֵׁר	11
5513	woke	התעורר	11
5514	source	מָקוֹר	11
5515	theory	תֵאוֹרִיָה	11
5516	camp	מַחֲנֶה	11
5517	original	מְקוֹרִי	11
5518	juice	מִיץ	11
5519	access	גִישָׁה	11
5520	watch	לִצְפּוֹת	11
5521	heading	כּוֹתֶרֶת	11
5522	selfish	אָנוֹכִי	11
5523	oil	שֶׁמֶן	11
5524	wise	חָכָם	11
5525	period	תְקוּפָה	11
5526	doll	בּוּבָּה	11
5527	committed	מְחוּיָב	11
5528	freeze	הַקפָּאָה	11
5529	noise	רַעַשׁ	11
5530	exist	לְהִתְקַיֵם	11
5531	science	מַדָע	11
5532	pair	זוּג	11
5533	sat	ישב	11
5534	player	נַגָן	11
5535	ceremony	טֶקֶס	11
5536	uncomfortable	לֹא נוֹחַ	11
5537	peg	יָתֵד	11
5538	bike	אופניים	11
5539	weather	מֶזֶג אֲוִיר	11
5540	mostly	לָרוֹב	11
5541	stress	לְהַדגִישׁ	11
5542	permission	רְשׁוּת	11
5543	possibility	אֶפשָׁרוּת	11
5544	faster	מהיר יותר	11
5545	borrow	לִלווֹת	11
5546	release	לְשַׁחְרֵר	11
5547	ate	אכל	11
5548	joy	שִׂמְחָה	11
5549	junior	זוּטָר	11
5550	property	נֶכֶס	11
5551	negative	שְׁלִילִי	11
5552	fabulous	נֶהְדָר	11
5553	vision	חָזוֹן	11
5554	member	חָבֵר	11
5555	battle	קְרָב	11
5556	term	מוּנָח	11
5557	devil	שָׂטָן	11
5558	what	מַה	11
5559	meal	אֲרוּחָה	11
5560	fellow	עָמִית	11
5561	apology	הִתנַצְלוּת	11
5562	anger	כַּעַס	11
5563	honeymoon	יָרֵחַ דְבַשׁ	11
5564	wet	רָטוֹב	11
5565	bail	עֲרֵבוּת	11
5566	parking	חֲנָיָה	11
5567	hung	תָלוּי	11
5568	protection	הֲגָנָה	11
5569	manager	מְנַהֵל	11
5570	dawn	שַׁחַר	11
5571	Chinese	סִינִית	11
5572	campaign	מַסָע	11
5573	wash	לִשְׁטוֹף	11
5574	sensitive	רָגִישׁ	11
5575	photo	תַצלוּם	11
5576	chose	בחר	11
5577	comfort	נוֹחוּת	11
5578	worrying	מדאיג	11
5579	whom	מִי	11
5580	pocket	כִּיס	11
5581	bleeding	מְדַמֵם	11
5582	shoulder	כָּתֵף	11
5583	ignore	לְהִתְעַלֵם	11
5584	fourth	רְבִיעִית	11
5585	talent	כִּשָׁרוֹן	11
5586	garage	מוּסָך	11
5587	travel	לִנְסוֹעַ	11
5588	success	הַצלָחָה	11
5589	training	הַדְרָכָה	11
5590	rude	גַס	11
5591	crack	סֶדֶק	11
5592	model	דֶגֶם	11
5593	radar	"מכ""ם"	11
5594	grew	גדל	11
5595	remain	לְהִשָׁאֵר	11
5596	soft	רַך	11
5597	meantime	בינתיים	11
5598	connected	מְחוּבָּר	11
5599	chase	מִרדָף	11
5600	cast	יָצוּק	11
5601	cancer	סַרְטָן	11
5602	sky	שָׁמַיִם	11
5603	likely	סָבִיר	11
5604	fate	גוֹרָל	11
5605	bury	לִקְבּוֹר	11
5606	hug	לְחַבֵּק	11
5607	brother	אָח	11
5608	driver	נֶהָג	11
5609	concentrate	לְהִתְרַכֵּז	11
5610	throat	גָרוֹן	11
5611	prom	נשף	11
5612	unit	יְחִידָה	11
5613	intend	מתכוון	11
5614	crew	צוות	11
5615	ashame	בושה	11
5616	midnight	חֲצוֹת	11
5617	manage	לְנַהֵל	11
5618	guilt	אַשׁמָה	11
5619	terms	תנאים	11
5620	interrupt	לְהַפְרִיעַ	11
5621	guts	אומץ	11
5622	tongue	לָשׁוֹן	11
5623	distance	מֶרְחָק	11
5624	conference	וְעִידָה	11
5625	treatment	יַחַס	11
5626	shoe	נַעַל	11
5627	basement	מַרְתֵף	11
5628	sentence	מִשׁפָּט	11
5629	purse	אַרְנָק	11
5630	glasses	מִשׁקָפַיִם	11
5631	cabin	תָא	11
5632	universe	עוֹלָם	11
5633	towards	לִקרַאת	11
5634	repeat	לַחֲזוֹר עַל	11
5635	mirror	מַרְאָה	11
5636	wound	פֶּצַע	11
5637	tall	גָבוֹהַ	11
5638	reaction	תְגוּבָה	11
5639	odd	מְשׁוּנֶה	11
5640	engagement	אירוסין	11
5641	therapy	תֶרַפּיָה	11
5642	emotional	רִגשִׁי	11
5643	magazine	מָגָזִין	11
5644	soup	מָרָק	11
5645	society	חֶברָה	11
5646	sue	לִתְבּוֹעַ	11
5647	stake	לְהַמֵר	11
5648	chef	שֶׁף	11
5649	awesome	מדהים	11
5650	genius	גָאוֹן	11
5651	extremely	מְאוֹד	11
5652	entirely	לַחֲלוּטִין	11
5653	nasty	מַגְעִיל	11
5654	expensive	יָקָר	11
5655	counting	סְפִירָה	11
5656	kidnapping	חֲטִיפָה	11
5657	square	מְרוּבָּע	11
5658	cleaning	ניקוי	11
5659	shift	מִשׁמֶרֶת	11
5660	plate	צַלַחַת	11
5661	trapped	לכוד	11
5662	male	זָכָר	11
5663	tour	סִיוּר	11
5664	charming	מַקסִים	11
5665	attractive	מוֹשֵׁך	11
5666	argue	לִטעוֹן	11
5667	Sunday	יוֹם רִאשׁוֹן	11
5668	whip	שׁוֹט	11
5669	settled	מְיוּשָׁב	11
5670	package	חֲבִילָה	11
5671	laid	מוּנָח	11
5672	disease	מַחֲלָה	11
5673	bust	חָזֶה	11
5674	staircase	גֶרֶם מַדרֵגוֹת	11
5675	alarm	אַזעָקָה	11
5676	pure	טָהוֹר	11
5677	nail	מַסְמֵר	11
5678	nerve	עָצָב	11
5679	incredibly	בצורה מדהימה	11
5680	hill	גִבעָה	11
5681	lane	נָתִיב	11
5682	dirt	עָפָר	11
5683	bond	קֶשֶׁר	11
5684	stamp	חוֹתֶמֶת	11
5685	becoming	הִתהַוּוּת	11
5686	terribly	נוֹרָא	11
5687	friendly	יְדִידוּתִי	11
5688	easily	בְּקַלוּת	11
5689	damn	לעזאזל	11
5690	suffering	סֵבֶל	11
5691	disgusting	מַגְעִיל	11
5692	deliver	לִמְסוֹר	11
5693	riding	רְכִיבָה	11
5694	federal	פֵדֵרָלִי	11
5695	disaster	אָסוֹן	11
5696	rate	קֶצֶב	11
5697	trap	מַלכּוֹדֶת	11
5698	claim	תְבִיעָה	11
5699	turkey	טוּרְקִיָה	11
5700	spoken	נֱאֶמַר	11
5701	snake	נָחָשׁ	11
5702	introduce	לְהַצִיג	11
5703	rescue	לְהַצִיל	11
5704	confession	הוֹדָאָה	11
5705	lover	מְאַהֵב	11
5706	impression	רוֹשֶׁם	11
5707	gate	שַׁעַר	11
5708	fantasy	פַנטָזִיָה	11
5709	reputation	מוֹנֵיטִין	11
5710	It	זֶה	11
5711	knowledge	יֶדַע	11
5712	inn	פּוּנדָק	11
5713	Europe	אֵירוֹפָּה	11
5714	suffer	לִסְבּוֹל	11
5715	argument	טַעֲנָה	11
5716	homework	שִׁעוּרֵי בַּיִת	11
5717	cancel	לְבַטֵל	11
5718	director	מְנַהֵל	11
5719	bath	מֶרחָץ	11
5720	prepare	לְהַכִין	11
5721	wheel	גַלגַל	11
5722	crisis	מַשׁבֵּר	11
5723	Monday	יוֹם שֵׁנִי	11
5724	pink	וָרוֹד	11
5725	gentleman	ג'ֶנטֶלמֶן	11
5726	toilet	שֵׁרוּתִים	11
5727	agreement	הֶסכֵּם	11
5728	ill	חוֹלֶה	11
5729	eleven	אַחַד עָשָׂר	11
5730	wide	רָחָב	11
5731	popular	פּוֹפּוּלָרִי	11
5732	clinic	קלִינִיקָה	11
5733	exchange	לְהַחלִיף	11
5734	university	אוּנִיבֶרְסִיטָה	11
5735	load	לִטעוֹן	11
5736	winter	חוֹרֶף	11
5737	swim	לִשְׂחוֹת	11
5738	holiday	חַג	11
5739	material	חוֹמֶר	11
5740	parent	הוֹרֶה	11
5741	wood	עֵץ	11
5742	article	סָעִיף	11
5743	math	מתמטיקה	11
5744	grant	מַעֲנָק	11
5745	orange	כָּתוֹם	11
5746	Thursday	יוֹם חֲמִישִׁי	11
5747	dozen	תְרֵיסַר	11
5748	bread	לֶחֶם	11
5749	silence	לְהַשְׁתִיק	11
5750	duck	לְהִתְכּוֹפֵף	11
5751	seventy	שִׁבעִים	11
5752	butter	חֶמאָה	11
5753	carrot	גֶזֶר	11
5754	alcohol	כּוֹהֶל	11
5755	mum	אמא	11
5756	headache	כְּאֵב רֹאשׁ	11
5757	tennis	טֶנִיס	11
5758	Tuesday	יוֹם שְׁלִישִׁי	11
5759	theatre	תֵאַטרוֹן	11
5760	ninety	תִשׁעִים	11
5761	guide	מַדְרִיך	11
5762	royal	מַלכּוּתִי	11
5763	ability	יְכוֹלֶת	11
5764	wing	אֲגַף	11
5765	tradition	מָסוֹרֶת	11
5766	towel	מַגֶבֶת	11
5767	earn	לִזכּוֹת	11
5768	habit	הֶרגֵל	11
5769	event	מִקרֶה	11
5770	basket	סַל	11
5771	balance	לְאַזֵן	11
5772	exercise	תַרגִיל	11
5773	forth	הָלְאָה	11
5774	eighteen	שְׁמוֹנֶה עֶשְׂרֵה	11
5775	perform	לְבַצֵעַ	11
5776	everyday	כל יום	11
5777	village	כְּפָר	11
5778	journey	מַסָע	11
5779	supply	לְסַפֵּק	11
5780	helpful	מוֹעִיל	11
5781	useless	חֲסַר תוֹעֶלֶת	11
5782	fourteen	אַרְבַּע עֶשְׂרֵה	11
5783	gum	מַסטִיק	11
5784	replace	לְהַחלִיף	11
5785	emotion	רֶגֶשׁ	11
5786	stubborn	עַקשָׁן	11
5787	provide	לְסַפֵּק	11
5788	beef	בָּקָר	11
5789	nephew	אחיין	11
5790	victory	נִצָחוֹן	11
5791	title	כּוֹתֶרֶת	11
5792	furniture	רְהִיטִים	11
5793	blanket	שְׂמִיכָה	11
5794	surface	מִשׁטָח	11
5795	niece	אחיינית	11
5796	gloves	כפפות	11
5797	soap	סַבּוֹן	11
5798	signature	חֲתִימָה	11
5799	zoo	גַן חַיוֹת	11
5800	cope	להתמודד	11
5801	compound	תִרכּוֹבֶת	11
5802	abuse	הִתעַלְלוּת	11
5803	accurate	מְדוּיָק	11
5804	acquire	לִרְכּוֹשׁ	11
5805	bake	לֶאֱפוֹת	11
5806	barrier	מַחסוֹם	11
5807	battery	סוֹלְלָה	11
5808	beard	זָקָן	11
5809	behave	לְהִתְנַהֵג	11
5810	beside	לְיַד	11
5811	bicycle	אופניים	11
5812	bin	פַּח	11
5813	biscuit	עוּגִיָה	11
5814	bonus	מַעֲנָק	11
5815	brush	מִברֶשֶׁת	11
5816	bucket 	דְלִי	11
5817	budget 	תַקצִיב	11
5818	butcher	קַצָב	11
5819	carpet	שָׁטִיחַ	11
5820	centimetre	סַנטִימֶטֶר	11
5821	cereal 	דְגָנִי	11
5822	certificate	תְעוּדָה	11
5823	champion	אַלוּף	11
5824	chemical 	כִּימִי	11
5825	cheque	לִבדוֹק	11
5826	cherry	דוּבדְבָן	11
5827	cigarette	סִיגַרִיָה	11
5828	cinema	קוֹלנוֹעַ	11
5829	citizen	אֶזרָח	11
5830	classroom	בכיתה	11
5831	data	נְתוּנִים	11
5832	darling	מוֹתֶק	11
5833	deaf	חֵרֵשׁ	11
5834	delay	לְעַכֵּב	11
5835	diary	יְוֹמָן	11
5836	dish	צַלַחַת	11
5837	eastern 	מִזְרָחִי	11
5838	economic	כַּלְכָּלִי	11
5839	email	אֶלֶקטרוֹנִי	11
5840	employ	לְהַעֲסִיק	11
5841	enable	לְאַפשֵׁר	11
5842	fee	תַשְׁלוּם	11
5843	finance	לְמַמֵן	11
5844	flow	זְרִימָה	11
5845	formula	נוּסחָה	11
5846	frequent	תָכוּף	11
5847	fridge	מְקָרֵר	11
5848	fry	לְטַגֵן	11
5849	fulfil 	לְמַלֵא	11
5850	industry	תַעֲשִׂיָה	11
5851	injury 	פְּצִיעָה	11
5852	institute	מָכוֹן	11
5853	jam	לִדחוֹס	11
5854	journalist 	עִתוֹנָאִי	11
5855	absence	הֶעְדֵר	11
5856	keen	נִלהָב	11
5857	kettle	קוּמקוּם	11
5858	keyboard	מִקלֶדֶת	11
5859	knee 	בֶּרֶך	11
5860	label	מַדבֵּקָה	11
5861	laboratory	מַעבָּדָה	11
5862	labour	עֲבוֹדָה	11
5863	lack	חוֹסֶר	11
5864	ladder	סוּלָם	11
5865	lamb	כֶּבֶשׂ	11
5866	lamp	מְנוֹרָה	11
5867	landlord	בַּעַל בַּיִת	11
5868	lazy	עָצֵל	11
5869	leader	מַנהִיג	11
5870	leadership	מַנהִיגוּת	11
5871	leaf	עָלֶה	11
5872	lean	רָזֶה	11
5873	leather	עוֹר	11
5874	lend	לְהַלווֹת	11
5875	leisure	פְּנַאִי	11
5876	log	עֵץ	11
5877	logical	הֶגיוֹנִי	11
5878	lorry	מַשָׂאִית	11
5879	library	סִפְרִיָה	11
5880	mainly 	בעיקר	11
5881	maintain	לְתַחְזֵק	11
5882	maintenance	תַחזוּקָה	11
5883	major	רַב סֶרֶן	11
5884	mall	קֶנִיוֹן	11
5885	manner	דֶרֶך	11
5886	margin	מֶתַח	11
5887	marvellous	נִפלָא	11
5888	massive	מַסִיבִי	11
5889	narrow	לְצַמְצֵם	11
5890	native	יָלִיד	11
5891	naughty	שׁוֹבָב	11
5892	nearby	סָמוּך	11
5893	neighbour	שָׁכֵן	11
5894	net	נֶטוֹ	11
5895	network	רֶשֶׁת	11
5896	nicely	יפה	11
5897	no way	אין מצב	11
5898	object	לְהִתְנַגֵד	11
5899	objection	הִתנַגְדוּת	11
5900	obligation	חוֹבָה	11
5901	observation	תַצְפִּית	11
5902	observe	לִצְפּוֹת	11
5903	obtain	לְהַשִׂיג	11
5904	occasion	הִזדַמְנוּת	11
5905	occupy	לִכבּוֹשׁ	11
5906	occur	לְהִתְרַחֵשׁ	11
5907	ocean	יָם	11
5908	o’clock	השעה	11
5909	of course	כַּמוּבָן	11
5910	operate	לְהַפְעִיל	11
5911	oppose	לְהִתְנַגֵד	11
5912	pace	לִפְסוֹעַ	11
5913	pad	כָּרִית	11
5914	palace	אַרְמוֹן	11
5915	pale	חיוור	11
5916	panic	בהלה	11
5917	parcel 	חֲבִילָה	11
5918	parliament	פַּרלָמֶנט	11
5919	participate	לְהִשְׂתַתֵף	11
5920	partly	חֶלקִית	11
5921	passenger	נוֹסֵעַ	11
5922	patience	סַבְלָנוּת	11
5923	path	נָתִיב	11
5924	pattern	תַבְנִית	11
5925	pause	הַפסָקָה	11
5926	payment	תַשְׁלוּם	11
5927	qualify	להעפיל	11
5928	quality	אֵיכוּת	11
5929	quantity	כַּמוּת	11
5930	rail	מַעֲקֶה	11
5931	railway	רכבת	11
5932	range	לָנוּעַ	11
5933	rapid	מָהִיר	11
5934	rare	נָדִיר	11
5935	rarely	לְעִתִים רְחוֹקוֹת	11
5936	react	לְהָגִיב	11
5937	receipt	קַבָּלָה	11
5938	receive	לְקַבֵּל	11
5939	safety	בְּטִיחוּת	11
5940	sail	לְהַפְלִיג	11
5941	salad	סָלָט	11
5942	salary	מַשׂכּוֹרֶת	11
5943	sale	מְכִירָה	11
5944	salt 	מֶלַח	11
5945	sand	חוֹל	11
5946	sandwich 	כָּרִיך	11
5947	satellite	לוויין	11
5948	satisfaction	שְׂבִיעוּת רָצוֹן	11
5949	sauce	רוֹטֶב	11
5950	sausage	נַקנִיק	11
5951	scale	סוּלָם	11
5952	scheme	תָכְנִית	11
5953	scratch	לְגַרֵד	11
5954	screen	מָסָך	11
5955	script	תַסרִיט	11
5956	seal	לֶאֱטוֹם	11
5957	season 	עוֹנָה	11
5958	secondary	מִשׁנִי	11
5959	seed	זֶרַע	11
5960	seek 	לְחַפֵּשׂ	11
5961	select	לִבחוֹר	11
5962	senior	בָּכִיר	11
5963	sensible	נָבוֹן	11
5964	separate	נִפרָד	11
5965	sequence	רֶצֶף	11
5966	servant	מְשָׁרֵת	11
5967	session	מוֹשָׁב	11
5968	settlement	הֶסדֵר	11
5969	severe	חָמוּר	11
5970	shadow	צֵל	11
5971	tablet	לוּחַ	11
5972	tail	זָנָב	11
5973	tale	מַעֲשִׂיָה	11
5974	tap	בֶּרֶז	11
5975	target	יַעַד	11
5976	task	מְשִׁימָה	11
5977	tax	מַס	11
5978	taxi	מוֹנִית	11
5979	tea	תֵה	11
5980	telly	טֵלֶוִיזִיָה	11
5981	technology	טֶכנוֹלוֹגִיָה	11
5982	telephone	טֵלֵפוֹן	11
5983	temperature	טֶמפֶּרָטוּרָה	11
5984	unable	לא מסוגל	11
5985	undertake	לְהִתְחַיֵב	11
5986	uniform	אָחִיד	11
5987	unlike	שׁוֹנֶה	11
5988	vacation	חוּפשָׁה	11
5989	variation	וָרִיאַצִיָה	11
5990	vary	לְהִשְׁתַנוֹת	11
5991	vast 	עָצוּם	11
5992	vegetable 	יֶרֶק	11
5993	yard	חָצֵר	11
5994	yellow	צָהוֹב	11
5995	wage	שָׂכָר	11
5996	wake	לְהִתְעוֹרֵר	11
5997	wander	לְשׁוֹטֵט	11
5998	ward	מַחלָקָה	11
5999	wardrobe	אָרוֹן בְּגָדִים	11
6000	weakness	חוּלשָׁה	11
6001	wealth	עוֹשֶׁר	11
6002	web	אינטרנט	11
6003	website	אֲתַר אִינטֶרנֶט	11
6004	western 	מערבי	11
6005	whatsoever	כָּלשֶׁהוּ	11
6006	whereas	ואילו	11
6007	wooden	עץ	11
6008	wool	צֶמֶר	11
6009	workshop	סַדנָה	11
6010	kilometre	קִילוֹמֶטֶר	11
6011	largely	במידה רבה	11
6012	lunchtime	שעת צהריים	11
6013	link	לְקַשֵׁר	11
6014	liquid	נוֹזֵל	11
6015	limit	לְהַגבִּיל	11
6016	literature	סִפְרוּת	11
6017	mushroom	פִּטרִיָה	11
6018	musical	מוּסִיקָלִי	11
6019	muscle	שְׁרִיר	11
6020	movement	תְנוּעָה	11
6021	mouse	עַכְבָּר	11
6022	mountain	הַר	11
6023	northern 	צְפוֹנִי	11
6024	overseas	חוּץ לָאָרֶץ	11
6025	ownership	בַּעֲלוּת	11
6026	programme	תָכְנִית	11
6027	pupil	תַלמִיד	11
6028	pub	פָּאבּ	11
6029	primarily	בְּרֹאשׁ וּבְרִאשׁוֹנָה	11
6030	presume	להניח	11
6031	predict	לַחֲזוֹת	11
6032	practise	לְתַרְגֵל	11
6033	praise	שֶׁבַח	11
6034	potato	תַפּוּחַ אַדֲמָה	11
6035	post office	דוֹאַר	11
6036	pool	פּוּל	11
6037	politician	פּוֹלִיטִיקָאִי	11
6038	policeman	שׁוֹטֵר	11
6039	poem	שִׁיר	11
6040	plug	תֶקַע	11
6041	petrol	בֶּנזִין	11
6042	pepper	פִּלְפֵּל	11
6043	pension	פֶּנסִיָה	11
6044	pencil 	עִפָּרוֹן	11
6045	reduce	לְהַפחִית	11
6046	region	אֵזוֹר	11
6047	rice	אוֹרֶז	11
6048	scientist	מַדְעָן	11
6049	sheep	כִּבשָׂה	11
6050	sheet	דַף	11
6051	shelf	מַדָף	11
6052	shout	לִצְעוֹק	11
6053	singer	זַמֶרֶת	11
6054	slice	פְּרוּסָה	11
6055	slim	רָזֶה	11
6056	smoking	עִשׁוּן	11
6057	sole	יָחִיד	11
6058	spoon	כַּף	11
6059	steak	סטֵייק	11
6060	strawberry	תּוּת	11
6061	strict	קַפְּדָנִי	11
6062	struggle	מַאֲבָק	11
6063	submit 	לְהַגִישׁ	11
6064	supermarket	סוּפֶּרמַרקֶט	11
6065	supper	אֲרוּחַת עֶרֶב	11
6066	symbol 	סֵמֶל	11
6067	territory	שֶׁטַח	11
6068	text	טֶקסט	11
6069	toe	אֶצבַּע	11
6070	tomato	עַגְבָנִיָה	11
6071	tooth	שֵׁן	11
6072	tourist	תייר	11
6073	tower 	מִגדָל	11
6074	traditional	מָסוֹרתִי	11
6075	translate	לְתַרְגֵם	11
6076	transport	תַחְבּוּרָה	11
6077	trousers	מִכְנָסַיִים	11
6078	tube	שְׁפוֹפֶרֶת	11
6079	unlikely	לא סביר	11
6080	useful	מוֹעִיל	11
6081	via	בְּאֶמצָעוּת	11
6082	visual	חָזוּתִי	11
6083	volume	כֶּרֶך	11
6084	yet 	אוּלָם	11
6085	youth	נוֹעַר	11
6086	had	היה	11
6087	investigation	חֲקִירָה	11
6088	vine	גֶפֶן	11
6089	T-shirt	חוּלצַת טִי	11
6090	apricot	מִשׁמֵשׁ	11
6091	attribute	תְכוּנָה	11
6092	beetle	חיפושית	11
6093	bracket	סוֹגֵר	11
6094	concise	תַמצִיתִי	11
6095	decay	לִדעוֹך	11
6096	doze	לְנַמְנֵם	11
6097	farther	הָלְאָה	11
6098	lavatory	שֵׁירוּתִים	11
6099	litre	לִיטר	11
6100	metre	מֶטֶר	11
6101	noun	שֵׁם עֶצֶם	11
6102	pigeon	יוֹנָה	11
6103	porridge	דַיסָה	11
6104	raspberry	פֶּטֶל	11
6105	appreciate	לְהַעֲרִיך	11
6106	responsible	אַחֲרַאִי	11
6107	fought	נלחם	11
6108	pride	גֵאָה	11
6109	solve	לִפְתוֹר	11
6110	hopefully	בתקווה	11
6111	pine	לְהִתגַעגֵעַ	11
6112	mate	זוּג	11
6113	illegal	בִּלתִי חוּקִי	11
6114	matt	מאט	11
6115	con	קון	11
6116	maid	עוֹזֶרֶת	11
6117	punch	פּוּנץ'	11
6118	mayor	רֹאשׁ הָעִיר	11
6119	recall	לִזכּוֹר	11
6120	bug	חֶרֶק	11
6121	defend	לְהַגֵן	11
6122	painful	כּוֹאֵב	11
6123	rat	לְהַלשִׁין	11
6124	cooking	בישול	11
6125	button	לַחְצָן	11
6126	sixty	שִׁשִׁים	11
6127	pity	רַחֲמִים	11
6128	coach	מְאַמֵן	11
6129	row	שׁוּרָה	11
6130	awhile	לִזְמַן מַה	11
6131	pen	עֵט	11
6132	confidence	אֵמוּן	11
6133	carter	עֶגלוֹן	11
6134	image	תְמוּנָה	11
6135	hers	שֶׁלָה	11
6136	role	תַפְקִיד	11
6137	refuse	אַשׁפָּה	11
6138	determined	נָחוּשׁ	11
6139	progress	הִתקַדְמוּת	11
6140	military	צְבָאִי	11
6141	artist	אָמָן	11
6142	gym	חדר כושר	11
6143	cruel	אַכְזָרִי	11
6144	traffic	תְנוּעָה	11
6145	mental	נַפשִׁי	11
6146	poison	רַעַל	11
6147	expert	מוּמחֶה	11
6148	bull	שׁוֹר	11
6149	benefit	תוֹעֶלֶת	11
6150	secretary	מַזכִּיר	11
6151	sneak	לְהִתְגַנֵב	11
6152	mix	לְעַרְבֵּב	11
6153	firm	מוּצָק	11
6154	privacy	פְּרָטִיוּת	11
6155	pot	סִיר	11
6156	twins	תְאוּמִים	11
6157	swing	נַדְנֵדָה	11
6158	successful	מוּצלָח	11
6159	scream	לִצְרוֹחַ	11
6160	solid	מוּצָק	11
6161	flash	הֶבזֵק	11
6162	crush	לִמְחוֹץ	11
6163	ambulance	אַמבּוּלַנס	11
6164	wallet	אַרְנָק	11
6165	discovery	תַגלִית	11
6166	officially	רִשְׁמִית	11
6167	gang	כְּנוּפִיָה	11
6168	till	עַד	11
6169	rise	לַעֲלוֹת	11
6170	option	אוֹפְּצִיָה	11
6171	laundry	כְּבִיסָה	11
6172	former	לְשֶׁעָבַר	11
6173	assure	לְהַבטִיחַ	11
6174	skip	לְדַלֵג	11
6175	fail	לְהִכָּשֵׁל	11
6176	accuse	לְהַאֲשִׁים	11
6177	plant	לִשְׁתוֹל	11
6178	lower	לְהוֹרִיד	11
6179	bored	מְשׁוּעֲמָם	11
6180	soda	סוֹדָה	11
6181	silver	כֶּסֶף	11
6182	sheriff	שֶׁרִיף	11
6183	suite	סְוִיטָה	11
6184	section	סָעִיף	11
6185	commit	לְבַצֵעַ	11
6186	suicide	הִתאַבְּדוּת	11
6187	spread	התפשטות	11
6188	fishing	דַיִג	11
6189	bat	בַּת	11
6190	yell	לִצְעוֹק	11
6191	league	לִיגָה	11
6192	proper	תָקִין	11
6193	fifth	חֲמִישִׁית	11
6194	solution	פִּתָרוֹן	11
6195	sharp	חַד	11
6196	giant	עֲנָק	11
6197	nor	גַם לֹא	11
6198	latest	האחרון	11
6199	ash	אֵפֶר	11
6200	highly	מְאוֹד	11
6201	audience	קהל	11
6202	winner	זוֹכֵה	11
6203	insist	לְהִתְעַקֵשׁ	11
6204	cheer	לְעוֹדֵד	11
6205	flesh	בָּשָׂר	11
6206	district	מָחוֹז	11
6207	routine	שִׁגרָתִי	11
6208	adult	מְבוּגָר	11
6209	spike	דָרְבָּן	11
6210	awfully	נורא	11
6211	thin	דַק	11
6212	fever	חום	11
6213	female	נְקֵבָה	11
6214	sweat	לְהָזִיעַ	11
6215	silent	שָׁקֶט	11
6216	clever	חָכָם	11
6217	request	בַּקָשָׁה	11
6218	prize	פְּרָס	11
6219	fully	לְגַמרֵי	11
6220	estate	נְכָסִים	11
6221	union	הִתאַחֲדוּת	11
6222	goodnight	לילה טוב	11
6223	divorced	גרושה	11
6224	despite	לַמרוֹת	11
6225	surely	לְלֹא סָפֵק	11
6226	confess	לְהוֹדוֹת	11
6227	bless	לְבָרֵך	11
6228	chip	שְׁבָב	11
6229	zero	אֶפֶס	11
6230	potential	פּוֹטֶנצִיאָל	11
6231	wolf	זְאֵב	11
6232	chill	לְצַנֵן	11
6233	blonde	בְּלוֹנדִינִית	11
6234	brains	מוֹחַ	11
6235	agency	סוֹכְנוּת	11
6236	degree	תוֹאַר	11
6237	unusual	יוֹצֵא דוֹפֶן	11
6238	joint	מְשׁוּתָף	11
6239	rob	לִשְׁדוֹד	11
6240	cure	לְרַפֵּא	11
6241	covering	מִכסֶה	11
6242	newspaper	עִתוֹן	11
6243	coast	חוֹף	11
6244	grave	קֶבֶר	11
6245	direct	יָשִׁיר	11
6246	cheating	רַמָאוּת	11
6247	quarter	רוֹבַע	11
6248	mixed	מְעוּרָב	11
6249	brand	מותג	11
6250	toy	צַעֲצוּעַ	11
6251	policy	מְדִינִיוּת	11
6252	competition	תַחֲרוּת	11
6253	reasonable	סָבִיר	11
6254	curse	לְקַלֵל	11
6255	dessert	קינוח	11
6256	rolling	גִלגוּל	11
6257	alien	זָר	11
6258	cloth	בַּד	11
6259	ancient	עַתִיק	11
6260	wore	לבש	11
6261	value	עֵרֶך	11
6262	site	אֲתַר	11
6263	secure	מְאוּבטָח	11
6264	spit	רוֹק	11
6265	pilot	טַיָס	11
6266	penny	פֶּנִי	11
6267	offense	הַתקָפָה	11
6268	dust	אָבָק	11
6269	conscience	מַצְפּוּן	11
6270	invitation	הַזמָנָה	11
6271	hidden	מוּסתָר	11
6272	grief	צַעַר	11
6273	smiling	מחייך	11
6274	destiny	גוֹרָל	11
6275	bowl	קְעָרָה	11
6276	pregnancy	הֵרָיוֹן	11
6277	prisoner	אָסִיר	11
6278	delivery	מְסִירָה	11
6279	virus	נגיף	11
6280	shrink	לְצַמֵק	11
6281	influence	לְהַשְׁפִּיעַ	11
6282	freezing	קְפִיאָה	11
6283	concert	קוֹנצֶרט	11
6284	wreck	לַהֲרוֹס	11
6285	chain	שַׁרשֶׁרֶת	11
6286	walker	הֲלִיכוֹן	11
6287	wire	חוּט	11
6288	presence	נוֹכְחוּת	11
6289	anxious	חָרֵד	11
6290	version	גִרְסָה	11
6291	wishes	משאלות	11
6292	bound	כָּרוּך	11
6293	charm	קֶסֶם	11
6294	frame	מִסגֶרֶת	11
6295	boom	בּוּם	11
6296	vice	סְגָן	11
6297	opera	אוֹפֵּרָה	11
6298	nonsense	שְׁטוּיוֹת	11
6299	fright	פַּחַד	11
6300	downtown	מֶרְכָּז הָעִיר	11
6301	actual	מַמָשִׁי	11
6302	spin	לְסוֹבֵב	11
6303	classic	קלַאסִי	11
6304	civil	אֶזרָחִי	11
6305	tool	כְּלִי	11
6306	education	הַשׂכָּלָה	11
6307	wrap	לַעֲטוֹף	11
6308	torture	לַעֲנוֹת	11
6309	location	מִקוּם	11
6310	loan	לְהַלווֹת	11
6311	effort	מַאֲמָץ	11
6312	owner	בַּעַל	11
6313	fairy	פֵיָה	11
6314	per	לְכָל	11
6315	necessarily	בהכרח	11
6316	county	מָחוֹז	11
6317	contest	תַחֲרוּת	11
6318	print	הֶדפֵּס	11
6319	motel	מוֹטֶל	11
6320	directly	יָשִׁירוֹת	11
6321	underwear	תַחתוֹנִים	11
6322	exhaust	פְּלִיטָה	11
6323	particularly	בִּמְיוּחָד	11
6324	carefully	בזהירות	11
6325	trace	זֵכֶר	11
6326	smooth	לְהַחלִיק	11
6327	recovery	הִתאוֹשְׁשׁוּת	11
6328	intention	מַטָרָה	11
6329	enter	לְהַכנִיס	11
6330	belt	חֲגוֹרָה	11
6331	standard	תֶקֶן	11
6332	sacrifice	לְהַקְרִיב	11
6333	courage	גְבוּרָה	11
6334	attract	לִמְשׁוֹך	11
6335	bay	מִפרָץ	11
6336	remove	לְהַסִיר	11
6337	intense	אִינטֶנסִיבִי	11
6338	violence	אַלִימוּת	11
6339	heal	לְרַפֵּא	11
6340	attempt	לְנַסוֹת	11
6341	unfair	לֹא הוֹגֶן	11
6342	loyal	נֶאֱמָן	11
6343	approach	גִישָׁה	11
6344	slowly	לְאַט	11
6345	normally	בדרך כלל	11
6346	actor	שַׂחְקָן	11
6347	plain	מִישׁוֹר	11
6348	attic	עֲלִיַת גַג	11
6349	pet	לְלַטֵף	11
6350	threaten	לְאַיֵם	11
6351	motion	תְנוּעָה	11
6352	collection	גְבִיָה	11
6353	incident	תַקרִית	11
6354	failure	כֶּשֶׁל	11
6355	imagination	דִמיוֹן	11
6356	counsellor	יוֹעֵץ	11
6357	opposite	מוּל	11
6358	highest	הֲכִי גָבוֹהַ	11
6359	gross	בְּרוּטוֹ	11
6360	golden	זָהוּב	11
6361	badge	תָג	11
6362	Italian	אִיטַלְקִית	11
6363	visiting	מבקר	11
6364	studio	סטוּדִיוֹ	11
6365	naturally	כַּמוּבָן	11
6366	frozen	קָפוּא	11
6367	trunk	גֶזַע	11
6368	armed	חָמוּשׁ	11
6369	twisted	מְפוּתָל	11
6370	costume	תִלְבּוֹשֶׁת	11
6371	temporary	זְמַנִי	11
6372	sixteen	שֵׁשׁ עֶשׂרֵה	11
6373	zone	אֵזוֹר	11
6374	kitty	חֲתַלתוּל	11
6375	junk	פְּסוֹלֶת	11
6376	honorary	שֶׁל כָּבוֹד	11
6377	priest	כּוֹמֶר	11
6378	cable	כֶּבֶל	11
6379	affect	לְהַשְׁפִּיעַ עַל	11
6380	happily	בְּשִׂמחָה	11
6381	leading	מוֹבִיל	11
6382	host	מְאָרֵחַ	11
6383	authority	רְשׁוּת	11
6384	commercial	מִסְחָרִי	11
6385	admire	לְהִתְפַּעֵל	11
6386	fund	קֶרֶן	11
6387	barn	אֹסֶם	11
6388	deeply	לְעוֹמֶק	11
6389	wrapped	עָטוּף	11
6390	tense	מָתוּחַ	11
6391	sport	ספּוֹרט	11
6392	route	מַסלוּל	11
6393	plastic	פּלָסטִי	11
6394	election	בְּחִירָה	11
6395	pierce	לְנַקֵב	11
6396	mortal	בֶּן תְמוּתָה	11
6397	fascinating	מַקסִים	11
6398	chosen	נִבחָר	11
6399	shown	מוצג	11
6400	abandon	לִנְטוֹשׁ	11
6401	china	סִין	11
6402	arrangement	הֶסדֵר	11
6403	agenda	סֵדֶר הַיוֹם	11
6404	series	סִדרָה	11
6405	literally	פְּשׁוּטוֹ כְּמַשׁמָעוֹ	11
6406	propose	לְהַצִיעַ	11
6407	honesty	יוֹשֶׁר	11
6408	basketball	כַּדוּרסַל	11
6409	underneath	מתחת	11
6410	soldier	לוֹחֶם	11
6411	review	סְקִירָה	11
6412	lecture	הַרצָאָה	11
6413	eighty	שְׁמוֹנִים	11
6414	brandy	בְּרֵנדִי	11
6415	torn	קָרוּעַ	11
6416	relief	הֲקָלָה	11
6417	golf	גוֹלף	11
6418	counter	דֶלְפֵּק	11
6419	transfer	לְהַעֲבִיר	11
6420	response	תְגוּבָה	11
6421	channel	עָרוּץ	11
6422	backup	גיבוי	11
6423	identity	זֶהוּת	11
6424	differently	אחרת	11
6425	spy	מְרַגֵל	11
6426	deck	סִיפּוּן	11
6427	biological	בִּיוֹלוֹגִי	11
6428	so	כָּך	11
6429	minor	קַטִין	11
6430	ease	קַלוּת	11
6431	creep	לִזחוֹל	11
6432	will	רָצוֹן	11
6433	waitress	מֶלְצָרִית	11
6434	skill	מְיוּמָנוּת	11
6435	wave	גַל	11
6436	thee	לְךָ	11
6437	reception	קַבָּלָה	11
6438	pin	פִּין	11
6439	diner	סועד	11
6440	annoying	מְעַצבֵּן	11
6441	goal	יַעַד	11
6442	council	מועצה	11
6443	mass	מִסָה	11
6444	sergeant	סַמָל	11
6445	international	בינלאומי	11
6446	gig	חֲלטוּרָה	11
6447	blast	לְפוֹצֵץ	11
6448	basic	בְּסִיסִי	11
6449	clown	לֵיצָן	11
6450	rub	לְשַׁפשֵׁף	11
6451	customer	לָקוּחַ	11
6452	creature	יְצוּר	11
6453	snap	לְצַלֵם	11
6454	prime	רִאשׁוֹנִי	11
6455	handling	טיפול	11
6456	eaten	אָכוּל	11
6457	therapist	מְרַפֵּא	11
6458	comment	הֶעָרָה	11
6459	sink	כִּיוֹר	11
6460	reporter	כַתָב	11
6461	priority	עֲדִיפוּת	11
6462	gain	לְהַשִׂיג	11
6463	fed	ניזון	11
6464	warehouse	מַחסָן	11
6465	virgin	בְּתוּלָה	11
6466	shy	ביישן	11
6467	loyalty	נֶאֱמָנוּת	11
6468	inspector	מְפַקֵחַ	11
6469	candle	נֵר	11
6470	pleasant	נָעִים	11
6471	media	כְּלֵי תִקְשׁוֹרֶת	11
6472	castle	טִירָה	11
6473	permanent	קָבוּעַ	11
6474	financial	כַּספִּי	11
6475	demand	לִדרוֹשׁ	11
6476	assault	תְקִיפָה	11
6477	tend	נוטים	11
6478	motive	מֵנִיעַ	11
6479	unconscious	חֲסַר הַכָּרָה	11
6480	museum	מוּזֵיאוֹן	11
6481	alley	סִמטָה	11
6482	swimming	שְׂחִיָה	11
6483	nap	תְנוּמָה	11
6484	mysterious	מִסתוֹרִי	11
6485	unhappy	אוּמלָל	11
6486	tone	טוֹן	11
6487	liberty	חוֹפֶשׁ	11
6488	bang	לִדפּוֹק	11
6489	award	פְּרָס	11
6490	cooper	קופר	11
6491	childhood	יַלדוּת	11
6492	causless	ללא סיבה	11
6493	sample	לִטעוֹם	11
6494	background	רֶקַע	11
6495	toss	לִזרוֹק	11
6496	mob	הָמוֹן	11
6497	misery	עֲלִיבוּת	11
6498	central	מֶרכָּזִי	11
6499	boots	מגפיים	11
6500	thief	גַנָב	11
6501	squeeze	לִסְחוֹט	11
6502	lobby	לוֹבִּי	11
6503	ego	אֶגוֹ	11
6504	drama	דְרָמָה	11
6505	noble	אֲצִילִי	11
6506	facing	מוּל	11
6507	poker	פּוֹקֶר	11
6508	cookie	עוּגִיָה	11
6509	digging	חֲפִירָה	11
6510	creepy	מְצַמרֵר	11
6511	comparable	בר השוואה	11
6512	trail	שְׁבִיל	11
6513	saint	קָדוֹשׁ	11
6514	rotten	רָקוּב	11
6515	liver	כָּבֵד	11
6516	drawn	שָׁלוּף	11
6517	device	הֶתקֵן	11
6518	magical	קִסמִי	11
6519	moral	מוּסָרִי	11
6520	attached	מְצוֹרָף	11
6521	searching	מחפש	11
6522	flew	טס	11
6523	depressed	מְדוּכָּא	11
6524	aisle	מַעֲבָר	11
6525	underground	מַחתֶרֶת	11
6526	pro	מִקצוֹעָן	11
6527	amen	אָמֵן	11
6528	vow	נֶדֶר	11
6529	proposal	הַצָעָה	11
6530	pit	בּוֹר	11
6531	darn	לְתַקֵן	11
6532	clay	חֶרֶס	11
6533	arrange	לְאַרגֵן	11
6534	annulment	ביטול	11
6535	user	מִשׁתַמֵשׁ	11
6536	squad	חוּלִיָה	11
6537	represent	לְיַצֵג	11
6538	product	מוּצָר	11
6539	afterward	לאחר מכן	11
6540	adventure	הַרפַּתקָה	11
6541	resist	לְהִתְנַגֵד	11
6542	piano	פְּסַנְתֵר	11
6543	flag	דֶגֶל	11
6544	debt	חוֹב	11
6545	darkness	חוֹשֶׁך	11
6546	violent	אַלִים	11
6547	tag	תָג	11
6548	strip	לְהִתְפַּשֵׁט	11
6549	hip	יָרֵך	11
6550	celebration	חֲגִיגָה	11
6551	below	לְהַלָן	11
6552	paperwork	ניירת	11
6553	mighty	סָגִיב	11
6554	typical	טיפוסי	11
6555	stable	יַצִיב	11
6556	pound	לִירָה	11
6557	pillow	כָּרִית	11
6558	mature	בּוֹגֵר	11
6559	lap	חֵיק	11
6560	current	נוֹכְחִי	11
6561	bum	בַּטלָן	11
6562	tension	מֶתַח	11
6563	tank	טַנק	11
6564	stroke	שָׁבָץ	11
6565	steady	יַצִיב	11
6566	overnight	בֵּין לַיְלָה	11
6567	meanwhile	בינתיים	11
6568	chips	צ'יפס	11
6569	boxing	אִגרוּף	11
6570	collect	לֶאֱסוֹף	11
6571	tragedy	טְרָגֶדִיָה	11
6572	therefore	לָכֵן	11
6573	spoil	לְקַלְקֵל	11
6574	realm	תְחוּם	11
6575	profile	פּרוֹפִיל	11
6576	wipe	לְנַגֵב	11
6577	surgeon	מְנַתֵחַ	11
6578	stretch	לִמְתוֹחַ	11
6579	neat	בְּהֵמָה	11
6580	fox	שׁוּעָל	11
6581	confident	בַּטוּחַ	11
6582	anti	אַנְטִי	11
6583	perspective	פֶּרספֶּקטִיבָה	11
6584	designer	מְעַצֵב	11
6585	climb	לְטַפֵּס	11
6586	punishment	עֲנִישָׁה	11
6587	finest	המשובחים ביותר	11
6588	hint	רֶמֶז	11
6589	twist	לְהִתְפַּתֵל	11
6590	trigger	לְהַפְעִיל	11
6591	proceed	לְהִתְקַדֵם	11
6592	lip	שָׂפָה	11
6593	jersey	ג'רזי	11
6594	fries	צ'יפס	11
6595	worries	דאגות	11
6596	handy	נוֹחַ	11
6597	disappoint	לְאַכזֵב	11
6598	crawl	לִזחוֹל	11
6599	convicted	מוּרשָׁע	11
6600	lit	מוּאָר	11
6601	flip	לְהַעִיף	11
6602	counsel	עֵצָה	11
6603	kit	קִיט	11
6604	thick	עָבֶה	11
6605	minister	שַׂר	11
6606	jewellery	תַכשִׁיטִים	11
6607	goose	אווז	11
6608	average	מְמוּצָע	11
6609	creative	יְצִירָתִי	11
6610	compliment	מַחֲמָאָה	11
6611	cage	כְּלוּב	11
6612	Wednesday	יוֹם רְבִיעִי	11
6613	burger	המבורגר	11
6614	seventeen	שְׁבַע עֶשׂרֵה	11
6615	menu	תַפרִיט	11
6616	bean	שְׁעוּעִית	11
6617	harbour	נָמָל	11
6618	strategy	אִסטרָטֶגִיָה	11
6619	similar	דוֹמֶה	11
6620	invent	לִהַמצִיא	11
6621	hood	בַּרדָס	11
6622	announce	לְהַכרִיז	11
6623	slave	עֶבֶד	11
6624	statue	פֶּסֶל	11
6625	surrender	כְּנִיעָה	11
6626	envelope	מַעֲטָפָה	11
6627	sunshine	אוֹר שֶׁמֶשׁ	11
6628	potatoes	תפוחי אדמה	11
6629	plea	טַעֲנָה	11
6630	side	צַד	11
6631	application	בַּקָשָׁה	11
6632	random	אַקרַאִי	11
6633	guitar	גִיטָרָה	11
6634	frog	צְפַרְדֵעַ	11
6635	kidney	כִּליָה	11
6636	fog	עֲרָפֶל	11
6637	hike	טִיוּל	11
6638	essay	מַסָה	11
6639	fiancée	אֲרוּסָה	11
6640	kindness	חֶסֶד	11
6641	elephant	פִּיל	11
6642	bush	שִׂיחַ	11
6643	jeans	גִ'ינס	11
6644	terror	טֵרוֹר	11
6645	November	נוֹבֶמבֶּר	11
6646	September	סֶפּטֶמבֶּר	11
6647	October	אוֹקְטוֹבֶּר	11
6648	pronounce	לְבַטֵא	11
6649	blink	לְמַצְמֵץ	11
6650	abroad	"בחו""ל"	11
6651	absorb	לִסְפּוֹג	11
6652	academic	אֲקָדֵמִי	11
6653	acceptable 	קָבִיל	11
6654	accommodation	דִיוּר	11
6655	accompany	לְהִתְלַווֹת	11
6656	achieve	לְהַשִׂיג	11
6657	achievement	הֶשֵׂג	11
6658	acid 	חוּמצָה	11
6659	adapt	לְהִסְתָגֵל	11
6660	adequate	הוֹלֵם	11
6661	adjust	לְהַתְאִים	11
6662	administration	מִנהָל	11
6663	adopt	לְאַמֵץ	11
6664	advance	לְקַדֵם	11
6665	advertisement	פִּרסוֹמֶת	11
6666	advise	לְהוֹדִיעַ	11
6667	aggressive	תוֹקפָּנִי	11
6668	agriculture	חַקלָאוּת	11
6669	backwards	אֲחוֹרָה	11
6670	beforehand	מִרֹאשׁ	11
6671	behalf	מטעם	11
6672	beneath	תַחַת	11
6673	bid	הַצָעַת מְחִיר	11
6674	bloke	בַּרנַשׁ	11
6675	boil	רְתִיחָה	11
6676	boiler	דוּד	11
6677	border	גְבוּל	11
6678	bounce	לִקְפּוֹץ	11
6679	branch	עָנָף	11
6680	breast 	חָזֶה	11
6681	brick 	לְבֵנָה	11
6682	brief	קָצָר	11
6683	briefly	בקצרה	11
6684	broad	רָחָב	11
6685	bump	מַכָּה	11
6686	buyer	קוֹנֶה	11
6687	cabinet	אָרוֹן	11
6688	calculate	לְחַשֵׁב	11
6689	calendar	לוּחַ שָׁנָה	11
6690	candidate	מוּעֲמָד	11
6691	cap	כּוֹבַע	11
6692	capacity	יְכוֹלֶת	11
6693	capture	לִלְכּוֹד	11
6694	catalogue	קָטָלוֹג	11
6695	category	קָטֵגוֹרִיָה	11
6696	cease	לְהַפְסִיק	11
6697	ceiling	תִקרָה	11
6698	chairman 	יוֹשֵׁב רֹאשׁ	11
6699	championship	אַלִיפוּת	11
6700	chap	בָּחוּר	11
6701	chapter 	פֶּרֶק	11
6702	characteristic	מְאַפיֵן	11
6703	chart	תַרשִׁים	11
6704	cheek	לֶחִי	11
6705	chemist	כִּימַאי	11
6706	chemistry	כִּימִיָה	11
6707	clerk	פָּקִיד	11
6708	click	נְקִישָׁה	11
6709	climate	אַקלִים	11
6710	coal	פֶּחָם	11
6711	coin	מַטְבֵּעַ	11
6712	collapse	הִתמוֹטְטוּת	11
6713	collar 	קוֹלָר	11
6714	colleague	עָמִית	11
6715	consent	הַסכָּמָה	11
6716	daft	שׁוֹטֶה	11
6717	daily	יוֹמִי	11
6718	database	מסד נתונים	11
6719	debate	דִיוּן	11
6720	decade	עָשׂוֹר	11
6721	declare	לְהַכרִיז	11
6722	decline	יְרִידָה	11
6723	define	לְהַגדִיר	11
6724	definition	הַגדָרָה	11
6725	deliberately	בכוונה	11
6726	democracy	דֵמוֹקרָטִיָה	11
6727	demonstration 	הַפגָנָה	11
6728	dentist	רופא שיניים	11
6729	departure	יְצִיאָה	11
6730	dependent	תָלוּי	11
6731	deposit	לְהַפְקִיד	11
6732	depth	עוֹמֶק	11
6733	derive	לְהָפִיק	11
6734	desire	תְשׁוּקָה	11
6735	detect	לְגַלוֹת	11
6736	determination	נְחִישׁוּת	11
6737	diet	דִיאֵטָה	11
6738	discipline	מִשְׁמַעַת	11
6739	discount	דִיסקוֹנט	11
6740	disk	דִיסק	11
6741	dismiss	לְפַטֵר	11
6742	display	לְהַצִיג	11
6743	economics	כַּלְכָּלָה	11
6744	economy	כַּלְכָּלָה	11
6745	edition	מַהֲדוּרָה	11
6746	editor	עוֹרֵך	11
6747	effective	יָעִיל	11
6748	efficiency	יְעִילוּת	11
6749	elderly	קָשִׁישׁ	11
6750	electric	חַשׁמַלִי	11
6751	electricity	חַשְׁמַל	11
6752	elsewhere	בְּמָקוֹם אַחֵר	11
6753	emerge	לָצֵאת	11
6754	emphasis	דָגֵשׁ	11
6755	empire	אִימפֶּרִיָה	11
6756	employer	מַעֲסִיק	11
6757	employee	עוֹבֵד	11
6758	encounter	פְּגִישָׁה	11
6759	encourage	לְעוֹדֵד	11
6760	engineer	מְהַנדֵס	11
6761	enhance	לְהַגבִּיר	11
6762	enormous	עֲנָקִי	11
6763	facility	מִתקָן	11
6764	factor	גוֹרֵם	11
6765	factory	מִפְעָל	11
6766	feature	תכונה	11
6767	feedback 	מָשׁוֹב	11
6768	feeling	מַרגִישׁ	11
6769	fence	גָדֵר	11
6770	festival	פֶסטִיבָל	11
6771	fetch	לְהָבִיא	11
6772	few	מְעַטִים	11
6773	filthy	מְטוּנָף	11
6774	flavour	טַעַם	11
6775	flood	לְהַצִיף	11
6776	fold 	לְקַפֵּל	11
6777	foreign	זָר	11
6778	fork	מַזלֵג	11
6779	formal	רִשְׁמִי	11
6780	formally	רִשְׁמִית	11
6781	formation	מַעֲרָך	11
6782	fortnight 	שְׁבוּעַיִם	11
6783	fortunate	בַּר מַזָל	11
6784	foundation	קֶרֶן	11
6785	freeway 	כְּבִישׁ מָהִיר	11
6786	freezer	מַקפִּיא	11
6787	frequently	לְעִתִים קְרוֹבוֹת	11
6788	fuel	דֶלֶק	11
6789	function 	פוּנקצִיָה	11
6790	fundamental	יְסוֹד	11
6791	fuss	לְהטרִיד	11
6792	gallery	גָלֶרֵיָה	11
6793	garlic	שׁוּם	11
6794	gather	לֶאֱסוֹף	11
6795	gear	צִיוּד	11
6796	gene	גֵן	11
6797	generally	בְּדֶרֶך כְּלַל	11
6798	generation	דוֹר	11
6799	gentle	עָדִין	11
6800	genuine	אמיתי	11
6801	glance	מַבָּט	11
6802	global 	גלוֹבָּלִי	11
6803	govern	לִמשְׁוֹל	11
6804	gradually	בְּהַדרָגָה	11
6805	grammar	דִקדוּק	11
6806	graph 	גרָף	11
6807	grass	דֶשֶׁא	11
6808	grocery 	מַכּוֹלֶת	11
6809	halfway	בְּחַצִי הַדֶרֶך	11
6810	handbag	אַרְנָק	11
6811	headquarter	מטה	11
6812	height	גוֹבַה	11
6813	hence	לָכֵן	11
6814	hesitate	לְהַסֵס	11
6815	highlight	שִׂיא	11
6816	highway	כְּבִישׁ	11
6817	historian	הִיסטוֹרִיוֹן	11
6818	historical	הִיסטוֹרִי	11
6819	hold	לְהַחזִיק	11
6820	holder 	מַחְזִיק	11
6821	holding	הַחזָקָה	11
6822	household	בַּיִת	11
6823	housing	דִיוּר	11
6824	heavily	בִּכְבֵדוּת	11
6825	ice cream	גְלִידָה	11
6826	ideal	אִידֵאָלִי	11
6827	identify	לְזַהוֹת	11
6828	illness	מחלה	11
6829	illustrate	לְהַדגִים	11
6830	impact	פְּגִיעָה	11
6831	implement	ליישם	11
6832	implication	מַשְׁמָעוּת	11
6833	imply	לִרְמוֹז	11
6834	import 	יְבוּא	11
6835	impose	לֶאֱכוֹף	11
6836	improvement	הַשׁבָּחָה	11
6837	improve	לְשַׁפֵּר	11
6838	income	הַכנָסָה	11
6839	independence	עַצמָאוּת	11
6840	independent	עַצמָאִי	11
6841	index 	מַדָד	11
6842	individual	אִישִׁי	11
6843	inevitably	באופן בלתי נמנע	11
6844	infant	תִינוֹק	11
6845	infection 	הַדבָּקָה	11
6846	inflation	אִינפלַצִיָה	11
6847	initial 	הַתחָלַתִי	11
6848	initiative	יָזמָה	11
6849	innovation	חדשנות	11
6850	input 	קֶלֶט	11
6851	inquiry	חֲקִירָה	11
6852	install	לְהַתְקִין	11
6853	instance	דוּגמָה	11
6854	instant	רֶגַע	11
6855	instruction	הוֹרָאָה	11
6856	investment	הַשׁקָעָה	11
6857	involvement	מְעוֹרָבוּת	11
6858	jumper	קַפצָן	11
6859	justify	לְהַצְדִיק	11
6860	luckily	לְמַרְבֶּה הַמַזָל	11
6861	lounge	טְרַקלִין	11
6862	limitation	הַגבָּלָה	11
6863	lighting	תְאוּרָה	11
6864	locate 	לְאַתֵר	11
6865	mud	בּוֹץ	11
6866	motorway	כביש מהיר	11
6867	mortgage	לְשַׁעֲבֵּד	11
6868	moreover	יֶתֶר עַל כֵּן	11
6869	mobile phone	טֶלֶפוֹן סֶלוּלָרי	11
6870	mixture	תַעֲרוֹבֶת	11
6871	numerous	רַבִּים	11
6872	nuisance	מִטרָד	11
6873	nuclear	גַרעִינִי	11
6874	nowadays	כַּיוֹם	11
6875	novel	רוֹמָן	11
6876	notion	רַעְיוֹן	11
6877	notably	במיוחד	11
6878	noisy	רוֹעֵשׁ	11
6879	newly	לאחרונה	11
6880	nevertheless	אַף עַל פִּי כֵן	11
6881	objective	מַטָרָה	11
6882	occasionally	לִפְעָמִים	11
6883	occupation	מִקצוֹעַ	11
6884	opponent	יָרִיב	11
6885	opposition	הִתנַגְדוּת	11
6886	ordinary	רָגִיל	11
6887	organ	אֵיבָר	11
6888	organic	אוֹרְגָנִי	11
6889	organization	אִרגוּן	11
6890	organize	לְאַרגֵן	11
6891	origin	מָקוֹר	11
6892	originally	בְּמָקוֹר	11
6893	outcome	תוֹצָאָה	11
6894	output	תְפוּקָה	11
6895	outstanding	בּוֹלֵט	11
6896	oven	תַנוּר	11
6897	overall	בסך הכל	11
6898	overcome	לְהִתְגַבֵּר	11
6899	overtime	שָׁעוֹת נוֹסָפוֹת	11
6900	owe	חייב	11
6901	pursue	לִרְדוֹף	11
6902	purple	סָגוֹל	11
6903	purely	אַך וְרַק	11
6904	purchase	לִרְכּוֹשׁ	11
6905	pudding	פּוּדִינג	11
6906	publish	לְפַרְסֵם	11
6907	publicity	פִּרסוּם	11
6908	publication	פִּרסוּם	11
6909	psychology 	פְּסִיכוֹלוֹגִיָה	11
6910	psychological	פְּסִיכוֹלוֹגִי	11
6911	provision	אַספָּקָה	11
6912	providing	מתן	11
6913	protest 	מְחָאָה	11
6914	prosecution	תְבִיעָה	11
6915	proportion	פּרוֹפּוֹרצִיָה	11
6916	properly	כַּהֲלָכָה	11
6917	prompt 	לְעוֹרֵר	11
6918	promotion	קידום	11
6919	promote	לְקַדֵם	11
6920	profit	לְהַרְוִיחַ	11
6921	profession	מִקצוֹעַ	11
6922	producer	יַצרָן	11
6923	produce	תוֹצֶרֶת	11
6924	privilege	זְכוּת	11
6925	prior	קוֹדֵם	11
6926	printer	מַדפֶּסֶת	11
6927	principle	עִקָרוֹן	11
6928	principal	קֶרֶן	11
6929	primary	יְסוֹדִי	11
6930	previously	קוֹדֶם	11
6931	previous	קוֹדֵם	11
6932	prevent	לִמְנוֹעַ	11
6933	presumably	כַּנִראֶה	11
6934	preserve	לְשַׁמֵר	11
6935	presentation	הַצָגָה	11
6936	preference	הַעֲדָפָה	11
6937	precisely 	בְּדִיוּק	11
6938	precise 	מְדוּיָק	11
6939	prayer	תְפִלָה	11
6940	practical 	מַעֲשִׂי	11
6941	poverty	עוֹנִי	11
6942	pour	לִשְׁפּוֹך	11
6943	poster	פּוֹסטֵר	11
6944	possession	רְשׁוּת	11
6945	possess	לְהַחזִיק	11
6946	pond	אֲגַם	11
6947	pollution	זיהום	11
6948	poll	מִשׁאָל	11
6949	politics	פּוֹלִיטִיקָה	11
6950	pole	מוֹט	11
6951	poetry	שִׁירָה	11
6952	poet	מְשׁוֹרֵר	11
6953	plot	מִגרָשׁ	11
6954	platform	פּלַטפוֹרמָה	11
6955	pitch	פְּסִיעָה	11
6956	pipe	מִקטֶרֶת	11
6957	pint	פַּיִנט	11
6958	pile	עֲרֵמָה	11
6959	pill	כַּדוּר	11
6960	physics	פִיסִיקָה	11
6961	physically	פיזית	11
6962	phrase	מִשׁפָּט	11
6963	photograph	תַצלוּם	11
6964	photocopy	לְצַלֵם	11
6965	philosophy	פִילוֹסוֹפִיָה	11
6966	phase	שָׁלָב	11
6967	persuade	לְשַׁכְנֵעַ	11
6968	permit	לְהַתִיר	11
6969	percentage	אֲחוּזִים	11
6970	perceive	לִתְפּוֹס	11
6971	peak	שִׂיא	11
6972	peaceful 	שָׁקֶט	11
6973	quote	לְצַטֵט	11
6974	racing	מירוץ	11
6975	radical	רָדִיקָלִי	11
6976	rapidly 	מַהֵר	11
6977	ratio	יַחַס	11
6978	raw	נָא	11
6979	reader	קוֹרֵא	11
6980	readily	לְלֹא קוֹשִׁי	11
6981	realistic	מְצִיאוּתִי	11
6982	recipe	מַתכּוֹן	11
6983	reckon	לְחַשֵׁב	11
6984	recommend	לְהַמלִיץ	11
6985	recover	לְהַחלִים	11
6986	reduction	צִמצוּם	11
6987	refer	לְהַפְנוֹת	11
6988	reflect	לְשַׁקֵף	11
6989	reform	רֵפוֹרמָה	11
6990	regard 	לְהִתְיַחֵס	11
6991	regime	מִשׁטָר	11
6992	regularly	בִּקְבִיעוּת	11
6993	reject	לִדחוֹת	11
6994	relate	לְסַפֵּר	11
6995	relation	יַחַס	11
6996	relative	יַחֲסִי	11
6997	relieve	לְהַקֵל	11
6998	religion	דָת	11
6999	remark	הֶעָרָה	11
7000	reserve	לְהַזמִין	11
7001	resort 	אתר נופש	11
7002	resource	מַשׁאָב	11
7003	respond 	לְהָגִיב	11
7004	restore	לְשַׁחְזֵר	11
7005	restrict	לְהַגבִּיל	11
7006	restriction	הַגבָּלָה	11
7007	retire	לִפְרוֹשׁ	11
7008	reveal 	לְגַלוֹת	11
7009	revolution	מַהְפֵּכָה	11
7010	sack	שַׂק	11
7011	scientific	מַדָעִי	11
7012	scope	תְחוּם	11
7013	secondly	שֵׁנִית	11
7014	seize	לִתְפּוֹס	11
7015	selection	בְּחִירָה	11
7016	sharply	בחדות	11
7017	shave	לְגַלֵחַ	11
7018	shell 	פָּגָז	11
7019	shelter	מִקְלָט	11
7020	shine	צִחצוּחַ	11
7021	shortly	בְּקָרוּב	11
7022	should	צריך	11
7023	shove	דְחִיפָה	11
7024	shrug	למשוך בכתפיים	11
7025	similarly	באופן דומה	11
7026	sin	חֵטְא	11
7027	skirt	חֲצָאִית	11
7028	slide	לְהַחלִיק	11
7029	slight	קָלוּשׁ	11
7030	slightly	מְעַט	11
7031	slope	מִדרוֹן	11
7032	sock	גֶרֶב	11
7033	soil 	אֲדָמָה	11
7034	spray	תַרסִיס	11
7035	starve	לְהַרְעִיב	11
7036	status	סטָטוּס	11
7037	steel 	פְּלָדָה	11
7038	storage	אִחסוּן	11
7039	strain	זַן	11
7040	straw 	קַשׁ	11
7041	stream	זֶרֶם	11
7042	strongly	בְּתוֹקֶף	11
7043	structure	מִבְנֶה	11
7044	substance	חוֹמֶר	11
7045	succeed 	לְהַצְלִיחַ	11
7046	sufficient	מַסְפִּיק	11
7047	surprising 	מַפתִיעַ	11
7048	surround	לְהַקִיף	11
7049	survey	סֶקֶר	11
7050	survival	הישרדות	11
7051	suspicion	חֲשָׁד	11
7052	swap	לְהַחלִיף	11
7053	sympathy	אַהֲדָה	11
7054	tendency	מְגַמָה	11
7055	tent	אוֹהֶל	11
7056	tidy	לְנַקוֹת וֵלְסַדֵר	11
7057	tin	פַּח	11
7058	ton	טוֹן	11
7059	trend	מְגַמָה	11
7060	tricky	עַרמוּמִי	11
7061	tune	מַנגִינָה	11
7062	tunnel 	מִנהָרָה	11
7063	tyre	צְמִיג	11
7064	ultimate	סוֹפִי	11
7065	understanding	הֲבָנָה	11
7066	unemployed	מוּבטָל	11
7067	unfortunate	חֲסַר מַזָל	11
7068	unique	ייחודי	11
7069	unknown	לֹא יְדוּעַ	11
7070	upper	עֶלִיוֹן	11
7071	urban	עִירוֹנִי	11
7072	urge	דַחַף	11
7073	urgent	דָחוּף	11
7074	used	מְשׁוּמָשׁ	11
7075	valuable	בַּעַל עֵרֶך	11
7076	various	שׁוֹנִים	11
7077	vehicle	רֶכֶב	11
7078	virtually	כִּמעַט	11
7079	virtue	מַעֲלָה	11
7080	visible	נִרְאֶה	11
7081	visitor	אוֹרֵחַ	11
7082	vital 	חִיוּנִי	11
7083	voluntary	מִרָצוֹן	11
7084	withdraw	לָסֶגֶת	11
7085	widespread	נָפוֹץ	11
7086	widely	באופן נרחב	11
7087	whisper 	לַחַשׁ	11
7088	youngster	צָעִיר	11
7089	gut	מְעִי	11
7090	crocodile	תַנִין	11
7091	dialect	נִיב	11
7092	e-book	ספר אלקטרוני	11
7093	hearty	לְבָבִי	11
7094	incurable	חָשׁוּך מַרפֵּא	11
7095	jockey	רוֹכֵב	11
7096	junk food	ג'אנק פוד	11
7097	mania	מַניָה	11
7098	margarine	מַרגָרִינָה	11
7099	mosque	מִסגָד	11
7100	preposition	מִלַת יַחַס	11
7101	proclaim	לְהַכרִיז	11
7102	shiver	לִרְעוֹד	11
7103	skilful	מְיוּמָן	11
7104	socket	שֶׁקַע	11
7105	sportsman somewhere	ספורטאי איפשהו	11
7106	sweetheart	מוֹתֶק	11
7107	amazing	מדהים	11
7108	definitely	בְּהֶחלֵט	11
7109	evidence	עֵדוּת	11
7110	upstairs	לְמַעלָה	11
7111	dangerous	מְסוּכָּן	11
7112	innocent	תָמִים	11
7113	apparently	כַּנִראֶה	11
7114	congratulations	מזל טוב	11
7115	experience	הִתנַסוּת	11
7116	medical	רְפוּאִי	11
7117	incredible	לא ייאמן	11
7118	attorney	עוֹרֵך דִין	11
7119	jealous	קַנָאִי	11
7120	ourselves	בְּעָצמֵנוּ	11
7121	unfortunately	לְמַרְבֶּה הַצַעַר	11
7122	whenever	בְּכָל פַּעַם	11
7123	pathetic	פָּתֵטִי	11
7124	downstairs	לְמַטָה	11
7125	immediately	מִיָד	11
7126	gorgeous	נֶהְדָר	11
7127	physical	גוּפָנִי	11
7128	garbage	אַשׁפָּה	11
7129	coincidence	יָד הַמִקרֶה	11
7130	generous	נָדִיב	11
7131	outfit	תִלְבּוֹשֶׁת	11
7132	suspicious	חָשׁוּד	11
7133	anniversary	יוֹם הַשָׁנָה	11
7134	commitment	מְחוּיָבוּת	11
7135	challenge	אֶתגָר	11
7136	discussion	דִיוּן	11
7137	younger	צעירים יותר	11
7138	romance	רוֹמָן	11
7139	procedure	נוֹהָל	11
7140	medication	תרופות	11
7141	shared	מְשׁוּתָף	11
7142	warrant	לְהַצְדִיק	11
7143	odds	קְטָטָה	11
7144	specific	ספֵּצִיפִי	11
7145	sweater	סווֶדֶר	11
7146	diagram	תַרשִׁים	11
7147	jet	סִילוֹן	11
7148	vulnerable	פָּגִיעַ	11
7149	tears	דמעות	11
7150	locker	תָא	11
7151	awkward	מֵבִיך	11
7152	delicious	טָעִים מְאוֹד	11
7153	murderer	רוֹצֵחַ	11
7154	technically	מבחינה טכנית	11
7155	cave	מְעָרָה	11
7156	performance	ביצועים	11
7157	gram	גְרַם	11
7158	touching	נְגִיעָה	11
7159	committee	וַעֲדָה	11
7160	consequence	תוֹצָאָה	11
7161	testimony	עֵד	11
7162	granted	מוענק	11
7163	political	פּוֹלִיטִי	11
7164	equipment	צִיוּד	11
7165	appropriate	מַתְאִים	11
7166	impressive	מַרשִׁים	11
7167	intelligence	מוֹדִיעִין	11
7168	questioning	תִשׁאוּל	11
7169	campus	קַמפּוּס	11
7170	hallway	מִסדְרוֹן	11
7171	popcorn	פּוֹפּקוֹרן	11
7172	makeup	איפור	11
7173	madam	גְבֶרֶת	11
7174	jean	ג'ין	11
7175	cowboy	בּוֹקֵר	11
7176	blackmail	לִסְחוֹט	11
7177	concept	מוּשָׂג	11
7178	barb	עוֹקֶץ	11
7179	supportive	תומך	11
7180	memorial	זִכָּרוֹן	11
7181	Japanese	יַפָּנִית	11
7182	explosion	הִתְפּוֹצְצוּת	11
7183	trauma	טְרַאוּמָה	11
7184	Russian	רוּסִי	11
7185	furious	זוֹעֵם	11
7186	cheat	לְרַמוֹת	11
7187	approve	לְאַשֵׁר	11
7188	drawer	מְגֵרָה	11
7189	phony	מְזוּיָף	11
7190	joining	הִצטָרְפוּת	11
7191	interfere	לְהַפְרִיעַ	11
7192	governor	מוֹשֵׁל	11
7193	catching	מִדַבֵּק	11
7194	bargain	לְהִתְמַקֵחַ	11
7195	tragic	טְרָגִי	11
7196	punish	לְהַעֲנִישׁ	11
7197	hop	לִקְפּוֹץ	11
7198	rich	עָשִׁיר	11
7199	insult	לְהַעֲלִיב	11
7200	absolute	מוּחלָט	11
7201	strictly	למהדרין	11
7202	British	בְּרִיטִי	11
7203	worthy	רָאוּי	11
7204	serving	מָנָה	11
7205	polite	מְנוּמָס	11
7206	internal	פְּנִימִי	11
7207	bitter	מָרִיר	11
7208	adorable	מקסים	11
7209	alike	דוֹמֶה	11
7210	fax	פַקס	11
7211	distracted	מְפוּזָר	11
7212	escort	לְלַווֹת	11
7213	twin	תְאוֹם	11
7214	circus	קִרקָס	11
7215	audition	מִבְחָן	11
7216	mask	מַסֵכָה	11
7217	helpless	חֲסַר אוֹנִים	11
7218	dated	מְיוּשָׁן	11
7219	robbery	שׁוֹד	11
7220	beast	חַיָה	11
7221	tub	אמבטיה	11
7222	talented	מוּכשָׁר	11
7223	struck	פגע	11
7224	mistaken	טוֹעֶה	11
7225	Italy	אִיטַלִיָה	11
7226	bizarre	מוּזָר	11
7227	scaring	מפחיד	11
7228	punk	פָּאנק	11
7229	focused	מְרוּכָּז	11
7230	alert	עֵרָנִי	11
7231	activity	פְּעִילוּת	11
7232	foolish	טִפּשִׁי	11
7233	attend	לְטַפֵּל	11
7234	Canadian	קנדי	11
7235	aid	סִיוּעַ	11
7236	wheelchair	כיסא גלגלים	11
7237	protective	מָגֵן	11
7238	picnic	פִּיקנִיק	11
7239	construction	בְּנִיָה	11
7240	wives	נשים	11
7241	stink	לְהַסרִיחַ	11
7242	recent	לאחרונה	11
7243	Jewish	יְהוּדִי	11
7244	filling	מְלִית	11
7245	exit	יְצִיאָה	11
7246	cruise	לְשַׁיֵט	11
7247	cottage	קוֹטֶג'	11
7248	corporate	תאגיד	11
7249	upside	הפוך	11
7250	German	גֶרמָנִיָת	11
7251	basis	בָּסִיס	11
7252	wounded	פָּצוּעַ	11
7253	conformity	תוֹאַמנוּת	11
7254	wicked	רָשָׁע	11
7255	merely	רַק	11
7256	massage	לְעַסוֹת	11
7257	chop	לִקצוֹץ	11
7258	costs	עלויות	11
7259	betray	לִבגוֹד	11
7260	waiter	מֶלְצַר	11
7261	scam	הונאה	11
7262	fraud	הוֹנָאָה	11
7263	flu	שַׁפַעַת	11
7264	pee	לְהַשְׁתִין	11
7265	cliff	צוּק	11
7266	expression	הַבָּעָה	11
7267	entrance	כְּנִיסָה	11
7268	drawing	צִיוּר	11
7269	bunny	אַרנֶבֶת	11
7270	bracelet	צָמִיד	11
7271	thirteen	שְׁלוֹשׁ עֶשׂרֵה	11
7272	scout	לְגַשֵׁשׁ	11
7273	fairly	לְמַדַי	11
7274	arrive	לְהַגִיעַ	11
7275	shed	לִשְׁפּוֹך	11
7276	nanny	מְטַפֶּלֶת	11
7277	naive	נָאִיבִי	11
7278	corn	תִירָס	11
7279	authorities	רָשׁוּיוֹת	11
7280	separated	פָּרוּד	11
7281	patch	לְהַטלִיא	11
7282	devastated	הרוס	11
7283	description	תֵאוּר	11
7284	subtle	עָדִין	11
7285	garrison	חֵיל הַמַצָב	11
7286	metal	מַתֶכֶת	11
7287	executive	מְנַהֵל	11
7288	confirm	לְאַשֵׁר	11
7289	parade	מִצעָד	11
7290	bow	קֶשֶׁת	11
7291	booth	תָא	11
7292	straighten	לְסַדֵר	11
7293	honoured	כבוד	11
7294	specifically	ספציפית	11
7295	exam	בְּחִינָה	11
7296	convenient	נוֹחַ	11
7297	traveling	נוסעים	11
7298	laying	הֲנָחָה	11
7299	crystal	גָבִישׁ	11
7300	apply	לִפְנוֹת	11
7301	air	אֲוִיר	11
7302	legend	אַגָדָה	11
7303	kindly	אָדִיב	11
7304	grandson	נֶכֶד	11
7305	donor	תוֹרֵם	11
7306	temper	מֶזֶג	11
7307	proven	מוּכָח	11
7308	monitor	לפקח	11
7309	eternity	נֵצַח	11
7310	denial	הַכחָשָׁה	11
7311	swell	לְהִתְנַפֵּחַ	11
7312	noon	צָהֳרַיִים	11
7313	episode	אֶפִּיזוֹדָה	11
7314	thinking	חֲשִׁיבָה	11
7315	spirits	מַצַב רוּחַ	11
7316	potion	מַשׁקֶה	11
7317	dial	חוּגָה	11
7318	rehearsal	חֲזָרָה	11
7319	hostage	בֶּן עֲרוּבָּה	11
7320	hammer	פַּטִישׁ	11
7321	facet	פָּן	11
7322	discover	לְגַלוֹת	11
7323	constant	קָבוּעַ	11
7324	bench	סַפְסָל	11
7325	moron	מוֹרוֹן	11
7326	impress	לְהַרְשִׁים	11
7327	gray	אָפוֹר	11
7328	entitled	רַשַׁאִי	11
7329	connect	לְחַבֵּר	11
7330	needle	מַחַט	11
7331	lad	בָּחוּר	11
7332	intelligent	אִינְטֶלִיגֶנְטִי	11
7333	disagree	לֹא לְהַסכִּים	11
7334	tiger	נָמֵר	11
7335	groom	חָתָן	11
7336	gesture	מחווה	11
7337	developed	מְפוּתָח	11
7338	constantly	תָמִיד	11
7339	sealed	אָטוּם	11
7340	paradise	גַן עֶדֶן	11
7341	legally	מבחינה חוקית	11
7342	psychic	מֶדִיוּם	11
7343	dense	צָפוּף	11
7344	teenage	שֶׁל גִיל הָעֶשׂרֵה	11
7345	rabbit	אַרנֶבֶת	11
7346	puppy	כְּלַבלָב	11
7347	Bible	כִּתבֵי הַקוֹדֶשׁ	11
7348	accidentally	בְּמִקרֶה	11
7349	superior	מְעוּלֶה	11
7350	slack	רָפוּי	11
7351	homeless	חֲסַר בַּיִת	11
7352	hollow	חָלוּל	11
7353	desperately	באופן נואש	11
7354	critical	קרִיטִי	11
7355	coward	פַּחדָן	11
7356	personnel	כוח אדם	11
7357	item	פָּרִיט	11
7358	due	בשל	11
7359	majesty	גָאוֹן	11
7360	jay	עוֹרְבָנִי	11
7361	instinct	יֵצֶר	11
7362	extreme	קיצוני	11
7363	belief	אֱמוּנָה	11
7364	motorcycle	אוֹפנוֹעַ	11
7365	convincing	מְשַׁכנֵעַ	11
7366	appeal	עִרעוּר	11
7367	greater	גדול יותר	11
7368	aids	עזרים	11
7369	grip	יָדִית	11
7370	upsetting	הִתעַרעֲרוּת	11
7371	production	הֲפָקָה	11
7372	invisible	בִּלתִי נִרְאֶה	11
7373	forgiveness	סְלִיחָה	11
7374	complex	מוּרכָּב	11
7375	compare	לְהַשְׁווֹת	11
7376	blank	רֵיק	11
7377	treasure	אוֹצָר	11
7378	sacred	קָדוֹשׁ	11
7379	inviting	מַזמִין	11
7380	inner	פְּנִימִי	11
7381	compromise	פְּשָׁרָה	11
7382	cocktail	קוקטייל	11
7383	tramp	לִנְדוֹד	11
7384	signing	הַחתָמָה	11
7385	messenger	שָׁלִיחַ	11
7386	landing	נְחִיתָה	11
7387	intimate	אִינטִימִי	11
7388	dignity	כָּבוֹד	11
7389	dealt	עסק	11
7390	root	שׁוֹרֶשׁ	11
7391	entertainment	בידור	11
7392	dressing	הַלבָּשָׁה	11
7393	blessing	בְּרָכָה	11
7394	billion	מיליארד	11
7395	lightning	בָּרָק	11
7396	leak	דְלִיפָה	11
7397	fond	מְחַבֵּב	11
7398	corky	פקק	11
7399	alternative	חֲלוּפָה	11
7400	seduce	לְפָתוֹת	11
7401	modern	מוֹדֶרנִי	11
7402	liquor	מַשׁקֶה חָרִיף	11
7403	June	יוּנִי	11
7404	stuffed	מְמוּלָא	11
7405	emotionally	מבחינה רגשית	11
7406	division	חֲלוּקָה	11
7407	conditions	תנאים	11
7408	transplant	לְהַשְׁתִיל	11
7409	tips	טיפים	11
7410	powder	אֲבָקָה	11
7411	oxygen	חַמצָן	11
7412	lunatic	מְטוּרָף	11
7413	hid	הסתיר	11
7414	drill	לִקְדוֹחַ	11
7415	complain	לְהִתְלוֹנֵן	11
7416	announcement	הַכרָזָה	11
7417	slap	סְטִירָה	11
7418	pumpkin	דְלַעַת	11
7419	oath	שְׁבוּעָה	11
7420	mutual	הֲדָדִי	11
7421	hockey	הוֹקֵי	11
7422	graduate	בּוֹגֵר	11
7423	yacht	יָאכטָה	11
7424	spa	ספָּא	11
7425	horn	קֶרֶן	11
7426	fried	מְטוּגָן	11
7427	extraordinary	יוֹצֵא דוֹפֶן	11
7428	bait	פְּתָיוֹן	11
7429	appearance	הוֹפָעָה	11
7430	sworn	מוּשׁבָּע	11
7431	safely	בְּבִטחָה	11
7432	reunion	פְּגִישַׁת מַחזוֹר	11
7433	burst	הִתפָּרְצוּת	11
7434	experiment	לְנַסוֹת	11
7435	explicit	מְפוֹרָשׁ	11
7436	dive	לִצְלוֹל	11
7437	commission	עֲמָלָה	11
7438	chaos	תוֹהוּ וָבוֹהוּ	11
7439	aboard	עַל	11
7440	lesbian	לסבית	11
7441	expose	לַחשׂוֹף	11
7442	environment	סְבִיבָה	11
7443	spider	עַכָּבִישׁ	11
7444	smaller	קטן יותר	11
7445	booze	מַשׁקֶה חָרִיף	11
7446	tattoo	לְקַעֲקֵעַ	11
7447	parole	שחרור על תנאי	11
7448	ditch	לִנְטוֹשׁ	11
7449	bulldog	בּוּלדוֹג	11
7450	bra	חֲזִיָה	11
7451	Spanish	סְפָרַדִית	11
7452	glow	לַהַט	11
7453	thirsty	צמא	11
7454	skull	גוּלגוֹלֶת	11
7455	scotch	סקוֹטשׁ	11
7456	dining	אוכל	11
7457	bend	לְכּוֹפֵף	11
7458	unexpected	לֹא צָפוּי	11
7459	sob	בֶּן כַּלבָּה	11
7460	pancake	פָנקֵייק	11
7461	harsh	קָשֶׁה	11
7462	existence	קִיוּם	11
7463	troubles	צרות	11
7464	favourite	מוּעֲדָף	11
7465	driven	מוּנָע	11
7466	chin	סַנְטֵר	11
7467	rage	זַעַם	11
7468	bubble	בּוּעָה	11
7469	undercover	חֲשָׁאִי	11
7470	spoiled	מְפוּנָק	11
7471	rug	שָׁטִיחַ	11
7472	deputy	סְגָן	11
7473	conspiracy	קֶשֶׁר	11
7474	clothing	הַלבָּשָׁה	11
7475	thoughtful	מִתחַשֵׁב	11
7476	drank	שתה	11
7477	contrary	מְנוּגָד	11
7478	beloved	אָהוּב	11
7479	allergic	אַלֶרגִי	11
7480	forgiven	נסלח	11
7481	earl	רוֹזֵן	11
7482	bent	כִּפּוּף	11
7483	approval	הַסכָּמָה	11
7484	jungle	ג'וּנגֶל	11
7485	dancer	רַקדָן	11
7486	cotton	כּוּתנָה	11
7487	cooked	מְבוּשָׁל	11
7488	foul	מְגוּנֶה	11
7489	dull	מְשַׁעֲמֵם	11
7490	peanut	בֹּטֶן	11
7491	horror	חֲרָדָה	11
7492	stunt	לְעַכֵּב	11
7493	portrait	דְיוֹקָן	11
7494	July	יוּלִי	11
7495	jealousy	קִנְאָה	11
7496	hopeless	אָבוּד	11
7497	volunteer	לְהִתְנַדֵב	11
7498	sword	חֶרֶב	11
7499	scenario	תַרחִישׁ	11
7500	necklace	שַׁרשֶׁרֶת	11
7501	chapel	קפלה	11
7502	restrain	לְרַסֵן	11
7503	homicide	רֶצַח	11
7504	helicopter	מַסוֹק	11
7505	firing	ירי	11
7506	safeguard	לְהַגֵן	11
7507	diamond	יַהֲלוֹם	11
7508	devoted	מָסוּר	11
7509	auction	מְכִירָה פּוּמבִּית	11
7510	videotape	קַלֶטֶת וִידֵיאוֹ	11
7511	tore	נקרע	11
7512	pops	קופץ	11
7513	appetite	תֵאָבוֹן	11
7514	patrol	פַּטרוֹל	11
7515	ironic	אִירוֹנִי	11
7516	excitement	הִתרַגְשׁוּת	11
7517	anyhow	עַל כֹּל פָּנִים	11
7518	core	ליבה	11
7519	bowling	בָּאוּלִינְג	11
7520	belly	בֶּטֶן	11
7521	shark	כָּרִישׁ	11
7522	miller	טוֹחֵן	11
7523	dealer	סוֹחֵר	11
7524	cooperate	לְשַׁתֵף פְּעוּלָה	11
7525	bachelor	בּוֹגֵר תוֹאַר רִאשׁוֹן	11
7526	accomplish	לְהַשִׂיג	11
7527	reservation	הַזמָנָה	11
7528	coke	קוֹקָה קוֹלָה	11
7529	ashes	אפר	11
7530	supposedly	כביכול	11
7531	loft	עֲלִיַת גַג	11
7532	integrity	שְׁלֵמוּת	11
7533	qualified	מוּסמָך	11
7534	inappropriate	לֹא הוֹלֵם	11
7535	immediate	מִיָדִי	11
7536	ginger	זַנגבִיל	11
7537	sunset	שְׁקִיעַת הַשֶׁמֶשׁ	11
7538	nation	אוּמָה	11
7539	lipstick	שְׂפָתוֹן	11
7540	lawn	דֶשֶׁא	11
7541	compassion	חֶמלָה	11
7542	cafeteria	קָפֵטֶרִיָה	11
7543	scarf	צָעִיף	11
7544	obsession	דִבּוּק	11
7545	management	הַנהָלָה	11
7546	lighten	לְהִתְבַּהֵר	11
7547	granddaughter	נֶכדָה	11
7548	explode	לְהִתְפּוֹצֵץ	11
7549	balcony	מִרפֶּסֶת	11
7550	conscious	מוּדָע	11
7551	ally	בַּעַל בְּרִית	11
7552	ace	אֵס	11
7553	absurd	אַבּסוּרדִי	11
7554	vicious	מְרוּשָׁע	11
7555	rap	ראפ	11
7556	forbid	לֶאֱסוֹר	11
7557	defendant	נֶאְשָׁם	11
7558	bare	חָשׂוּף	11
7559	salesman	מוֹכֵר	11
7560	leap	לִקְפּוֹץ	11
7561	ken	קן	11
7562	insanity	אִי שְׁפִיוּת	11
7563	genetic	גֵנֵטִי	11
7564	fighter	לוֹחֶם	11
7565	burden	עוֹל	11
7566	swallow	לִבלוֹעַ	11
7567	kidnap	לַחטוֹף	11
7568	gown	שִׂמלָה	11
7569	entering	נכנסים	11
7570	setup	הגדרה	11
7571	serial	סִדרָתִי	11
7572	sandy	חוֹלִי	11
7573	dramatic	דְרָמָטִי	11
7574	carver	גַלָף	11
7575	blade	לַהַב	11
7576	seventh	שְׁבִיעִית	11
7577	rape	לֶאֱנוֹס	11
7578	pony	פּוֹנִי	11
7579	semester	סֵמֶסטֶר	11
7580	delicate	עָדִין	11
7581	oldest	המבוגר ביותר	11
7582	live	לִחיוֹת	11
7583	eager	לָהוּט	11
7584	doomed	נידון	11
7585	coffin	אֲרוֹן מֵתִים	11
7586	bureau	מִשׂרָד	11
7587	adoption	אימוץ	11
7588	stab	לִדקוֹר	11
7589	sickness	מַחֲלָה	11
7590	loop	לוּלָאָה	11
7591	floating	צָף	11
7592	combination	קוֹמבִּינַצִיָה	11
7593	chamber	תָא	11
7594	casino	קָזִינוֹ	11
7595	worn	שָׁחוּק	11
7596	vault	קִמרוֹן	11
7597	payback	החזר	11
7598	healing	מַרפֵּא	11
7599	cascade	אֶשֶׁד	11
7600	wrestling	הַאָבְקוּת	11
7601	sixth	שִׁשִׁית	11
7602	passionate	לוֹהֵט	11
7603	lawsuit	תְבִיעָה מִשׁפָּטִית	11
7604	distrustul	חוסר אמון	11
7605	crossing	מַעֲבָר	11
7606	cozy	נוֹחַ	11
7607	associate	חָבֵר	11
7608	tire	צְמִיג	11
7609	mill	טַחֲנָה	11
7610	journal	כְּתַב הָעֵת	11
7611	risky	מְסוּכָּן	11
7612	nest	קֵן	11
7613	honourable	כָּבוּד	11
7614	favour	טוֹבָה	11
7615	culture	תַרְבּוּת	11
7616	closest	הכי קרוב	11
7617	breakdown	הִתמוֹטְטוּת	11
7618	conflict	סְתִירָה	11
7619	bald	קֵרֵחַ	11
7620	actress	שַׂחְקָנִית	11
7621	wisdom	חָכמָה	11
7622	steam	קִיטוֹר	11
7623	scar	צַלֶקֶת	11
7624	worthless	חֲסַר עֵרֶך	11
7625	suck	לִמְצוֹץ	11
7626	injured	נִפגָע	11
7627	graduation	טֶקֶס סִיוּם	11
7628	disturbing	מטריד	11
7629	disturb	לְהַפְרִיעַ	11
7630	distract	לְהַסִיחַ אֵת הַדַעַת	11
7631	conclusion	מַסְקָנָה	11
7632	baker	אוֹפֶה	11
7633	muffin	מַאפִין	11
7634	mid	בֵּינוֹנִי	11
7635	measure	לִמְדוֹד	11
7636	crawling	בִּזְחִילָה	11
7637	congress	קוֹנגרֶס	11
7638	briefcase	תִיק	11
7639	whistle	לִשְׁרוֹק	11
7640	roast	צָלִי	11
7641	Greek	יוונית	11
7642	flirting	מפלרטטים	11
7643	damaged	פגום	11
7644	topic	נוֹשֵׂא	11
7645	riot	הִתפָּרְעוּת	11
7646	minimum	מִינִימוּם	11
7647	hostile	עוֹיֵן	11
7648	embarrass	לִהַבִיך	11
7649	casual	אַגָבִי	11
7650	beacon	מִגדַלוֹר	11
7651	amusing	מְשַׁעַשֵׁעַ	11
7652	altar	מִזבֵּחַ	11
7653	skinny	רָזֶה	11
7654	goods	סְחוֹרוֹת	11
7655	porch	מִרפֶּסֶת	11
7656	ghost	רוּחַ	11
7657	drops	טִיפּוֹת	11
7658	dizzy	סְחַרחַר	11
7659	breastfeeding	הנקה	11
7660	beaten	מוּכֶּה	11
7661	rehabilitation	שיקום	11
7662	photographer	צַלָם	11
7663	leery	עצבני	11
7664	fortunately	לְמַרְבֶּה הַמַזָל	11
7665	expectation	תוֹחֶלֶת	11
7666	draft	טְיוּטָה	11
7667	active	פָּעִיל	11
7668	ski	סקִי	11
7669	musician	מוּסִיקָאִי	11
7670	executed	מְבוּצָע	11
7671	examine	לִבחוֹן	11
7672	document	מִסְמָך	11
7673	bribe	שׁוֹחַד	11
7674	rum	רוֹם	11
7675	prescription	מִרשָׁם	11
7676	hush	לְהַשְׁתִיק	11
7677	fuzzy	מְעוּרפָּל	11
7678	fragile	שָׁבִיר	11
7679	forensics	זיהוי פלילי	11
7680	expense	הוֹצָאָה	11
7681	drugged	מְסוּמָם	11
7682	conduct	הִתְנַהֲגוּת	11
7683	comic	קוֹמִי	11
7684	avenue	שְׁדֵרָה	11
7685	suitcase	מזוודה	11
7686	sort	סוּג	11
7687	scan	לִסְרוֹק	11
7688	rod	מוֹט	11
7689	motor	מָנוֹעַ	11
7690	mini	מיני	11
7691	installation	הַתקָנָה	11
7692	insecure	לֹא בָּטוּחַ	11
7693	gamble	לְהַמֵר	11
7694	wrist	שׁוֹרֶשׁ כַּף יָד	11
7695	silk	מֶשִׁי	11
7696	pump	לִשְׁאוֹב	11
7697	nicer	נחמד יותר	11
7698	haul	לִגרוֹר	11
7699	guardian	אַפּוֹטרוֹפּוֹס	11
7700	dodge	לְהִתְחַמֵק	11
7701	boot	מַגָף	11
7702	thumb	אֲגוּדָל	11
7703	limited	מוּגבָּל	11
7704	lighter	מַצִית	11
7705	elder	זָקֵן	11
7706	shooter	יוֹרֶה	11
7707	quietly	בְּשֶׁקֶט	11
7708	lion	אַריֵה	11
7709	erase	לִמְחוֹק	11
7710	denying	מכחיש	11
7711	ankle	קַרסוֹל	11
7712	amnesia	שִׁכחָה	11
7713	ruby	אוֹדֶם	11
7714	hunter	צַיָד	11
7715	heartbeat	דוֹפֶק	11
7716	confront	לְהִתְעַמֵת	11
7717	minus	מִינוּס	11
7718	legitimate	לֵגִיטִימִי	11
7719	hurricane	הוֹרִיקָן	11
7720	fixing	קְבִיעָה	11
7721	auto	אוטומטי	11
7722	arrogant	יָהִיר	11
7723	tuna	טוּנָה	11
7724	slightest	הקלה ביותר	11
7725	saying	פִּתגָם	11
7726	paternity	אַבהוּת	11
7727	catholic	קָתוֹלִי	11
7728	snack	חָטִיף	11
7729	rational	רַצִיוֹנָלִי	11
7730	passport	דַרכּוֹן	11
7731	dip	לִטבּוֹל	11
7732	advanced	מִתקַדֵם	11
7733	tumor	גידול	11
7734	humiliated	מוּשׁפָל	11
7735	destruction	הֶרֶס	11
7736	banana	בָּנָנָה	11
7737	August	אוֹגוּסט	11
7738	aspirin	אַספִּירִין	11
7739	academy	אֲקָדֶמִיָה	11
7740	wig	פֵּאָה	11
7741	turk	טורקי	11
7742	throughout	בְּמֶשֶך	11
7743	logic	הִגָיוֹן	11
7744	knight	אַבִּיר	11
7745	eyesight	רְאִיָה	11
7746	equal	לְהִשְׁתַווֹת	11
7747	ritual	פּוּלחָן	11
7748	perfume	נִיחוֹחַ	11
7749	hiring	שְׂכִירָה	11
7750	ham	בְּשַׂר חֲזִיר	11
7751	fusion	הַתָכָה	11
7752	elect	לִבחוֹר	11
7753	thankful	אֲסִיר תוֹדָה	11
7754	nineteen	תֵשַׁע עֶשׂרֵה	11
7755	comedy	קוֹמֶדִיָה	11
7756	analysis	אָנָלִיזָה	11
7757	teenager	מִתבַּגֵר	11
7758	shore	חוֹף	11
7759	palm	כַּף הַיָד	11
7760	detective	בַּלָשׁ	11
7761	widow	אַלמָנָה	11
7762	tissue	רִקמָה	11
7763	repay	לְהַחזִיר	11
7764	permanently	לִצְמִיתוּת	11
7765	hack	גַרזֶן	11
7766	deadly	קָטלָנִי	11
7767	comfortless	חסרי נוחות	11
7768	verdict	פְּסַק דִין	11
7769	jar	קַנקַן	11
7770	insensitive	לֹא רָגִישׁ	11
7771	aim	מַטָרָה	11
7772	triple	לְשַׁלֵשׁ	11
7773	messy	מְלוּכלָך	11
7774	entry	כְּנִיסָה	11
7775	bleed	לְדַמֵם	11
7776	foster	לְטַפֵּחַ	11
7777	ding	דינג	11
7778	airplane	מָטוֹס	11
7779	worker	עוֹבֵד	11
7780	underestimate	לְהַמעִיט בְּעֵרכּוֹ	11
7781	soccer	כַּדוּרֶגֶל	11
7782	registered	רָשׁוּם	11
7783	multiple	מְרוּבֶּה	11
7784	harmless	לֹא מַזִיק	11
7785	frisk	לִרְקוֹד	11
7786	folk	אֲנָשִׁים	11
7787	convention	אֲמָנָה	11
7788	communicate	לְהַעֲבִיר	11
7789	attraction	מְשִׁיכָה	11
7790	arson	הַצָתָה	11
7791	whack	מַהֲלוּמָה	11
7792	wade	לְהִשְׁתַכְשֵׁך	11
7793	residence	מְגוּרִים	11
7794	medium	בֵּינוֹנִי	11
7795	liking	טַעַם	11
7796	development	הִתפַּתְחוּת	11
7797	develop	לְפַתֵחַ	11
7798	dearest	היקר ביותר	11
7799	congratulate	לְבָרֵך	11
7800	April	אַפּרִיל	11
7801	alliance	בְּרִית	11
7802	vengeance	נְקָמָה	11
7803	rack	דְפוּפָה	11
7804	puzzle	חִידָה	11
7805	guidance	הַדְרָכָה	11
7806	courtesy	אֲדִיבוּת	11
7807	caller	מתקשר	11
7808	wizard	אַשָׁף	11
7809	repair	לְתַקֵן	11
7810	quiz	חִידוֹן	11
7811	curiosity	סַקרָנוּת	11
7812	barbecue	ברביקיו	11
7813	troops	צָבָא	11
7814	cough	לְהִשְׁתַעֵל	11
7815	accusation	הַאֲשָׁמָה	11
7816	resent	לְהִתְרַעֵם	11
7817	freshman	סטודנט א'	11
7818	envy	קִנְאָה	11
7819	drown	לְהַטבִּיעַ	11
7820	sofa	סַפָּה	11
7821	highness	רוֹמֵמוּת	11
7822	drain	לְנַקֵז	11
7823	dock	לַעֲגוֹן	11
7824	welfare	סַעַד	11
7825	theirs	שֶׁלָהֶם	11
7826	state	מְדִינָה	11
7827	somewhat	קְצָת	11
7828	solo	סוֹלוֹ	11
7829	jazz	ג'ֶז	11
7830	hawk	נֵץ	11
7831	finishing	גימור	11
7832	album	אַלבּוֹם	11
7833	wee	פָּעוּט	11
7834	understandable	מוּבָן	11
7835	stir	לְרַגֵשׁ	11
7836	gratitude	תוֹדָה	11
7837	faithful	נֶאֱמָן	11
7838	accent	מִבטָא	11
7839	zip	רוֹכְסָן	11
7840	wandering	נְדוּדִים	11
7841	regardless	בלי קשר	11
7842	inevitable	בִּלתִי נִמנַע	11
7843	crushed	כָּתוּשׁ	11
7844	contingent	מִשׁלַחַת	11
7845	rocky	סַלעִי	11
7846	robe	חָלוּק	11
7847	retired	בְּדִימוּס	11
7848	gossip	רְכִילוּת	11
7849	gambling	הימורים	11
7850	determine	לִקְבּוֹעַ	11
7851	cosmetics	קוֹסמֵטִיקָה	11
7852	cent	סֶנט	11
7853	stiff	נוּקשֶׁה	11
7854	sincere	כֵּן	11
7855	shield	מָגֵן	11
7856	nightmare	סִיוּט	11
7857	ignoring	מתעלמים	11
7858	hunch	תְחוּשָׁה	11
7859	firework	זִקוּקֵי דִי נוּר	11
7860	crown	כֶּתֶר	11
7861	cooperation	שיתוף פעולה	11
7862	brass	פְּלִיז	11
7863	sophisticated	מְתוּחכָּם	11
7864	luggage	מִטְעָן	11
7865	lemon	לִימוֹן	11
7866	investigate	לַחקוֹר	11
7867	explore	לַחקוֹר	11
7868	dragon	דְרָקוֹן	11
7869	creek	עָרוּץ	11
7870	complication	תַסבִּיך	11
7871	righteous	צַדִיק	11
7872	reconsider	לִשְׁקוֹל שׁוּב	11
7873	inspiration	הַשׁרָאָה	11
7874	goody	סוּכָּרִיָה	11
7875	fringe	עַיִט	11
7876	ethic	אתיקה	11
7877	courthouse	בית משפט	11
7878	camping	קֶמפִּינג	11
7879	assistance	סִיוּעַ	11
7880	affection	אַהֲבָה	11
7881	lodge	לִשְׁכָּה	11
7882	haircut	תִספּוֹרֶת	11
7883	forcing	מאלץ	11
7884	eternal	נִצחִי	11
7885	stud	סוּס הַרבָּעָה	11
7886	sailor	מַלָח	11
7887	operator	מַפעִיל	11
7888	goat	עֵז	11
7889	exclusive	בִּלעָדִי	11
7890	destructive	הַרסָנִי	11
7891	defeat	לִהַבִיס	11
7892	adore	לְהַעֲרִיץ	11
7893	warrior	לוֹחֶם	11
7894	shorts	מִכְנָסַיִים קְצָרִים	11
7895	ninth	ט	11
7896	dough	בָּצֵק	11
7897	creation	יְצִירָה	11
7898	barrel	חָבִית	11
7899	tuck	לִתְחוֹב	11
7900	rear	אֲחוֹרִי	11
7901	pacific	האוקיינוס ​​השקט	11
7902	magnificent	מְפוֹאָר	11
7903	lick	לְלַקֵק	11
7904	goddess	אֵלָה	11
7905	glorious	מְפוֹאָר	11
7906	visitation	פּוּרעָנוּת	11
7907	teen	נוער	11
7908	scholarship	מִלגָה	11
7909	sane	שָׁפוּי בְּדַעתוֹ	11
7910	kingdom	מַלְכוּת	11
7911	flames	להבות	11
7912	sunny	שִׁמשִׁי	11
7913	mattress	מִזרָן	11
7914	lobster	לוֹבּסטֶר	11
7915	importantly	חשוב	11
7916	glove	כְּפָפָה	11
7917	disappointment	אַכזָבָה	11
7918	condo	דירה	11
7919	cemetery	בֵּית קְבָרוֹת	11
7920	screech	לִצווֹחַ	11
7921	nun	נְזִירָה	11
7922	navy	חֵיל הַיָם	11
7923	dedicated	מוּקדָשׁ	11
7924	Christian	נוֹצְרִי	11
7925	annual	שְׁנָתִי	11
7926	worm	תוֹלַעַת	11
7927	tick	תִקתוּק	11
7928	polish	פּוֹלָנִית	11
7929	funds	כְּסָפִים	11
7930	defensive	הֲגַנָתִי	11
7931	compete	לְהִתְחַרוֹת	11
7932	balloon	בַּלוֹן	11
7933	sailing	שַׁיִט	11
7934	filing	הגשה	11
7935	depression	דִכָּאוֹן	11
7936	conversation	שִׂיחָה	11
7937	consideration	הִתחַשְׁבוּת	11
7938	consciousness	תוֹדָעָה	11
7939	innocence	תְמִימוּת	11
7940	freaky	פריקי	11
7941	forehead	מֵצַח	11
7942	slam	לִטרוֹק	11
7943	pry	לְחַטֵט	11
7944	inform	לְהוֹדִיעַ	11
7945	dug	חפר	11
7946	delighted	שַׂמֵחַ	11
7947	daylight	אוֹר	11
7948	currently	כַּיוֹם	11
7949	confidential	סוֹדִי	11
7950	chew	לִלְעוֹס	11
7951	washing	כְּבָסִים	11
7952	warden	סוֹהֵר	11
7953	temple	מִקדָשׁ	11
7954	mistress	פִּילֶגֶשׁ	11
7955	marrow	מוֹחַ	11
7956	hatred	שִׂנאָה	11
7957	grill	גְרִיל	11
7958	corpse	גוּפָה	11
7959	sober	פִּכֵּחַ	11
7960	peel	לְקַלֵף	11
7961	larger	גדול יותר	11
7962	infected	נגוע	11
7963	humanity	אֶנוֹשִׁיוּת	11
7964	electrical	חַשׁמַלִי	11
7965	distraction	הַסָחַת הַדַעַת	11
7966	chopper	מַסוֹק	11
7967	cart	עֲגָלָה	11
7968	broadcast	מִשׁדָר	11
7969	violation	הֲפָרָה	11
7970	suspend	לְהַשְׁעוֹת	11
7971	sting	לַעֲקוֹץ	11
7972	promising	מַבְטִיחַ	11
7973	harassment	הַטרָדָה	11
7974	glue	דֶבֶק	11
7975	gathering	כֶּנֶס	11
7976	deer	צְבִי	11
7977	cursed	אָרוּר	11
7978	content	תוֹכֶן	11
7979	combat	לְחִימָה	11
7980	brutal	אַכְזָרִי	11
7981	asset	נֶכֶס	11
7982	warlock	מְכַשֵׁף	11
7983	wagon	עֲגָלָה	11
7984	unpleasant	לֹא נָעִים	11
7985	tan	לְהִשְׁתַזֵף	11
7986	robot	רוֹבּוֹט	11
7987	lease	לַחכּוֹר	11
7988	killer	רוֹצֵחַ	11
7989	flame	לֶהָבָה	11
7990	domestic	בֵּיתִי	11
7991	divine	לְנַחֵשׁ	11
7992	disappearance	הֵעָלְמוּת	11
7993	depressing	מְדַכֵּא	11
7994	thrill	רֶטֶט	11
7995	terminal	מָסוֹף	11
7996	rib	צֵלָע	11
7997	knew	ידע	11
7998	flush	רֶצֶף	11
7999	exception	חֲרִיגָה	11
8000	earring	עָגִיל	11
8001	deadline	מוֹעֵד אַחֲרוֹן	11
8002	corporal	גוּפָנִי	11
8003	update	לְעַדְכֵּן	11
8004	smack	הֵרוֹאִין	11
8005	melt	לְהַמִיס	11
8006	madness	שִׁגָעוֹן	11
8007	eagle	נֶשֶׁר	11
8008	delusional	הזוי	11
8009	could	הָיָה יָכוֹל	11
8010	burnt	שַׂרוּף	11
8011	tender	מִכרָז	11
8012	sperm	זֶרַע	11
8013	realise	לִהַבִין	11
8014	pork	חֲזִיר	11
8015	interrogation	חֲקִירָה	11
8016	institution	מוֹסָד	11
8017	esteem	הַעֲרָכָה	11
8018	communication	תִקשׁוֹרֶת	11
8019	choir	מַקְהֵלָה	11
8020	undo	לְבַטֵל	11
8021	plague	מַגֵפָה	11
8022	manipulate	לְתַפְעֵל	11
8023	lifestyle	אורח חיים	11
8024	insulting	מַעֲלִיב	11
8025	honour	כָּבוֹד	11
8026	detention	מַעְצָר	11
8027	delightful	מְהַנֶה	11
8028	daisy	חִנָנִית	11
8029	coffeehouse	בית קפה	11
8030	chess	שַׁחְמָט	11
8031	betrayal	בְּגִידָה	11
8032	apologizing	מתנצל	11
8033	whipped	מוּקצָף	11
8034	reminder	תִזכּוֹרֶת	11
8035	fame	פִּרסוּם	11
8036	faint	לְהִתְעַלֵף	11
8037	confusion	בִּלבּוּל	11
8038	sang	שרה	11
8039	nearest	הקרוב ביותר	11
8040	illusion	אַשְׁלָיָה	11
8041	execution	הוֹצָאָה לְפוֹעַל	11
8042	distress	מְצוּקָה	11
8043	cutter	מַחתֵך	11
8044	correctly	נְכוֹנָה	11
8045	complaint	תְלוּנָה	11
8046	trophy	פְּרָס	11
8047	pointless	חֲסַר טַעַם	11
8048	pearl	פְּנִינָה	11
8049	heir	יוֹרֵשׁ	11
8050	eighth	ח	11
8051	alibi	אַלִיבִּי	11
8052	shiny	מַברִיק	11
8053	mint	מֶנטָה	11
8054	keeper	שׁוֹמֵר	11
8055	hose	זַרנוּק	11
8056	hobby	תַחבִּיב	11
8057	fitting	הוֹלֵם	11
8058	curtain	וִילוֹן	11
8059	counselling	ייעוץ	11
8060	wit	שְׁנִינוּת	11
8061	technical	טֶכנִי	11
8062	puppet	בּוּבָּה	11
8063	modeling	דוּגמָנוּת	11
8064	irresponsible	לֹא אַחֲרַאִי	11
8065	humiliation	הַשׁפָּלָה	11
8066	felony	פֶּשַׁע	11
8067	choke	לַחֲנוֹק	11
8068	blackmailing	סחיטה	11
8069	tabloid	טַבלִית	11
8070	rally	לְלַכֵּד	11
8071	pledge	מַשׁכּוֹן	11
8072	nursery	מִשׁתָלָה	11
8073	louder	חָזָק יוֹתֵר	11
8074	investigator	חוֹקֵר	11
8075	ignate	להצית	11
8076	homecoming	חזרה הביתה	11
8077	graduated	בוגר	11
8078	frustrating	מְתַסכֵּל	11
8079	fabric	בַּד	11
8080	dot	נְקוּדָה	11
8081	distant	רָחוֹק	11
8082	cock	תַרְנְגוֹל	11
8083	bustle	לְהִתְרוֹצֵץ	11
8084	buff	לְהַברִיק	11
8085	wax	דוֹנַג	11
8086	sleeve	שַׁרווּל	11
8087	irony	אִירוֹנִיָה	11
8088	dope	מְטוּמטָם	11
8089	torch	לַפִּיד	11
8090	substitute	תַחֲלִיף	11
8091	scandal	שַׁעֲרוּרִיָה	11
8092	prick	לִדקוֹר	11
8093	limb	אֵיבָר	11
8094	laser	לייזר	11
8095	hysterical	הִיסטֵרִי	11
8096	growth	צְמִיחָה	11
8097	dimension	מֵמַד	11
8098	clip	לְקַצֵץ	11
8099	climbing	טיפוס	11
8100	ultimately	בסופו של דבר	11
8101	roller	מַכבֵּשׁ	11
8102	negotiate	לָשֵׂאת וְלָתֵת	11
8103	millennium	אֶלֶף שָׁנָה	11
8104	marsh	בִּצָה	11
8105	majority	רוֹב	11
8106	lethal	קָטלָנִי	11
8107	deed	שְׁטָר	11
8108	cigar	סִיגָר	11
8109	bore	לְשַׁעֲמֵם	11
8110	babysitter	שְׁמַרטַף	11
8111	sponge	סְפוֹג	11
8112	sleepy	מְנוּמנָם	11
8113	peek	לְהָצִיץ	11
8114	outrageous	מְזַעזֵעַ	11
8115	medal	מֵדַלִיָה	11
8116	grudge	טִינָה	11
8117	driveway	שביל גישה	11
8118	deserted	נָטוּשׁ	11
8119	definite	מוּגדָר	11
8120	beep	ביפ	11
8121	weed	עֵשֶׂב	11
8122	nickname	כינוי	11
8123	conviction	הַרשָׁעָה	11
8124	weigh	לִשְׁקוֹל	11
8125	rocket	רָקֵטָה	11
8126	intruder	פּוֹלֵשׁ	11
8127	fur	פרווה	11
8128	herb	עֵשֶׂב	11
8129	cycle	מַחזוֹר	11
8130	hardware	חוּמרָה	11
8131	wealthy	עָשִׁיר	11
8132	versus	נֶגֶד	11
8133	sip	לְגִימָה	11
8134	postpone	לִדחוֹת	11
8135	celebrity	אִישִׁיוּת מְפוּרְסֶמֶת	11
8136	offensive	הֶתקֵפִי	11
8137	mug	לִשְׁדוֹד	11
8138	hairy	שָׂעִיר	11
8139	bedtime	שעת השינה	11
8140	alcoholic	כּוֹהָלִי	11
8141	sticky	דָבִיק	11
8142	splendid	נֶהְדָר	11
8143	shrimp	חֲסִילוֹנִים	11
8144	despise	לָבוּז	11
8145	atmosphere	אַטמוֹספֵרָה	11
8146	rifle	רוֹבֶה	11
8147	handwriting	כְּתַב יָד	11
8148	shepherd	רוֹעֶה	11
8149	importance	חֲשִׁיבוּת	11
8150	fatal	קָטלָנִי	11
8151	separation	הַפרָדָה	11
8152	method	שִׁיטָה	11
8153	diagnosis	אִבחוּן	11
8154	yearbook	שְׁנָתוֹן	11
8155	triangle	מְשּוּלָשׁ	11
8156	partnership	שׁוּתָפוּת	11
8157	humble	עָנָיו	11
8158	thorough	יְסוֹדִי	11
8159	thunder	רַעַם	11
8160	located	ממוקם	11
8161	grandchildren	נכדים	11
8162	sentimental	סֵנטִימֵנטָלִי	11
8163	marketing	שיווק	11
8164	population	אוּכְלוֹסִיָה	11
8165	scent	רֵיחַ	11
8166	pose	פּוֹזָה	11
8167	fleet	צִי	11
8168	sketch	סְקִיצָה	11
8169	mere	סְתָם	11
8170	outer	חִיצוֹנִי	11
8171	mock	לִלְעוֹג	11
8172	January	יָנוּאָר	11
8173	sour	חָמוּץ	11
8174	maximum	מַקסִימוּם	11
8175	speaker	רַמקוֹל	11
8176	tease	לְהַקְנִיט	11
8177	peach	אֲפַרסֵק	11
8178	nude	עָרוֹם	11
8179	clearance	מִרוָח	11
8180	anxiety	חֲרָדָה	11
8181	salmon	סַלמוֹן	11
8182	summit	פִּסגָה	11
8183	lid	מִכסֶה	11
8184	mechanic	מְכוֹנַאִי	11
8185	tobacco	טַבָּק	11
8186	missile	טִיל	11
8187	steer	לְהַטוֹת	11
8188	heel	עָקֵב	11
8189	granddad	סָבָּא	11
8190	tournament	טוּרנִיר	11
8191	approximately	בְּעֵרֶך	11
8192	employment	תַעֲסוּקָה	11
8193	grandparents	סבא וסבתא	11
8194	forbidden	אָסוּר	11
8195	tutor	מוֹרֶה	11
8196	modest	צָנוּעַ	11
8197	vessel	כְּלִי שַׁיִט	11
8198	variety	מגוון	11
8199	smash	לְרַסֵק	11
8200	mild	מָתוּן	11
8201	shaft	פִּיר	11
8202	rainbow	קֶשֶׁת	11
8203	grasp	לִתְפּוֹס	11
8204	fireplace	אָח	11
8205	tide	גֵאוּת וְשֵׁפֶל	11
8206	mustard	חַרדָל	11
8207	wheat	חיטה	11
8208	fountain	מִזרָקָה	11
8209	stem	גֶזַע	11
8210	December	דֵצֶמבֶּר	11
8211	writer	סוֹפֵר	11
8212	tribe	שֶׁבֶט	11
8213	ounce	אוּנְקִיָה	11
8214	convenience	נוֹחוּת	11
8215	dash	לְזַנֵק	11
8216	invest	לְהַשְׁקִיעַ	11
8217	difficulty	קוֹשִׁי	11
8218	sadness	עֶצֶב	11
8219	microwave	מִיקרוֹגַל	11
8220	additional	נוֹסָף	11
8221	mankind	אָדָם	11
8222	fare	דְמֵי נְסִיעָה	11
8223	laptop	מחשב נייד	11
8224	saddle	אוּכָּף	11
8225	razor	תַעַר	11
8226	coverage	כיסוי	11
8227	corridor	פְּרוֹזדוֹר	11
8228	sidewalk	מִדרָכָה	11
8229	oak	אַלוֹן	11
8230	notify	לְהוֹדִיעַ	11
8231	confide	לִבטוֹחַ	11
8232	scrub	לְשַׁפשֵׁף	11
8233	parallel	מַקְבִּיל	11
8234	orbit	מַסלוּל	11
8235	feather	נוֹצָה	11
8236	farmer	חַקלאַי	11
8237	spicy	חָרִיף	11
8238	napkin	מַפִּית	11
8239	efficient	יָעִיל	11
8240	arrow	חֵץ	11
8241	abbey	מִנזָר	11
8242	solitary	בּוֹדֵד	11
8243	myth	מִיתוֹס	11
8244	toll	אַגרָה	11
8245	fuse	נָתִיך	11
8246	industrial	תַעֲשִׂיָתִי	11
8247	hostess	מְאָרַחַת	11
8248	delight	תַעֲנוּג	11
8249	imaginary	דִמיוֹנִי	11
8250	elegant	אֵלֶגַנטִי	11
8251	elbow	מַרְפֵּק	11
8252	custom	מִנְהָג	11
8253	ant	נְמָלָה	11
8254	tempt	לִפתוֹת	11
8255	splash	סֶנסַצִיָה	11
8256	shade	צֵל	11
8257	metaphor	מֵטָפוֹרָה	11
8258	ancestor	אָב קַדמוֹן	11
8259	acceptance	קַבָּלָה	11
8260	weekly	שְׁבוּעִי	11
8261	warmth	חוֹם	11
8262	umbrella	מִטְרִיָה	11
8263	parenting	הורות	11
8264	onion	בָּצָל	11
8265	mobile	נייד	11
8266	footstep	צַעַד	11
8267	cement	מֶלֶט	11
8268	bloom	לִפְרוֹחַ	11
8269	triumph	טרִיוּמף	11
8270	greed	חַמדָנוּת	11
8271	essential	חִיוּנִי	11
8272	temptation	פיתוי	11
8273	sarcasm	סַרקָזם	11
8274	partial	חֶלקִי	11
8275	inconvenience	אִי נוֹחוּת	11
8276	courageous	אַמִיץ	11
8277	stew	תַבשִׁיל	11
8278	sorrow	צַעַר	11
8279	mend	לְתַקֵן	11
8280	impulsive	אִימְפּוּלְסִיבִי	11
8281	harvest	קְצִיר	11
8282	foam	קֶצֶף	11
8283	divide	לְחַלֵק	11
8284	online	באינטרנט	11
8285	invasion	פְּלִישָׁה	11
8286	consultant	יוֹעֵץ	11
8287	banking	בַּנקָאוּת	11
8288	stereo	סטריאו	11
8289	obey	לציית	11
8290	neutral	נֵטרָלִי	11
8291	lump	גוּשׁ	11
8292	harass	לְהָצִיק	11
8293	donkey	חֲמוֹר	11
8294	cologne	קלן	11
8295	waist	מוֹתֶן	11
8296	vain	שָׁוא	11
8297	stepfather	אָב חוֹרֵג	11
8298	lemonade	לִימוֹנָדָה	11
8299	vomit	לְהַקִיא	11
8300	stadium	אִצטַדיוֹן	11
8301	liberal	לִיבֵּרָלִי	11
8302	spice	לְתַבֵּל	11
8303	nod	מָנוֹד רֹאשׁ	11
8304	tenth	עֲשִׂירִית	11
8305	horizon	אופק	11
8306	frequency	תֶדֶר	11
8307	flexible	גָמִישׁ	11
8308	dairy	מַחלָבָה	11
8309	corrupt	מוּשׁחָת	11
8310	loaf	לְהִתְבַּטֵל	11
8311	herbal	צמחים	11
8312	generosity	נְדִיבוּת	11
8313	shampoo	שַׁמפּוֹ	11
8314	humour	הוּמוֹר	11
8315	frost	כְּפוֹר	11
8316	volcano	הַר גַעַשׁ	11
8317	password	סִיסמָה	11
8318	merit	לִזכּוֹת	11
8319	conquer	לִכבּוֹשׁ	11
8320	orientation	הִתמַצְאוּת	11
8321	lotion	תַחלִיב	11
8322	hazard	מִפגָע	11
8323	glamorous	מַקסִים וּמְפוּאָר	11
8324	scenery	נוֹף	11
8325	globe	גלוֹבּוּס	11
8326	dam	סֶכֶר	11
8327	verify	לְאַמֵת	11
8328	criticism	בִּקוֹרֶת	11
8329	thirst	צָמָא	11
8330	limp	לִצְלוֹעַ	11
8331	unpack	לִפְרוֹק	11
8332	trim	מְטוּפָּח	11
8333	sphere	כַּדוּר	11
8334	preparation	הֲכָנָה	11
8335	pear	אַגָס	11
8336	headline	כּוֹתֶרֶת	11
8337	grape	עַנָב	11
8338	vitamin	וִיטָמִין	11
8339	uncertain	לֹא בָּטוּחַ	11
8340	stern	חָמוּר	11
8341	sponsor	לָתֵת חָסוּת	11
8342	peculiar	מוּזָר	11
8343	grain	תְבוּאָה	11
8344	painter	צייר	11
8345	notebook	מַחבֶּרֶת	11
8346	vanish	לְהֵעָלֵם	11
8347	tackle	לְהִתְמוֹדֵד	11
8348	fisherman	דַיָג	11
8349	decorate	לְקַשֵׁט	11
8350	salvation	יְשׁוּעָה	11
8351	nausea	בְּחִילָה	11
8352	inherit	לָרֶשֶׁת	11
8353	nosy	חַטְטָן	11
8354	passive	פַּסִיבִי	11
8355	orchestra	תִזמוֹרֶת	11
8356	gourmet	גורמה	11
8357	tickle	לְדַגדֵג	11
8358	heating	הַסָקָה	11
8359	scatter	לְפַזֵר	11
8360	slavery	עַבדוּת	11
8361	herd	עֵדֶר	11
8362	heap	גַל	11
8363	solar	סוֹלָרִי	11
8364	sculpture	פֶּסֶל	11
8365	lace	תַחרָה	11
8366	sensation	תְחוּשָׁה	11
8367	savage	פְּרָאִי	11
8368	noodle	אִטְרִיָה	11
8369	vocabulary	אוֹצָר מִילִים	11
8370	tractor	טְרַקטוֹר	11
8371	gulf	מִפרָץ	11
8372	probable	מִסתַבֵּר	11
8373	hangover	צִירֵי הִתפַּכְּחוּת	11
8374	thrust	דַחַף	11
8375	flee	לִברוֹחַ	11
8376	daring	נוֹעָז	11
8377	paragraph	סָעִיף	11
8378	mist	עֲרָפֶל	11
8379	deceive	לְהוֹנוֹת	11
8380	spectacle	מַחֲזֶה	11
8381	vacant	רֵיק	11
8382	shrine	קֶבֶר קָדוֹשׁ	11
8383	dedicate	לַחֲנוֹך	11
8384	coupon	קוּפּוֹן	11
8385	zoom	זום	11
8386	mercy	רַחֲמִים	11
8387	lively	מָלֵא חַיִים	11
8388	equivalent	שווה ערך	11
8389	compensation	פיצוי	11
8390	canvas	בַּד	11
8391	vivid	בָּהִיר	11
8392	outdoor	בָּחוּץ	11
8393	litter	אַשׁפָּה	11
8394	gallon	גַלוֹן	11
8395	firmly	בְּתוֹקֶף	11
8396	moustache	שָׂפָם	11
8397	marble	שַׁיִשׁ	11
8398	hesitation	היסוס	11
8399	daytime	שְׁעוֹת הַיוֹם	11
8400	shortage	מַחְסוֹר	11
8401	monthly	יַרחוֹן	11
8402	renew	לְחַדֵשׁ	11
8403	refund	הֶחזֵר	11
8404	deliberate	מְכוּוָן	11
8405	zipper	רוֹכְסָן	11
8406	rainy	גָשׁוּם	11
8407	overload	לְהַעֲמִיס יוֹתֵר מִדַי	11
8408	module	מודול	11
8409	merchant	סוֹחֵר	11
8410	leftover	שאריות	11
8411	textbook	ספר לימוד	11
8412	flour	קֶמַח	11
8413	ruler	שָׁלִיט	11
8414	currency	מַטְבֵּעַ	11
8415	wrinkle	קֶמֶט	11
8416	rust	חֲלוּדָה	11
8417	undoubtedly	בְּלִי סָפֵק	11
8418	timetable	לוּחַ זְמַנִים	11
8419	publisher	מוֹצִיא לָאוֹר	11
8420	penalty	עוֹנֶשׁ	11
8421	quid	לִירָה	11
8422	queue	תוֹר	11
8423	qualification	הַכשָׁרָה	11
8424	recognition	הַכָּרָה	11
8425	recommendation	הַמלָצָה	11
8426	reference	הַפנָיָה	11
8427	reflection	הִשׁתַקְפוּת	11
8428	refrigerator	מְקָרֵר	11
8429	regional	אֵזוֹרִי	11
8430	register	לִרְשׁוֹם	11
8431	registration 	הַרשָׁמָה	11
8432	regulation	תַקָנָה	11
8433	relatively	יַחֲסִית	11
8434	relevant	רלוונטי	11
8435	religious	דָתִי	11
8436	rely	לִסְמוֹך	11
8437	remaining	נוֹתָר	11
8438	remarkable	מדהים	11
8439	remote	מְרוּחָק	11
8440	replacement	תַחֲלִיף	11
8441	reply	תְגוּבָה	11
8442	representation	יִצוּג	11
8443	republic	רֶפּוּבּלִיקָה	11
8444	require	לִדרוֹשׁ	11
8445	requirement	דְרִישָׁה	11
8446	resident	תוֹשָׁב	11
8447	resign 	לְהִתְפַּטֵר	11
8448	resistance	הִתנַגְדוּת	11
8449	resolution	הַחְלָטָה	11
8450	resolve	לִפְתוֹר	11
8451	respectively	בהתאמה	11
8452	retain 	לִשְׁמוֹר	11
8453	retirement 	פְּרִישָׁה	11
8454	revenue	הַכנָסָה	11
8455	reverse	לַהֲפוֹך	11
8456	reward	גְמוּל	11
8457	rhythm	קֶצֶב	11
8458	ridiculous	מְגוּחָך	11
8459	rival 	לְהִתְחַרוֹת	11
8460	rope	חֶבֶל	11
8461	roughly	בְּעֵרֶך	11
8462	rubber	גוּמִי	11
8463	rubbish	שְׁטוּיוֹת	11
8464	rural 	כַּפרִי	11
8465	significance	מַשְׁמָעוּת	11
8466	significant	מַשְׁמָעוּתִי	11
8467	significantly	באופן משמעותי	11
8468	so-called	מה שנקרא	11
8469	software	תוֹכנָה	11
8470	solicitor	עוֹרֵך דִין	11
8471	sore	דַלֶקֶת	11
8472	southern	דְרוֹמִי	11
8473	specialist	מוּמחֶה	11
8474	species	מִין	11
8475	specify	לְפַרֵט	11
8476	spelling	אִיוּת	11
8477	spill	לִשְׁפּוֹך	11
8478	spiritual	רוּחָנִי	11
8479	spite	לְהַכעִיס	11
8480	spokesman	דוֹבֵר	11
8481	stall	דוּכָן	11
8482	stare	לִנְעוֹץ מַבָּט	11
8483	steep	תָלוּל	11
8484	straightforward	פָּשׁוּט	11
8485	strategic	אִסטרָטֵגִי	11
8486	strengthen	לְחַזֵק	11
8487	string	חוּט	11
8488	subsequent	לאחר מכן	11
8489	subsequently	לְאַחַר מִכֵּן	11
8490	suggestion	הַצָעָה	11
8491	surprisingly	לְהַפְלִיא	11
8492	sustain	לִתְמוֹך	11
8493	sweep	לְטַאטֵא	11
8494	technique	טֶכנִיקָה	11
8495	terrorist	מְחַבֵּל	11
8496	theme	נוֹשֵׂא	11
8497	theoretical 	תֵאוֹרֵטִי	11
8498	thus	כָּך	11
8499	tile	אָרִיחַ	11
8500	trailer 	גְרוֹר	11
8501	transform	לְשַׁנוֹת	11
8502	transition 	מַעֲבָר	11
8503	transportation	הוֹבָלָה	11
8504	tray 	מַגָשׁ	11
8505	tremendous	עָצוּם	11
8506	troop 	גְדוּד	11
8507	unemployment	אַבטָלָה	11
8508	vague	מְעוּרפָּל	11
8509	abnormal	לֹא נוֹרמָלִי	11
8510	absent	נֶעדָר	11
8511	abstract	תַקצִיר	11
8512	abundant	שׁוֹפֵעַ	11
8513	accessible	נָגִישׁ	11
8514	acute	חַד	11
8515	addicted	מָכוּר	11
8516	aesthetic	אֶסתֵטִי	11
8517	agile	זָרִיז	11
8518	ambiguous	דוּ מַשְׁמָעִי	11
8519	ambitious	שְׁאַפתָנִי	11
8520	ample	מַסְפִּיק	11
8521	anonymous	אֲנוֹנִימִי	11
8522	artificial	מְלָאכוּתִי	11
8523	artistic	אָמָנוּתִי	11
8524	assertive	תַקִיף	11
8525	astonishing	מַפתִיעַ	11
8526	automatic	אוֹטוֹמָטִי	11
8527	balanced	מְאוּזָן	11
8528	backyard	חצר אחורית	11
8529	baggage 	כְּבוּדָה	11
8530	ballet	בַּלֶט	11
8531	barbarian	בַּרבָּרִי	11
8532	barber	סַפָּר	11
8533	barefoot	יָחֵף	11
8534	bark	לִנְבּוּחַ	11
8535	bathe	לִרְחוֹץ	11
8536	beak 	מַקוֹר	11
8537	been	היה	11
8538	beginner	מַתחִיל	11
8539	beginning	רֵאשִׁית	11
8540	beige	בז'	11
8541	being	יְצוּר	11
8542	beneficial	מוֹעִיל	11
8543	biased	מְשׁוּחָד	11
8544	bikini	בִּיקִינִי	11
8545	billboard	שלט חוצות	11
8546	billiards	בִּילְיַארד	11
8547	bind	לִקְשׁוֹר	11
8548	biography	בִּיוֹגְרַפִיָה	11
8549	biology	ביולוגיה	11
8550	bishop	בִּישׁוֹף	11
8551	blackboard	לוח	11
8552	blend	תַעֲרוֹבֶת	11
8553	blossom	לִפְרוֹחַ	11
8554	blouse	חוּלצָה	11
8555	blown	מפוצץ	11
8556	blush	לְהַסמִיק	11
8557	bold	נוֹעָז	11
8558	boundary	גְבוּל	11
8559	brag	לְהִתְרַבְרֵב	11
8560	breadth	רוֹחַב	11
8561	breakup	פרידה	11
8562	breathe	לִנְשׁוֹם	11
8563	breed	גֶזַע	11
8564	breeze	רוּחַ	11
8565	bribery	שׁוֹחַד	11
8566	bronze	בְּרוֹנזָה	11
8567	browse	לְדַפדֵף	11
8568	bruise	חַבּוּרָה	11
8569	buffet	מִזנוֹן	11
8570	bumper	פָּגוֹשׁ	11
8571	bundle	עָנִיץ	11
8572	bureaucracy	בִּירוֹקרַטִיָה	11
8573	burglar	פּוֹרֵץ	11
8574	burp	לְגַהֵק	11
8575	cab	מוֹנִית	11
8576	cabbage	כְּרוּב	11
8577	calculation	תַחשִׁיב	11
8578	calculator	מַחשְׁבוֹן	11
8579	calf	עֵגֶל	11
8580	calligraphy	כְּתִיבָה יָפָה	11
8581	calorie 	קָלוֹרִיָה	11
8582	camel	גָמָל	11
8583	camouflage	לְהַסווֹת	11
8584	canal	תְעָלָה	11
8585	cane	קָנֶה	11
8586	cannon	תוֹתָח	11
8587	canyon	קֶנִיוֹן	11
8588	cape	כַּף	11
8589	caption	כּוֹתֶרֶת	11
8590	carbon	פַּחמָן	11
8591	cardboard	קַרטוֹן	11
8592	careless 	רַשְׁלָנִי	11
8593	cargo	מִטְעָן	11
8594	carpenter	נַגָר	11
8595	carriage	עֲגָלָה	11
8596	carry on	לְהַמשִׁיך	11
8597	carsick	חולה מכוניות	11
8598	cartoon	קָרִיקָטוּרָה	11
8599	cashier	קוּפַּאִי	11
8600	cassette	קַלֶטֶת	11
8601	casualty	נִפגָע	11
8602	cattle	בָּקָר	11
8603	caught	נתפס	11
8604	caution	זְהִירוּת	11
8605	cautious	זָהִיר	11
8606	cellar	מַרְתֵף	11
8607	Celsius	צֶלסִיוּס	11
8608	censor	צֶנזוֹר	11
8609	centigrade	מַעֲלוֹת צֶלסִיוּס	11
8610	chalk	גִיר	11
8611	characterize	לאפיין	11
8612	chilly	קָרִיר	11
8613	chimney	אֲרוּבָּה	11
8614	chore	עֲבוֹדָה שִׁגרָתִית	11
8615	circuit 	מַעְגָל	11
8616	civilian	אֶזרָחִי	11
8617	civilization	תַרְבּוּת	11
8618	civilize	לְתַרְבֵּת	11
8619	clap	לִטפּוֹחַ	11
8620	clarify	לְהַבהִיר	11
8621	clash	הִתנַגְשׁוּת	11
8622	classical	קלַאסִי	11
8623	classify	לסווג	11
8624	classmate	חבר לכיתה	11
8625	clause	סָעִיף	11
8626	cleaner	מְנַקֶה	11
8627	clockwise	עם כיוון השעון	11
8628	clinical	קלינית	11
8629	cloudy	מְעוּנָן	11
8630	clumsy	מְגוּשָׁם	11
8631	coalition	קוֹאָלִיצִיָה	11
8632	coastline	קו החוף	11
8633	cocoa	קָקָאוֹ	11
8634	coconut	קוֹקוּס	11
8635	coercive	כפייה	11
8636	cogent	מְשַׁכנֵעַ	11
8637	coherence	לְכִידוּת	11
8638	coherent	קוהרנטי	11
8639	coincident	מקריות	11
8640	colloquial	דִבּוּרִי	11
8641	colonel 	קוֹלוֹנֶל	11
8642	colonialism	קולוניאליזם	11
8643	colonist	מִתיַשֵׁב	11
8644	colony	מוֹשָׁבָה	11
8645	colourful	צִבעוֹנִי	11
8646	columnist 	מְדוֹרַאי	11
8647	comb	מַסרֵק	11
8648	comma 	פְּסִיק	11
8649	command	פְּקוּדָה	11
8650	commentary	פַּרשָׁנוּת	11
8651	commerce	מִסְחָר	11
8652	commodity 	סְחוֹרָה	11
8653	companion	לוויה	11
8654	compass	מַצְפֵּן	11
8655	Gemini	מַזַל תְאוּמִים	11
8656	kin	מִשׁפָּחָה	11
8657	scammer	רמאי	11
8658	debut 	הוֹפָעָה רִאשׁוֹנָה	11
8659	decoy 	לִפתוֹת	11
8660	decrease 	לְהַקְטִין	11
8661	deduct	לְנַכּוֹת	11
8662	defective	פָּגוּם	11
8663	dehydrated	מְיוֹבָּשׁ	11
8664	delegate	נָצִיג	11
8665	delinquent 	עבריין	11
8666	dependable	מְהֵימָן	11
8667	descend	לָרֶדֶת	11
8668	descendent	צאצא	11
8669	detest	לְתַעֵב	11
8670	diagnose	לְאַבחֵן	11
8671	diameter	קוֹטֶר	11
8672	disadvantage	חִסָרוֹן	11
8673	does	עושה	11
8674	educate	לְחַנֵך	11
8675	eject	לִפְלוֹט	11
8676	enforce	לֶאֱכוֹף	11
8677	enlarge	לְהַגדִיל	11
8678	enquiry	חֲקִירָה	11
8679	entrepreneur	יַזָם	11
8680	eraser	מַחַק	11
8681	erosion	שְׁחִיקָה	11
8682	erupt	לְהִתְפַּרֵץ	11
8683	eruption	הִתפָּרְצוּת	11
8684	etc.	וכו'	11
8685	ethnic	אֶתנִי	11
8686	evaluate 	לְהַעֲרִיך	11
8687	exaggerate	לְהַגזִים	11
8688	exceed 	לַחרוֹג	11
8689	excite	לְרַגֵשׁ	11
8690	exclaim	לזעוק	11
8691	exclude	לא לכלול	11
8692	exhibit 	לְהַצִיג	11
8693	exhibition	תַעֲרוּכָה	11
8694	exile	גָלוּת	11
8695	expansion	הַרחָבָה	11
8696	expedition 	מִשׁלַחַת	11
8697	expel	לְגַרֵשׁ	11
8698	export	יְצוּא	11
8699	external 	חִיצוֹנִי	11
8700	eyebrow 	גַבָּה	11
8701	eyelash	רִיס	11
8702	faraway	רחוק	11
8703	fatality	מִקרֶה מָוֶת	11
8704	fatigue	עייפות	11
8705	favourable	חִיוּבִי	11
8706	fearful	חוֹשֵׁשׁ	11
8707	February 	פֶבּרוּאָר	11
8708	fertile	פּוֹרֶה	11
8709	fibber	סיבים	11
8710	fiscal	פִיסקָלִי	11
8711	fitness	הַתאָמָה	11
8712	famine	רָעָב	11
8713	flinch	לְהֵרָתַע	11
8714	fluctuate	תנודות	11
8715	fluent	שׁוֹטֵף	11
8716	font	גוֹפָן	11
8717	forecast	תַחֲזִית	11
8718	foreigner	זָר	11
8719	format	פוּרמָט	11
8720	fossil 	מְאוּבָּן	11
8721	fraction	חֵלֶק	11
8722	fragrance	נִיחוֹחַ	11
8723	framework	מִסגֶרֶת	11
8724	furnish 	לְרַהֵט	11
8725	gadget	מַכשִׁיר	11
8726	gangster 	גַנגְסְטֶר	11
8727	garment 	בֶּגֶד	11
8728	garnish	לְקַשֵׁט	11
8729	gasp 	לְהִתְנַשֵׁף	11
8730	gave	נתן	11
8731	gaze	מַבָּט	11
8732	gel	לְהַגלִיד	11
8733	generalization	הַכלָלָה	11
8734	generalize	לְהַכלִיל	11
8735	generic	כְּלָלִי	11
8736	geography	גֵאוֹגרַפיָה	11
8737	geometry	גֵאוֹמֶטרִיָה	11
8738	giggle	צִחקוּק	11
8739	given	נָתוּן	11
8740	glacier	קַרחוֹן	11
8741	gloomy	קוֹדֵר	11
8742	glory	תִפאֶרֶת	11
8743	graceful	מְעוּדָן	11
8744	gradual	הַדרָגָתִי	11
8745	graphics	גרָפִיקָה	11
8746	groan	אֲנָקָה	11
8747	grocer	בַּעַל מַכּוֹלֶת	11
8748	habitat	בית גידול	11
8749	habitual 	רָגִיל	11
8750	handkerchief 	מִמחָטָה	11
8751	hardy	עמיד	11
8752	harmful	מַזִיק	11
8753	has	יש	11
8754	hassle	טִרחָה	11
8755	haste	מְהִירוּת	11
8756	hereditary	תוֹרַשְׁתִי	11
8757	hierarchy	הִיֵרַרכִיָה	11
8758	hinder	לְעַכֵּב	11
8759	horizontal	אופקי	11
8760	horoscope 	הוֹרוֹסקוֹפּ	11
8761	horseback	גב סוס	11
8762	housewife	עֲקֶרֶת הַבַּיִת	11
8763	humidity	לַחוּת	11
8764	humorous	מַצחִיק	11
8765	hut 	צְרִיף	11
8766	hydrogen	מֵימָן	11
8767	hypnotize	לְהַפּנֵט	11
8768	idiom	נִיב	11
8769	ignorant	בּוּר	11
8770	illiterate	בּוּר	11
8771	illogical	לֹא הֶגיוֹנִי	11
8772	illustration	אִיוּר	11
8773	imitate	לְחַקוֹת	11
8774	immigrant	מְהַגֵר	11
8775	immigrate	לְהַגֵר	11
8776	immune 	חֲסִין	11
8777	impartial 	אוֹבּיֶקְטִיבִי	11
8778	impolite	לֹא מְנוּמָס	11
8779	income tax	מַס הַכנָסָה	11
8780	incomplete	לֹא שָׁלֵם	11
8781	indirect 	עָקִיף	11
8782	indoor 	בתוך הבית	11
8783	informal	לֹא פוֹרמָלִי	11
8784	inhabitant	תוֹשָׁב	11
8785	inhale	לִשְׁאוֹף	11
8786	inland	פְּנִים הָאָרֶץ	11
8787	insert	לְהַכנִיס	11
8788	inspection 	בְּדִיקָה	11
8789	insure	לְהַבטִיחַ	11
8790	integration	הִשׁתַלְבוּת	11
8791	interested	מתעניינים	11
8792	intermediate	ביניים	11
8793	internet	לַאִינטֶרנֶט	11
8794	intersection	הִצטַלְבוּת	11
8795	interval	הַפסָקָה	11
8796	invention	הַמצָאָה	11
8797	inward	כְּלַפֵּי פְּנִים	11
8798	irritate	לְגָרוֹת	11
8799	isolate	לְבוּדֵד	11
8800	its	שֶׁלָה	11
8801	ivory 	שֶׁנהָב	11
8802	kneel	לִכרוֹעַ בֶּרֶך	11
8803	knit 	לִסְרוֹג	11
8804	known	יָדוּעַ	11
8805	landscape	נוֹף	11
8806	latitude	רוֹחַב	11
8807	latter	אַחֲרוֹן	11
8808	legislation	חֲקִיקָה	11
8809	lily	שׁוֹשָׁן	11
8810	lint	מוֹך	11
8811	literary	סִפְרוּתִי	11
8812	locally	באופן מקומי	11
8813	loitering	שוטטות	11
8814	longitude	קו אורך	11
8815	lottery 	הַגרָלָה	11
8816	lumber	עֵץ	11
8817	lying	שֶׁקֶר	11
8818	lyrics	מילות השיר	11
8819	machinery	מְכוֹנוֹת	11
8820	made-up 	מאופרת	11
8821	magnitude	גוֹדֶל	11
8822	manufacture	יִצוּר	11
8823	manufacturer 	יַצרָן	11
8824	March	מַרס	11
8825	married	נָשׂוּי	11
8826	mathematics	מָתֵימָטִיקָה	11
8827	May	מַאִי	11
8828	meadow	אָחוּ	11
8829	means	אֶמְצָעִי	11
8830	measurement 	מְדִידָה	11
8831	melody	מַנגִינָה	11
8832	metric	מֶטרִי	11
8833	metropolitan	עִירוֹנִי	11
8834	midday	צָהֳרַיִים	11
8835	midterm 	אמצע טווח	11
8836	mineral 	מִינֵרָלִי	11
8837	minimal 	מִינִימָלִי	11
8838	missing 	חָסֵר	11
8839	misunderstand 	לא מבינים	11
8840	moderate	לְמַתֵן	11
8841	modify	לְשַׁנוֹת	11
8842	moist	לַח	11
8843	moisture	לַחוּת	11
8844	mould	עוֹבֶשׁ	11
8845	molecule	מולקולה	11
8846	monument	אַנדַרטָה	11
8847	monopoly 	מוֹנוֹפּוֹל	11
8848	mosquito	יַתוּשׁ	11
8849	nationality	אֶזרָחוּת	11
8850	necessity	כּוֹרַח	11
8851	neglect	הַזנָחָה	11
8852	nonfiction	ספרי עיון	11
8853	numb 	חֲסַר תְחוּשָׁה	11
8854	numeral	סִפְרָה	11
8855	nutrition	תְזוּנָה	11
8856	obedient 	מְמוּשׁמָע	11
8857	obese	שָׁמֵן מְאֹד	11
8858	obituary	הוֹדָעָה עַל פְּטִירָה	11
8859	oblige	לחייב	11
8860	oily	שַמנוּנִי	11
8861	old-fashioned 	מְיוּשָׁן	11
8862	Olympics	אולימפיאדה	11
8863	omelette	חֲבִיתָה	11
8864	omit	לְהַשְׁמִיט	11
8865	oneself	עַצמוֹ	11
8866	onto 	עַל גַבֵּי	11
8867	optional 	אופציונלי	11
8868	opt	לִבחוֹר	11
8869	orthodox	אוֹרתוֹדוֹקסִי	11
8870	ours	שֶׁלָנוּ	11
8871	outdoors 	בָּחוּץ	11
8872	outgoing	יוֹצֵא	11
8873	outline	מִתְאָר	11
8874	outlook	הַשׁקָפָה	11
8875	outspoken 	גָלוּי לֵב	11
8876	outward	הַחוּצָה	11
8877	overdo	לְהַגזִים	11
8878	overdone 	מוּפרָז	11
8879	overestimate	הערכת יתר	11
8880	overflow	גְלִישָׁה	11
8881	overtake	לַעֲקוֹף	11
8882	overwhelm	לְהַצִיף	11
8883	overwork	לַעֲבוֹד יֶתֶר עַל הַמִידָה	11
8884	ox	שׁוֹר	11
8885	paid	שילם	11
8886	pail	דְלִי	11
8887	pajamas	פִּיגָ'מָה	11
8888	panel 	לוּחַ	11
8889	parrot	תוּכִּי	11
8890	part-time 	במשרה חלקית	11
8891	participant	מִשׁתַתֵף	11
8892	participation	הִשׁתַתְפוּת	11
8893	particle	חֶלְקִיק	11
8894	paste	לְהַדבִּיק	11
8895	patent	פָּטֶנט	11
8896	pedestrian	הוֹלֵך רֶגֶל	11
8897	peer	לְהָצִיץ	11
8898	peninsula	חֲצִי אִי	11
8899	perpendicular	אֲנָכִי	11
8900	persist	לְהַתְמִיד	11
8901	pessimistic	פֶּסִימִי	11
8902	pianist	פְּסַנְתְרָן	11
8903	plantation	מַטָע	11
8904	plural 	רַבִּים	11
8905	popularity 	פּוֹפּוּלָרִיוּת	11
8906	postage	דְמֵי מִשׁלוֹחַ	11
8907	postman	דוור	11
8908	pram	סִירָה קטָנָה	11
8909	precede	לְהַקְדִים	11
8910	precedent	תַקדִים	11
8911	pronunciation	מִבטָא	11
8912	prospect 	פרוספקט	11
8913	punctual 	דייקן	11
8914	racism	גִזעָנוּת	11
8915	radiation 	קְרִינָה	11
8916	reasonably	באופן סביר	11
8917	recycle	לְמַחְזֵר	11
8918	redundancy	עוֹדֶף	11
8919	refreshment	רִעֲנוּן	11
8920	remedy	תְרוּפָה	11
8921	removal	הֲסָרָה	11
8922	renovate	לְשַׁפֵּץ	11
8923	respectful 	רוֹחֵשׁ כָּבוֹד	11
8924	restless 	חֲסַר מְנוּחָה	11
8925	resume	קוֹרוֹת חַיִים	11
8926	rigid	קָשִׁיחַ	11
8927	rinse	לִשְׁטוֹף	11
8928	yield	תְשׁוּאָה	11
8929	weep 	לִבכּוֹת	11
8930	went	הלך	11
8931	whale 	לִויָתָן	11
8932	widen	לְהַרְחִיב	11
8933	width	רוֹחַב	11
8934	windy	מְנוּפָּח	11
8935	wink 	קְרִיצָה	11
8936	worship 	פּוּלחָן	11
8937	vacancy	חֶדֶר פָּנוּי	11
8938	variable	מִשְׁתַנֶה	11
8939	vat	חָבִית	11
8940	vein 	וָרִיד	11
8941	verb	פּוֹעַל	11
8942	vertical	אֲנָכִי	11
8943	veteran	וָתִיק	11
8944	viewpoint	נְקוּדַת מַבָּט	11
8945	vinegar	חוֹמֶץ	11
8946	vocational 	מִקצוֹעִי	11
8947	vowel	תְנוּעָה	11
8948	voyage 	מַסָע	11
8949	underline	לָשִׂים דָגֵשׁ	11
8950	uneasy	לֹא נוֹחַ	11
8951	unite	לְהִתְאַחֵד	11
8952	unity 	אַחְדוּת	11
8953	unlucky 	בִּישׁ מַזָל	11
8954	upright	זָקוּף	11
8955	upward	כְּלַפֵּי מַעְלָה	11
8956	utility 	תוֹעֶלֶת	11
8957	tame	מְאוּלָף	11
8958	telegraph	טֵלֶגרָף	11
8959	tentative	זְמַנִי	11
8960	texture	מִרקָם	11
8961	thermometer	מַד חוֹם	11
8962	thesaurus	אוֹצָר מִילִים	11
8963	thread 	פְּתִיל	11
8964	tights	גַרבִּיוֹנִים	11
8965	timber	עֵץ	11
8966	tolerate 	לִסְבּוֹל	11
8967	toward	לִקרַאת	11
8968	translation 	תִרגוּם	11
8969	transparent 	שָׁקוּף	11
8970	treaty 	אֲמָנָה	11
8971	tremble	לִרְעוֹד	11
8972	tropical 	טְרוֹפִּי	11
8973	tulip	צִבעוֹנִי	11
8974	said	אמר	11
8975	sank 	שקע	11
8976	satisfactory	מַשׂבִּיעַ רָצוֹן	11
8977	saucer	צַלַחַת	11
8978	sauna 	סָאוּנָה	11
8979	saw	מַסוֹר	11
8980	scarlet	אָדוֹם	11
8981	scholar	מְלוּמָד	11
8982	scissors	מִספָּרַיִם	11
8983	scold	לִנְזוֹף	11
8984	scramble	לִטרוֹף	11
8985	scrape 	לְגַרֵד	11
8986	seafood	פֵּירוֹת יָם	11
8987	seaside	חוֹף הַיָם	11
8988	selective 	סֶלֶקטִיבִי	11
8989	sensual	חוּשָׁנִי	11
8990	shilling	שִׁילִינג	11
8991	sideways	הַצִידָה	11
8992	simultaneous	סִימוּלטָנִי	11
8993	singular 	יָחִיד	11
8994	skeleton	שֶׁלֶד	11
8995	skyscraper	גוֹרֵד שְׁחָקִים	11
8996	slang	סְלֶנְג	11
8997	sieve	לְנַפּוֹת	11
8998	sled 	מִזחֶלֶת	11
8999	slender	רָזֶה	11
9000	softly	ברכות	11
9001	solemn	חֲגִיגִי	11
9002	sprinkle	קוֹרֶט	11
9003	squirrel 	סְנָאִי	11
9004	stationery	מַכשִׁירֵי כְּתִיבָה	11
9005	stimulate	לְעוֹרֵר	11
9006	comprehend	לִהַבִין	11
9007	comprehensive	מַקִיף	11
9008	compute	לְחַשֵׁב	11
9009	consist 	לְהַכִיל	11
9010	construct 	לִבנוֹת	11
9011	consultation 	יִעוּץ	11
9012	cucumber	מְלָפְפוֹן	11
9013	cuisine 	מִטְבָּח	11
9014	subscribe	להירשם	11
9015	accelerate	לְהַאִיץ	11
9016	advertise	לְפַרְסֵם	11
9017	wallpaper	טָפֵּט	11
9018	waterfall	מַפַּל מַיִם	11
9019	attain	לְהַשִׂיג	11
9020	avail	לְהוֹעִיל	11
9021	boast	לְהִתְפַּאֵר	11
9022	confectionery	מַמתָקִים	11
9023	dazzle	לְסַמֵא	11
9024	debris	מַפּוֹלֶת	11
9025	deteriorate	לְהִתְדַרְדֵר	11
9026	dexterity	מְיוּמָנוּת	11
9027	dining-room	חדר אוכל	11
9028	disclose	לְגַלוֹת	11
9029	disobedience	מְרִי	11
9030	dispel	לְפַזֵר	11
9031	earphones	אוזניות	11
9032	extinguish	לְכַבּוֹת	11
9033	eyeshadow	צללית	11
9034	fir	אַשׁוּחַ	11
9035	heaviness	כְּבֵדוּת	11
9036	hemisphere	חֲצִי כַּדוּר	11
9037	herald	לְבַשֵׂר	11
9038	hoarse	צָרוּד	11
9039	hospitable	מַכנִיס אוֹרְחִים	11
9040	hyphen	מַקָף	11
9041	hypocrisy	צְבִיעוּת	11
9042	ignition	הַצָתָה	11
9043	incite	לְהַסִית	11
9044	inclose	לכלול	11
9045	incorrect	לֹא נָכוֹן	11
9046	instruct	לְהוֹרוֹת	11
9047	integral	אִינְטֵגְרָלִי	11
9048	intestine	מְעִי	11
9049	invoice	חֶשׁבּוֹנִית	11
9050	jug	פַּך	11
9051	junction	צוֹמֶת	11
9052	lard	שׁוּמָן	11
9053	lavish	לְפַזֵר	11
9054	laziness	עַצלוּת	11
9055	lever	מָנוֹף	11
9056	libel	עֲלִילָה	11
9057	lyrical	לִירִי	11
9058	malice	זָדוֹן	11
9059	mammal	יוֹנֵק	11
9060	marmalade	מַרמֵלָדָה	11
9061	merge	לְמַזֵג	11
9062	miser	קַמצָן	11
9063	mistrust	חוֹסֶר אֵמוּן	11
9064	monarchy	מוֹנַרכִיָה	11
9065	muse	מוּזָה	11
9066	mute	לְהַשְׁתִיק	11
9067	narrative	נרטיב	11
9068	nostril	נָחִיר	11
9069	notorious	יָדוּעַ לְשִׁמצָה	11
9070	nought	אֶפֶס	11
9071	nourish	לְהַזִין	11
9072	oblivion	שִׁכחָה	11
9073	obscure	מְעוּרפָּל	11
9074	ointment	מִשְׁחָה	11
9075	omission	הַשׁמָטָה	11
9076	orchard	פַּרדֵס	11
9077	owing	בשל	11
9078	pamper	לְפַנֵק	11
9079	parsley	פטרוזיליה	11
9080	pastime	שַׁעֲשׁוּעַ	11
9081	pat	טְפִיחָה	11
9082	patron	פַּטרוֹן	11
9083	pavement	מִדרָכָה	11
9084	peasant	אִכָּר	11
9085	plausible	מִתקָבֵּל עַל הַדַעַת	11
9086	predatory	דורסני	11
9087	predominant	מִשׁתַלֵט	11
9088	proficient	מְיוּמָן	11
9089	proverb	פִּתגָם	11
9090	repel	לַהֲדוֹף	11
9091	reside	לִשְׁכּוֹן	11
9092	ridicule	לַעַג	11
9093	rigorous	קַפְּדָנִי	11
9094	robust	חָסוֹן	11
9095	seaweed	אַצָה	11
9096	semicolon	נְקוּדָה וּפְסִיק	11
9097	situated	מְמוּקָם	11
9098	skier	גוֹלֵשׁ	11
9099	slum	שְׁכוּנַת עוֹנִי	11
9100	smith	נַפָּח	11
9101	snail	שַׁבְּלוּל	11
9102	superb	מְצוּיָן	11
9103	surname	שֵׁם מִשׁפָּחָה	11
9104	yearly	שְׁנָתִי	11
9105	witch	מְכַשֵׁפָה	11
9106	charges	חיובים	11
9107	smoke	עָשָׁן	11
9108	according	לפי	11
9109	bob	שִׁילִינג	11
9110	lieutenant	סֶגֶן	11
9111	breathing	נְשִׁימָה	11
9112	disappointed	מְאוּכזָב	11
9113	rip	לִקְרוֹעַ	11
9114	begging	פְּשִׁיטַת יָד	11
9115	yourselves	עַצמְכֶם	11
9116	baseball	כַּדוּר בָּסִיס	11
9117	testify	לְהַעִיד	11
9118	coma	תִרדֶמֶת	11
9119	mansion	אַרְמוֹן	11
9120	personality	אִישִׁיוּת	11
9121	commander	מְפַקֵד	11
9122	buzz	זִמזוּם	11
9123	surveillance	הַשׁגָחָה	11
9124	woo	לְחַזֵר אַחֲרֵי	11
9125	penthouse	פֶּנטהָאוּז	11
9126	sneaking	מתגנב	11
9127	constable	שׁוֹטֵר	11
9128	feeding	הַאֲכָלָה	11
9129	courtroom	אולם בית המשפט	11
9130	reverend	כּוֹמֶר	11
9131	enchantment	קֶסֶם	11
9132	drunken	שיכור	11
9133	bullying	הַצָקָה	11
9134	weasel	סַמוּר	11
9135	supreme	עֶלִיוֹן	11
9136	maker	יַצרָן	11
9137	haunted	רָדוּף רוּחוֹת	11
9138	footage	מִדָה	11
9139	bogus	מְזוּיָף	11
9140	autograph	חֲתִימָה	11
9141	spontaneous	ספּוֹנטָנִי	11
9142	probation	מִבְחָן	11
9143	identical	זֵהֶה	11
9144	fist	אֶגְרוֹף	11
9145	cooler	מְצַנֵן	11
9146	banner	דֶגֶל	11
9147	streak	פַּס	11
9148	spectacular	מַרהִיב	11
9149	sector	מִגזָר	11
9150	heroin	הֵרוֹאִין	11
9151	having	שיש	11
9152	fisher	פישר	11
9153	encouraging	מְעוֹדֵד	11
9154	cult	פּוּלחָן	11
9155	consult	לְהִתְיַעֵץ	11
9156	bailed	ערבות	11
9157	association	אִרגוּן	11
9158	rag	סְמַרטוּט	11
9159	maniac	מְטוּרָף	11
9160	impulse	דַחַף	11
9161	duchess	דוּכָּסִית	11
9162	classy	קלאסי	11
9163	charging	טְעִינָה	11
9164	rising	עוֹלֶה	11
9165	hypocrite	צָבוּעַ	11
9166	humiliate	לְהַשְׁפִּיל	11
9167	hideous	מְכוֹעָר	11
9168	captured	נלכד	11
9169	bolt	בְּרִיחַ	11
9170	betting	הִתעָרְבוּת	11
9171	spreading	פְּרִיסָה	11
9172	ransom	כּוֹפֶר	11
9173	Jew	יְהוּדִי	11
9174	intent	מְרוּכָּז	11
9175	gladly	בשמחה	11
9176	fling	לְהַשְׁלִיך	11
9177	eliminate	לְחַסֵל	11
9178	disorder	הפרעה	11
9179	chancellor	נָגִיד	11
9180	subway	רַכֶּבֶת תַחְתִית	11
9181	republican	רֶפּוּבּלִיקָנִי	11
9182	paralyzed	מְשׁוּתָק	11
9183	dental	שיניים	11
9184	corporation	תַאֲגִיד	11
9185	cherish	לְהוֹקִיר	11
9186	briefing	תִדרוּך	11
9187	bluff	בְּלוֹף	11
9188	gin	ג'ִין	11
9189	gale	סְעָרָה	11
9190	fainted	התעלף	11
9191	dried	מְיוֹבָּשׁ	11
9192	allright	בסדר	11
9193	acknowledge	לְהוֹדוֹת	11
9194	whiskey	וִיסקִי	11
9195	toxic	רַעִיל	11
9196	skating	הַחלָקָה	11
9197	reliable	אָמִין	11
9198	quicker	מהיר יותר	11
9199	overturn	לְהַפִּיל	11
9200	lining	בִּטנָה	11
9201	harassing	הַטרָדָה	11
9202	endless	אֵין סוֹף	11
9203	convict	אָסִיר	11
9204	butler	שַׂר הָמַשׁקִים	11
9205	rusty	חָלוּד	11
9206	positively	באופן חיובי	11
9207	mount	הַר	11
9208	manual	יָדָנִי	11
9209	helmet	קַסדָה	11
9210	failing	כָּשֵׁל	11
9211	essence	מַהוּת	11
9212	dose	מָנָה	11
9213	bully	בִּריוֹן	11
9214	airline	חֶברַת תְעוּפָה	11
9215	hooligan	חוּלִיגָן	11
9216	rig	לְבוּשׁ	11
9217	pursuit	מִרדָף	11
9218	greedy	חַמדָן	11
9219	spine	עַמוּד הַשִׁדרָה	11
9220	shotgun	רוֹבֵה צַיִד	11
9221	reckless	לֹא זָהִיר	11
9222	rash	פְּרִיחָה	11
9223	railroad	מסילת ברזל	11
9224	psychiatric	פסיכיאטרי	11
9225	meaningless	חֲסַר מַשְׁמָעוּת	11
9226	fiancé	אָרוּס	11
9227	exposure	חשיפה	11
9228	evidently	בָּרוּר	11
9229	contempt	בּוּז	11
9230	theft	גְנֵבָה	11
9231	shipment	מִשׁלוֹחַ	11
9232	scissor	מספריים	11
9233	proposition	הַצָעָה	11
9234	porter	פּוֹרטֶר	11
9235	matching	תוֹאֵם	11
9236	marine	יַמִי	11
9237	legacy	מוֹרֶשֶׁת	11
9238	ink	דְיוֹ	11
9239	hormone	הוֹרמוֹן	11
9240	hail	בָּרָד	11
9241	godfather	סַנדָק	11
9242	gently	בְּעֲדִינוּת	11
9243	establish	לְהַקִים	11
9244	worldwide	עוֹלָמִי	11
9245	sexually	מבחינה מינית	11
9246	nicest	הכי נחמד	11
9247	jaw	לֶסֶת	11
9248	intern	מתמחה	11
9249	handcuff	לִכבּוֹל	11
9250	franchise	זִכָּיוֹן	11
9251	errand	שְׁלִיחוּת	11
9252	entertaining	מְשַׁעַשֵׁעַ	11
9253	crib	עֲרִיסָה	11
9254	barge	דוֹבְרָה	11
9255	attending	משתתפים	11
9256	ambassador	שַׁגְרִיר	11
9257	rating	דֵרוּג	11
9258	float	לָצוּף	11
9259	embrace	לְחַבֵּק	11
9260	whining	מתבכיין	11
9261	turner	חָרָט	11
9262	receiver	מַקְלֵט	11
9263	pep	זְרִיזוּת	11
9264	olive	זַיִת	11
9265	jeep	ג'ִיפּ	11
9266	cheerleader	מעודדת	11
9267	balm	צֳרִי	11
9268	unnecessary	מְיוּתָר	11
9269	stunning	מַדְהִים	11
9270	shipping	מִשׁלוֹחַ	11
9271	quest	לַחקוֹר	11
9272	luxury	מוּתָרוּת	11
9273	loosen	לְשַׁחְרֵר	11
9274	info	מידע	11
9275	hum	זִמזוּם	11
9276	haunt	לִרְדוֹף	11
9277	gracious	אָדִיב	11
9278	forgiving	סַלחָנִי	11
9279	emperor	קֵיסָר	11
9280	abortion	הַפָּלָה	11
9281	physician	רוֹפֵא	11
9282	perimeter	היקף	11
9283	passage	מַעֲבָר	11
9284	pal	יָדִיד	11
9285	longest	הארוך ביותר	11
9286	Jews	יהודים	11
9287	interference	הַפרָעָה	11
9288	grease	גְרִיז	11
9289	eyewitness	עֵד רְאָיָה	11
9290	enthusiasm	הִתלַהֲבוּת	11
9291	strongest	הכי חזק	11
9292	shaken	מְזוּעזָע	11
9293	portal	שַׁעַר	11
9294	jewel	תַכשִׁיט	11
9295	concrete	בֵּטוֹן	11
9296	bearing	מֵסַב	11
9297	sabotage	חַבָּלָה	11
9298	pea	אֲפוּנָה	11
9299	needy	נִזקָק	11
9300	mentor	מנטור	11
9301	listed	ברשימה	11
9302	cuff	יָדָה	11
9303	yummy	טָעִים מְאוֹד	11
9304	woof	ווף	11
9305	valid	תָקֵף	11
9306	prank	מַעֲשֵׂה קוּנדֵס	11
9307	performing	מְבַצֵעַ	11
9308	obnoxious	מְגוּנֶה	11
9309	hereby	בְּזֹאת	11
9310	void	בָּטֵל	11
9311	strangle	לַחֲנוֹק	11
9312	senate	סֵנָט	11
9313	fiction	פִיקצִיָה	11
9314	exotic	אֶקזוֹטִי	11
9315	demonic	שֵׁדִי	11
9316	coloured	צבעוני	11
9317	clearing	קָרְחַת יַעַר	11
9318	brook	נַחַל	11
9319	boutique	בוטיק	11
9320	terrace	מִרפֶּסֶת	11
9321	skiing	סקִי	11
9322	righty	נכון	11
9323	quack	לְגַעגֵעַ	11
9324	preliminary	מַקדִים	11
9325	petty	קַטנוּנִי	11
9326	pact	בְּרִית	11
9327	knot	קֶשֶׁר	11
9328	ketchup	קֶטשׁוֹפּ	11
9329	assist	לַעֲזוֹר	11
9330	violet	סָגוֹל	11
9331	uptight	עַצבָּנִי	11
9332	terrifying	מפחיד	11
9333	swamp	לְהַצִיף	11
9334	secretly	בְּסֵתֶר	11
9335	rejection	דְחִיָה	11
9336	mentally	מבחינה נפשית	11
9337	jurisdiction	סמכות שיפוט	11
9338	deception	הוֹנָאָה	11
9339	crucial	מַכרִיעַ	11
9340	cheesy	גְבִינִי	11
9341	arrival	הַגָעָה	11
9342	supporting	תומך	11
9343	scoop	סְקוּפּ	11
9344	ribbon	סֶרֶט	11
9345	raid	לִפְשׁוֹט	11
9346	hay	חָצִיר	11
9347	Easter	פַּסחָא	11
9348	destined	מְיוּעָד	11
9349	constitution	חוּקָה	11
9350	boob	טֶמבֶּל	11
9351	appreciation	הוֹקָרָה	11
9352	accomplice	שׁוּתָף	11
9353	sewer	בִּיב	11
9354	scroll	גְלִילָה	11
9355	fugitive	נִמלָט	11
9356	cranky	עצבני	11
9357	bodyguard	שׁוֹמֵר רֹאשׁ	11
9358	accountant	חֶשׁבּוֹנַאי	11
9359	whoop	אוף	11
9360	remotely	מרחוק	11
9361	protocol	פּרוֹטוֹקוֹל	11
9362	nickel	נִיקֵל	11
9363	foreman	מְנַהֵל עֲבוֹדָה	11
9364	decency	הֲגִינוּת	11
9365	cord	חוּט	11
9366	beam	קֶרֶן	11
9367	altogether	לְגַמרֵי	11
9368	squash	סקווֹשׁ	11
9369	rank	דַרגָה	11
9370	ought	צריך	11
9371	lung	ריאה	11
9372	largest	הגדול ביותר	11
9373	enforcement	אַכִיפָה	11
9374	encumbrance	מַעֲמָסָה	11
9375	donation	תְרוּמָה	11
9376	curb	לְרַסֵן	11
9377	continued	נִמשָׁך	11
9378	competitive	תַחֲרוּתִי	11
9379	businessman	אִישׁ עַסָקִים	11
9380	antique	עָתִיק	11
9381	advertising	פִּרסוּם	11
9382	ads	מודעות	11
9383	toothbrush	מִברֶשֶׁת שִׁנַיִם	11
9384	retreat	לָסֶגֶת	11
9385	panties	תחתונים	11
9386	lust	תְשׁוּקָה	11
9387	hourglass	שָׁעוֹן חוֹל	11
9388	equally	באותה מידה	11
9389	consolation	נֶחָמָה	11
9390	babble	פִּטפּוּט	11
9391	stranded	נָטוּשׁ	11
9392	payslips	תלושי שכר	11
9393	overreact	להגזים בתגובה	11
9394	freshen	לְהִתְרַעֲנֵן	11
9395	drake	דרייק	11
9396	disposal	רְשׁוּת	11
9397	caffeine	קָפֵאִין	11
9398	broom	מְטַאטֵא	11
9399	unfinished	לא גמור	11
9400	tasty	טָעִים	11
9401	syndrome	תִסמוֹנֶת	11
9402	stack	לַעֲרוֹם	11
9403	pinch	קַמצוּץ	11
9404	isolated	מְבוּדָד	11
9405	flatten	לְשַׁטֵחַ	11
9406	whereabouts	מָקוֹם	11
9407	waiting	הַמתָנָה	11
9408	truce	הַפסָקַת אֵשׁ	11
9409	tee	טי	11
9410	ruling	פְּסַק דִין	11
9411	poise	שִׁוּוּי מִשׁקָל	11
9412	manipulative	מניפולטיבי	11
9413	immature	לֹא מְפוּתָח	11
9414	delivering	מסירה	11
9415	condom	קוֹנדוֹם	11
9416	butt	קַת	11
9417	automatically	אוטומטית	11
9418	anchor	לְעַגֵן	11
9419	addict	מָכוּר	11
9420	throne	כֵּס	11
9421	slick	חֲלַקְלַק	11
9422	raining	יורד גשם	11
9423	pasta	פַּסטָה	11
9424	detector	גַלַאִי	11
9425	coolest	הכי מגניב	11
9426	casting	יְצִיקָה	11
9427	batch	קְבוּצָה	11
9428	almighty	כֹּל יָכוֹל	11
9429	sum	סְכוּם	11
9430	spark	לְעוֹרֵר	11
9431	perfection	שְׁלֵמוּת	11
9432	jelly	ג'ֵלִי	11
9433	getaway	מילוט	11
9434	cracking	הִסָדְקוּת	11
9435	behold	לְהַבִּיט	11
9436	verge	לִגבּוֹל	11
9437	timer	שָׁעוֹן עֶצֶר	11
9438	surf	לִגלוֹשׁ	11
9439	superman	סוּפֶּרמֶן	11
9440	specialty	הִתמַחוּת	11
9441	snoop	לְחַטֵט	11
9442	semi	חֲצִי	11
9443	leverage	תְנוּפָה	11
9444	jeopardize	לְסַכֵּן	11
9445	janitor	שָׁרָת	11
9446	examination	בְּדִיקָה	11
9447	compact	קוֹמפָּקטִי	11
9448	clueless	חסר מושג	11
9449	arriving	מגיע	11
9450	adding	מוֹסִיף	11
9451	ungrateful	כְּפוּי טוֹבָה	11
9452	unacceptable	בלתי מקובל	11
9453	shorter	קצר יותר	11
9454	serum	נַסיוֹב	11
9455	lure	לִפתוֹת	11
9456	irrational	אִי רַציוֹנָלִי	11
9457	galaxy	גָלַקסִיָה	11
9458	doom	אֲבַדוֹן	11
9459	classified	מְסוּוָג	11
9460	beautifully	יָפֶה	11
9461	approaching	מִתקַרֵב	11
9462	traitor	בּוֹגֵד	11
9463	sympathetic	אוֹהֵד	11
9464	smug	זחוח	11
9465	rental	השכרה	11
9466	prostitute	זוֹנָה	11
9467	monk	נָזִיר	11
9468	inventory	מְלַאי	11
9469	improved	מְשׁוּפָּר	11
9470	horny	מְיוֹבָּל	11
9471	developing	מִתפַּתֵחַ	11
9472	commonplace	דָבָר רָגִיל	11
9473	banging	טְרִיקָה	11
9474	amendment	תִקוּן	11
9475	vent	פּוּרקָן	11
9476	traumatic	טְרַאוּמָטִי	11
9477	tow	לִגרוֹר	11
9478	sweaty	מְיוֹזָע	11
9479	overboard	הַחוּצָה	11
9480	insight	תוֹבָנָה	11
9481	haven	מִקְלָט	11
9482	fluid	נוֹזֵל	11
9483	era	תְקוּפָה	11
9484	crappy	מחורבן	11
9485	crab	סַרְטָן	11
9486	chunk	נֶתַח	11
9487	chandler	צ'נדלר	11
9488	appliance	מַכשִׁיר	11
9489	stain	כֶּתֶם	11
9490	shack	צְרִיף	11
9491	pervert	סוֹטֶה	11
9492	occupied	כָּבוּשׁ	11
9493	handful	קוֹמֶץ	11
9494	gag	בְּדִיחָה	11
9495	flick	סְטִירָה קַלָה	11
9496	expertise	מוּמחִיוּת	11
9497	embarrassment	מְבוּכָה	11
9498	drum	תוֹף	11
9499	concussion	זַעֲזוּעַ	11
9500	summon	לְזַמֵן	11
9501	splitting	פְּצִיחָה	11
9502	sneaky	מִתגַנֵב	11
9503	sloppy	מְרוּשָׁל	11
9504	settling	התיישבות	11
9505	reschedule	לשנות מועד	11
9506	notch	לַחֲרוֹץ	11
9507	hooray	הידד	11
9508	extend	לְהַאֲרִיך	11
9509	exquisite	מְעוּדָן	11
9510	disrespect	זִלזוּל	11
9511	amateur	חוֹבְבָן	11
9512	voting	הַצבָּעָה	11
9513	shatter	לְנַפֵּץ	11
9514	ruthless	חֲסַר רַחֲמִים	11
9515	refill	מִלוּי	11
9516	payroll	גִלְיוֹן שָׂכָר	11
9517	mourning	אֵבֶל	11
9518	marijuana	מַרִיחוּאַנָה	11
9519	manly	גַברִי	11
9520	iris	קַשׁתִית	11
9521	involving	מעורב	11
9522	hunk	חֲתִיך	11
9523	entertain	לְבַדֵר	11
9524	earthquake	רְעִידַת אֲדָמָה	11
9525	drift	סְחִיפָה	11
9526	dreadful	אָיוֹם	11
9527	doorstep	מִפתָן הַדֶלֶת	11
9528	confirmation	אִשׁוּר	11
9529	stressful	מלחיץ	11
9530	preoccupy	להעסיק	11
9531	predictable	צָפוּי	11
9532	madly	בטירוף	11
9533	embassy	שַׁגְרִירוּת	11
9534	confuse	לְבַלבֵּל	11
9535	cappuccino	קָפּוּצִ'ינוֹ	11
9536	bouquet	זֵר	11
9537	bailey	ביילי	11
9538	amulet	קָמִיעַ	11
9539	addiction	הִתמַכְּרוּת	11
9540	warming	הִתחַמְמוּת	11
9541	villa	וִילָה	11
9542	unlock	לִפְתוֹחַ	11
9543	satisfy	לְסַפֵּק	11
9544	relaxing	מַרגִיעַ	11
9545	lone	בּוֹדֵד	11
9546	fudge	מַמְתָק שׁוֹקוֹלָד	11
9547	elaborate	לְפַרֵט	11
9548	concerning	בִּדְבַר	11
9549	blocking	חסימה	11
9550	mode	מצב	11
9551	hunger	רָעָב	11
9552	hamburger	הֶמבּוּרגֶר	11
9553	greet	לְבָרֵך	11
9554	gravy	רוֹטֶב	11
9555	dreamt	חלם	11
9556	dice	קוּבִּיוֹת	11
9557	collecting	איסוף	11
9558	backpack	תַרמִיל	11
9559	agreeing	מסכים	11
9560	supervisor	מְפַקֵחַ	11
9561	starling	זַרזִיר	11
9562	meter	מֶטֶר	11
9563	likewise	כְּמוֹ כֵן	11
9564	irrelevant	לא רלוונטי	11
9565	felon	פּוֹשֵׁעַ	11
9566	fasten	לְהַדֵק	11
9567	easiest	הכי קל	11
9568	disco	דִיסקוֹ	11
9569	conceivable	מִתקָבֵּל עַל הַדַעַת	11
9570	compassionate	רַחוּם	11
9571	backstage	אֲחוֹרֵי הַקְלַעִים	11
9572	agony	יָגוֹן	11
9573	adorn	לְקַשֵׁט	11
9574	tweak	לִצבּוֹט	11
9575	thieve	לִגנוֹב	11
9576	surgical	כִּירוּרגִי	11
9577	sunrise	זְרִיחָה	11
9578	strangely	באופן מוזר	11
9579	recital	רֵסִיטָל	11
9580	productive	פּרוּדוּקטִיבִי	11
9581	meaningful	מַשְׁמָעוּתִי	11
9582	marching	צְעִידָה	11
9583	kitten	חֲתַלתוּל	11
9584	immunity	חֲסִינוּת	11
9585	frighten	לְהַפחִיד	11
9586	dearly	בְּיוֹקֶר	11
9587	closure	סֶגֶר	11
9588	ambition	שְׁאַפתָנוּת	11
9589	unstable	לֹא יַצִיב	11
9590	sweetness	מְתִיקוּת	11
9591	stinky	מסריח	11
9592	salvage	לְהַצִיל	11
9593	petition	לַעֲתוֹר	11
9594	lowlife	lowlife	11
9595	juicy	עֲסִיסִי	11
9596	intentionally	בְּמֵזִיד	11
9597	inspire	לְעוֹרֵר	11
9598	forgave	סלח	11
9599	fart	לְהַפְלִיץ	11
9600	devotion	מְסִירוּת	11
9601	despicable	בָּזוּי	11
9602	comfy	נוח	11
9603	breach	הֲפָרָה	11
9604	alternate	לְהַחלִיף	11
9605	twilight	דִמדוּם	11
9606	stove	תַנוּר	11
9607	slot	חָרִיץ	11
9608	pawn	לְמַשְׁכֵּן	11
9609	lengthen	לְהַאֲרִיך	11
9610	farewell	פְּרִידָה	11
9611	experimental	נִסיוֹנִי	11
9612	caviar	קַוויָאר	11
9613	carnival	קַרנָבָל	11
9614	boost	לְהַגבִּיר	11
9615	bliss	אושר	11
9616	token	אֲסִימוֹן	11
9617	temporarily	זְמַנִית	11
9618	superstition	אֱמוּנָה טְפֵלָה	11
9619	supernatural	עַל טִבעִי	11
9620	sunk	שקוע	11
9621	recorder	מַקלִיט	11
9622	rang	צלצל	11
9623	presidential	נְשִׂיאוּתִי	11
9624	motivate	לְהַנִיעַ	11
9625	fraternity	מִסדָר	11
9626	dryer	מְיַבֵּשׁ	11
9627	chewing	לְעִיסָה	11
9628	brake	בֶּלֶם	11
9629	bounty	נְדִיבוּת	11
9630	axe	גַרזֶן	11
9631	unbelievably	לא ייאמן	11
9632	survivor	שורדת	11
9633	respectable	מְכוּבָּד	11
9634	premise	הַנָחַת יְסוֹד	11
9635	occasional	מִקרִי	11
9636	indication	סִימָן	11
9637	gutter	מַרזֵב	11
9638	flashlight	פָּנַס כִּיס	11
9639	bloodless	ללא דם	11
9640	beware	לְהִזָהֵר	11
9641	wily	עַרמוּמִי	11
9642	won	ווֹן	11
9643	turf	טוֹרף	11
9644	shovel	לִגרוֹף	11
9645	puff	לְנַפֵּחַ	11
9646	privately	באופן פרטי	11
9647	locking	נְעִילָה	11
9648	heartless	חֲסַר לֵב	11
9649	echo	הֵד	11
9650	comparison	השוואה	11
9651	childish	יַלדוּתִי	11
9652	cardiac	שֶׁל הַלֵב	11
9653	brace	לְהַדֵק	11
9654	blunt	לְהַקְהוֹת	11
9655	admission	הוֹדָאָה	11
9656	vanilla	וָנִיל	11
9657	utterly	לַחֲלוּטִין	11
9658	suspension	הַשׁעָיָה	11
9659	stun	לְזַעזֵעַ	11
9660	sadly	למרבה הצער	11
9661	reserved	שָׁמוּר	11
9662	lowest	הנמוך ביותר	11
9663	kidding	צוחק	11
9664	jerk	אִידיוֹט	11
9665	hitch	תַקָלָה	11
9666	flirt	לְפַלרְטֵט	11
9667	extension	הַרחָבָה	11
9668	establishment	מוֹסָד	11
9669	delayed	מוּשׁהֶה	11
9670	christening	הטבלה	11
9671	casket	אֲרוֹן מֵתִים	11
9672	broker	סַרְסוּר	11
9673	antibiotic	אַנטִיבִּיוֹטִי	11
9674	abduct	לַחטוֹף	11
9675	witchcraft	כישוף	11
9676	smelly	מַסרִיחַ	11
9677	running	רִיצָה	11
9678	protein	חֶלְבּוֹן	11
9679	paramedic	חוֹבֵשׁ	11
9680	newest	הכי חדש	11
9681	murmur	רִשׁרוּשׁ	11
9682	marathon	מָרָתוֹן	11
9683	intact	שָׁלֵם	11
9684	grandpa	סָבָּא	11
9685	diaper	לְחַתֵל	11
9686	deceased	נִפטָר	11
9687	burka	בורקה	11
9688	bun	לַחמָנִיָה	11
9689	accounting	חֶשׁבּוֹנָאוּת	11
9690	shred	לִגרוֹס	11
9691	rethink	לחשוב מחדש	11
9692	pistol	אֶקְדָח	11
9693	leash	רְצוּעָה	11
9694	hearted	לב	11
9695	flown	טס	11
9696	feast	חַג	11
9697	extent	היקף	11
9698	educated	מְחוּנָך	11
9699	disgrace	חֶרפָּה	11
9700	deposition	תַצהִיר	11
9701	burial	קְבוּרָה	11
9702	bookstore	חֲנוּת סְפָרִים	11
9703	veil	צָעִיף	11
9704	trespass	הַסָגַת גְבוּל	11
9705	optimistic	אוֹפּטִימִי	11
9706	jeopardy	סַכָּנָה	11
9707	injection	הַזרָקָה	11
9708	hilarious	צוֹהֵל	11
9709	distinct	מוּבהָק	11
9710	directed	מְכוּוָן	11
9711	dame	גְבֶרֶת	11
9712	curve	עֲקוּמָה	11
9713	cone	קוֹנוּס	11
9714	challenging	מאתגר	11
9715	alter	לְשַׁנוֹת	11
9716	wilderness	מִדבָּר	11
9717	vindictive	נַקמָנִי	11
9718	venture	לְהַעֵז	11
9719	tomb	קֶבֶר	11
9720	teeny	קְטַנטַן	11
9721	stroll	לְהִתְהַלֵך	11
9722	sitting	יְשִׁיבָה	11
9723	rebuild	לִבנוֹת מִחָדָשׁ	11
9724	ordeal	מִבְחָן	11
9725	intimacy	אִינטִימִיוּת	11
9726	inheritance	יְרוּשָׁה	11
9727	exploded	התפוצץ	11
9728	donate	לִתְרוֹם	11
9729	distracting	מסיח את הדעת	11
9730	despair	יֵאוּשׁ	11
9731	democratic	דֵמוֹקרָטִי	11
9732	cracker	מַציָה	11
9733	ammunition	תַחְמוֹשֶׁת	11
9734	thoroughly	בִּיסוֹדִיוּת	11
9735	sheer	טָהוֹר	11
9736	scarecrow	דַחלִיל	11
9737	refreshing	מְרַעֲנֵן	11
9738	prosecute	לְהַעֲמִיד לָדִין	11
9739	misplace	לָשִׂים לֹא בְּמָקוֹם	11
9740	merchandise	סְחוֹרָה	11
9741	membership	חֲבֵרוּת	11
9742	jinx	jinx	11
9743	heroic	הֵרוֹאִי	11
9744	facial	פַּרצוּפִי	11
9745	clan	שֶׁבֶט	11
9746	bummer	חבל	11
9747	syrup	סִירוֹפּ	11
9748	shuttle	מעבורת	11
9749	resemblance	דִמיוֹן	11
9750	premature	מוּקדָם מִדַי	11
9751	pod	תַרמִיל	11
9752	honours	כיבודים	11
9753	gravity	כּוֹחַ מְשִׁיכָה	11
9754	contribution	תְרוּמָה	11
9755	acquainted	להכיר	11
9756	vest	אֵפוֹד	11
9757	untie	לְהַתִיר	11
9758	salute	הַצדָעָה	11
9759	priceless	לֹא יְסוּלֵא בְּפָּז	11
9760	pike	כִּידוֹן	11
9761	partying	מסיבה	11
9762	moonlight	אוֹר הַלְבָנָה	11
9763	lightly	בקלילות	11
9764	lifting	הֲרָמָה	11
9765	glowing	מַברִיק	11
9766	generator	גֵנֵרָטוֹר	11
9767	flowing	זוֹרֵם	11
9768	explosive	חוֹמֶר נֶפֶץ	11
9769	cinnamon	קינמון	11
9770	breakthrough	פְּרִיצַת דֶרֶך	11
9771	ballistic	בַּלִיסְטִי	11
9772	assassin	מִתנַקֵשׁ	11
9773	antidote	תרופה נגד	11
9774	analyze	לְנַתֵחַ	11
9775	allowance	הַפרָשָׁה	11
9776	adjourn	לִדחוֹת	11
9777	understatement	לָשׁוֹן הַמעָטָה	11
9778	touchy	רָגִישׁ	11
9779	subconscious	תַת הַכָּרָתִי	11
9780	roommate	שׁוּתָף לְחֶדֶר	11
9781	pitcher	כַּד	11
9782	ping	פינג	11
9783	offend	לְהַעֲלִיב	11
9784	knives	סכינים	11
9785	irresistible	שאין לעמוד בפניו	11
9786	incarnate	להתגלם	11
9787	hostility	עוֹיְנוּת	11
9788	funky	פאנקי	11
9789	equation	משוואה	11
9790	digital	דִיגִיטָלי	11
9791	centered	מְרוּכָּז	11
9792	watcher	צוֹפֶה	11
9793	turtle	צָב	11
9794	transmission	הפצה	11
9795	sleigh	מִזחֶלֶת	11
9796	sarcastic	סַרקָסטִי	11
9797	recess	הַפסָקָה	11
9798	rebound	רִיבָּאוּנד	11
9799	rebel	לִמְרוֹד	11
9800	pirate	שׁוֹדֵד יָם	11
9801	living	חַי	11
9802	heartache	כְּאֵב לֵב	11
9803	fundraiser	גיוס כספים	11
9804	dynamite	דִינָמִיט	11
9805	doorman	שׁוֹעֵר	11
9806	documentary	תְעוּדָה	11
9807	discreet	דִיסקרֶטִי	11
9808	considerate	מִתחַשֵׁב	11
9809	catering	הַסעָדָה	11
9810	author	מְחַבֵּר	11
9811	vacuum	לִשְׁאוֹב	11
9812	urine	שֶׁתֶן	11
9813	strung	מָתוּחַ	11
9814	stitch	תֶפֶר	11
9815	sordid	מוּשׁחָת	11
9816	protector	מָגֵן	11
9817	portion	חֵלֶק	11
9818	moss	אֵזוֹב	11
9819	mat	מַחצֶלֶת	11
9820	kindergarten	גַן יְלָדִים	11
9821	flaw	פְּגָם	11
9822	diving	צְלִילָה	11
9823	discharge	פְּרִיקָה	11
9824	confidentiality	סודיות	11
9825	blizzard	סוּפַת שֶׁלֶג	11
9826	amongst	בֵּין	11
9827	woody	עֵצִי	11
9828	tactic	טקטיקה	11
9829	straits	מְצוּקָה	11
9830	spooky	מַפְחִיד	11
9831	spaghetti	ספַּגֶטִי	11
9832	powerless	חֲסַר אוֹנִים	11
9833	playground	מִגרָשׁ מִשְׂחָקִים	11
9834	paranoia	פָּרָנוֹיָה	11
9835	hopeful	מלא תקווה	11
9836	havoc	הֶרֶס	11
9837	evaluation	הַעֲרָכָה	11
9838	eavesdropping	צִתוּת	11
9839	doughnut	סוּפגָנִיָה	11
9840	diversion	הַסָחָה	11
9841	behead	עריפת ראש	11
9842	aspen	צַפצָפָה רַעֲדָנִית	11
9843	anyplace	בכל מקום	11
9844	accessory	אֲבִיזָר	11
9845	titanic	כַּבִּיר	11
9846	stuffing	מְלִית	11
9847	speeding	נְהִיגָה בִּמְהִירוּת מוּפרֶזֶת	11
9848	slime	רֶפֶשׁ	11
9849	royalty	תַמְלוּג	11
9850	maze	מָבוֹך	11
9851	marital	זוגיות	11
9852	magician	קוֹסֵם	11
9853	lurk	לְהִסְתָתֵר	11
9854	journalism	עיתונות	11
9855	interior	פְּנִים	11
9856	hog	חֲזִיר	11
9857	hatch	לִבקוֹעַ	11
9858	greeting	בְּרָכָה	11
9859	ethical	אֶתִי	11
9860	equipped	מְצוּיָד	11
9861	environmental	סְבִיבָתִי	11
9862	credibility	אֲמִינוּת	11
9863	credential	תְעוּדָה	11
9864	consistent	עִקבִי	11
9865	claw	טוֹפֶר	11
9866	chopped	קָצוּץ	11
9867	bridal	שֶׁל כְּלוּלוֹת	11
9868	bedside	ליד המיטה	11
9869	babysitting	בייביסיטר	11
9870	authorized	מוּסמָך	11
9871	assumption	הַנָחָה	11
9872	youngest	הצעיר ביותר	11
9873	witty	שָׁנוּן	11
9874	unforgivable	בלתי נסלח	11
9875	underworld	עוֹלַם הָתַחְתוֹן	11
9876	sophomore	כיתה ב'	11
9877	selfless	בִּלתִי אָנוֹכִי	11
9878	secrecy	סוֹדִיוּת	11
9879	runway	מַסלוּל הַמרָאָה	11
9880	programming	תִכנוּת	11
9881	professionally	באופן מקצועי	11
9882	moving	נָע	11
9883	meltdown	התמוטטות	11
9884	incoming	נִכנָס	11
9885	funding	מימון	11
9886	curl	סִלְסוּל	11
9887	comedian	קומיקאי	11
9888	buckle	אַבזָם	11
9889	assembly	הַרכָּבָה	11
9890	admired	התפעל	11
9891	adjustment	הַתאָמָה	11
9892	slippery	חֲלַקְלַק	11
9893	ridge	רֶכֶס	11
9894	queer	מוזר	11
9895	graveyard	בֵּית קְבָרוֹת	11
9896	gifted	מוּכשָׁר	11
9897	dale	דייל	11
9898	cynical	צִינִי	11
9899	assassination	רֶצַח	11
9900	verbal	בְּעַל פֶּה	11
9901	unpredictable	בלתי צפוי	11
9902	stoop	לְהִתְכּוֹפֵף	11
9903	plumbing	אִינסְטָלַצִיָה	11
9904	lingerie	לִבנֵי נָשִׁים	11
9905	layer	שִׁכבָה	11
9906	fluffy	מוֹכִי	11
9907	dresser	אָרוֹן בְּגָדִים	11
9908	coup	צַעַד מַפתִיעַ	11
9909	chauffeur	נֶהָג	11
9910	bouncing	הַקפָּצָה	11
9911	veal	עֵגֶל	11
9912	sanity	שְׁפִיוּת	11
9913	primitive	פְּרִימִיטִיבִי	11
9914	pending	תָלוּי וְעוֹמֵד	11
9915	orderly	מְסוּדָר	11
9916	obsessive	אובססיבי	11
9917	motto	מוֹטוֹ	11
9918	meteor	מֵטֵאוֹר	11
9919	glimpse	הֲצָצָה	11
9920	froze	קפא	11
9921	execute	לְבַצֵעַ	11
9922	ensure	לְהַבטִיחַ	11
9923	dispute	מַחֲלוֹקֶת	11
9924	crop	יְבוּל	11
9925	consulate	קוֹנסוּלִיָה	11
9926	amend	לְתַקֵן	11
9927	syringe	מַזרֵק	11
9928	symphony	סִימפוֹנִיָה	11
9929	sleazy	קָלוּשׁ וּמְטוּנָף	11
9930	shaky	רָעוּעַ	11
9931	runner	רָץ	11
9932	riddle	חִידָה	11
9933	ranger	ריינג'ר	11
9934	poke	לִתְקוֹעַ	11
9935	pickup	איסוף	11
9936	nutty	אֱגוֹזִי	11
9937	menace	אִיוּם	11
9938	inspiring	מעורר השראה	11
9939	housekeeper	מְנַהֶלֶת מֶשֶׁק הַבַּיִת	11
9940	fingernail	צִפּצֹרֶן	11
9941	chronic	כְּרוֹנִי	11
9942	bass	בַּס	11
9943	baking	אֲפִיָה	11
9944	whine	יְלָלָה	11
9945	utter	מוּחלָט	11
9946	thug	בִּריוֹן	11
9947	strap	רְצוּעָה	11
9948	sniff	לְרַחְרֵח	11
9949	sedative	מַרגִיעַ	11
9950	picket	כלונסאות	11
9951	jumbo	עֲנָק	11
9952	hound	לִרְדוֹף	11
9953	homosexual	הומוסקסואל	11
9954	flea	פַּרעוֹשׁ	11
9955	flatter	לְהַחמִיא	11
9956	dwell	לִשְׁכּוֹן	11
9957	dent	שֶׁקַע	11
9958	assignment	מְשִׁימָה	11
9959	advisor	יועץ	11
9960	vile	נִתעָב	11
9961	unreasonable	לֹא סָבִיר	11
9962	souvenir	מַזכֶּרֶת	11
9963	psychopath	פְּסִיכוֹפָּת	11
9964	operative	פָּעִיל	11
9965	obstruction	חֲסִימָה	11
9966	lockdown	סגר	11
9967	gloat	לִשְׂמוֹחַ לְאֵיד	11
9968	filth	זוּהֲמָה	11
9969	exterminate	לְהַשְׁמִיד	11
9970	electronic	אֶלֶקטרוֹנִי	11
9971	edgy	עַצבָּנִי	11
9972	cedar	אֶרֶז	11
9973	betraying	בגידה	11
9974	appealing	מושך	11
9975	wrath	זַעַם	11
9976	trainer	מְאַמֵן	11
9977	rye	שִׁיפוֹן	11
9978	publicly	בְּפוּמבֵּי	11
9979	marshal	מַרשַׁל	11
9980	heavenly	שְׁמֵימִי	11
9981	hash	בְּלִיל	11
9982	halt	לַעֲצוֹר	11
9983	grim	זוֹעֵף	11
9984	employed	מוּעֳסָק	11
9985	doggie	כְּלַבלָב	11
9986	diplomatic	דִיפּלוֹמָטִי	11
9987	dilemma	דִילֶמָה	11
9988	contagious	מדבק	11
9989	cheering	תְשׁוּאוֹת	11
9990	carved	חָצוּב	11
9991	wrench	מַפתֵחַ בְּרָגִים	11
9992	thingy	דבר	11
9993	rogue	רַמַאִי	11
9994	raft	רַפסוֹדָה	11
9995	piggy	חֲזִירוֹן	11
9996	peep	לְהָצִיץ	11
9997	pageant	תחרות	11
9998	liveliness	חַיוּת	11
9999	gardener	גַנָן	11
10000	continuing	ממשיך	11
10001	vase	אֲגַרטֵל	11
10002	squat	שָׁפוּף	11
10003	motivation	מוֹטִיבָצִיָה	11
10004	introduction	מָבוֹא	11
10005	feminine	נָשִׁי	11
10006	eyeball	גַלגַל הָעַיִן	11
10007	disc	דיסק	11
10008	convertible	להמרה	11
10009	context	הֶקשֵׁר	11
10010	suspense	מֶתַח	11
10011	poppy	פָּרָג	11
10012	mice	עכברים	11
10013	incompetent	חֲסַר יְכוֹלֶת	11
10014	drip	לְטַפטֵף	11
10015	differ	לִהיוֹת שׁוֹנֶה	11
10016	copper	נְחוֹשֶׁת	11
10017	sensitivity	רְגִישׁוּת	11
10018	prophecy	נְבוּאָה	11
10019	immortal	אַלְמוֹתִי	11
10020	colourless	חֲסַר צֶבַע	11
10021	asking	שואל	11
10022	demonstrate	לְהַפְגִין	11
10023	acquaintance	הֶכֵּרוּת	11
10024	superficial	שִׁטחִי	11
10025	ingredient	מַרכִּיב	11
10026	bruised	פָּצוּעַ	11
10027	apparent	נִרְאֶה	11
10028	worthwhile	כְּדַאי	11
10029	mop	לְנַגֵב	11
10030	impatient	קְצַר רוּחַ	11
10031	arctic	אַרקטִי	11
10032	profound	עָמוֹק	11
10033	mocking	לַעֲגָנִי	11
10034	concentration	ריכוז	11
10035	tribute	הוֹקָרָה	11
10036	postcard	גְלוּיָה	11
10037	judgement	פְּסַק דִין	11
10038	engineering	הַנדָסָה	11
10039	commonwealth	חֶבֶר הָעַמִים	11
10040	intimidate	לְהָטִיל אֵימָה	11
10041	doorbell	פעמון דלת	11
10042	cultural	תַרְבּוּתִי	11
10043	café	בֵּית קָפֶה	11
10044	allergy	אַלֶרגִיָה	11
10045	vegetarian	צִמחוֹנִי	11
10046	telegram	מִברָק	11
10047	pharmacy	בֵּית מִרקַחַת	11
10048	obstacle	מִכשׁוֹל	11
10049	contribute	לִתְרוֹם	11
10050	bankrupt	פּוֹשֵׁט רֶגֶל	11
10051	neurotic	נוירוטי	11
10052	microphone	מִיקרוֹפוֹן	11
10053	persuasive	מְשַׁכנֵעַ	11
10054	lighthouse	מִגדַלוֹר	11
10055	liability	אַחֲרָיוּת	11
10056	detailed	מְפוֹרָט	11
10057	condolences	תנחומים	11
10058	bulb	נוּרָה	11
10059	await	לְהַמתִין	11
10060	ambush	לֶאֱרוֹב	11
10061	adolescent	מִתבַּגֵר	11
10062	abort	לְהַפִּיל	11
10063	verse	פָּסוּק	11
10064	undermine	לַחתוֹר	11
10065	sunlight	אוֹר שֶׁמֶשׁ	11
10066	slippers	נעלי בית	11
10067	nonetheless	בְּכָל זֹאת	11
10068	liaison	קֶשֶׁר	11
10069	encouragement	עידוד	11
10070	dictate	לְהַכתִיב	11
10071	blueberry	אוּכמָנִית	11
10072	apron	סִינוֹר	11
10073	anticipated	צָפוּי	11
10074	vouch	לַעֲרוֹב	11
10075	sibling	אָח אוֹ אָחוֹת	11
10076	magically	בצורה קסומה	11
10077	listener	מַאֲזִין	11
10078	fearless	נוֹעָז	11
10079	dinosaur	דינוזאור	11
10080	repeatedly	שוב ושוב	11
10081	moody	מְצוּבּרָח	11
10082	indulge	לְפַנֵק	11
10083	horribly	בצורה נוראית	11
10084	expand	לְהַרְחִיב	11
10085	dialogue	דִיאָלוֹג	11
10086	adventurous	הַרפַּתקָנִי	11
10087	violin	כינור	11
10088	suffice	לְהַספִּיק	11
10089	oatmeal	קְוֵקֶר	11
10090	midst	אֶמצַע	11
10091	maiden	עַלמָה	11
10092	damaging	מזיק	11
10093	boredom	שִׁעֲמוּם	11
10094	sunglasses	מִשְׁקפֵי שֶׁמֶשׁ	11
10095	prognosis	פּרוֹגנוֹזָה	11
10096	molecular	מולקולרית	11
10097	hazel	לוּז	11
10098	striking	מַרשִׁים	11
10099	ripe	בָּשֵׁל	11
10100	plumber	שְׁרַברָב	11
10101	newborn	יָלוּד	11
10102	swift	מָהִיר	11
10103	speculation	ספֵּקוּלָצִיָה	11
10104	rewrite	לִכתוֹב מִחָדָשׁ	11
10105	handicapped	נָכֶה	11
10106	dishonest	לֹא יָשָׁר	11
10107	amusement	שַׁעֲשׁוּעַ	11
10108	unborn	שטרם נולד	11
10109	toaster	טוֹסטֶר	11
10110	sew	לִתְפוֹר	11
10111	radioactive	רַדִיוֹאַקטִיבִי	11
10112	questionable	מְפוּקפָּק	11
10113	overlook	לְהִתְעַלֵם	11
10114	underpants	תַחתוֹנִים	11
10115	stool	שְׁרַפרַף	11
10116	platinum	פְּלָטִינָה	11
10117	nightclub	מוֹעֲדוֹן לַילָה	11
10118	minority	מיעוט	11
10119	divided	מְחוּלָק	11
10120	dangerously	בצורה מסוכנת	11
10121	considerable	רַב	11
10122	tuition	הוֹרָאָה	11
10123	godmother	סַנדָקִית	11
10124	crude	גַס	11
10125	criticize	לְבַקֵר	11
10126	whichever	מה שלא יהיה	11
10127	correction	תִקוּן	11
10128	incentive	תַמרִיץ	11
10129	yogurt	יוֹגוּרט	11
10130	submarine	צוֹלֶלֶת	11
10131	startle	לְהַבהִיל	11
10132	interpretation	פֵּשֶׁר	11
10133	ingoing	נכנס	11
10134	enchant	לְהַקְסִים	11
10135	conservative	שַׁמְרָנִי	11
10136	bandage	תַחְבּוֹשֶׁת	11
10137	awareness	מוּדָעוּת	11
10138	supervision	הַשׁגָחָה	11
10139	sedate	שָׁקֵט וּרָגוּעַ	11
10140	marker	סַמָן	11
10141	brainwash	שטיפת מוח	11
10142	adamant	נחוש	11
10143	uncommon	נָדִיר	11
10144	medieval	ימי הביניים	11
10145	maturity	בַּגרוּת	11
10146	maternity	אִמָהוּת	11
10147	marinade	תַחמִיץ	11
10148	candid	גָלוּי לֵב	11
10149	snore	לִנְחוֹר	11
10150	sneeze	לְהִתְעַטֵשׁ	11
10151	smuggle	לְהַברִיחַ	11
10152	salty	מָלוּחַ	11
10153	morbid	חוֹלָנִי	11
10154	licence	רִשָׁיוֹן	11
10155	defenceless	חסרי הגנה	11
10156	cradle	עֶרֶשׂ	11
10157	booking	הזמנה	11
10158	traumatize	לעשות טראומה	11
10159	muddy	בּוֹצִי	11
10160	grapefruit	אֶשׁכּוֹלִיוֹת	11
10161	bossy	שְׁתַלְטָנִי	11
10162	bacteria	בַּקטֶרִיָה	11
10163	speechless	ללא מילים	11
10164	parachute	מַצנֵחַ	11
10165	cremate	לִשְׂרוֹף	11
10166	transaction	עִסקָה	11
10167	polar	קוֹטבִי	11
10168	intrude	לְהַפְרִיעַ	11
10169	ignorance	בּוּרוּת	11
10170	handyman	שיפוצניק	11
10171	greens	יְרָקוֹת	11
10172	diabete	סוכרת	11
10173	constitutional	חוּקָתִי	11
10174	pronoun	כִּנוּי	11
10175	pottery	קַדָרוּת	11
10176	obscene	מְגוּנֶה	11
10177	induce	לְהַשְׁרוֹת	11
10178	immigration	הֲגִירָה	11
10179	elevate	לְהַעֲלוֹת	11
10180	disable	להשבית	11
10181	crust	קְרוּם	11
10182	conductor	מְנַצֵחַ	11
10183	assessment	הַעֲרָכָה	11
10184	withdrawal	נְסִיגָה	11
10185	undone	בטל	11
10186	symptom	סִימפּטוֹם	11
10187	mascara	מַסקָרָה	11
10188	iceberg	קַרחוֹן	11
10189	convert	לְהַמִיר	11
10190	complicate	לְסַבֵּך	11
10191	combine	לְשַׁלֵב	11
10192	transformation	טרנספורמציה	11
10193	telescope	טֵלֶסקוֹפּ	11
10194	stumble	לִמְעוֹד	11
10195	saliva	רוֹק	11
10196	robber	שׁוֹדֵד	11
10197	reconnect	להתחבר מחדש	11
10198	irregular	לֹא סָדִיר	11
10199	invalid	לֹא בְּתוֹקֶף	11
10200	evict	לְפַנוֹת	11
10201	diver	צוֹלְלָן	11
10202	cushion	כָּרִית	11
10203	rhyme	חֲרִיזָה	11
10204	phenomenon	תוֹפָעָה	11
10205	motherhood	אִמָהוּת	11
10206	migraine	מִיגרֶנָה	11
10207	frosty	צוֹנֵן	11
10208	friction	חיכוך	11
10209	aspect	אַספֶּקט	11
10210	aggression	תוֹקפָּנוּת	11
10211	abusive	מַעֲלִיב	11
10212	trivial	קַטנוּנִי	11
10213	tenant	שׂוֹכֵר	11
10214	supervise	לְפַקֵחַ	11
10215	superstitious	אמונות טפלות	11
10216	statistics	סטָטִיסטִיקָה	11
10217	homemade	תוֹצֶרֶת בַּיִת	11
10218	glamour	זוֹהֵר	11
10219	disoriented	מחוסר התמצאות	11
10220	crossroad	צומת דרכים	11
10221	assurance	הַבטָחָה	11
10222	thesis	תֵזָה	11
10223	terrorism	טֵרוֹר	11
10224	respectfully	בכבוד	11
10225	painkiller	מְשַׁכֵּך כְּאֵבִים	11
10226	intellect	בִּינָה	11
10227	dole	קִצבָּה	11
10228	amuse	לְשַׁעֲשֵׁעַ	11
10229	alienate	לְהַרְחִיק	11
10230	unwanted	לא רצוי	11
10231	soften	לְרַכֵּך	11
10232	plaster	טִיחַ	11
10233	insomnia	נדודי שינה	11
10234	fume	עָשָׁן	11
10235	foremost	חָשׁוּב בִּיוֹתֵר	11
10236	deviate	לִסְטוֹת	11
10237	crave	לְהִשְׁתוֹקֵק	11
10238	craft	מְלָאכָה	11
10239	conceal	לְהַסתִיר	11
10240	abdomen	בֶּטֶן	11
10241	toenail	ציפורן	11
10242	organism	אורגניזם	11
10243	incapable	לֹא מְסוּגָל	11
10244	fade	לִדעוֹך	11
10245	erotic	אֵרוֹטִי	11
10246	dwelling	דִירָה	11
10247	calory	קלוריה	11
10248	breathtaking	עוֹצֵר נְשִׁימָה	11
10249	unattractive	לא אטרקטיבי	11
10250	representative	נָצִיג	11
10251	residential	מגורים	11
10252	resignation	הִתפַּטְרוּת	11
10253	substantial 	מַמָשִׁי	11
10254	agricultural	חַקלָאִי	11
10255	arbitrary	שְׁרִירוּתִי	11
10256	damp	לַח	11
10257	detached	מְנוּתָק	11
10258	dictator	דִיקטָטוֹר	11
10259	digestion	אִכּוּל	11
10260	discourage	לְהַרתִיעַ	11
10261	discrimination	אַפלָיָה	11
10262	disgraceful	מַחְפִּיר	11
10263	disguise 	לְהַסווֹת	11
10264	disorganized 	לא מאורגן	11
10265	diversity	גיוון	11
10266	download	להוריד	11
10267	compensate	לְפַצוֹת	11
10268	competence	יְכוֹלֶת	11
10269	earnest	רְצִינִי	11
10270	eclipse	לְהַאֲפִּיל	11
10271	economical	חַסכָן	11
10272	elastic	אֵלַסטִי	11
10273	electronics 	אֶלֶקטרוֹנִיקָה	11
10274	embargo 	אֶמבַּרְגוֹ	11
10275	encyclopaedia	אֶנצִיקלוֹפֶּדִיָה	11
10276	energetic	נִמרָץ	11
10277	enjoyment	הֲנָאָה	11
10278	enlargement	הַגדָלָה	11
10279	envious	מְקַנֵא	11
10280	equator	אֶקְוָטוֹר	11
10281	erect	זָקוּף	11
10282	expenditure	הוֹצָאָה	11
10283	eyelid	עַפְעַף	11
10284	farsighted	רוחק ראייה	11
10285	feminist 	פֶמִינִיסט	11
10286	forfeit	לְחַלֵט	11
10287	fort	מִבצָר	11
10288	furthermore	יֶתֶר עַל כֵּן	11
10289	futile	חֲסַר תוֹעֶלֶת	11
10290	hazardous	מְסוּכָּן	11
10291	immortality	נֵצַח	11
10292	initially	בְּהַתחָלָה	11
10293	intricate	מוּרכָּב	11
10294	juvenile 	צָעִיר	11
10295	kaleidoscope	קָלֵידוֹסקוֹפּ	11
10296	magnify	לְהַגדִיל	11
10297	miscellaneous	שונות	11
10298	momentary	רִגעִי	11
10299	mutter 	מִלמוּל	11
10300	nylon 	ניילון	11
10301	oar	מָשׁוֹט	11
10302	orient	מִזְרָח	11
10303	ornament	חֲלִי	11
10304	oxen	בָּקָר	11
10305	oyster	צִדפָּה	11
10306	parasol	שִׁמשִׁיָה	11
10307	pasture	מִסְפּוֹא	11
10308	pioneer	חָלוּץ	11
10309	playful 	עַלִיז	11
10310	poisonous	רַעִיל	11
10311	practitioner 	עוֹסֵק	11
10312	precision	דִיוּק	11
10313	prefix	קידומת	11
10314	prestige 	יוּקרָה	11
10315	punctuation 	סימני פיסוק	11
10316	quarrel	לָרִיב	11
10317	raffle	הַגרָלָה	11
10318	rationalize	לְיַעֵל	11
10319	relay 	מִמסָר	11
10320	rim	שָׂפָה	11
10321	rugby	רוגבי	11
10322	scallop	סקאלופ	11
10323	spank	סְטִירָה	11
10324	specialize	לְהִתְמַחוֹת	11
10325	stereotype	סטֵרֵאוֹטִיפּ	11
10326	complement 	מַשׁלִים	11
10327	completely	לַחֲלוּטִין	11
10328	completion	סִיוּם	11
10329	complimentary	מַחמִיא	11
10330	component 	רְכִיב	11
10331	composition	הֶרכֵּב	11
10332	comprehension	הֲבָנָה	11
10333	conceited 	יָהִיר	11
10334	connoisseur	יַדעָן	11
10335	consequently	כתוצאה מכך	11
10336	conservation	שימור	11
10337	considerably	במידה ניכרת	11
10338	consistency	עֲקֵבִיוּת	11
10339	consonant 	עיצור	11
10340	conspicuous	בּוֹלֵט לָעַיִן	11
10341	constitute	לְהַווֹת	11
10342	consumer	צַרכָן	11
10343	consumption	צְרִיכָה	11
10344	contemplate	לְהַרהֵר	11
10345	contemporary	עַכשָׁוִי	11
10346	contented	מְרוּצֶה	11
10347	continuous	רָצִיף	11
10348	contradict	לִסְתוֹר	11
10349	contradiction	סְתִירָה	11
10350	contrast 	לְהַשְׁווֹת	11
10351	controversial	שָׁנוּי בְּמַחֲלוֹקֶת	11
10352	controversy	מַחֲלוֹקֶת	11
10353	conventional 	מוּסכָּם	11
10354	copier	מכונת צילום	11
10355	cosmopolitan	קוֹסמוֹפּוֹלִיטִי	11
10356	counterfeit	מְזוּיָף	11
10357	countryside	אֵזוֹר כָּפרִי	11
10358	cram	לִדחוֹס	11
10359	crayon 	פִּיחוֹן	11
10360	cricket 	קרִיקֶט	11
10361	cube	קוּבִּיָה	11
10362	cue	רְמִיזָה	11
10363	culprit	עֲבַרְיָן	11
10364	cupboard	אָרוֹן	11
10365	curriculum	תוכנית לימודים	11
10366	customs	מֶכֶס	11
10367	cylinder 	צִילִינדֶר	11
10368	interim	זְמַנִי	11
10369	locum	לוקום	11
10370	stride	לִצְעוֹד	11
10371	subjective	סובייקטיבי	11
10372	submission	כְּנִיעָה	11
10373	subordinate	כָּפוּף	11
10374	subscription 	מִנוּי	11
10375	subtract	לְחַסֵר	11
10376	suburb	פַּרבָּר	11
10377	supplement	לְהַשְׁלִים	11
10378	supporter	תוֹמֵך	11
10379	swimsuit	בגד ים	11
10380	syllable	הֲבָרָה	11
10381	syllabus	סילבוס	11
10382	abbreviate	לְקַצֵר	11
10383	abode	מָקוֹם	11
10384	abolish	לְבַטֵל	11
10385	abound	בשפע	11
10386	abrupt	פִּתְאוֹמִי	11
10387	abstinence	פְּרִישׁוּת	11
10388	accommodate	לְהַתְאִים	11
10389	accord	הֶסכֵּם	11
10390	accumulate	לִצְבּוֹר	11
10391	accustom	להרגיל	11
10392	acquaint	להכיר	11
10393	adhere	לִדבּוֹק	11
10394	adjective	תוֹאַר	11
10395	administer	לְנַהֵל	11
10396	admissible	קָבִיל	11
10397	adverb	תוֹאַר הַפּוֹעֵל	11
10398	adversary	יָרִיב	11
10399	affability	סֵבֶר פָּנִים	11
10400	affirm	לְאַשֵׁר	11
10401	agrarian	חַקלאַי	11
10402	walnut	אֱגוֹז	11
10403	wary	זָהִיר	11
10404	watery	מֵימִי	11
10405	wharf	רָצִיף	11
10406	whirl	לְהִסְתַחרֵר	11
10407	wholly	לְגַמרֵי	11
10408	wilful	מֵזִיד	11
10409	willingness	נְכוֹנוּת	11
10410	wireless	אַלחוּט	11
10411	withhold	לְנַכּוֹת	11
10412	wrangle	לְהִסְתַכסֵך	11
10413	wring	לִסְחוֹט	11
10414	vaccination	חיסון	11
10415	vandalism	וַנדָלִיזם	11
10416	vapour	קִיטוֹר	11
10417	varnish	לַכָּה	11
10418	velocity	מְהִירוּת	11
10419	venison	צְבִי	11
10420	venomous	אַרסִי	11
10421	verification	אימות	11
10422	versatile	רַב צְדָדִי	11
10423	vestige	שָׂרִיד	11
10424	vibrate	לְנַדְנֵד	11
10425	vigilance	עֵרָנוּת	11
10426	vigorous	נִמרָץ	11
10427	visibility	רְאוּת	11
10428	vogue	אָפנָה	11
10429	volleyball	כַּדוּר עָף	11
10430	vulgar	ווּלגָרִי	11
10431	vulture	עַיִט	11
10432	ulcer	כִּיב	11
10433	unaccustomed	לא רגיל	11
10434	unavoidable	בלתי נמנע	11
10435	unaware	לֹא מוּדָע	11
10436	unbutton	לְהַתִיר	11
10437	unchanged	ללא שינוי	11
10438	undeniable	לֹא מוּטָל בְּסֶפֶק	11
10439	unequal	לא שוויוני	11
10440	uneven	מְחוּספָּס	11
10441	unfamiliar	זָר	11
10442	unfriendly	לֹא יְדִידוּתִי	11
10443	unjust	לֹא צוֹדֵק	11
10444	unkind	רַע	11
10445	unruly	פָּרוּעַ	11
10446	unrest	אִי שָׁקֵט	11
10447	unsettled	לֹא יַצִיב	11
10448	unskilful	לא מיומן	11
10449	untidy	לֹא מְסוּדָר	11
10450	unworthy	לֹא רָאוּי	11
10451	upbrining	חינוך	11
10452	uphill	בְּמַעֲלֶה הַהַר	11
10453	uprising	מֶרֶד	11
10454	usage	נוֹהָג	11
10455	utmost	מְלוֹא	11
10456	tack	נַעַץ	11
10457	tangible	מוּחָשִׁי	11
10458	tariff	תַעֲרִיף	11
10459	tea-pot	קוּמקוּם	11
10460	teaspoon	כַּפִּית	11
10461	tedious	מְשַׁעֲמֵם	11
10462	teem	לִשְׁרוֹץ	11
10463	temporal	זְמַנִי	11
10464	tendon	גִיד	11
10465	testament	בְּרִית	11
10466	test-tube	מבחנה	11
10467	textile	טֶקסטִיל	11
10468	text-message	הודעת טקסט	11
10469	theological	תיאולוגי	11
10470	thought	מַחֲשָׁבָה	11
10471	threshold	סַף	11
10472	thrift	חִסָכוֹן	11
10473	timid	נֶחבָּא אֶל הַכֵּלִים	11
10474	tint	לִצְבּוֹעַ	11
10475	toil	עָמָל	11
10476	tonsil	שָׁקֵד	11
10477	torrent	מַבּוּל	11
10478	tortoise	צָב	11
10479	trait	תְכוּנָה	11
10480	tram	חַשְׁמַלִית	11
10481	transient	חוֹלֵף	11
10482	treason	בְּגִידָה	11
10483	tread	לִדרוֹך	11
10484	trickle	לְטַפטֵף	11
10485	Trinity	שְׁלִישִׁיָה	11
10486	trolley	עֲגָלָה	11
10487	tsar	הצאר	11
10488	turban	טוּרבָּן	11
10489	turbulent	נִסעָר	11
10490	turnip	לֶפֶת	11
10491	tusk	נִיב	11
10492	twirl	לְסוֹבֵב	11
10493	twitter	לְצַפְצֵף	11
10494	tyran	טיראן	11
10495	typist	כַּתבָנִית	11
10496	allege	לטעון	11
10497	allot	להקצות	11
10498	alloy	סַגסוֹגֶת	11
10499	allude	לִרְמוֹז	11
10500	allusion	רֶמֶז	11
10501	aloud	בְּקוֹל רָם	11
10502	alphabet	אָלֶפְבֵּית	11
10503	altitude	גוֹבַה	11
10504	aluminium	אֲלוּמִינְיוּם	11
10505	amass	לִצְבּוֹר	11
10506	amid	בְּתוֹך	11
10507	amnesty	חֲנִינָה	11
10508	amorous	מָלֵא אַהֲבָה	11
10509	anaemia	אֲנֶמִיָה	11
10510	analogy	אֲנָלוֹגִיָה	11
10511	anatomy	אֲנָטוֹמִיָה	11
10512	anew	מִחָדָשׁ	11
10513	animate	לְהַנפִּישׁ	11
10514	animosity	אֵיבָה	11
10515	annex	לְסַפֵּחַ	11
10516	anomalous	חָרִיג	11
10517	anthem	הִמנוֹן	11
10518	ant-hill	גבעת נמלים	11
10519	antipathy	סְלִידָה	11
10520	antiquarian	סוֹחֵר עַתִיקוֹת	11
10521	apathetic	אָדִישׁ	11
10522	apostle	שליח	11
10523	apparatus	מַנגָנוֹן	11
10524	appease	לְרַצוֹת	11
10525	appendix	נִספָּח	11
10526	appoint	לְמַנוֹת	11
10527	appraise	לְהַעֲרִיך	11
10528	apprehension	חֲשָׁשׁ	11
10529	apprentice	שׁוּליִה	11
10530	apt	מַתְאִים	11
10531	Arab	ערבי	11
10532	arc	קֶשֶׁת	11
10533	archbishop	אַרכִיבִּישׁוֹף	11
10534	archives	אַרְכִיוֹן	11
10535	ardent	נִלהָב	11
10536	aristocracy	אֲצוּלָה	11
10537	armchair	כּוּרסָה	11
10538	armistice	שְׁבִיתַת נֶשֶׁק	11
10539	armpit	בֵּית הַשֶׁחִי	11
10540	aroma	אֲרוֹמָה	11
10541	arouse	לְעוֹרֵר	11
10542	arrears	פיגורים	11
10543	artful	עַרמוּמִי	11
10544	ascend	לַעֲלוֹת	11
10545	ascertain	לְוַדֵא	11
10546	ashore	עַל הַחוֹף	11
10547	asparagus	אַספָּרָגוּס	11
10548	aspiration	שְׁאִיפָה	11
10549	assent	לְהַסכִּים	11
10550	assert	לִטעוֹן	11
10551	assimilate	לְהִתְבּוֹלֵל	11
10552	astray	שולל	11
10553	atheism	אתאיזם	11
10554	atrocious	מְתוֹעָב	11
10555	audible	נִשׁמָע	11
10556	austerity	צֶנַע	11
10557	auxiliary	עזר	11
10558	avalanche	מַפּוֹלֶת שְׁלָגִים	11
10559	aversion	סְלִידָה	11
10560	aviation	תְעוּפָה	11
10561	bale	חֲבִילָה	11
10562	bamboo	בָּמבּוּק	11
10563	barley	שְׂעוֹרָה	11
10564	barracks	צריפים	11
10565	barren	צָחִיחַ	11
10566	barricade	מִתרָס	11
10567	barter	סַחַר חֲלִיפִין	11
10568	beech	אַשׁוּר	11
10569	beetroot	סֶלֶק אָדוֹם	11
10570	benediction	בְּרָכָה	11
10571	bereave	לשכול	11
10572	berch	berch	11
10573	bilateral	דוּ צְדָדִי	11
10574	birch	לִבנֶה	11
10575	bladder	שַׁלפּוּחִית הַשֶׁתֶן	11
10576	bleat	לִפְעוֹת	11
10577	blister	שַׁלפּוּחִית	11
10578	blot	כֶּתֶם	11
10579	boar	חֲזִיר	11
10580	bonfire	מְדוּרָה	11
10581	bonnet	מִצנֶפֶת	11
10582	botany	בּוֹטָנִיקָה	11
10583	box-office	קופה	11
10584	boycott	חֵרֶם	11
10585	boyish	נַעֲרִי	11
10586	brim	שׁוּלַיִם	11
10587	brisk	מְרַעֲנֵן	11
10588	brooch	מַכבֵּנָה	11
10589	brood	לִרְבּוֹץ	11
10590	brow	מֵצַח	11
10591	bulk	תִפזוֹרֶת	11
10592	bulletin	עָלוֹן	11
10593	buoyancy	צִיפָה	11
10594	calamity	אָסוֹן	11
10595	camomile	קמומיל	11
10596	canary	כַּנָרִית	11
10597	candied	מְסוּכָּר	11
10598	canteen	קַנטִינָה	11
10599	canvass	בד	11
10600	capability	יְכוֹלֶת	11
10601	caprice	גַחְמָה	11
10602	captivity	גָלוּת	11
10603	caravan	קָרוֹן	11
10604	cardinal	קַרדִינָל	11
10605	caress	לְלַטֵף	11
10606	carp	קַרפִּיוֹן	11
10607	cartrige	מחסנית	11
10608	cask	חָבִית	11
10609	cataract	קָטָרַקט	11
10610	caterpillar	זַחַל	11
10611	cathedral	קָתֶדרָלָה	11
10612	cauliflower	כְּרוּבִית	11
10613	catastrophe	קָטַסטרוֹפָה	11
10614	cavalry	חֵיל הַפָּרָשִׁים	11
10615	cede	לְוַתֵר	11
10616	celery	סֶלֶרִי	11
10617	census	מִפקָד	11
10618	cessation	הַפסָקָה	11
10619	chaste	צָנוּעַ	11
10620	chatter	לְפַטְפֵט	11
10621	chirp	צִיוּץ	11
10622	chisel	אִזְמֵל	11
10623	chivalrous	אַבִּירִי	11
10624	chord	אַקוֹרד	11
10625	cipher	צוֹפֶן	11
10626	clad	לבוש	11
10627	clang	צלצל	11
10628	clasp	אַבזָם	11
10629	clatter	שִׁקשׁוּק	11
10630	clench	להצמיד	11
10631	clod	גוּשׁ	11
10632	clove	צִפּוֹרֶן	11
10633	clumsiness	סִרבּוּל	11
10634	clutch	מַצְמֵד	11
10635	coarse	גַס	11
10636	coax	לְשַׁדֵל	11
10637	cobbler	סַנדְלָר	11
10638	cod	בַּקָלָה	11
10639	cod-liver	כבד בקלה	11
10640	cognition	קוגניציה	11
10641	coil	סְלִיל	11
10642	collaborate	לְשַׁתֵף פְּעוּלָה	11
10643	colt	סוּסוֹן	11
10644	combustible	דָלִיק	11
10645	comet	שָׁבִיט	11
10646	commence	לְהַתְחִיל	11
10647	commotion	רַחַשׁ	11
10648	compel	לְהַכרִיחַ	11
10649	compile	לְלַקֵט	11
10650	compliance	הַתאָמָה	11
10651	compose	לְהַלחִין	11
10652	compress	לִדחוֹס	11
10653	comprise	לִכלוֹל	11
10654	consession	ויתור	11
10655	conciliate	לְהַפִּיס	11
10656	concord	הַרמוֹנִיָה	11
10657	condensed	מְעוּבֶּה	11
10658	confederate	בְּרִית	11
10659	confer	לְהַעֲנִיק	11
10660	confiscate	לְהַחרִים	11
10661	conform	לְהַתְאִים	11
10662	conjecture	לְשַׁעֵר	11
10663	conjunction	צירוף	11
10664	consensus	קוֹנסֶנזוּס	11
10665	consignment	מִשׁגוֹר	11
10666	consternation	תַדְהֵמָה	11
10667	constituent	מַרכִּיב	11
10668	constrain	לְהַכרִיחַ	11
10669	construe	לְפַרֵשׁ	11
10670	consume	לִצְרוֹך	11
10671	contend	לִטעוֹן	11
10672	contentment	שְׂבִיעוּת רָצוֹן	11
10673	continual	מִתמַשֵׁך	11
10674	contraceptive	אמצעי מניעה	11
10675	contrivance	הַמצָאָה	11
10676	convey	לְהַעֲבִיר	11
10677	co-operate	לְשַׁתֵף פְּעוּלָה	11
10678	co-ordinate	לְתַאֵם	11
10679	coral	אַלְמוֹג	11
10680	coronation	הַכתָרָה	11
10681	correspond	לְהִתְכַּתֵב	11
10682	cosy	נוֹחַ	11
10683	countess	רוֹזֶנֶת	11
10684	crater	מַכְתֵשׁ	11
10685	crayfish	סַרטַן הַנַהֲרוֹת	11
10686	crease	קֶמֶט	11
10687	creche	גן ילדים	11
10688	credulous	מאמין	11
10689	crescent	חֲצִי סַהַר	11
10690	crest	סֵמֶל	11
10691	croak	קִרקוּר	11
10692	crochet	לִסְרוֹג בְּמַסרֵגָה אַחַת	11
10693	crockery	כְּלֵי חֶרֶס	11
10694	crumple	לְקַמֵט	11
10695	crusade	מַסָע צְלָב	11
10696	cudgel	חיבוק	11
10697	currant	דומדמניות	11
10698	cutlery	"סכו""ם"	11
10699	cutlet	שׁנִיצֶל	11
10700	cyber	סייבר	11
10701	cypress	בְּרוֹשׁ	11
10702	daffodil	נַרקִיס	11
10703	dainty	מְעַדֵן	11
10704	dandelion	שֵׁן הַאֲרִי	11
10705	Dane	דני	11
10706	dangle	לִהיוֹת תָלוּי וּמִתנַדנֵד	11
10707	daze	מעורפל	11
10708	debit	חוֹבָה	11
10709	deceit	תַרמִית	11
10710	deduce	לְהַסִיק	11
10711	default	בְּרִירַת מֶחדָל	11
10712	defer	לִדחוֹת	11
10713	defiance	הִתנַגְדוּת	11
10714	deficiency	מַחְסוֹר	11
10715	deform	לְעַוֵת צוּרָה	11
10716	defrost	לְהַפְשִׁיר	11
10717	degenerate	דֵגֵנֵרָט	11
10718	degradation	הַשׁפָּלָה	11
10719	deity	אֱלוֹהוּת	11
10720	dejection	דִכדוּך	11
10721	delicacy	מַעֲדָן	11
10722	deluge	מַבּוּל	11
10723	demolish	לַהֲרוֹס	11
10724	demure	מִצטַנֵעַ	11
10725	deplorable	מְצַעֵר	11
10726	deport	לְגַרֵשׁ	11
10727	deprivation	מַחְסוֹר	11
10728	deride	לִלְעוֹג	11
10729	desirable	רָצוּי	11
10730	desolate	שׁוֹמֵם	11
10731	despot	עָרִיץ	11
10732	deter	לְהַרתִיעַ	11
10733	detergent	חומר ניקוי	11
10734	detriment	פְּגִיעָה	11
10735	devolution	אֲצִילָה	11
10736	diarrhoea	שִׁלשׁוּל	11
10737	dilate	לְהִתְרַחֵב	11
10738	diligence	חָרִיצוּת	11
10739	diminish	לְהַפחִית	11
10740	disapproval	אי הסכמה	11
10741	disbelief	חוֹסֶר אֵמוּן	11
10742	discard	לְהַשְׁלִיך	11
10743	disciple	תַלמִיד	11
10744	discomfort	אִי נוֹחוּת	11
10745	discredit	לִפְגוֹעַ בְּאֲמִינוּת	11
10746	dismal	עָגוּם	11
10747	dispatch	לְשַׁגֵר	11
10748	dissatisfaction	אִי שְׂבִיעוּת רָצוֹן	11
10749	domicile	מָקוֹם מוֹשָׁב	11
10750	dormitory	פְּנִימִיָה	11
10751	dowry	נְדוּנִיָה	11
10752	drape	וִילוֹן	11
10753	drizzle	זַרזִיף	11
10754	drone	זִמזוּם	11
10755	drought	בַּצוֹרֶת	11
10756	drowsy	מְנוּמנָם	11
10757	dusk	אַפְלוּלִית	11
10758	Dutch	הוֹלַנדִי	11
10759	dynasty	שׁוֹשֶׁלֶת	11
10760	dysentery	דִיזֶנטֶריָה	11
10761	earnings	רווחים	11
10762	easel	כן ציור	11
10763	edible	אָכִיל	11
10764	egoism	אָנוֹכִיוּת	11
10765	embankment	סוֹלְלָה	11
10766	embark	לַעֲלוֹת לְאֳנִיָה	11
10767	embroider	לִרְקוֹם	11
10768	empower	לְהַסמִיך	11
10769	endorse	לְאַשֵׁר	11
10770	enrich	לְהַעֲשִׁיר	11
10771	entail	כרוך	11
10772	envisage	לחזות	11
10773	err	לִטְעוֹת	11
10774	escalator	דְרַגנוֹעַ	11
10775	evasion	הִתחַמְקוּת	11
10776	excel	לְהִצטַיֵן	11
10777	exempt	לִפְטוֹר	11
10778	exhale	לִנְשׁוֹף	11
10779	expedient	אֶמְצָעִי	11
10780	expend	לְהוֹצִיא	11
10781	extinct	נִכחָד	11
10782	fable	מָשָׁל	11
10783	faciliate	להקל	11
10784	falcon	בַּז	11
10785	fastidious	בַּררָנִי	11
10786	fathom	לַחדוֹר לְעוֹמֶק	11
10787	feat	מַעֲלָל	11
10788	feeble	חָלוּשׁ	11
10789	ferocious	פְּרָאִי	11
10790	fibre	סִיב	11
10791	fiddle	כינור	11
10792	fig	תְאֵנָה	11
10793	fillet	פִילֶה	11
10794	flake	לְהִתְקַלֵף	11
10795	flask	בַּקבּוּק	11
10796	flippers	סנפירים	11
10797	flourish	לִפְרוֹחַ	11
10798	flute	חָלִיל	11
10799	foliage	עָלִים	11
10800	fortress	מִבצָר	11
10801	frenzy	הִשׁתוֹלְלוּת	11
10802	funnel	מַשׁפֵּך	11
10803	gild	לְהַזהִיב	11
10804	gills	זימים	11
10805	giraffe	ג'ִירָפָה	11
10806	girdle	אַבנֵט	11
10807	gloss	בָּרָק	11
10808	gnat	יַתוּשׁ	11
10809	go-between	בין לבין	11
10810	grope	לְגַשֵׁשׁ	11
10811	guile	עָרמָה	11
10812	gust	מַשָׁב	11
10813	haphazard	אַקרַאִי	11
10814	harness	לִרְתוֹם	11
10815	haze	עֲרָפֶל	11
10816	hearth	מוֹקֵד	11
10817	hedge	גָדֵר חַיָה	11
10818	helm	הֶגֶה	11
10819	heritage	מוֹרֶשֶׁת	11
10820	heron	אֲנָפָה	11
10821	herring	דָג מָלוּחַ	11
10822	hew	לַחְטוֹב	11
10823	highjack	ג'ק גבוה	11
10824	hind	אֲחוֹרִי	11
10825	hurdle	מְשׂוֹכָה	11
10826	hurl	לְהַשְׁלִיך	11
10827	hybrid	היברידי	11
10828	icicle	נָטִיף קֶרַח	11
10829	ignoble	נבזה	11
10830	illuminate	לְהַאִיר	11
10831	imaginable	שאפשר להעלות על הדעת	11
10832	immense	עָצוּם	11
10833	imminent	מְמַשׁמֵשׁ וּבָא	11
10834	immobile	דוֹמֵם	11
10835	immoderate	מוּפרָז	11
10836	impatience	חוֹסֶר סַבְלָנוּת	11
10837	impossibility	אִי אֶפְשָׁרוּת	11
10838	imprison	לִכלוֹא	11
10839	improbable	לֹא סָבִיר	11
10840	imprudence	חוֹסֶר זְהִירוּת	11
10841	impure	טָמֵא	11
10842	inaccessible	בלתי נגיש	11
10843	inaccurate	לֹא מְדוּיָק	11
10844	inaudible	בלתי נשמע	11
10845	inaugurate	לַחֲנוֹך	11
10846	inclination	יֵצֶר	11
10847	incomparable	שאין להשוות	11
10848	incompatible	מְנוּגָד	11
10849	incomprehensible	לֹא מוּבָן	11
10850	indecent	מְגוּנֶה	11
10851	indictment	כתב אישום	11
10852	indifference	אֲדִישׁוּת	11
10853	indigestion	קִלקוּל קֵבָה	11
10854	infantry	חֵיל הַרַגלִים	11
10855	inflame	לְלַבּוֹת	11
10856	inflict	לִגרוֹם	11
10857	influenza	שַׁפַעַת	11
10858	ingenious	מְחוּכָּם	11
10859	inhabit	לָגוּר	11
10860	inhuman	לֹא אֶנוֹשִׁי	11
10861	innumerable	אין ספור	11
10862	inoculate	לְחַסֵן	11
10863	inoffensive	לֹא פּוֹגֵעַ	11
10864	in-patient	אשפוז	11
10865	inquire	לִשְׁאוֹל	11
10866	inscribe	לַחֲרוֹט	11
10867	insensible	חסר היגיון	11
10868	inseparable	בלתי נפרד	11
10869	insolence	חוּצפָּה	11
10870	instalment	פֶּרֶק	11
10871	insufficient	לֹא מַסְפִּיק	11
10872	insular	אינסולרי	11
10873	insulation	בִּדוּד	11
10874	interact	אינטראקציה	11
10875	intermediary	מתווך	11
10876	intolerable	בִּלתִי נִסבָּל	11
10877	intoxicate	לְהַרְעִיל	11
10878	invaluable	לֹא יְסוּלֵא בְּפָּז	11
10879	invariable	בִּלתִי מִשׁתַנֵה	11
10880	irreparable	בלתי ניתן לתיקון	11
10881	irriplaceable	שאין לו תחליף	11
10882	jackal	תַן	11
10883	jolly	עַלִיז	11
10884	jubilee	יוֹבֵל	11
10885	judicial	מִשׁפָּטִי	11
10886	judicial	מִשׁפָּטִי	11
10887	junction	צוֹמֶת	11
10888	juggle	לְלַהֲטֵט	11
10889	justification	הַצדָקָה	11
10890	languish	לְהִתְמוֹגֵג	11
10891	lark	לְהִשְׁתַעֲשֵׁעַ	11
10892	lateral	צְדָדִי	11
10893	lattice	סָרִיג	11
10894	leaden	כָּבֵד	11
10895	leech	עֲלוּקָה	11
10896	livelihood	פַּרנָסָה	11
10897	loneliness	בְּדִידוּת	11
10898	madden	לְשַׁגֵעַ	11
10899	maggot	תוֹלַעַת	11
10900	malignant	מַמְאִיר	11
10901	malnutrition 	תת תזונה	11
10902	mandate	מַנדָט	11
10903	manhood	גַברִיוּת	11
10904	manoeuvre	לְתַמְרֵן	11
10905	manpower	כּוֹחַ אָדָם	11
10906	mare	סוּסָה	11
10907	marvel	פֶּלֶא	11
10908	mayonnaise	מַיוֹנֵז	11
10909	measles	חַצֶבֶת	11
10910	mediate	לְפַשֵׁר	11
10911	melancholy	עֶצֶב	11
10912	minimize	לְצַמְצֵם	11
10913	miscalculate	לִטְעוֹת בְּחֶשְׁבּוֹן	11
10914	mischief	שׁוֹבְבוּת	11
10915	misty	עַרְפִילִי	11
10916	misuse	שימוש לרעה	11
10917	monastery	מִנזָר	11
10918	moor	לַעֲגוֹן	11
10919	mortify	להרוס	11
10920	mow	מַתבֵּן	11
10921	multicultural	רב תרבותי	11
10922	mutton	בְּשַׂר כֶּבֶשׂ	11
10923	navigable	עָבִיר	11
10924	nitrogen	חַנקָן	11
10925	nobility	אֲצוּלָה	11
10926	non-stop	לְלֹא הֶפסֵק	11
10927	novice	טִירוֹן	11
10928	noxious	מַזִיק	11
10929	null	בָּטֵל	11
10930	nutshell	קליפת אגוז	11
10931	oats	שִׁבּוֹלֶת שׁוּעָל	11
10932	obstinacy	עַקשָׁנוּת	11
10933	obstruct	לַחסוֹם	11
10934	odious	נִתעָב	11
10935	odour	רֵיחַ	11
10936	offhand	כִּלְאַחַר יָד	11
10937	onset	הַתקָפָה	11
10938	onward	הָלְאָה	11
10939	opaque	אָטוּם	11
10940	optical	אוֹפּטִי	11
10941	orator	נוֹאֵם	11
10942	orchid	סַחְלָב	11
10943	ore	בֶּצֶר	11
10944	ostrich	יָעֵן	11
10945	padlock	מַנְעוּל	11
10946	pagan	עוֹבֵד אֵלִילִים	11
10947	palate	חֵך	11
10948	partridge	חָגלָה	11
10949	peacock	טַוָס	11
10950	peat	כָּבוּל	11
10951	pedigree	יוּחֲסִין	11
10952	penetrate	לַחדוֹר	11
10953	peril	סַכָּנָה	11
10954	perish	לָמוּת	11
10955	perpetual	נִצחִי	11
10956	perseverance	הַתמָדָה	11
10957	pest	טַרדָן	11
10958	pheasant	פַּסיוֹן	11
10959	pickpocket	כייס	11
10960	pier	מֵזַח	11
10961	placard	כְּרָזָה	11
10962	placid	רוֹגַע	11
10963	plank	קֶרֶשׁ	11
10964	plough	לַחֲרוֹשׁ	11
10965	pluck	לִקְטוֹף	11
10966	poach	לַחְלוֹט	11
10967	pollute	לְזַהֵם	11
10968	porcelain	חַרְסִינָה	11
10969	pore	נַקבּוּבִית	11
10970	porous	נַקבּוּבִי	11
10971	Portuguese	פורטוגזית	11
10972	potent	חָזָק	11
10973	poultry	עוֹפוֹת	11
10974	precarious	מְסוּכָּן	11
10975	predicament	מַצָב קָשֶׁה	11
10976	preface	הַקדָמָה	11
10977	prehistoric	פְּרֶהִיסטוֹרי	11
10978	premium	פּרֶמיָה	11
10979	preoccupation	התעסקות	11
10980	preside	להוביל	11
10981	primrose	רַקֶפֶת	11
10982	probability	הִסתַבְּרוּת	11
10983	procure	לְהַשִׂיג	11
10984	prodigy	פֶּלֶא	11
10985	prolific	פּוֹרֶה	11
10986	prolong	לְהַאֲרִיך	11
10987	prone	נוֹטֶה	11
10988	propaganda	תַעֲמוּלָה	11
10989	propulsion	הֲנָעָה	11
10990	prose	פּרוֹזָה	11
10991	protrude	לִבלוֹט	11
10992	province	מָחוֹז	11
10993	proximity	קִרבָה	11
10994	prudence	זְהִירוּת	11
10995	prunes	שְׁזִיפִים מְיוּבָּשִׁים	11
10996	psalm	מִזמוֹר	11
10997	pullover	אֲפוּדָה	11
10998	radiance	זוֹהַר	11
10999	radish	צְנוֹן	11
11000	raincoat	מְעִיל גֶשֶׁם	11
11001	ramble	לְשׁוֹטֵט	11
11002	rapture	הִתלַהֲבוּת	11
11003	ratification	אִשׁרוּר	11
11004	readiness	נְכוֹנוּת	11
11005	recoil	רְתִיעָה	11
11006	recollect	לִזכּוֹר	11
11007	reconstruct	לְשַׁחְזֵר	11
11008	rectangle	מַלבֵּן	11
11009	rectify	לְתַקֵן	11
11010	recycling	מִחזוּר	11
11011	redeem	לִפְדוֹת	11
11012	reed	קָנֶה	11
11013	refine	לְעַדֵן	11
11014	refuel	לְתַדְלֵק	11
11015	refusal	סֵרוּב	11
11016	rein	לְרַסֵן	11
11017	relapse	לְהָרֵע	11
11018	relent	לְהִתְרַכֵּך	11
11019	reluctance	אִי רָצוֹן	11
11020	reluctance	אִי רָצוֹן	11
11021	remnant	שָׂרִיד	11
11022	render	לְדַקלֵם	11
11023	repetition	חֲזָרָה	11
11024	reprint	הֶדפֵּס	11
11025	reptile	זוֹחֵל	11
11026	repulse	לַהֲדוֹף	11
11027	requisite	נָחוּץ	11
11028	respiration	נְשִׁימָה	11
11029	revision	עדכון	11
11030	revolt	מֶרֶד	11
11031	rind	קְרוּם	11
11032	ripple	אַדְוָה	11
11033	roadmap	מפת דרכים	11
11034	roadside	בצד הדרך	11
11035	rosy	וָרוֹד	11
11036	rot	רָקָב	11
11037	rotate	לְסוֹבֵב	11
11038	rouge	סוֹמֶק	11
11039	salutation	דִברֵי בְּרָכָה	11
11040	sanctify	לְקַדֵשׁ	11
11041	sanitary	תַבְרוּאָתִי	11
11042	saturate	לְהַרְווֹת	11
11043	savour	טַעַם	11
11044	sceptical	סקֶפְּטִי	11
11045	sculptor	פַּסָל	11
11046	seam	תֶפֶר	11
11047	seaman	יַמַאי	11
11048	seashore	חוֹף הַיָם	11
11049	sect	כַּת	11
11050	selfconfidence	ביטחון עצמי	11
11051	selfcontrol	שליטה עצמית	11
11052	selfemployed	עצמאי	11
11053	selfevident	מובן מאליו	11
11054	selfportrait	דיוקן עצמי	11
11055	semicircle	חצי עיגול	11
11056	sermon	דְרָשָׁה	11
11057	serpent	נָחָשׁ	11
11058	shabby	עָלוּב	11
11059	shallow	רָדוּד	11
11060	shawl	צָעִיף	11
11061	sickly	חוֹלָנִי	11
11062	sinister	מְרוּשָׁע	11
11063	sinner	חוֹטֵא	11
11064	skid	הַחלָקָה	11
11065	skim	לְרַחֵף	11
11066	slander	לָשׁוֹן הָרַע	11
11067	sledge	מִזחֶלֶת	11
11068	sleek	לְהַחלִיק	11
11069	slogan	סִיסמָה	11
11070	sociable	חַברוּתִי	11
11071	son-in-law	חתן	11
11072	soot	פִּיחַ	11
11073	soothe	לְהַרְגִיעַ	11
11074	sovereign	שָׁלִיט	11
11075	sow	לִזרוֹעַ	11
11076	spam	ספאם	11
11077	Spaniard	ספרדי	11
11078	spanner	מַפתֵחַ בְּרָגִים	11
11079	sparrow	דְרוֹר	11
11080	speck	נְקוּדָה	11
11081	spinster	סבבה	11
11082	spire	מִבנֶה חֲרוּטִי	11
11083	squint	פְּזִילָה	11
11084	stair	מַדרֵגָה	11
11085	stallion	סוּס הַרבָּעָה	11
11086	stammer	לְגַמגֵם	11
11087	staple	מִצרָך	11
11088	starch	עֲמִילָן	11
11089	starvation	רָעָב	11
11090	stingy	קַמצָן	11
11091	strategic	אִסטרָטֵגִי	11
11092	stub	בָּדָל	11
11093	sturgeon	חִדקָן	11
11094	subdue	לְהַכנִיעַ	11
11095	submerge	לִצְלוֹל	11
11096	sulphur	גוֹפרִית	11
11097	surpass	לַעֲלוֹת עַל	11
11098	susceptible	רָגִישׁ	11
11099	swarm	נָחִיל	11
11100	Swede	שוודית	11
11101	Swiss	שְׁוֵיצָרִי	11
11102	synonym	שֵׁם נִרדָף	11
11103	bastard	מַמזֵר	11
11104	dumb	מְטוּמטָם	11
11105	hank	פְּקַעַת	11
11106	trey	טריי	11
11107	glen	גַיא	11
11108	enjoying	נהנה	11
11109	pleased	מְרוּצֶה	11
11110	burns	כוויות	11
11111	commissioner	נְצִיב	11
11112	vanquish	לְנַצֵחַ	11
11113	morgue	חֲדַר מֵתִים	11
11114	autopsy	נתיחה	11
11115	meow	מִיָאוּ	11
11116	freely	בְּחוֹפְשִׁיוּת	11
11117	racket	מַחבֵּט	11
11118	overdue	באיחור	11
11119	lacking	נָטוּל	11
11120	crock	חֶרֶס	11
11121	clamp	מַהְדֵק	11
11122	canned	מְשׁוּמָר	11
11123	bathtub	אַמבַּטִיָה	11
11124	artery	עוֹרֶק	11
11125	warmer	חם יותר	11
11126	ravine	גַיא	11
11127	pushy	דוחף	11
11128	laughter	צְחוֹק	11
11129	grove	חוּרשָׁה	11
11130	fastest	המהיר ביותר	11
11131	carrier	מוֹבִיל	11
11132	auntie	דוֹדָה	11
11133	wiser	חכם יותר	11
11134	willingly	בְּחֵפֶץ לֵב	11
11135	waltz	וַלס	11
11136	thinner	מְדַלֵל	11
11137	swelling	נְפִיחוּת	11
11138	swat	לְהַצְלִיף	11
11139	steroid	סטרואידים	11
11140	slate	צִפחָה	11
11141	sentinel	זָקִיף	11
11142	rookie	טִירוֹן	11
11143	rehearse	לעשות חזרות	11
11144	quarterback	קוורטרבק	11
11145	ledge	מַדָף	11
11146	justified	מוּצדָק	11
11147	hateful	נִתעָב	11
11148	doorway	פֶּתַח	11
11149	admiral	אַדמִירָל	11
11150	wrestle	לְהִתגוֹשֵׁשׁ	11
11151	velvet	קְטִיפָה	11
11152	span	לְהַקִיף	11
11153	mart	מארט	11
11154	manor	אֲחוּזָה	11
11155	madman	מְטוּרָף	11
11156	intriguing	מסקרן	11
11157	idiotic	אִידיוֹטִי	11
11158	enlighten	לְהַאִיר	11
11159	donut	סוּפגָנִיָה	11
11160	brunch	בראנץ'	11
11161	bridesmaid	שׁוֹשְׁבִינַת הַכַּלָה	11
11162	barrister	עוֹרֵך דִין	11
11163	architect	אַדְרִיכָל	11
11164	applause	תְשׁוּאוֹת	11
11165	alongside	בַּצַד	11
11166	ale	בִּירָה	11
11167	wretched	אוּמלָל	11
11168	smoothly	בצורה חלקה	11
11169	plead	לִטעוֹן	11
11170	payoff	תוֹצָאָה סוּפִית	11
11171	jumpy	עַצבָּנִי	11
11172	intervention	הִתעָרְבוּת	11
11173	hanging	תְלִיָה	11
11174	germ	נֶבֶט	11
11175	freed	מְשׁוּחרָר	11
11176	flashing	הַברָקָה	11
11177	convent	מִנזָר	11
11178	captive	שָׁבוּי	11
11179	vanity	הֶבֶל	11
11180	skate	לְהַחלִיק עַל מִחלָקַיִם	11
11181	preview	תצוגה מקדימה	11
11182	perjury	שְׁבוּעַת שֶׁקֶר	11
11183	parental	שֶׁל הַהוֹרִים	11
11184	onboard	על הסיפון	11
11185	mugged	נשדד	11
11186	maestro	מָאֵסטרוֹ	11
11187	linen	פִּשׁתָן	11
11188	gypsy	צועני	11
11189	grind	לִטחוֹן	11
11190	greasy	שַמנוּנִי	11
11191	estimate	לְהַעֲרִיך	11
11192	elementary	יְסוֹדִי	11
11193	drastic	דרַסטִי	11
11194	dolly	מַבחֵשׁ	11
11195	crow	עוֹרֵב	11
11196	compatriot	בן ארצו	11
11197	cocky	שחצן	11
11198	sprung	קפץ	11
11199	spotlight	זַרקוֹר	11
11200	revealing	חושפני	11
11201	racist	גִזעָן	11
11202	preacher	מַטִיף	11
11203	piper	חֲלִילָן	11
11204	overly	יתר על המידה	11
11205	locket	תליון	11
11206	jab	דְקִירָה	11
11207	hover	לְרַחֵף	11
11208	endure	לִסְבּוֹל	11
11209	dim	עָמוּם	11
11210	chained	כָּבוּל	11
11211	booty	שָׁלָל	11
11212	wand	שַׁרבִּיט	11
11213	scrambled	טָרוּף	11
11214	rattle	טִרטוּר	11
11215	linked	צָמוּד	11
11216	investor	משקיע	11
11217	hustle	הֲמוּלָה	11
11218	forensic	מִשׁפָּטִי	11
11219	enthusiastic	נִלהָב	11
11220	duct	בִּיב	11
11221	devastating	הרסני	11
11222	democrat	דֵמוֹקרָט	11
11223	comeback	הִתאוֹשְׁשׁוּת	11
11224	cheaper	זול יותר	11
11225	charter	שֶׂכֶר	11
11226	calling	יִעוּד	11
11227	blushing	הַסמָקָה	11
11228	yoga	יוֹגָה	11
11229	wrecking	הרס	11
11230	wits	שכל	11
11231	waffles	וופלים	11
11232	virginity	בְּתוּלִים	11
11233	uninvited	לא מוזמן	11
11234	unfaithful	בּוֹגֵד	11
11235	underwater	מתחת למים	11
11236	reel	סְלִיל	11
11237	redhead	ג'ִינג'ִי	11
11238	rave	לְהִשְׁתוֹלֵל	11
11239	ongoing	מתמשך	11
11240	lesser	קָטָן יוֹתֵר	11
11241	lent	מוּשׁאָל	11
11242	jog	לָרוּץ	11
11243	jingle	ג'ִינגֵל	11
11244	itch	לְגַרֵד	11
11245	intellectual	אִינטֶלֶקְטוּאַלִי	11
11246	installed	מוּתקָן	11
11247	indefinitely	ללא הגבלת זמן	11
11248	genetically	מבחינה גנטית	11
11249	fireman	כַּבַּאי	11
11250	faculty	סגל	11
11251	discretion	שיקול דעת	11
11252	declaration	הַצהָרָה	11
11253	crate	אַרְגָז	11
11254	competent	מוּכשָׁר	11
11255	breaker	נַחשׁוֹל	11
11256	bakery	מַאֲפִיָה	11
11257	asylum	מִקְלָט	11
11258	wedge	טְרִיז	11
11259	unfit	לֹא כַּשִׁיר	11
11260	tuxedo	חֲלִיפַת עֶרֶב	11
11261	torment	לַעֲנוֹת	11
11262	superhero	גיבור על	11
11263	stirring	בְּחִישָׁה	11
11264	spinal	שֶׁל עַמוּד הַשִׁדרָה	11
11265	server	שרת	11
11266	seminar	סֵמִינָר	11
11267	rabble	אֲסַפסוּף	11
11268	pneumonia	דלקת ריאות	11
11269	perk	הֲטָבָה	11
11270	owl	יַנשׁוּף	11
11271	override	לעקוף	11
11272	manslaughter	הריגה	11
11273	lime	סִיד	11
11274	lettuce	חַסָה	11
11275	kinky	מקורזל	11
11276	instructor	מַדְרִיך	11
11277	grieve	לְהִתְאַבֵּל	11
11278	gorilla	גוֹרִילָה	11
11279	frustration	תִסכּוּל	11
11280	extensive	נִרחָב	11
11281	exploration	חֲקִירָה	11
11282	authentic	אוֹתֶנְטִי	11
11283	arraignment	העמדה לדין	11
11284	tighter	צמוד יותר	11
11285	suitable	מַתְאִים	11
11286	specimen	דוּגמָה	11
11287	solving	פְּתִירָה	11
11288	overprotective	מגונן יתר על המידה	11
11289	identification	הִזדַהוּת	11
11290	grandchild	נֶכֶד	11
11291	genuinely	בְּכֵנוּת	11
11292	founded	מְבוּסָס	11
11293	flushed	סמוק	11
11294	floss	חוט דנטלי	11
11295	dove	יוֹנָה	11
11296	decorated	מְעוּטָר	11
11297	crunch	לִכסוֹס	11
11298	cramp	לְהַגבִּיל	11
11299	corny	נָדוֹשׁ	11
11300	connecting	מְקַשֵׁר	11
11301	bunk	דַרגָשׁ	11
11302	bitten	נָשׁוּך	11
11303	ultrasound	אולטרסאונד	11
11304	ultimatum	אוּלְטִימָטוּם	11
11305	retrieve	לִשְׁלוֹף	11
11306	multi	רַב	11
11307	millionaire	מִילִיוֹנֵר	11
11308	mechanical	מֵכָנִי	11
11309	hiking	טיול רגלי	11
11310	hatchet	גַרזֶן	11
11311	doubtful	מְסוּפָּק	11
11312	dedication	הַקדָשָׁה	11
11313	cellular	תָאִי	11
11314	butterfly	פַּרְפַּר	11
11315	biopsy	בִּיוֹפְּסִיָה	11
11316	whiz	גָאוֹן	11
11317	voluntarily	מרצון	11
11318	ventilator	מְאַוְרֵר	11
11319	unload	לִפְרוֹק	11
11320	universal	אוּנִיבֶרְסָלִי	11
11321	toad	קַרפָּדָה	11
11322	snitch	לְהַלשִׁין	11
11323	sap	לְהַתִישׁ	11
11324	reassure	לְהַרְגִיעַ	11
11325	prey	טֶרֶף	11
11326	mystical	מיסטי	11
11327	mayhem	הַטָלַת מוּם	11
11328	matrimony	נִשׂוּאִים	11
11329	magnet	מַגנֵט	11
11330	curly	מְתוּלתָל	11
11331	cupid	קוּפִּידוֹן	11
11332	comrade	חָבֵר	11
11333	bragging	רַברְבָנִי	11
11334	aircraft	כְּלִי טַיִס	11
11335	adjusted	מוּתאָם	11
11336	vaguely	בצורה מעורפלת	11
11337	tying	קְשִׁירָה	11
11338	slash	לַחתוֹך	11
11339	sigh	אֲנָחָה	11
11340	setback	נְסִיגָה	11
11341	retail	קִמעוֹנִי	11
11342	melting	הַתָכָה	11
11343	mar	לְקַלְקֵל	11
11344	lair	מִרבָּץ	11
11345	hag	מְכַשֵׁפָה	11
11346	fury	זַעַם	11
11347	felicity	שמחה	11
11348	fang	נִיב	11
11349	expelled	מְגוּרָשׁ	11
11350	decoration	תַפאוּרָה	11
11351	cola	קולה	11
11352	blackout	הַאֲפָלָה	11
11353	believable	אמין	11
11354	backfire	אש לאחור	11
11355	vista	נוֹף	11
11356	vintage	בָּצִיר	11
11357	urn	מֵיחָם	11
11358	slimy	חֲלַקְלַק	11
11359	renting	הַשׂכָּרָה	11
11360	reign	לִמְלוֹך	11
11361	mailbox	תיבת דואר	11
11362	informant	מודיע	11
11363	elf	שֵׁדוֹן	11
11364	disconnect	לְנַתֵק	11
11365	designing	תִכנוּן	11
11366	crooked	עָקוֹם	11
11367	crook	נוכל	11
11368	conveniently	בצורה נוחה	11
11369	colon	מְעִי גַס	11
11370	warp	לְעַקֵם	11
11371	tacky	דָבִיק	11
11372	steering	היגוי	11
11373	stability	יַצִיבוּת	11
11374	reset	אִתחוּל	11
11375	radius	רַדִיוּס	11
11376	opener	פּוֹתחָן	11
11377	mash	לִכתוֹשׁ	11
11378	festive	חֲגִיגִי	11
11379	desperation	יֵאוּשׁ	11
11380	critic	מְבַקֵר	11
11381	consulting	ייעוץ	11
11382	bagel	כַּעַך	11
11383	authorization	הַרשָׁאָה	11
11384	agitate	לְהַתְסִיס	11
11385	wishful	מִשׁתוֹקֵק	11
11386	wimp	חֲלָשׁלוּשׁ	11
11387	unbearable	בִּלתִי נִסבָּל	11
11388	tonic	טוֹנִיק	11
11389	suction	יְנִיקָה	11
11390	sporting	ספּוֹרטִיבִי	11
11391	safest	הכי בטוח	11
11392	oval	סְגַלגַל	11
11393	newlywed	זוּג צָעִיר	11
11394	nauseous	מַבְחִיל	11
11395	misguided	מוטעה	11
11396	mildly	בעדינות	11
11397	liable	עָלוּל	11
11398	introducing	מציגים	11
11399	hen	תַרְנְגוֹלֶת	11
11400	dislike	לִשְׂנוֹא	11
11401	diploma	תְעוּדָה	11
11402	delude	לְהַשְׁלוֹת	11
11403	crummy	חֲסַר טַעַם	11
11404	contraction	צִמצוּם	11
11405	carve	לְגַלֵף	11
11406	bottled	בבקבוק	11
11407	bash	לַחֲבוֹט	11
11408	unavailable	לא זמין	11
11409	twenties	שנות העשרים	11
11410	trustworthy	אָמִין	11
11411	stupidity	טִפּשׁוּת	11
11412	remorse	חֲרָטָה	11
11413	preferably	מוּטָב	11
11414	photography	צילום	11
11415	outsider	זָר	11
11416	operational	מִבצָעִי	11
11417	northwest	צְפוֹן מַעֲרָב	11
11418	mule	פֶּרֶד	11
11419	mourn	לְהִתְאַבֵּל	11
11420	mechanism	מַנגָנוֹן	11
11421	mafia	מַפִיָה	11
11422	Greece	יָוָן	11
11423	greatness	גְדוּלָה	11
11424	girlie	בַּחוּרוֹנֶת	11
11425	delirious	הזויה	11
11426	cubicle	חַדרוֹן	11
11427	check-up	בְּדִיקָה	11
11428	certified	מוּסמָך	11
11429	automobile	מְכוֹנִית	11
11430	athletic	אַתלֵטִי	11
11431	windscreen	מָגֵן רוֹחַ	11
11432	viper	צֶפַע	11
11433	starring	מככב	11
11434	spear	חֲנִית	11
11435	slit	סֶדֶק	11
11436	serenity	רוֹגַע	11
11437	roar	שְׁאָגָה	11
11438	quarry	מַחצָבָה	11
11439	prosecutor	תוֹבֵעַ	11
11440	probe	בְּדִיקָה	11
11441	potentially	באופן פוטנציאלי	11
11442	poodle	פּוּדֵל	11
11443	pitiful	מְעוֹרֵר רַחֲמִים	11
11444	persistent	מַתְמִיד	11
11445	perception	תְפִיסָה	11
11446	neighbourhood	שְׁכוּנָה	11
11447	nagging	נִדנוּד	11
11448	masterpiece	יְצִירַת מוּפֵת	11
11449	limbo	נְשִׁיָה	11
11450	karate	קָרָטֵה	11
11451	irritating	מְעַצבֵּן	11
11452	incline	שְׁפִיָה	11
11453	hump	גַבנוּן	11
11454	holler	לִצְעוֹק	11
11455	haw	הוו	11
11456	gauge	מַד	11
11457	fiasco	כִּשָׁלוֹן	11
11458	fallout	נשורת	11
11459	educational	חינוכית	11
11460	destination	יַעַד	11
11461	crimson	אַרגָמָן	11
11462	continent	יַבֶּשֶׁת	11
11463	cider	סַיִדֵר	11
11464	brochure	חוֹבֶרֶת	11
11465	behaviour	הִתְנַהֲגוּת	11
11466	bargaining	הִתמַקְחוּת	11
11467	awe	יִראַת כָּבוֹד	11
11468	arena	זִירָה	11
11469	wiggle	לְכַשְׁכֵּשׁ	11
11470	welcoming	מסביר פנים	11
11471	villain	נָבָל	11
11472	smear	לִמְרוֹחַ	11
11473	resentment	הִתמַרמְרוּת	11
11474	penguin	פינגווין	11
11475	panther	פַּנתֵר	11
11476	overhear	לִשְׁמוֹעַ בָּמִקרֶה	11
11477	mounted	רָכוּב	11
11478	morality	מוּסָרִיוּת	11
11479	leopard	נָמֵר	11
11480	lab	מַעבָּדָה	11
11481	jackpot	קוּפָּה	11
11482	icy	קַר	11
11483	hoot	לִצְפּוֹר	11
11484	handshake	לְחִיצַת יָד	11
11485	grilled	עַל הָאֵשׁ	11
11486	formality	רִשְׁמִיוּת	11
11487	elevator	מַעֲלִית	11
11488	bypass	לַעֲקוֹף	11
11489	breeding	רבייה	11
11490	boxer	מִתאַגרֵף	11
11491	binding	כְּרִיכָה	11
11492	audio	שֶׁמַע	11
11493	acre	אַקְר	11
11494	accidental	מִקרִי	11
11495	ulterior	כָּמוּס	11
11496	tangle	סְבַך	11
11497	sought	חיפשו	11
11498	softball	כַּדוּר בָּסִיס	11
11499	snag	קֶרַע	11
11500	smallest	הכי קטן	11
11501	sling	קֶלַע	11
11502	rumour	שְׁמוּעָה	11
11503	remarried	נישא בשנית	11
11504	reluctant	סרבן	11
11505	puddle	שְׁלוּלִית	11
11506	perceptive	מָהִיר תְפִיסָה	11
11507	oral	שֶׁבְּעַל פֶּה	11
11508	miraculous	פִּלאִי	11
11509	memorable	בלתי נשכח	11
11510	maternal	אִמָהִי	11
11511	lookout	תַצְפִּית	11
11512	longing	גַעגוּעִים	11
11513	lockup	צִינוֹק	11
11514	lizard	לְטָאָה	11
11515	librarian	סַפרָן	11
11516	junkie	נַרקוֹמָן	11
11517	immoral	לֹא מוּסָרִי	11
11518	hypothetically	באופן היפותטי	11
11519	extortion	סְחִיטָה	11
11520	essentially	בעצם	11
11521	downright	לְגַמרֵי	11
11522	digest	לְעַכֵּל	11
11523	cranberry	חֲמוּצִית	11
11524	covert	סָמוּי	11
11525	chorus	מַקְהֵלָה	11
11526	bygone	עברו	11
11527	buzzing	זמזום	11
11528	weary	לְהַלאוֹת	11
11529	visa	וִיזָה	11
11530	viewer	צוֹפֶה	11
11531	uptown	למעלה העיר	11
11532	tucker	טאקר	11
11533	transmitter	מַשׁדֵר	11
11534	tart	טַארט	11
11535	taping	הקלטת	11
11536	takeout	אוכל לקחת	11
11537	stepmother	אֵם חוֹרֶגֶת	11
11538	stale	לֹא טָרִי	11
11539	pros	יתרונות	11
11540	merger	מיזוג	11
11541	mandatory	הֶכְרֵחִי	11
11542	ludicrous	מְגוּחָך	11
11543	inject	לְהַזרִיק	11
11544	dire	נוֹרָא	11
11545	deceiving	מרמה	11
11546	caterer	קייטרינג	11
11547	budge	לָזוּז	11
11548	vending	מכירה אוטומטית	11
11549	sexist	סקסיסטית	11
11550	sanctuary	מִקְלָט	11
11551	regain	לְקַבֵּל בְּחַזָרָה	11
11552	processing	עיבוד	11
11553	picky	בררן	11
11554	misjudge	לִטְעוֹת בְּשִׁפּוּט	11
11555	miscarriage	הַפָּלָה	11
11556	mink	חַרפָּן	11
11557	memorize	לְשַׁנֵן	11
11558	licking	ללקק	11
11559	lens	עֲדָשָׁה	11
11560	jitter	לְהִתְעַצְבֵּן	11
11561	invade	לִפְלוֹשׁ	11
11562	interruption	הַפרָעָה	11
11563	illegally	באופן לא חוקי	11
11564	glitch	תקלה	11
11565	fewer	פחות	11
11566	doubly	כִּפלַיִם	11
11567	distraught	מְפוּזָר	11
11568	dispose	להיפטר	11
11569	dagger	פִּגיוֹן	11
11570	cruelty	אַכְזָרִיוּת	11
11571	cancelling	ביטול	11
11572	belonging	שייכות	11
11573	allegation	טענה	11
11574	alias	כינוי	11
11575	aging	הְזדַקְנוּת	11
11576	zomby	זומבי	11
11577	slaughter	לִשְׁחוֹט	11
11578	sensational	סֶנסַצִיוֹנִי	11
11579	revolutionary	מַהְפֵּכָנִי	11
11580	par	נָקוּב	11
11581	overhead	מִמַעַל	11
11582	oddly	בְּאֹפֶן מוּזַר	11
11583	interrogate	לַחקוֹר	11
11584	imperative	הֶכְרֵחִי	11
11585	impeccable	לְלֹא דוֹפִי	11
11586	hurtful	פּוֹגֵעַ	11
11587	helper	עוֹזֵר	11
11588	endangered	בסכנת הכחדה	11
11589	dungeon	צִינוֹק	11
11590	disgust	סְלִידָה	11
11591	devious	עַרמוּמִי	11
11592	destruct	להרוס	11
11593	countdown	סְפִירָה לְאָחוֹר	11
11594	brotherhood	אחווה	11
11595	brink	סַף	11
11596	berry	ברי	11
11597	banker	בַּנקָאִי	11
11598	ballroom	אולם אירועים	11
11599	ark	ארון קודש	11
11600	annoyance	מוֹרַת רוֹחַ	11
11601	admirer	מַעֲרִיץ	11
11602	admirable	רָאוּי לְהַעֲרָצָה	11
11603	activate	לְהַפְעִיל	11
11604	wed	לְהִתְחַתֵן	11
11605	weaver	אוֹרֵג	11
11606	valve	שַׁסתוֹם	11
11607	twit	נְזִיפָה	11
11608	trout	פוֹרֶל	11
11609	slay	לִקְטוֹל	11
11610	sham	בְּלוֹף	11
11611	scrap	לְהַשְׁלִיך	11
11612	resourceful	בַּעַל תוּשִׁיָה	11
11613	remarkably	באופן מדהים	11
11614	refresh	לְרַעֲנֵן	11
11615	puffy	נָפוּחַ	11
11616	precaution	אֶמְצָעֵי זְהִירוּת	11
11617	pointy	מחודד	11
11618	nipple	פִּטמָה	11
11619	ministry	מִשׂרָד	11
11620	hubby	בַּעַל	11
11621	flare	הַבהָקָה	11
11622	fierce	עַז	11
11623	demise	פְּטִירָה	11
11624	crushing	גְרִיסָה	11
11625	clinging	נצמד	11
11626	checkbook	פִּנקַס צֶ'קִים	11
11627	cashmere	קשמיר	11
11628	calmly	ברוגע	11
11629	believer	מַאֲמִין	11
11630	amazingly	באופן מדהים	11
11631	ultra	אוּלְטרָה	11
11632	tolerance	סוֹבלָנוּת	11
11633	tactical	טַקטִי	11
11634	stairwell	חֲדַר הַמַדרֵגוֹת	11
11635	spur	שְׁלוּחָה	11
11636	slower	איטי יותר	11
11637	sewing	תְפִירָה	11
11638	separately	לְחוּד	11
11639	restricted	מוגבל	11
11640	partially	חֶלקִית	11
11641	mingle	לְעַרֵב	11
11642	knack	כִּשָׁרוֹן	11
11643	gullible	פֶּתִי	11
11644	grid	רֶשֶׁת	11
11645	folding	מִתקַפֵּל	11
11646	financially	מבחינה כלכלית	11
11647	filming	הַסרָטָה	11
11648	eater	אוֹכֵל	11
11649	dysfunctional	לא מתפקד	11
11650	dripping	טִפטוּף	11
11651	ditto	כַּנִזכָּר לְעֵיל	11
11652	distinguished	נִכבָּד	11
11653	defence	הֲגָנָה	11
11654	defeated	מוּבָס	11
11655	corruption	שְׁחִיתוּת	11
11656	contractor	קַבְּלָן	11
11657	conceive	לַהֲרוֹת	11
11658	clone	שיבוט	11
11659	circulation	מַחזוֹר	11
11660	caliber	קָלִיבֶּר	11
11661	brighten	לְהַאִיר	11
11662	banquet	סְעוּדָה	11
11663	anticipate	לְצַפּוֹת	11
11664	annoy	לְהַרְגִיז	11
11665	whim	גַחְמָה	11
11666	volatile	נָדִיף	11
11667	veto	וֵטוֹ	11
11668	successfully	בְּהַצלָחָה	11
11669	severely	בצורה חמורה	11
11670	sage	חָכָם	11
11671	runaway	בּוֹרֵחַ	11
11672	quarantine	בידוד	11
11673	premiere	בְּכוֹרָה	11
11674	painless	ללא כאבים	11
11675	orphan	יָתוֹם	11
11676	orphanage	בֵּית יְתוֹמִים	11
11677	offence	הַתקָפָה	11
11678	oasis	נָוֶה	11
11679	nip	צְבִיטָה	11
11680	negotiation	מַשָׂא וּמַתָן	11
11681	narcotic	סַם	11
11682	nag	לְנַדְנֵד	11
11683	mistletoe	דִבקוֹן	11
11684	meddling	התערבות	11
11685	manifest	לְהַפְגִין	11
11686	loo	לוּ	11
11687	intrigue	תְכָכִים	11
11688	injustice	אִי צֶדֶק	11
11689	homicidal	רצחני	11
11690	granny	סבתא	11
11691	gigantic	עֲנָקִי	11
11692	dye	צֶבַע	11
11693	disturbance	הַפרָעָה	11
11694	disastrous	הַרסָנִי	11
11695	demented	מְטוּרָף	11
11696	cosmic	קוֹסמִי	11
11697	cheerful	עַלִיז	11
11698	brunette	שְׁחַרחוֹרֶת	11
11699	beverage	מַשׁקֶה	11
11700	arcade	מִקמֶרֶת	11
11701	unethical	לא מוסרי	11
11702	swollen	נָפוּחַ	11
11703	swan	בַּרבּוּר	11
11704	scalpel	אזמל	11
11705	prototype	אַב טִיפּוּס	11
11706	prop	לִתְמוֹך	11
11707	prescribe	לִקְבּוֹעַ	11
11708	pompous	מְנוּפָּח	11
11709	poetic	פִּיוּטִי	11
11710	ploy	תַכסִיס	11
11711	paw	רֶגֶל	11
11712	manipulation	מָנִיפּוּלָצִיָה	11
11713	lasting	נִמשָׁך	11
11714	keg	חָבִית קְטָנָה	11
11715	jell	לְהַקְרִישׁ	11
11716	insignificant	לֹא מַשְׁמָעוּתִי	11
11717	inmate	אָסִיר	11
11718	hasty	חָפוּז	11
11719	grumpy	מְמוּרמָר	11
11720	fulfilled	מילא	11
11721	evolution	הִתפַּתְחוּת	11
11722	discharged	משוחרר	11
11723	disagreement	מַחֲלוֹקֶת	11
11724	dine	לִסעוֹד	11
11725	dean	דֵיקָן	11
11726	cornered	בפינה	11
11727	cork	פְּקָק	11
11728	copied	מוּעֲתָק	11
11729	confrontation	עימות	11
11730	brightest	הבהיר ביותר	11
11731	banned	אָסוּר	11
11732	attendant	מְטַפֵּל	11
11733	athlete	אַתלֵט	11
11734	amaze	לְהַדהִים	11
11735	stuffy	מַחֲנִיק	11
11736	sexuality	מִינִיוּת	11
11737	segment	מִגזָר	11
11738	revelation	הִתגַלוּת	11
11739	respirator	מַנשִׁים	11
11740	pulse	דוֹפֶק	11
11741	processed	מְעוּבָּד	11
11742	polygraph	פּוֹלִיגרָף	11
11743	ordinarily	באופן רגיל	11
11744	morally	מבחינה מוסרית	11
11745	matrix	מַטרִיצָה	11
11746	martyr	קָדוֹשׁ מְעוּנֶה	11
11747	martial	צְבָאִי	11
11748	invaded	פלשו	11
11749	homey	בֵּיתִי	11
11750	heed	תְשׁוּמַת לֵב	11
11751	heartbroken	שְׁבוּר לֵב	11
11752	groove	חָרִיץ	11
11753	greatly	מְאוֹד	11
11754	forge	לְהַחשִׁיל	11
11755	florist	מוֹכֵר פְּרָחִים	11
11756	firsthand	מִמָקוֹר רִאשׁוֹן	11
11757	fiend	שָׂטָן	11
11758	expanding	מתרחב	11
11759	drummer	מְתוֹפֵף	11
11760	dandy	גַנדְרָן	11
11761	crippled	נָכֶה	11
11762	craving	הִשׁתוֹקְקוּת	11
11763	connote	לְרַמֵז	11
11764	conditioner	מְרַכֵּך שֵׂעָר	11
11765	bubbly	תוֹסֵס	11
11766	beeper	ביפר	11
11767	baptism	טְבִילָה	11
11768	ache	כְּאֵב	11
11769	womb	רֶחֶם	11
11770	wiring	תִיוּל	11
11771	tummy	בֶּטֶן	11
11772	surrogate	תַחֲלִיף	11
11773	stray	לִסְטוֹת	11
11774	snob	סְנוֹבּ	11
11775	slowing	האטה	11
11776	scoot	סקוט	11
11777	scanner	סוֹרֵק	11
11778	rightful	צודק	11
11779	richest	העשיר ביותר	11
11780	prophet	נָבִיא	11
11781	paralysis	שיתוק	11
11782	mellow	רַך	11
11783	makeover	מהפך	11
11784	jade	יַרקָן	11
11785	interstate	בין מדינות	11
11786	historic	הִיסטוֹרִי	11
11787	flock	עֵדֶר	11
11788	disgusted	נִגעָל	11
11789	clam	צִדפָּה	11
11790	broadsheet	גיליון רחב	11
11791	brew	לְהִתְבַּשֵׁל	11
11792	borrowing	שְׁאֵילָה	11
11793	wildest	הכי פרוע	11
11794	unauthorized	לא מורשה	11
11795	troll	גַמָד	11
11796	snatch	לַחטוֹף	11
11797	retro	רטרו	11
11798	quilt	כֶּסֶת	11
11799	painfully	בכאב	11
11800	outlet	מוֹצָא	11
11801	mainland	יַבֶּשֶׁת	11
11802	lonesome	גַלמוּד	11
11803	lawfully	כדין	11
11804	intercept	לְעַכֵּב	11
11805	hector	הקטור	11
11806	hamster	אוֹגֵר	11
11807	grownup	מבוגר	11
11808	goldfish	דג זהב	11
11809	glued	דָבוּק	11
11810	ghetto	גֶטוֹ	11
11811	gait	הֲלִיכָה	11
11812	delusion	אַשְׁלָיָה	11
11813	dart	חֵץ	11
11814	compelling	משכנע	11
11815	colonial	קוֹלוֹנִיאָלִי	11
11816	charitable	צדקה	11
11817	carton	קַרטוֹן	11
11818	boiling	רְתִיחָה	11
11819	bate	בייט	11
11820	awaiting	מחכה	11
11821	assign	לְהַקְצוֹת	11
11822	arrogance	יְהִירוּת	11
11823	takeover	השתלטות	11
11824	synchronize	לְסַנכְרֵן	11
11825	stalk	גִבעוֹל	11
11826	spleen	טְחוֹל	11
11827	spacecraft	חללית	11
11828	slob	סלוב	11
11829	prominent	בּוֹלֵט	11
11830	prise	פְּרָס	11
11831	presumptuous	יָהִיר	11
11832	prejudice	לִפְגוֹעַ	11
11833	platoon	מַחלָקָה	11
11834	pickle	מלפפון חמוץ	11
11835	permitted	מוּתָר	11
11836	mush	דַיסָה	11
11837	mummy	אִמָא	11
11838	macaroni	מַקָרוֹנִי	11
11839	legendary	אַגָדִי	11
11840	itinerary	מַסלוּל	11
11841	hepatitis	דַלֶקֶת הַכָּבֵד	11
11842	heave	לְהַנִיף	11
11843	gender	מִין	11
11844	fading	דוֹהֶה	11
11845	dumbest	הכי מטומטם	11
11846	dishwasher	מַדִיחַ כֵּלִים	11
11847	descriptive	תֵאוּרִי	11
11848	cunning	עַרמוּמִי	11
11849	cripple	נָכֶה	11
11850	cove	מִפרָץ	11
11851	compulsive	כְּפִיָתִי	11
11852	burglary	פְּרִיצָה	11
11853	bumpy	לֹא יָשָׁר	11
11854	blaze	לֶהָבָה	11
11855	affirmative	חִיוּבִי	11
11856	adrenaline	אדרנלין	11
11857	unreal	דִמיוֹנִי	11
11858	taint	לְהַכתִים	11
11859	spree	בּוּלמוּס	11
11860	soak	לְהַשְׁרוֹת	11
11861	sever	לְנַתֵק	11
11862	scarce	נָדִיר	11
11863	scalp	קַרקֶפֶת	11
11864	rewind	להריץ לאחור	11
11865	pretentious	יומרני	11
11866	planner	מְתַכנֵן	11
11867	placing	הַצָבָה	11
11868	overrated	מוערך יתר על המידה	11
11869	loathe	לְתַעֵב	11
11870	joker	לֵץ	11
11871	heater	מְחַמֵם	11
11872	grin	לְגַחֵך	11
11873	gospel	בְּשׂוֹרָה	11
11874	filter	לְסַנֵן	11
11875	fertility	פִּריוֹן	11
11876	exterior	חִיצוֹנִי	11
11877	epidemic	מגפה	11
11878	enterprise	מִפְעָל	11
11879	emerald	בַּרֶקֶת	11
11880	ecstatic	אֶקסְטָטִי	11
11881	ecstasy	אֶקסְטָזָה	11
11882	duly	כַּדִין	11
11883	distribution	הֲפָצָה	11
11884	clubhouse	מועדון	11
11885	clot	קְרִישׁ דָם	11
11886	cheater	רַמַאִי	11
11887	bursting	בִּצבּוּץ	11
11888	breather	מְנוֹחָה קְצָרָה	11
11889	bending	הִתעַקְמוּת	11
11890	attendance	נוֹכְחוּת	11
11891	arsonist	מַבעִיר	11
11892	valiant	אַמִיץ	11
11893	uphold	לקיים	11
11894	unarmed	לא חמוש	11
11895	thrilling	מְרַתֵק	11
11896	thigh	יָרֵך	11
11897	terminate	לְסַיֵם	11
11898	spiral	סְלִילִי	11
11899	spaceship	חֲלָלִית	11
11900	salon	סָלוֹן	11
11901	ramp	כֶּבֶשׁ	11
11902	quaint	מוּזָר	11
11903	patronize	להתנשא	11
11904	patio	פָּטִיוֹ	11
11905	paddle	מָשׁוֹט	11
11906	mailman	דואר	11
11907	joyous	מְשַׂמֵחַ	11
11908	invincible	בלתי מנוצח	11
11909	interpret	לְפַרֵשׁ	11
11910	insecurity	חוסר ביטחון	11
11911	infamous	מְתוֹעָב	11
11912	fragment	קֶטַע	11
11913	exploit	לְנַצֵל	11
11914	dusty	מְאוּבָּק	11
11915	defy	לְהַתְרִיס	11
11916	coy	צָנוּעַ	11
11917	countless	אין ספור	11
11918	conjure	לְהַעֲלוֹת	11
11919	confine	לְהַגבִּיל	11
11920	chateau	טִירָה	11
11921	blur	לְטַשׁטֵשׁ	11
11922	bleach	לְהַלבִּין	11
11923	beck	בק	11
11924	ban	לֶאֱסוֹר	11
11925	backseat	המושב האחורי	11
11926	accomplishment	הֶשֵׂג	11
11927	wisely	בחוכמה	11
11928	wildlife	חַיוֹת בַּר	11
11929	valet	חַדרָן	11
11930	vaccine	תַרכִּיב	11
11931	unnatural	לֹא טִבעִי	11
11932	tasting	טְעִימָה	11
11933	seducing	מפתה	11
11934	secretive	סודי	11
11935	screwdriver	מַברֵג	11
11936	rightfully	בצדק	11
11937	poorly	בצורה גרועה	11
11938	polling	סקרים	11
11939	pedestal	אֶדֶן	11
11940	mystic	מִיסטִי	11
11941	miniature	מִינִיאָטוּרָה	11
11942	microscope	מִיקרוֹסקוֹפּ	11
11943	maple	אֶדֶר	11
11944	lantern	פָּנָס	11
11945	infinite	אֵינְסוֹף	11
11946	incriminate	לְהַפְלִיל	11
11947	hygiene	גֵהוּת	11
11948	harp	נֶבֶל	11
11949	gage	מַד	11
11950	freight	הוֹבָלָה	11
11951	fore	חֵלֶק קִדמִי	11
11952	flooding	שִׁיטָפוֹן	11
11953	eliminated	חוסלו	11
11954	deacon	כּוֹמֶר זוּטָר	11
11955	cuter	חמוד יותר	11
11956	continental	יַבַּשׁתִי	11
11957	container	מְכוֹלָה	11
11958	cavity	חָלָל	11
11959	Capricorn	מַזַל גְדִי	11
11960	atomic	אָטוֹמִי	11
11961	wider	רחב יותר	11
11962	dumpling	כּוּפתָה	11
11963	underage	קטינים	11
11964	truthfully	בכנות	11
11965	tamper	להתעסק	11
11966	statute	חוֹק	11
11967	sparkling	נוֹצֵץ	11
11968	sod	טִפֵּשׁ	11
11969	socially	מבחינה חברתית	11
11970	sideline	קו צד	11
11971	rhinoceros	קַרנַף	11
11972	railing	מַעֲקֶה	11
11973	puberty	בַּגרוּת	11
11974	phantom	דִמיוֹנִי	11
11975	pesky	מטריד	11
11976	outrage	שַׁעֲרוּרִיָה	11
11977	openly	בְּגָלוּי	11
11978	nominate	לְמַנוֹת	11
11979	itching	עִקצוּץ	11
11980	intuition	אִינטוּאִיצִיָה	11
11981	icky	מפחיד	11
11982	humility	עֲנָוָה	11
11983	fishy	חָשׁוּד	11
11984	finch	פָּרוּשׁ	11
11985	ferry	מַעבּוֹרֶת	11
11986	excessive	מוּפרָז	11
11987	evolve	לְהִתְפַּתֵחַ	11
11988	eligible	זכאי	11
11989	dosage	מִנוּן	11
11990	disrupt	לְשַׁבֵּשׁ	11
11991	dipping	טְבִילָה	11
11992	derange	להטריף	11
11993	cuckoo	קוּקִיָה	11
11994	craziness	טֵרוּף	11
11995	compatible	תוֹאֵם	11
11996	circumstantial	נסיבתי	11
11997	bunker	בּוּנקֶר	11
11998	asthma	אַסְתְמָה	11
11999	arise	לְהִתְעוֹרֵר	11
12000	triad	שְׁלִישִׁיָה	11
12001	trashy	חֲסַר עֵרֶך	11
12002	tilt	לְהַטוֹת	11
12003	thorn	קוֹץ	11
12004	suburban	פַּרבַרִי	11
12005	soothing	הַרגָעָה	11
12006	slumber	תְנוּמָה	11
12007	slayer	קוטל	11
12008	shindig	שינדיג	11
12009	sentiment	רֶגֶשׁ	11
12010	riddance	ריקוד	11
12011	purity	טוֹהַר	11
12012	offshore	מחוץ לחוף	11
12013	massacre	טֶבַח	11
12014	isolation	בידוד	11
12015	impersonal	לֹא אִישִׁי	11
12016	hoop	גַלגַל	11
12017	hamlet	כְּפָר קָטָן	11
12018	footprint	עָקֵב	11
12019	fluke	מַזָל	11
12020	festivity	חֲגִיגָה	11
12021	feisty	חוצבי	11
12022	evacuate	פינוי	11
12023	detain	לְעַכֵּב	11
12024	defender	מָגֵן	11
12025	creeping	זְחִילָה	11
12026	classics	קלַאסִיקָה	11
12027	bud	לְהַנֵץ	11
12028	bitterness	מְרִירוּת	11
12029	baloney	שְׁטוּיוֹת	11
12030	ashtray	מַאֲפֵרָה	11
12031	apocalypse	אַפּוֹקָלִיפּסָה	11
12032	zillion	מיליון	11
12033	wan	wan	11
12034	viable	בַּר חַיִים	11
12035	sympathize	להזדהות	11
12036	squirt	לְהַשְׁפּרִיץ	11
12037	spade	כף	11
12038	snappy	נִמרָץ	11
12039	sleepover	שינה	11
12040	reunited	התאחדו מחדש	11
12041	retainer	מְשָׁרֵת	11
12042	restroom	שירותים	11
12043	repercussion	השלכה	11
12044	relive	לחיות מחדש	11
12045	reef	שׁוּנִית	11
12046	reconciliation	פִּיוּס	11
12047	reconcile	לְהַשְׁלִים	11
12048	recognise	לְהַכִּיר	11
12049	raven	עוֹרֵב	11
12050	prevail	לִגבּוֹר	11
12051	preach	לְהַטִיף	11
12052	omen	אוֹת	11
12053	noose	מוֹקֵשׁ	11
12054	meatloaf	קְצִיץ בָּשָׂר	11
12055	manicure	מָנִיקוּר	11
12056	landlady	בַּעֲלַת בַּיִת	11
12057	hypothesis	הַשׁעָרָה	11
12058	homesick	מִתגַעֲגֵעַ הַבַּיתָה	11
12059	hive	כוורת	11
12060	hectic	קַדַחתָנִי	11
12061	heartbreak	שברון לב	11
12062	haunting	רודף	11
12063	gall	חוּצפָּה	11
12064	frown	מַבָּט כּוֹעֵס	11
12065	fingerprint	טְבִיעַת אֶצבָּעוֹת	11
12066	extract	לְהוֹצִיא	11
12067	expire	לָפוּג	11
12068	exhausting	מַתִישׁ	11
12069	exceptional	יוֹצֵא דוֹפֶן	11
12070	disregard	הִתעַלְמוּת	11
12071	crisp	פָּרִיך	11
12072	cooperative	קוֹאוֹפּרָטִיב	11
12073	cling	לִדבּוֹק	11
12074	blender	מַמחֶה	11
12075	bitty	ביטי	11
12076	bead	חָרוּז	11
12077	badger	גִירִית	11
12078	arch	קֶשֶׁת	11
12079	anticipation	הֶקדֵם	11
12080	advocate	עוֹרֵך דִין	11
12081	waterfront	קו המים	11
12082	upstanding	הָגוּן	11
12083	unprofessional	לא מקצועי	11
12084	unhealthy	חוֹלָנִי	11
12085	turmoil	אַנְדְרָלָמוּסִיָה	11
12086	truthful	דוֹבֵר אֶמֶת	11
12087	toothpaste	משחת שיניים	11
12088	thoughtless	חֲסַר מַחֲשָׁבָה	11
12089	spun	הסתובב	11
12090	spook	מפחיד	11
12091	shady	מוּצַל	11
12092	senseless	חֲסַר טַעַם	11
12093	scooter	קַטנוֹעַ	11
12094	ringer	מצלצל	11
12095	refuge	מִקְלָט	11
12096	pun	מִשְׂחָק מִלִים	11
12097	preposterous	מְגוּחָך	11
12098	portable	נייד	11
12099	pastry	מַאֲפֶה	11
12100	loner	מתבודד	11
12101	jogging	הַקפָּצָה	11
12102	itchy	מְגַרֵד	11
12103	insinuate	לִרְמוֹז	11
12104	hospitality	הַכנָסַת אוֹרְחִים	11
12105	forthcoming	הַבָּא	11
12106	excess	עוֹדֶף	11
12107	etiquette	כְּלָלֵי הִתְנַהֲגוּת	11
12108	ending	סִיוּם	11
12109	edit	לַעֲרוֹך	11
12110	dunk	דאנק	11
12111	distinction	הַבחָנָה	11
12112	desist	לַחְדוֹל	11
12113	deprive	לִשְׁלוֹל	11
12114	cloak	גְלִימָה	11
12115	casserole	קְדֵרָה	11
12116	beaver	בּוֹנֶה	11
12117	bearer	נוֹשֵׂא	11
12118	applaud	לְשַׁבֵּחַ	11
12119	appalling	מַחרִיד	11
12120	trump	חֶברְמַן	11
12121	trench	חֲפִירָה	11
12122	touchdown	טאצ'דאון	11
12123	thaw	לְהַפְשִׁיר	11
12124	tailor	לְהַתְאִים	11
12125	swoop	לָעוּט	11
12126	sticker	מַדבֵּקָה	11
12127	smite	לְהַכּוֹת	11
12128	shameless	חֲסַר בּוּשָׁה	11
12129	researching	חוקרים	11
12130	reclaim	לְטַיֵב	11
12131	purposely	בכוונה	11
12132	proxy	פרוקסי	11
12133	pineapple	אֲנָנָס	11
12134	parasite	טַפִּיל	11
12135	offspring	צֶאֱצָאִים	11
12136	multiply	לְהַכפִּיל	11
12137	masculine	גַברִי	11
12138	hoax	מְתִיחָה	11
12139	gunfire	ירי	11
12140	furnace	תַנוּר	11
12141	flyer	טַיָס	11
12142	engrave	לַחֲרוֹט	11
12143	duplicate	לְשַׁכְפֵּל	11
12144	dome	כיפה	11
12145	designate	מְיוּעָד	11
12146	delicatessen	מַעֲדָנִים	11
12147	cryptic	נִסתָר	11
12148	creed	אֲנִי מַאֲמִין	11
12149	condemn	לְגַנוֹת	11
12150	colossal	עֲנָקִי	11
12151	clipper	גוֹזֵז	11
12152	cliché	קְלִישֵׁה	11
12153	clarity	בְּהִירוּת	11
12154	banish	לְגַרֵשׁ	11
12155	argon	אַרגוֹן	11
12156	unicorn	חַדקֶרֶן	11
12157	uncanny	מִסתוֹרִי	11
12158	treasury	מִשׂרַד הַאוֹצָר	11
12159	technicality	טכניות	11
12160	static	סטָטִי	11
12161	scales	מֹאזנַיִם	11
12162	satin	מֶשִׁי	11
12163	rosebud	ניצן ורדים	11
12164	relentless	חֲסַר רַחֲמִים	11
12165	rearrange	לְסַדֵר מְחָדָשׁ	11
12166	plunge	לִצְלוֹל	11
12167	obsolete	מְיוּשָׁן	11
12168	moth	עָשׁ	11
12169	mindless	חסר דעת	11
12170	lullaby	שִׁיר עֶרֶשׂ	11
12171	layout	מַעֲרָך	11
12172	knob	כַּפתוֹר	11
12173	grown up	מְבוּגָר	11
12174	flashy	מִתהַדֵר	11
12175	epic	אֶפּוֹס	11
12176	encode	לְהַצְפִּין	11
12177	dread	אֵימָה	11
12178	doodle	לְשַׁרבֵּט	11
12179	dealing	התמודדות	11
12180	cupcake	קאפקייק	11
12181	console	לְנַחֵם	11
12182	conclusive	מַכרִיעַ	11
12183	bowel	מְעִי	11
12184	aura	הילה	11
12185	ape	קוֹף	11
12186	announcing	מכריזים	11
12187	abide	לעמוד	11
12188	wonderfully	בצורה נפלאה	11
12189	warfare	לוֹחָמָה	11
12190	wad	חֲבִילָה	11
12191	violate	לְהָפֵר	11
12192	suicidal	הִתאַבְּדוּתִי	11
12193	skilled	מְיוּמָן	11
12194	sketchy	גַס	11
12195	shoplifting	גְנֵבָה מִחֲנוּיוֹת	11
12196	quizmaster	חידון	11
12197	profitable	מִשׁתַלֵם	11
12198	politically	מבחינה פוליטית	11
12199	peck	פֵּק	11
12200	needless	מְיוּתָר	11
12201	momentarily	לְרֶגַע	11
12202	midget	גַמָד	11
12203	mercury	כַּספִּית	11
12204	leukemia	סַרטַן הַדָם	11
12205	idol	אֱלִיל	11
12206	fungus	פִּטרִיָה	11
12207	extraction	הוֹצָאָה	11
12208	explorer	חוֹקֵר	11
12209	eighty	שְׁמוֹנִים	11
12210	chimera	חֲזוֹן תַעתוּעִים	11
12211	cheery	עליז	11
12212	cadet	צוֹעֵר	11
12213	benign	שָׁפִיר	11
12214	artillery	אָרְטִילֶרִיָה	11
12215	apiece	לְכָל אֶחָד	11
12216	abduction	חֲטִיפָה	11
12217	virtual	וירטואלי	11
12218	unspeakable	בלתי ניתן לתאר	11
12219	unlimited	בִּלתִי מוּגבָּל	11
12220	unidentified	לא מזוהה	11
12221	twinkle	נִצנוּץ	11
12222	transcript	תמליל	11
12223	temp	טמפ'	11
12224	surfing	גְלִישָׁה	11
12225	stricken	מוּכֶּה	11
12226	stork	חֲסִידָה	11
12227	sodium	נַתרָן	11
12228	snick	סניק	11
12229	sly	עַרמוּמִי	11
12230	retrieval	שְׁלִיפָה	11
12231	quickie	מהיר	11
12232	playboy	פלייבוי	11
12233	observer	מַשׁקִיף	11
12234	mope	לִשְׁקוֹעַ בְּעַצבוּת	11
12235	moan	לִגנוֹחַ	11
12236	mausoleum	מַאוּזוֹלֵאוֹן	11
12237	kangaroo	קֶנגוּרוּ	11
12238	intensive	אִינטֶנסִיבִי	11
12239	infest	לִפְשׁוֹט עַל	11
12240	incompetence	חוֹסֶר כִּשָׁרוֹן	11
12241	horrified	מזועזע	11
12242	grunt	לִנְחוֹר	11
12243	fracture	שֶׁבֶר	11
12244	formerly	לְשֶׁעָבַר	11
12245	fireball	כדור אש	11
12246	firearm	אֶקְדָח	11
12247	fend	לְהִתְגוֹנֵן	11
12248	examiner	בּוֹחֵן	11
12249	elite	עִלִית	11
12250	duke	דוּכָּס	11
12251	dashing	נִמרָץ	11
12252	curry	קָארִי	11
12253	crumb	פֵּרוּר	11
12254	crash down	להתרסק למטה	11
12255	courier	שָׁלִיחַ	11
12256	conclude	לְהַסִיק	11
12257	cockroach	מַקָק	11
12258	boulevard	שְׁדֵרָה	11
12259	bookie	סוֹכֵן הִמוּרִים	11
12260	baptize	לְהַטבִּיל	11
12261	astronaut	אַסטרוֹנָאוּט	11
12262	allegiance	אֱמוּנִים	11
12263	aiming	מכוון	11
12264	workplace	מקום עבודה	11
12265	weave	לֶאֱרוֹג	11
12266	weaker	חלש יותר	11
12267	suffocate	לְהֵחָנֵק	11
12268	stench	צַחֲנָה	11
12269	stark	מוּחלָט	11
12270	spawn	לְהַשְׁרִיץ	11
12271	sideway	הצידה	11
12272	shortcut	קיצור דרך	11
12273	roam	לִנְדוֹד	11
12274	repulsive	דוֹחֶה	11
12275	provoke	לְגָרוֹת	11
12276	plum	שָׁזִיף	11
12277	penitentiary	כֵּלֵא	11
12278	norm	נוֹרמָה	11
12279	milligram	מִילִיגרָם	11
12280	midge	יַתוּשׁ	11
12281	lapse	לִשְׁגוֹת	11
12282	knuckle	פֶּרֶק	11
12283	intercourse	יַחֲסֵי מִין	11
12284	improvise	לְאַלתֵר	11
12285	implant	לִשְׁתוֹל	11
12286	hometown	עיר הולדתו	11
12287	handicap	מִגבָּלָה	11
12288	giddy	מְסוּחרָר	11
12289	garland	זֵר	11
12290	gallant	אַבִּירִי	11
12291	furry	שָׂעִיר	11
12292	fruitful	פּוֹרֶה	11
12293	footing	אֲחִיזָה	11
12294	flop	כִּשָׁלוֹן	11
12295	finding	מִמצָא	11
12296	fib	שֶׁקֶר	11
12297	editorial	מאמר מערכת	11
12298	discovering	לגלות	11
12299	detour	מַעֲקָף	11
12300	cuddle	לְהִתְרַפֵּק	11
12301	cub	גוּר	11
12302	coordinate	לְתַאֵם	11
12303	collector	אַסְפָן	11
12304	bane	bane	11
12305	bailiff	פְּקִיד הוֹצָאָה לְפוֹעָל	11
12306	auditioning	אודישן	11
12307	aching	כּוֹאֵב	11
12308	woe	צָרָה	11
12309	usher	סַדרָן	11
12310	typically	בדרך כלל	11
12311	tug	גוֹרֶרֶת	11
12312	topless	לְלֹא חָזִיָה	11
12313	squid	דְיוֹנוֹן	11
12314	soy	סויה	11
12315	snowman	איש שלג	11
12316	sensor	חיישן	11
12317	seller	מוֹכֵר	11
12318	renown	מוֹנֵיטִין	11
12319	reflex	רֶפלֶקס	11
12320	recruiting	גיוס עובדים	11
12321	raisin	צִמוּק	11
12322	racial	גִזעִי	11
12323	pyramid	פִּירָמִידָה	11
12324	preservation	שְׁמִירָה	11
12325	portfolio	תִיק	11
12326	pilgrim	עוֹלֶה רֶגֶל	11
12327	patriot	פַּטרִיוֹט	11
12328	oversight	מֶחדָל	11
12329	merciful	רַחוּם	11
12330	magistrate	שׁוֹפֵט שָׁלוֹם	11
12331	intimidating	הַטָלַת אֵימָה	11
12332	infirmary	מרפאה	11
12333	inconvenient	לֹא נוֹחַ	11
12334	imposter	מתחזה	11
12335	godforsaken	שאול	11
12336	funk	פַּחַד	11
12337	forgery	זִיוּף	11
12338	foolproof	חֲסִין סִכּוּן	11
12339	folder	תיקייה	11
12340	flattery	חֲנוּפָה	11
12341	fingertip	קְצֵה אֶצבָּעוֹת	11
12342	exterminator	מַדְבִּיר	11
12343	eccentric	תִמהוֹנִי	11
12344	dodgy	מְסוּכָּן	11
12345	constructive	בּוֹנֶה	11
12346	compartment	תָא	11
12347	bodily	גופני	11
12348	armour	שִׁריוֹן	11
12349	alimony	מְזוֹנוֹת	11
12350	accustomed	רָגִיל	11
12351	wallow	לְהִתְפַּלֵשׁ	11
12352	vicinity	סְבִיבָה	11
12353	venue	מָקוֹם מִפגָשׁ	11
12354	upgrade	שדרוג	11
12355	upcoming	בקרוב	11
12356	untrue	כּוֹזֵב	11
12357	uncover	לַחשׂוֹף	11
12358	twig	זֶרֶד	11
12359	trembling	רַעַד	11
12360	taunt	לְהִתְגַרוֹת	11
12361	tar	זֶפֶת	11
12362	strand	גָדִיל	11
12363	seizure	תְפִיסָה	11
12364	savvy	הֲבָנָה	11
12365	rile	לְהַרְגִיז	11
12366	revive	לְהַחִיוֹת	11
12367	retard	לְעַכֵּב	11
12368	recruit	טִירוֹן	11
12369	rationally	באופן רציונלי	11
12370	provenance	מקור	11
12371	prestigious	יוּקרָתִי	11
12372	perky	שׁוֹבָב וְעַלִיז	11
12373	pedal	פֵּדָל	11
12374	overdose	מנת יתר	11
12375	nasal	שֶׁל הָאַף	11
12376	mushy	רַגְשָׁנִי	11
12377	mover	מעביר	11
12378	moot	שָׁנוּי בְּמַחֲלוֹקֶת	11
12379	melodramatic	מלודרמטי	11
12380	medic	חובש	11
12381	manure	זֶבֶל	11
12382	magnetic	מַגנֶטִי	11
12383	knockout	נוקאאוט	11
12384	knitting	סְרִיגָה	11
12385	idle	לְהִתְבַּטֵל	11
12386	hotline	קו חם	11
12387	hammock	עַרסָל	11
12388	framing	צִלוּעַ	11
12389	flap	מַדָף	11
12390	flannel	פלָנֶל	11
12391	existing	קיים	11
12392	eavesdrop	לְצוֹתֵת	11
12393	dwarf	גַמָד	11
12394	doggy	כלבלב	11
12395	constellation	קְבוּצַת כּוֹכָבִים	11
12396	collision	הִתנַגְשׁוּת	11
12397	chic	מְסוּגנָן	11
12398	bleak	עָגוּם	11
12399	blacked	שחור	11
12400	batter	לַהֲלוֹם	11
12401	archer	קַשָׁת	11
12402	ante	אנטה	11
12403	aggravate	לְהַחרִיף	11
12404	vocal	ווֹקָאלִי	11
12405	unwind	לְהִתְפַּרֵק	11
12406	twitch	פִּרפּוּר	11
12407	taxpayer	משלם המסים	11
12408	reinforce	לְתַגְבֵּר	11
12409	dew	טַל	11
12410	dictation	הַכתָבָה	11
12411	dilute	לְדַלֵל	11
12412	disintegrate	לְהִתְפּוֹרֵר	11
12413	disposable	חַד פַּעֲמִי	11
12414	disqualify	לִפְסוֹל	11
12415	dissolve	לְהִתְמוֹסֵס	11
12416	distinguish	לְהַבחִין	11
12417	doctrine	דוֹקטרִינָה	11
12418	dolphin	דוֹלפִין	11
12419	dominant	דוֹמִינָנטִי	11
12420	dominate	לִשְׁלוֹט	11
12421	downward 	כְּלַפֵּי מַטָה	11
12422	drench	להטביע	11
12423	dub 	לִטפּוֹחַ	11
12424	dynamic 	דִינָמִי	11
12425	earlobe	תנוך האוזן	11
12426	ebony 	הָבְנֶה	11
12427	ecology	אֵקוֹלוֹגִיָה	11
12428	egotistical	אגואיסטית	11
12429	elated	מתמוגג	11
12430	elitist	אליטיסטית	11
12431	eloquent	אָמַן הַדִבּוּר	11
12432	emphasize	לְהַדגִישׁ	11
12433	enjoyable	מְהַנֶה	11
12434	Fahrenheit	פרנהייט	11
12435	flirtatious	עוֹגבָנִי	11
12436	gymnasium	גִימנַסִיָה	11
12437	hallucinate	להזות	11
12438	incorporate	לשלב	11
12439	increasingly 	יותר ויותר	11
12440	ivy	קִיסוֹס	11
12441	jigsaw	פאזל	11
12442	locomotive	קַטָר	11
12443	materialistic	חוֹמְרָנִי	11
12444	parliamentary	פַּרלָמֶנטָרִי	11
12445	parlour	טְרַקלִין	11
12446	pastel 	פַּסטֵל	11
12447	precipitation	מִשׁקָע	11
12448	predicate 	לְבַסֵס	11
12449	prediction	נְבוּאָה	11
12450	prefecture	מחוז	11
12451	procession	תַהֲלוּכָה	11
12452	prohibit	לֶאֱסוֹר	11
12453	Protestant	פְּרוֹטֶסטָנט	11
12454	quotation	הַצָעַת מְחִיר	11
12455	realization	הִתמַמְשׁוּת	11
12456	recession	שֵׁפֶל	11
12457	recreation	נוֹפֶשׁ	11
12458	reorganize	לְאַרגֵן מֵחָדָשׁ	11
12459	repetitious	חוזר על עצמו	11
12460	reproduction	שִׁעתוּק	11
12461	whereby	שֶׁבּוֹ	11
12462	saxophone	סַקסוֹפוֹן	11
12463	scallion	בצל ירוק	11
12464	sesame	שׂוּמשׂוּם	11
12465	aback	המום	11
12466	abash	מבאס	11
12467	abate	לְשַׁכֵּך	11
12468	abdicate	לְהִתְפַּטֵר	11
12469	abject	בָּזוּי	11
12470	absolve	לִפְטוֹר	11
12471	abstain	לְהִתְנַזֵר	11
12472	abundance	שֶׁפַע	11
12473	acclaim	תְשׁוּאוֹת	11
12474	accrue	לְהִצְטָבֵּר	11
12475	accuracy	דִיוּק	11
12476	acerbity	מְרִירוּת	11
12477	acorn	בַּלוּט	11
12478	acquit	לְזַכּוֹת	11
12479	acrid	חָרִיף	11
12480	adjacent	סָמוּך	11
12481	adjoin	לִגבּוֹל עִם	11
12482	admonish	לִנְזוֹף	11
12483	adroit	זָרִיז	11
12484	adultery	ניאוף	11
12485	aerial	אַנטֶנָה	11
12486	affinity	זִיקָה	11
12487	affliction	מֶמֶר	11
12488	affront	עֶלבּוֹן	11
12489	aghast	מזועזעת	11
12490	heather	אַברָשׁ	11
12491	zap	זאפ	11
12492	zeal	קַנָאוּת	11
12493	zoology	זוֹאוֹלוֹגִיָה	11
12494	yawn	לְפַהֵק	11
12495	yeast	שְׁמָרִים	11
12496	yolk	חֶלמוֹן	11
12497	yearn	לְהִתגַעגֵעַ	11
12498	wail	לְקוֹנֵן	11
12499	whet	לְגָרוֹת	11
12500	whimper	יְבָבָה	11
12501	whirlpool	מְעַרבּוֹלֶת	11
12502	willow	עֲרָבָה	11
12503	wistful	עַגמוּמִי	11
12504	wistful	עַגמוּמִי	11
12505	wreath	זֵר	11
12506	wrest	לַחטוֹף	11
12507	wriggle	לְהִתְפַּתֵל	11
12508	wry	עָקוֹם	11
12509	vane	שַׁבשֶׁבֶת	11
12510	vehemence	תְקִיפוּת	11
12511	vexation	רוֹגֶז	11
12512	vivacious	עֲסִיסִי	11
12513	voracious	רַעַבתָנִי	11
12514	udder	עָטִין	11
12515	up-to-date	מעודכן	11
12516	tapestry	גוֹבּלֶן	11
12517	tardy	מְפַגֵר	11
12518	thimble	אֶצבָּעוֹן	11
12519	throng	הָמוֹן	11
12520	thump	חֲבָטָה	11
12521	thwart	לְסַכֵּל	11
12522	tinge	לִצְבּוֹעַ	11
12523	tinsel	חוּטֵי כֶּסֶף נוֹצֵצִים	11
12524	tongs	יַתוּך	11
12525	topple	לְהַפִּיל	11
12526	transgress	לַחֲטוֹא	11
12527	treble	לְשַׁלֵשׁ	11
12528	trifle	קְצָת	11
12529	truant	מִשׁתַמֵט	11
12530	tumult	הֲמוּלָה	11
12531	twine	לִפתוֹל	11
12532	alight	מוּאָר	11
12533	alignment	מַעֲרָך	11
12534	alleviate	להקל	11
12535	amiable	יְדִידוּתִי	11
12536	annihilate	לְהַשְׁמִיד	11
12537	antler	קֶרֶן הַצְבִי	11
12538	arable	גידול	11
12539	arid	צָחִיחַ	11
12540	asunder	להתנתק	11
12541	audacious	נוֹעָז	11
12542	augment	לְהַגדִיל	11
12543	bayonet	כִּידוֹן	11
12544	beehive	כוורת	11
12545	beseech	לְהַפְצִיר	11
12546	besiege	לָצוּר	11
12547	bile	מָרָה	11
12548	blemish	פְּגָם	11
12549	blunder	לְפַשֵׁל	11
12550	boisterous	שׁוֹבָב	11
12551	bough	עָנָף	11
12552	brazen	חצופה	11
12553	brevity	קוֹצֶר	11
12554	bristle	זִיף	11
12555	brittle	שָׁבִיר	11
12556	broth	מָרָק	11
12557	buck	דוֹלָר	11
12558	buckle	אַבזָם	11
12559	bulging	בולטות	11
12560	callous	קָשׁוּחַ	11
12561	caprize	להתחרט	11
12562	caraway	קִימֶל	11
12563	cloister	מִנזָר	11
12564	coexist	לְהִתְקַיֵם יַחַד	11
12565	confound	לְבַלבֵּל	11
12566	countenance	אַרֶשֶׁת פָּנִים	11
12567	covetous	צַר עַיִן	11
12568	cower	לְהִתְכַּוֵץ	11
12569	crag	צוּק	11
12570	crevice	בְּקִיעַ	11
12571	crutch	קַב	11
12572	cumbersome	מסורבל	11
12573	daub	לִמְרוֹחַ	11
12574	decadence	שְׁחִיתוּת	11
12575	den	גוֹב	11
12576	depict	לְתַאֵר	11
12577	depot	מַחסָן	11
12578	depreciate	לָרֶדֶת בְּעֵרכּוֹ	11
12579	derivative	נִגזֶרֶת	11
12580	destitute	חֲסַר כֹּל	11
12581	deterrent	מַרתִיעַ	11
12582	devaluation	פיחות	11
12583	devise	לִהַמצִיא	11
12584	devoid	נָטוּל	11
12585	devour	לִטרוֹף	11
12586	devout	אָדוּק	11
12587	diffident	נֶחבָּא אֶל הַכֵּלִים	11
12588	digress	לִסְטוֹת	11
12589	dimple	גוּמַת חֵן	11
12590	din	רַעַשׁ	11
12591	disarm	לפרוק מנשקו	11
12592	discern	לְהַבחִין	11
12593	discontent	אִי שְׂבִיעוּת רָצוֹן	11
12594	discord	מַחֲלוֹקֶת	11
12595	disdain	בּוּז	11
12596	disembark	לָרֶדֶת מֵאֳנִיָה	11
12597	disfigure	לְכַעֵר	11
12598	dishearten	לייאש	11
12599	dishonour	חֶרפָּה	11
12600	disillusion	התפכחות	11
12601	disinterested	חֲסַר עִניָן	11
12602	dismantle	לְפַרֵק	11
12603	dismount	לָרֶדֶת	11
12604	dispense	לְחַלֵק	11
12605	disperse	לְפַזֵר	11
12606	displace	לַעֲקוֹר	11
12607	displease	לְהַרְגִיז	11
12608	disquiet	אִי שָׁקֵט	11
12609	dissipate	לְפַזֵר	11
12610	distil	לְזַקֵק	11
12611	distort	לְסַלֵף	11
12612	distrust	לַחשׁוֹד	11
12613	diverge	לִסְטוֹת	11
12614	doleful	עָגוּם	11
12615	droop	לִיפּוֹל	11
12616	dropper	טַפטֶפֶת	11
12617	drudgery	עֲבוֹדָה שְׁחוֹרָה	11
12618	drunkard	סוֹבֵא	11
12619	dual	כָּפוּל	11
12620	dubious	מְפוּקפָּק	11
12621	dummy	דֶמֶה	11
12622	dune	חוֹלִית	11
12623	dung	זֶבֶל	11
12624	durable	עָמִיד	11
12625	edifice	בִּניָן	11
12626	eel	צְלוֹפָּח	11
12627	efface	לִמְחוֹק	11
12628	effeminate	נָשִׁי	11
12629	efficacious	יָעִיל	11
12630	Egyptian	מִצרִי	11
12631	elapse	לַחֲלוֹף	11
12632	elegance	אֵלֶגַנטִיוּת	11
12633	elk	דִישׁוֹן	11
12634	elusive	חֲמַקמַק	11
12635	embezzlement	מְעִילָה	11
12636	emblem	סֵמֶל	11
12637	embody	לְגַלֵם	11
12638	embryo	עוּבָּר	11
12639	emigrant	מְהַגֵר	11
12640	eminence	בְּלִיטָה	11
12641	emit	לִפְלוֹט	11
12642	emptiness	רֵיקָנוּת	11
12643	enact	לְחוֹקֵק	11
12644	enamel	אֵימָל	11
12645	encircle	לְכַתֵר	11
12646	enclose	לְצַרֵף	11
12647	encroach	לְהַסִיג גְבוּל	11
12648	encumber	לְהַכבִּיד	11
12649	endeavour	מַאֲמָץ	11
12650	endurance	הַתמָדָה	11
12651	enlist	להתגייס	11
12652	enliven	לְהַחִיוֹת	11
12653	enmity	אֵיבָה	11
12654	enrage	לְהַכעִיס	11
12655	enrapture	התלהבות	11
12656	ensue	להופיע	11
12657	entangle	לְסַבֵּך	11
12658	entice	לְפָתוֹת	11
12659	entrails	קְרָבַיִם	11
12660	entreat	לְהַפְצִיר	11
12661	entrust	לְהַפְקִיד	11
12662	enumerate	לִמְנוֹת	11
12663	enviable	מְעוֹרֵר קִנְאָה	11
12664	envoy	שַׁגְרִיר	11
12665	epoch	תְקוּפָה	11
12666	equanimity	יִשׁוּב הַדַעַת	11
12667	equilibrium	שִׁוּוּי מִשׁקָל	11
12668	eradicate	לְבַעֵר	11
12669	evade	לְהִתְחַמֵק	11
12670	evaporate	לְהִתְאַדוֹת	11
12671	ewe	כִּבשָׂה	11
12672	exalt	לְרוֹמֵם	11
12673	excursion	טִיוּל	11
12674	exemplify	לְהַדגִים	11
12675	expulsion	גֵרוּשׁ	11
12676	exaltation	הִתעַלוּת	11
12677	falter	לְהַסֵס	11
12678	feign	לְהַעֲמִיד פָּנִים	11
12679	ferment	תְסִיסָה	11
12680	fern	שָׁרָך	11
12681	fervent	נִלהָב	11
12682	feud	סִכסוּך	11
12683	fidelity	נֶאֱמָנוּת	11
12684	fidget	נוּדנִיק	11
12685	fiery	לוֹהֵט	11
12686	Finnish	פִינִית	11
12687	flax	פִּשׁתָן	11
12688	fleeting	חוֹלֵף	11
12689	flicker	לְהַבהֵב	11
12690	flimsy	דַקִיק	11
12691	flippant	מְהַתֵל	11
12692	flint	צוּר	11
12693	flog	לְהַלקוֹת	11
12694	flounder	דָג סַנְדָּל	11
12695	flutter	רִפרוּף	11
12696	fodder	מִסְפּוֹא	11
12697	foe	אוֹיֵב	11
12698	folly	שׁטוּת	11
12699	forbear	לְהַבלִיג	11
12700	forefather	אָב קַדמוֹן	11
12701	forestall	לִמְנוֹעַ	11
12702	formidable	נוֹרָא	11
12703	forsake	לִזנוֹחַ	11
12704	fowl	עוֹף	11
12705	frail	חַלָשׁ	11
12706	frantic	נִרעָשׁ	11
12707	freckless	חסר נמשים	11
12708	frock	שִׂמלָה	11
12709	frontier	גְבוּל	11
12710	froth	קֶצֶף	11
12711	frugal	חַסְכָנִי	11
12712	furrow	תֶלֶם	11
12713	furtively	בִּגנֵבָה	11
12714	gaiety	עֲלִיצוּת	11
12715	gallop	לִדהוֹר	11
12716	gargle	לְגַרגֵר	11
12717	gaunt	כָּחוּשׁ	11
12718	gauntlet	כְּפָפַת שִׁריוֹן	11
12719	gauze	גָזָה	11
12720	gelatine	ג'ֵלָטִין	11
12721	gem	פְּנִינָה	11
12722	genial	חָבִיב	11
12723	germinate	לִנְבּוּט	11
12724	ghastly	נוֹרָא	11
12725	giddiness	סְחַרחוֹרֶת	11
12726	gland	בַּלוּטָה	11
12727	glaze	קוֹנִיָה	11
12728	gleam	נִצנוּץ	11
12729	glide	לִדאוֹת	11
12730	glimmer	נִצנוּץ	11
12731	glisten	לְהַבהִיק	11
12732	glitter	נִצנוּץ	11
12733	glorify	לְפַאֵר	11
12734	gnaw	לְכַרסֵם	11
12735	granary	אָסָם	11
12736	granite	גרָנִיט	11
12737	granulated	מגורען	11
12738	gratification	שְׂבִיעוּת	11
12739	grating	סָרִיג	11
12740	gravitation	כּוֹחַ הַכּוֹבֶד	11
12741	graze	לִרְעוֹת	11
12742	grimace	העווה	11
12743	grit	חָצָץ	11
12744	gruff	צָרוּד	11
12745	grumble	לִרְטוֹן	11
12746	gulp	לִבלוֹעַ	11
12747	gurgle	לְגַרגֵר	11
12748	gush	פֶּרֶץ	11
12749	haberdashery	סִדְקִית	11
12750	haemorrhage	שֶׁטֶף דַם	11
12751	haggard	כָּחוּשׁ	11
12752	harmonious	הרמונית	11
12753	harrow	מַשׁדֵדָה	11
12754	haughty	יָהִיר	11
12755	haunch	יָרֵך	11
12756	hazy	מְעוּרפָּל	11
12757	heartburn	צַרֶבֶת	11
12758	heathen	עוֹבֵד אֵלִילִים	11
12759	hem	מַכְפֶּלֶת	11
12760	hinge	צִיר	11
12761	hiss	לִלְחוֹשׁ	11
12762	hoard	לֶאֱגוֹר	11
12763	hoarfrost	כְּפוֹר	11
12764	hoof	פַּרסָה	11
12765	hosiery	לְבָנִים	11
12766	howl	יְלָלָה	11
12767	hue	צֶבַע	11
12768	husk	לְקַלֵף	11
12769	immovable	בלתי ניתן להזזה	11
12770	impediment	מְנִיעָה	11
12771	impel	לְהַמרִיץ	11
12772	impending	מְמַשׁמֵשׁ וּבָא	11
12773	imperial	קֵיסָרִי	11
12774	impertinent	חָצוּף	11
12775	imperturbable	קַר רוּחַ	11
12776	impetus	תְנוּפָה	11
12777	implore	לְהִתְחַנֵן	11
12778	improper	לֹא מַתְאִים	11
12779	impunity	פְּטוֹר מִעוֹנֶשׁ	11
12780	inability	אִי יְכוֹלֶת	11
12781	inadequate	לָקוּי	11
12782	inadmissible	לֹא קָבִיל	11
12783	inborn	מוּטבָּע	11
12784	inconceivable	בלתי נתפס	11
12785	inconsistency	חוסר עקביות	11
12786	indebted	אֲסִיר תוֹדָה	11
12787	indecision	הַסְסָנוּת	11
12788	indefinite	סְתָמִי	11
12789	indignant	מִתרַעֵם	11
12790	indispensable	חִיוּנִי	11
12791	indisputable	שאין עוררין	11
12792	indistinct	לֹא בָּרוּר	11
12793	ineffective	לֹא יָעִיל	11
12794	inefficient	לֹא יָעִיל	11
12795	inert	אָדִישׁ	11
12796	inestimable	שֶׁאֵין לְהַעֲרִיכוֹ	11
12797	inexhaustible	לֹא אַכזָב	11
12798	inexorable	קָשׁוּחַ	11
12799	infallible	וַדָאִי	11
12800	infatuated	מוּקסָם	11
12801	infer	לְהַסִיק	11
12802	inferior	נָחוּת	11
12803	inflate	לְנַפֵּחַ	11
12804	influx	זֶרֶם	11
12805	infringement	הֲפָרָה	11
12806	infuriate	לְהַרְתִיחַ	11
12807	ingratitude	כְּפִיוּת טוֹבָה	11
12808	injunction	צַו מְנִיעָה	11
12809	inopportune	לֹא מַתְאִים	11
12810	insoluble	לֹא מָסִיס	11
12811	intrepid	לְלֹא חַת	11
12812	involuntary	לֹא רְצוֹנִי	11
12813	iodine	יוֹד	11
12814	irksome	מַטרִיד	11
12815	irreproachable	לְלֹא דוֹפִי	11
12816	irrigate	לְהַשְׁקוֹת	11
12817	jack-knife	סכין ג'ק	11
12818	jagged	מְשׁוּנָן	11
12819	javelin	כִּידוֹן	11
12820	jeer	לִלְעוֹג	11
12821	jest	צְחוֹק	11
12822	jolt	לְהַקְפִּיץ	11
12823	jovial	מִתרוֹנֵן	11
12824	judicious	נָבוֹן	11
12825	jut	לִבלוֹט	11
12826	keel	שִׁדְרִית	11
12827	kernel	גַרעִין	11
12828	kindle	לְלַבּוֹת	11
12829	know-how	יֶדַע	11
12830	lacquer	לַכָּה	11
12831	laden	עָמוּס	11
12832	ladle	מַצֶקֶת	11
12833	lag	לְפַגֵר	11
12834	lame	צוֹלֵעַ	11
12835	lament	קִינָה	11
12836	lash	לְהַצְלִיף	11
12837	latch	בְּרִיחַ	11
12838	lathe	מַחֲרָטָה	11
12839	lather	לְהַקְצִיף	11
12840	laurel	דַפנָה	11
12841	lavender	אֲזוֹבִיוֹן	11
12842	levy	לִגבּוֹת	11
12843	lilac	לִילָך	11
12844	lime-tree	עץ ליים	11
12845	linger	לְהִשְׁתַהוֹת	11
12846	locust	אַרְבֶּה	11
12847	loin	יָרֵך	11
12848	louse	כינה	11
12849	lubricant	חוֹמֶר סִיכָּה	11
12850	lukewarm	פּוֹשֵׁר	11
12851	lull	לְהַרְגִיעַ	11
12852	luminous	זוֹרֵחַ	11
12853	luscious	טָעִים מְאוֹד	11
12854	lustre	בְּהִיקוּת	11
12855	luxuriant	שופעת	11
12856	magpie	עוֹרֵב הַנְחָלִים	11
12857	maim	מוּם	11
12858	malt	לֶתֶת	11
12859	mammoth	מַמוּתָה	11
12860	mane	רַעמָה	11
12861	manuscript	כְּתַב יָד	11
12862	marten	נְמִיָה	11
12863	mast	תוֹרֶן	11
12864	meek	צָנוּעַ	11
12865	melon	מֵלוֹן	11
12866	militant	לוֹחְמָנִי	11
12867	mimic	לְחַקוֹת	11
12868	mince	לְקַצֵץ	11
12869	mirth	עֲלִיצוּת	11
12870	mitten	כפפה	11
12871	morsel	פַּת	11
12872	montley	מונטלי	11
12873	muffle	לְעַמְעֵם	11
12874	mulberry	תוּת	11
12875	mumble	מִלמוּל	11
12876	mural	צִיוּר קִיר	11
12877	musty	מְעוּפָּשׁ	11
12878	mutilate	לְעַקֵר	11
12879	muzzle	לוֹעַ	11
12880	nautical	נַוָטִי	11
12881	neigh	לִצְהוֹל	11
12882	nettle	סִרְפָּד	11
12883	niche	גוּמחָה	11
12884	nimble	זָרִיז	11
12885	nominal	נָקוּב	11
12886	noncommittal	לא מחויב	11
12887	nondescript	שֶׁקָשֶׁה לְתַאֲרוֹ	11
12888	nook	מַחֲבוֹא	11
12889	notwithstanding	לַמרוֹת	11
12890	oblique	אֲלַכסוֹנִי	11
12891	oblong	מַלבֵּן	11
12892	oppress	לְדַכֵּא	11
12893	ostentatious	ראוותני	11
12894	otter	לוּטרָה	11
12895	quail	שליו	11
12896	quaver	לִרְעוֹד	11
12897	quay	רָצִיף	11
12898	quiver	רֶטֶט	11
12899	paltry	פָּעוּט	11
12900	pang	כְּאֵב פִּתאוֹמִי	11
12901	pansy	אַמְנוֹן וְתָמָר	11
12902	pant	לְהִתְנַשֵׁם	11
12903	parch	לְיַבֵּשׁ	11
12904	pare	לְקַלֵף	11
12905	parish	קהילה	11
12906	parson	כּוֹמֶר	11
12907	partition	חֲלוּקָה	11
12908	patter	לַהַג	11
12909	patty	קציצה	11
12910	peal	לְצַלְצֵל	11
12911	pebble	צַדֶפֶת	11
12912	penal	פְּלִילִי	11
12913	pendulum	מְטוּטֶלֶת	11
12914	pensive	מְהוּרהָר	11
12915	peppermint	מִנתָה	11
12916	perch	אוֹקוּנוֹס	11
12917	perplex	לִהַבִיך	11
12918	persecute	לִרְדוֹף	11
12919	perverse	סוֹטֶה	11
12920	phonebooth	תא טלפון	11
12921	physique	מִבנֶה גוּף	11
12922	pimple	חָטָט	11
12923	pitfall	מִכשׁוֹל	11
12924	plaice	דַג מֹשֵׁה רַבֵּנוּ	11
12925	plaid	אָרִיג מְשׁוּבַּץ	11
12926	plaintiff	תוֹבֵעַ	11
12927	plait	לִקְלוֹעַ	11
12928	pleat	קֵפֶל	11
12929	plentiful	שׁוֹפֵעַ	11
12930	pliable	גָמִישׁ	11
12931	plight	מַצָב	11
12932	plod	להכות	11
12933	plunder	בְּזִיזָה	11
12934	plywood	דִיקְט	11
12935	polarity	קוטביות	11
12936	ponder	לְהַרהֵר	11
12937	poplar	צַפצָפָה	11
12938	posterity	הדורות הבאים	11
12939	potter	קַדָר	11
12940	pouch	כִּיס	11
12941	pounce	לְזַנֵק	11
12942	pout	לְשַׁרבֵּט	11
12943	prelude	אַקדָם	11
12944	prerogative	זְכוּת	11
12945	pretence	הַעֲמָדַת פָּנִים	11
12946	pretext	אֲמַתלָה	11
12947	prism	פּרִיזמָה	11
12948	prologue	פּרוֹלוֹג	11
12949	propel	לְהַנִיעַ	11
12950	proprietary	קנייני	11
12951	proprietor	בְּעָלִים	11
12952	provocation	פּרוֹבוֹקָצִיָה	11
12953	pulp	מוֹך	11
12954	pulverize	לִטחוֹן	11
12955	pungent	חָרִיף	11
12956	purr	לְגַרגֵר	11
12957	ragged	מְרוּפָּט	11
12958	rake	לִגרוֹף	11
12959	ram	אַיִל	11
12960	rascal	שׁוֹבָב	11
12961	ravage	לַהֲרוֹס	11
12962	reap	לִקצוֹר	11
12963	rebuff	לִדחוֹת	11
12964	rebuke	לִנְזוֹף	11
12965	recline	לְהִשָׁעֵן	11
12966	recognition	הַכָּרָה	11
12967	recompense	תַגמוּל	11
12968	reconnaissance	סִיוּר	11
12969	refrain	לְהִמָנַע	11
12970	refutation	הַפרָכָה	11
12971	regent	יוֹרֵשׁ עֶצֶר	11
12972	rejoice	לִשְׂמוֹחַ	11
12973	relinquish	לִנְטוֹשׁ	11
12974	remittance	מִשׁלוֹחַ	11
12975	rend	לִקְרוֹעַ	11
12976	repent	לְהִתְחַרֵט	11
12977	repress	לְהַדחִיק	11
12978	reprimand	לִנְזוֹף	11
12979	reproach	תוֹכֵחָה	11
12980	reproof	תוֹכֵחָה	11
12981	resolute	תַקִיף	11
12982	resound	לְהַדהֵד	11
12983	respite	הֲפוּגָה	11
12984	restoration	שִׁחזוּר	11
12985	resurrection	תְקוּמָה	11
12986	retaliate	לִנְקוֹם	11
12987	reticence	הִתאַפְּקוּת	11
12988	retinue	פָּמַלִיָה	11
12989	retort	אַבִּיק	11
12990	rhubarb	רִבָּס	11
12991	rift	קֶרַע	11
12992	rite	טקס	11
12993	rivet	מְסַמֶרֶת	11
12994	roe	בֵּיצֵי דָגִים	11
12995	romp	לְהִשְׁתוֹבֵב	11
12996	rook	צָרִיחַ	11
12997	rouse	לְעוֹרֵר	11
12998	rove	לְשׁוֹטֵט	11
12999	rowan	חוּזרָר	11
13000	rudder	הֶגֶה	11
13001	ruffian	בִּריוֹן	11
13002	rumble	לְהַרְעִישׁ	11
13003	rummage	לְחַטֵט	11
13004	rustic	כַּפרִי	11
13005	rustle	רִשׁרוּשׁ	11
13006	rut	שִׁגרָה	11
13007	sable	צוֹבֶל	11
13008	sacrament	טֶקֶס נוֹצרִי	11
13009	sag	לִשְׁקוֹעַ	11
13010	sagacious	נָבוֹן	11
13011	sardine	סַרדִין	11
13012	satire	סָאטִירָה	11
13013	scaffolding	פיגומים	11
13014	scald	לַחְלוֹט	11
13015	scanty	מוּעָט	11
13016	scorch	לִצְרוֹב	11
13017	scoundrel	נָבָל	11
13018	scowl	לְהַזעִיף פָּנִים	11
13019	scribble	לְשַׁרבֵּט	11
13020	scrupulous	מוּקפָּד	11
13021	scythe	חֶרמֵשׁ	11
13022	seclude	לְהִסְתָגֵר	11
13023	seethe	לִרְתוֹחַ	11
13024	selfservice	שירות עצמי	11
13025	semblance	מַראִית עַיִן	11
13026	sequel	הֶמְשֵׁך	11
13027	shaggy	שָׂעִיר	11
13028	shear	לִגזוֹז	11
13029	sherry	שֶׁרִי	11
13030	shingle	חַלוּק	11
13031	shrill	צַרחָנִי	11
13032	shrivel	לְהִצְטָמֵק	11
13033	shrub	שִׂיחַ	11
13034	shudder	רַעַד	11
13035	shuffle	לְעַרְבֵּב	11
13036	shun	לְהִתְרַחֵק	11
13037	sickle	מַגָל	11
13038	siege	מָצוֹר	11
13039	sift	לְנַפּוֹת	11
13040	sill	אֶדֶן הַחַלוֹן	11
13041	silliness	טִפּשׁוּת	11
13042	sinew	גִיד	11
13043	singe	לַחֲרוֹך	11
13044	skipper	רַב חוֹבֵל	11
13045	skirmish	הִתנַגְשׁוּת	11
13046	sluice	סֶכֶר	11
13047	slush	רפש	11
13048	smother	לְהַחנִיק	11
13049	smoulder	מעשן	11
13050	snarl	לִנְהוֹם	11
13051	sneer	לִלְעוֹג	11
13052	snort	נְחִירָה	11
13053	snout	חוֹטֶם	11
13054	snug	צָמוּד	11
13055	solder	לְרַתֵך	11
13056	soloist	סוֹלָן	11
13057	soluble	מָסִיס	11
13058	spatter	הַתָזָה	11
13059	spectrum	ספֵּקטרוּם	11
13060	spinach	תֶרֶד	11
13061	spittle	רוֹק	11
13062	splinter	קֵיסָם	11
13063	sprinter	אָצָן	11
13064	squeak	חֲרִיקָה	11
13065	stagger	לְהִתְנוֹדֵד	11
13066	standpoint	בְּחִינָה	11
13067	staunch	נֶאֱמָן	11
13068	steed	סוּס	11
13069	steeple	צָרִיחַ	11
13070	steppe	עֲרָבָה	11
13071	sterile	סטֵרִילִי	11
13072	steward	מֶלְצַר	11
13073	stifle	לְהַחנִיק	11
13074	stipulate	לְהַתְנוֹת	11
13075	stocking	גֶרֶב	11
13076	stoker	מַסִיק	11
13077	stout	סטָאוּט	11
13078	stow	לְאַחסֵן	11
13079	strenuous	מְאוּמָץ	11
13080	strew	לְפַזֵר	11
13081	stripe	פַּס	11
13082	strive	לִשְׁאוֹף	11
13083	stubble	זִיפֵי זָקָן	11
13084	stump	גֶדֶם	11
13085	stupendous	כַּבִּיר	11
13086	sturdy	חָסוֹן	11
13087	stutter	לְגַמגֵם	11
13088	subdivide	לְסַעֵף	11
13089	subside	לִשְׁקוֹעַ	11
13090	subsist	להתקיים	11
13091	substance	חוֹמֶר	11
13092	suede	זֶמֶשׁ	11
13093	sulk	לזעוף	11
13094	sullen	קוֹדֵר	11
13095	sultry	מַחֲנִיק	11
13096	sumptuous	מְפוֹאָר	11
13097	sunken	שָׁקוּעַ	11
13098	superfluous	מְיוּתָר	11
13099	superintend	לְפַקֵחַ	11
13100	superintendent	מְפַקֵחַ	11
13101	supersede	מחליף	11
13102	supplant	להחליף	11
13103	supple	גָמִישׁ	11
13104	suppress	לְדַכֵּא	11
13105	surmise	לְשַׁעֵר	11
13106	surmount	להתגבר	11
13107	swarthy	שְׁחַרחַר	11
13108	sway	לְהִתְנַדְנֵד	11
13109	swerve	לִסְטוֹת	11
13110	swindle	לְהוֹנוֹת	11
13111	swine	חֲזִיר	11
13112	synthesis	סִינתֶזָה	11
13113	zealot	קַנַאִי	11
13114	zealous	קַנָאִי	11
13115	zenith	זֵנִית	11
13116	zigzag	לְזַגזֵג	11
13117	zodiac	גַלגַל הַמַזָלוֹת	11
13118	yank	לִמְשׁוֹך	11
13119	yap	לִנְבּוּחַ	11
13120	yelp	לְיַלֵל	11
13121	yoke	עוֹל	11
13122	yowl	יְלָלָה	11
13123	abattoir	בית מטבחיים	11
13124	abattoir	בית מטבחיים	11
13125	abbot	רֹאשׁ מִנזָר	11
13126	abed	עבד	11
13127	abberance	סלידה	11
13128	abberant	מתנשא	11
13129	abet	לָתֵת יָד לְפֶּשַׁע	11
13130	abhor	לְתַעֵב	11
13131	abhorrence	סלידה	11
13132	abhorrent	שָׂנוּא	11
13133	abjection	סלידה	11
13134	abjure	לְהִתְכַּחֵשׁ	11
13135	ablative	אבלטיבי	11
13136	ablaze	בָּאֵשׁ	11
13137	able-bodied	בעלי יכולת	11
13138	ably	בכישרון	11
13139	abnegate	לבטל	11
13140	abnegation	ביטול	11
13141	abnormality	חֲרִיגוּת	11
13142	abolishment	ביטול	11
13143	aboninable	מתועב	11
13144	abonnement	abonnement	11
13145	aboriginal	קַדמוֹן	11
13146	aborigines	אבוריג'ינים	11
13147	abortive	כּוֹשֵׁל	11
13148	above-average	מעל הממוצע	11
13149	aboveboard	מעל הלוח	11
13150	abrasive	מְשַׁפשֵׁף	11
13151	abreast	בחזית	11
13152	abridge	לְקַצֵר	11
13153	abruptness	פִּתְאוֹמִיוּת	11
13154	absently	בהיעדר	11
13155	absolution	מְחִילָה	11
13156	absorbing	מְרַתֵק	11
13157	abyss	תְהוֹם	11
13158	accede	לְהַסכִּים	11
13159	acceleration	תְאוּצָה	11
13160	accolade	לשבח	11
13161	accommodating	מפרגנת	11
13162	accompaniment	לִוּוּי	11
13163	accordance	בהתאם	11
13164	accredited	מוסמכת	11
13165	accuser	מַאֲשִׁים	11
13166	acheless	חסר כאב	11
13167	achy	כואב	11
13168	acne	אַקְנֶה	11
13169	acquisition	רְכִישָׁה	11
13170	actual	מַמָשִׁי	11
13171	adaptation	הִסתַגְלוּת	11
13172	addressee	נִמעָן	11
13173	adept	מְיוּמָן	11
13174	adherence	דְבֵקוּת	11
13175	admiration	הַעֲרָצָה	11
13176	admonishment	תוכחה	11
13177	ado	מְהוּמָה	11
13178	adornment	תַכשִׁיט	11
13179	adulate	להתבגר	11
13180	adulatory	גנאי	11
13181	adulthood	בַּגרוּת	11
13182	advancement	הִתקַדְמוּת	11
13183	adverse	שְׁלִילִי	11
13184	adversity	מְצוּקָה	11
13185	advisedly	בייעוץ	11
13186	advocacy	פְּרַקְלִיטוּת	11
13187	affable	מַסבִּיר פָּנִים	11
13188	affluence	שֶׁפַע	11
13189	affluent	אָמִיד	11
13190	afloat	צָף	11
13191	afterthought	מחשבה שלאחר מכן	11
13192	aggregate	לְקַבֵּץ	11
13193	agreeable	נָעִים	11
13194	ail	ail	11
13195	ailment	חוֹלִי	11
13196	aimless	חֲסַר תַכְלִית	11
13197	air-condition	מיזוג אוויר	11
13198	airless	חסר אוויר	11
13199	air-tight	אטום לאוויר	11
13200	airy	מְאֻורָר	11
13201	akin	דוֹמֶה	11
13202	alacrity	בקיאות	11
13203	albeit	אַף כִּי	11
13204	alcove	גוּמחָה	11
13205	alertness	עֵרָנוּת	11
13206	allay	לְהַרְגִיעַ	11
13207	allocate	לְהַקְצוֹת	11
13208	all-purpose	לכל מטרה	11
13209	allure	קֶסֶם	11
13210	aloof	מרוחק	11
13211	alteration	שינוי	11
13212	ambient	סביבה	11
13213	ambiguity	דוּ מַשְׁמָעוּת	11
13214	amendable	ניתן לתיקון	11
13215	amenity	נוֹחוּת	11
13216	amoral	חֲסַר מוּסָר	11
13217	amorphous	גָלוּם	11
13218	amplify	לְהַגבִּיר	11
13219	amplitude	מִשׂרַעַת	11
13220	anchovy	אֲנשׁוֹבִּי	11
13221	angrily	בכעס	11
13222	anguish	צַעַר	11
13223	angular	זוויתי	11
13224	annotation	ביאור	11
13225	anoitment	משחה	11
13226	antagonize	להתנגד	11
13227	antarctic	אנטארקטיקה	11
13228	antecedent	קדם	11
13229	antenna	אַנטֶנָה	11
13230	anteroom	חֲדַר הַמתָנָה	11
13231	antisocial	אַנְטִי חֵבְרָתִי	11
13232	antiterrorist	אנטי טרור	11
13233	apathy	אֲדִישׁוּת	11
13234	aplenty	בשפע	11
13235	apostrophe	גֵרֵשׁ	11
13236	appal	מזעזע	11
13237	appellation	כינוי	11
13238	append	לְצַרֵף	11
13239	appetizing	מְעוֹרֵר תֵאָבוֹן	11
13240	applicant	מְבַקֵשׁ	11
13241	appraisal	הַעֲרָכָה	11
13242	approbation	הַסכָּמָה	11
13243	aptitude	כִּשָׁרוֹן	11
13244	aptly	כראוי	11
13245	archaic	אַרְכָאִי	11
13246	archery	קַשׁתוּת	11
13247	archly	קשתי	11
13248	ardently	בלהט	11
13249	arduous	כָּרוּך בְּמַאֲמָצִים	11
13250	armament	הְתחַמְשׁוּת	11
13251	armature	עוֹגֶן	11
13252	armless	ללא זרועות	11
13253	armory	נִשׁקִיָה	11
13254	array	מַעֲרָך	11
13255	articulate	לבטא	11
13256	artless	תָם	11
13257	artsy	אומנותי	11
13258	ascension	התעלות	11
13259	ashy	אפרורי	11
13260	askew	נָטוּי	11
13261	asperity	חסינות	11
13262	aspirant	שואף	11
13263	assail	לִתְקוֹף	11
13264	assort	מגוון	11
13265	assortment	מִבְחָר	11
13266	assuage	לְשַׁכֵּך	11
13267	assumptive	השערה	11
13268	assuredness	בטחון	11
13269	astound	לְהַדהִים	11
13270	atonement	כַּפָּרָה	11
13271	atrocity	זוועה	11
13272	attachment	הִתקַשְׁרוּת	11
13273	attentive	קַשׁוּב	11
13274	attenuate	לְהַחלִישׁ	11
13275	attest	לְהַעִיד	11
13276	attestation	עֵדוּת	11
13277	attire	לבוש	11
13278	attrition	שחיקה	11
13279	attune	כוונון	11
13280	aubergine	חָצִיל	11
13281	audacity	חוּצפָּה	11
13282	audibly	באופן קולי	11
13283	auditory	שְׁמִיעָתִי	11
13284	auspice	חסות	11
13285	avenge	לִנְקוֹם	11
13286	avert	לִמְנוֹעַ	11
13287	avid	לָהוּט	11
13288	avouch	להביע	11
13289	avow	לְהוֹדוֹת	11
13290	aweless	חסר פחד	11
13291	axis	צִיר	11
13292	backache	כאבי גב	11
13293	baggy	רחב	11
13294	bagpipe	חֵמַת חֲלִילִים	11
13295	balk	להתרחק	11
13296	ballot	הַצבָּעָה	11
13297	banal	בָּנָאלִי	11
13298	banter	לְהִתְלוֹצֵץ	11
13299	baseless	חסרי בסיס	11
13300	bashful	מבויש	11
13301	basin	אַגָן	11
13302	bask	לְהִתְחַמֵם	11
13303	bazaar	שׁוּק	11
13304	beastly	בַּהֲמִי	11
13305	beautify	לְפַאֵר	11
13306	bedding	מַצָע	11
13307	bedevil	לְבַלבֵּל	11
13308	bedridden	מְרוּתָק לְמִטָה	11
13309	beefy	בַּשׂרָנִי	11
13310	befriend	לְהִתיַדֵד	11
13311	beggarly	אֶביוֹנִי	11
13312	begrudge	לְקַנֵא	11
13313	bellow	לִגעוֹת	11
13314	benefactor	נַדבָן	11
13315	benevolence	חֶסֶד	11
13316	benevolent	נָדִיב	11
13317	benignity	שפיר	11
13318	berth	דרגש	11
13319	berth	דרגש	11
13320	beset	מוטרד	11
13321	bestial	חיה	11
13322	bestiality	חיות	11
13323	bestow	לְהַעֲנִיק	11
13324	bewitch	לְכַשֵׁף	11
13325	big-hearted	לב גדול	11
13326	bigot	קנאי	11
13327	bilingual	דוּ לְשׁוֹנִי	11
13328	bite-size	בגודל נגיסה	11
13329	blackcurrant	עִנְבֵי שׁוּעָל	11
13330	blackness	שְׁחוֹר	11
13331	blameless	חַף מִפֶּשַׁע	11
13332	blare	תְרוּעָה	11
13333	blaspheme	חילול השם	11
13334	blindly	באופן עיוור	11
13335	blindness	עיוורון	11
13336	blissful	מְאוּשָׁר	11
13337	bloat	לְהַתְפִּיחַ	11
13338	blotch	כֶּתֶם	11
13339	blubber	מְדוּזָה	11
13340	bluffy	בלופי	11
13341	bluish	כְּחַלחַל	11
13342	bluster	לְהִתְרַבְרֵב	11
13343	boastful	רַברְבָנִי	11
13344	bog	לִשְׁקוֹעַ	11
13345	bookcase	כּוֹנָנִית	11
13346	bookkeeper	מְנַהֵל חֶשׁבּוֹנוֹת	11
13347	bookworm	מַקָק	11
13348	borough	קִריָה	11
13349	braid	לִקְלוֹעַ	11
13350	brainless	חסר מוח	11
13351	brainpower	כוח מוח	11
13352	brand-new	חָדִישׁ	11
13353	brash	חוצפה	11
13354	brilliance	זוֹהַר	11
13355	brother-in-law	גיס	11
13356	brute	פְּרָאִי	11
13357	built-in	מובנה	11
13358	bystander	צופה מהצד	11
13359	calmness	רוֹגַע	11
13360	calumny	מַלשִׁינוּת	11
13361	candour	כֵּנוּת	11
13362	capacious	מְרוּוָח	11
13363	captivate	לָצוּד	11
13364	carbohydrate	פַּחמֵימָה	11
13365	carbon	פַּחמָן	11
13366	carious	עששת	11
13367	carnivorous	אוֹכֵל בָּשָׂר	11
13368	cast iron	בַּרזֶל יְצִיקָה	11
13369	catchy	קָלִיט	11
13370	cater	לְסַפֵּק	11
13371	cattish	חֲתוּלִי	11
13372	caw	caw	11
13373	ceasless	ללא הפסקה	11
13374	ceramic	קֵרָמִי	11
13375	chafe	לְחַמֵם	11
13376	chagrin	דִכדוּך	11
13377	chancy	צ'אנס	11
13378	changeable	מִשְׁתַנֶה	11
13379	changeless	ללא שינוי	11
13380	chastise	להעניש	11
13381	chastisement	תוֹכָחָה	11
13382	chatterbox	פַּטפְּטָן	11
13383	cheapen	לְהוֹזִיל	11
13384	cheerless	עָגוּם	11
13385	chestnut	עַרמוֹן	11
13386	childbirth	לֵדָה	11
13387	churchyard	חצר כנסייה	11
13388	circular	עָגוֹל	11
13389	circumscribe	להגדיר	11
13390	circumvent	לעקוף	11
13391	civic	אֶזרָחִי	11
13392	clack	קלאק	11
13393	clairvoyant	מַגִיד עֲתִידוֹת	11
13394	cleave	לִדבּוֹק	11
13395	cleaver	קליבר	11
13396	cleft	שָׁסוּעַ	11
13397	clemency	חֲנִינָה	11
13398	clement	קלמנט	11
13399	clergy	כּמוּרָה	11
13400	clergyman	אִישׁ דַת	11
13401	cleverness	פִּקְחוּת	11
13402	climax	שִׂיא	11
13403	clinch	לְחַבֵּק	11
13404	cloakroom	מֶלתָחָה	11
13405	clog	לִסְתוֹם	11
13406	closeness	קִרבָה	11
13407	clotted	מוּרגָב	11
13408	cloudless	ללא עננים	11
13409	clout	כוח	11
13410	cluster	אֶשׁכּוֹל	11
13411	clutter	עִרבּוּביָה	11
13412	cockpit	תא הטייס	11
13413	coefficient	מְקַדֵם	11
13414	cogitate	להרהר	11
13415	cognate	מְאוֹתוֹ מָקוֹר	11
13416	cognizance	יְדִיעָה	11
13417	cognizance	יְדִיעָה	11
13418	cohabit	חיים משותפים	11
13419	cohere	לִדבּוֹק יָחָד	11
13420	cohort	עוקבה	11
13421	colander	מסננת	11
13422	coldness	קְרִירוּת	11
13423	collateral	בטחונות	11
13424	collective	קְבוּצָתִי	11
13425	collide	לְהִתְנַגֵשׁ	11
13426	comely	נָאֶה	11
13427	commandment	מִצוָה	11
13428	commemorate	לְהַזכִּיר	11
13429	commiserate	להתנשא	11
13430	compulsion	כּוֹרַח	11
13431	concealment	הַסתָרָה	11
13432	concede	לְהוֹדוֹת	11
13433	concourse	הִתקַהֲלוּת	11
13434	concourse	הִתקַהֲלוּת	11
13435	concur	מסכים	11
13436	concur	מסכים	11
13437	concur	מסכים	11
13438	concurrence	הַסכָּמָה	11
13439	condiment	תַבלִין	11
13440	condole	לְנַחֵם	11
13441	conductive	מוֹלִיך	11
13442	congest	גודש	11
13443	congestion	גוֹדֶשׁ	11
13444	congruous	תואם	11
13445	connate	קשר	11
13446	consecution	רדיפה	11
13447	conserve	לְשַׁמֵר	11
13448	cosign	cosign	11
13449	constrict	לְהַצֵר	11
13450	contagion	הַדבָּקָה	11
13451	contaminate	לְזַהֵם	11
13452	contemn	לגנות	11
13453	convene	לְכַנֵס	11
13454	cookery	אָמָנוּת הַבִּשׁוּל	11
13455	corpulent	בַּעַל גוּף	11
13456	cordial	לְבָבִי	11
13457	cornflower	דְגָנִיָה	11
13458	correspondence	הִתכַּתְבוּת	11
13459	correlation	מִתאָם	11
13460	credulity	אמינות	11
13461	crimpy	קריפי	11
13462	culinary	שֶׁל הַמִטבָּח	11
13463	dashboard	לוּחַ מַחווָנִים	11
13464	daughter-in-law	כלה	11
13465	daunt	להפחיד	11
13466	dauntless	חסר פחד	11
13467	Daydream	לַחֲלוֹם בְּהָקִיץ	11
13468	daydream	לַחֲלוֹם בְּהָקִיץ	11
13469	debark	לנחות	11
13470	debatable	שָׁנוּי בְּמַחֲלוֹקֶת	11
13471	debauch	לְהַדִיחַ	11
13472	decimal	עֶשׂרוֹנִי	11
13473	decisive	מַכרִיעַ	11
13474	decoction	מִרתָח	11
13475	decompose	לְפַרֵק	11
13476	decree	צַו	11
13477	deem	לִסְבּוֹר	11
13478	deep-rooted	שורשיים עמוקים	11
13479	deface	להשחית	11
13480	deference	כָּבוֹד	11
13481	deficit	גֵרָעוֹן	11
13482	deliquency	עדינות	11
13483	demeanour	הִתְנַהֲגוּת	11
13484	demolition	הֲרִיסָה	11
13485	demote	לְהוֹרִיד בְּדַרגָה	11
13486	denote	לציין	11
13487	denounce	לְהוֹקִיעַ	11
13488	density	צְפִיפוּת	11
13489	denunciation	הוֹקָעָה	11
13490	depart	לַעֲזוֹב	11
13491	deplete	לְרוֹקֵן	11
13492	deprave	לְהַשְׁחִית	11
13493	derelict	נָטוּשׁ	11
13494	detestable	נִתעָב	11
13495	dietary	שֶׁל דִיאֵטָה	11
13496	diffuse	מְפוּזָר	11
13497	digestive	מערכת העיכול	11
13498	dignify	לְכַבֵּד	11
13499	dike	סוֹלְלָה	11
13500	dilapidation	רעוע	11
13501	dill	שָׁמִיר	11
13502	dilution	מְהִילָה	11
13503	diminution	הַפחָתָה	11
13504	dimness	אַפְלוּלִית	11
13505	dingy	מְלוּכלָך וְאַפֵל	11
13506	dipping	טְבִילָה	11
13507	directness	יָשִׁירוֹת	11
13508	dirtiness	לִכלוּך	11
13509	disability	נָכוּת	11
13510	disarray	אִי סֶדֵר	11
13511	disavow	לְהִתְכַּחֵשׁ	11
13512	discernible	ניתן להבחין	11
13513	disciplinary	מִשְׁמַעתִי	11
13514	discourse	שִׂיחַ	11
13515	discourteous	לֹא מְנוּמָס	11
13516	discrepancy	אִי הַתְאָמָה	11
13517	disembody	להתפרק	11
13518	disembroil	להתפרק	11
13519	dish-water	כלים-מים	11
13520	disingenuous	לא הגיוני	11
13521	disinherit	לבטל את הירושה	11
13522	disloyal	לֹא נֶאֱמָן	11
13523	dismay	תַדְהֵמָה	11
13524	disobey	לְהַמרוֹת	11
13525	disparage	לִזַלזֵל	11
13526	disparity	פַּעַר	11
13527	disprove	לְהַפְרִיך	11
13528	disreputable	לֹא מְכוּבָּד	11
13529	dissemble	לְהַסתִיר	11
13530	dissimilar	שׁוֹנֶה	11
13531	distasteful	לֹא נָעִים	11
13532	distraction	הַסָחַת הַדַעַת	11
13533	diverse	מְגוּוָן	11
13534	diverse	מְגוּוָן	11
13535	divert	לְהַפְנוֹת	11
13536	divinity	אֱלוֹהוּת	11
13537	doable	נִתַן לְבִצוּעַ	11
13538	doer	רַמַאִי	11
13539	dog-collar	צווארון כלב	11
13540	domain	תְחוּם	11
13541	doormant	שומרת דלת	11
13542	draught	טְיוּטָה	11
13543	drawback	חִסָרוֹן	11
13544	earlap	חרכי אוזניים	11
13545	earthy	עֲפָרִי	11
13546	eatable	אָכִיל	11
13547	easygoing	נוֹחַ	11
13548	edacity	דריכות	11
13549	edacious	ערני	11
13550	efforless	ללא מאמץ	11
13551	ejection	פְּלִיטָה	11
13552	elemental	יסודי	11
13553	emasculate	לְסַרֵס	11
13554	embitter	לְמָרֵר	11
13555	embodiment	הִתגַלְמוּת	11
13556	eminent	דָגוּל	11
13557	emulate	לְחַקוֹת	11
13558	encase	לָשִׂים בְּאַרְגָז	11
13559	endorsement	הֲסָבָה	11
13560	enfold	לְחַבֵּק	11
13561	enigma	חִידָה	11
13562	ensign	נֵס	11
13563	enthrone	למלך	11
13564	equability	שוויון	11
13565	equality	שִׁויוֹן	11
13566	equity	הון עצמי	11
13567	erratic	בִּלתִי יָצִיב	11
13568	espionage	בִּיוּן	11
13569	estrange	לְהִתְנַכֵּר	11
13570	eventful	עתיר אירועים	11
13571	evergreen	יָרוֹק עַד	11
13572	evoke	לְהַעֲלוֹת זִכרוֹנוֹת	11
13573	exasperate	להרגיז	11
13574	excavate	לַחפּוֹר	11
13575	exclusion	הוֹצָאָה מִן הַכְלַל	11
13576	excrete	לְהַפְרִישׁ צוֹאָה	11
13577	excruciation	תופת	11
13578	exemplar	מוֹפֵת	11
13579	facile	קלה	11
13580	facultative	פקולטטיבי	11
13581	fad	תַחבִּיב	11
13582	fairness	הֲגִינוּת	11
13583	fairytale	אגדה	11
13584	faithless	חסרי אמונה	11
13585	falsify	לְסַלֵף	11
13586	far-fetched	דָחוּק	11
13587	father-in-law	חמי	11
13588	faultless	לְלֹא פְּגָם	11
13589	fearsome	מפחיד	11
13590	feasible	מַעֲשִׂי	11
13591	feint	הַטעָיָה	11
13592	fell	נפל	11
13593	fellowship	מַעֲנָק	11
13594	fen	בִּצָה	11
13595	fervid	לוֹהֵט	11
13596	fetid	מַסרִיחַ	11
13597	feudal	פיאודלי	11
13598	fickle	הֲפַכְפַּך	11
13599	finesse	עֲדִינוּת	11
13600	fire-extinguisher	מטף כיבוי אש	11
13601	firstly	קוֹדֶם כֹּל	11
13602	fitful	הֲפַכְפַּך	11
13603	fixedly	באופן קבוע	11
13604	fixture	מִתקָן	11
13605	fizzy	תוֹסֵס	11
13606	flabby	רָפוּי	11
13607	flamboyant	מְצוּעצָע	11
13608	flank	לְאַגֵף	11
13609	flatly	באופן שטוח	11
13610	fleck	כֶּתֶם	11
13611	flex	לְהַגמִישׁ	11
13612	floral	פִּרחִי	11
13613	fluency	שֶׁטֶף	11
13614	flurry	הִתרַגְשׁוּת	11
13615	foggy	מְעוּרפָּל	11
13616	foetus	עוּבָּר	11
13617	foil	לְסַכֵּל	11
13618	follower	חָסִיד	11
13619	fondle	לְלַטֵף	11
13620	fondness	חִבָּה	11
13621	footwear	הַנעָלָה	11
13622	forceful	חָזָק	11
13623	forceless	חסרי כוח	11
13624	forearm	אַמָה	11
13625	foresee	לַחֲזוֹת	11
13626	foresight	רְאִיַת הַנוֹלָד	11
13627	foretaste	טעימה מקדימה	11
13628	forgetful	שַׁכְחָן	11
13629	forum	פוֹרוּם	11
13630	foster-child	ילד אומנה	11
13631	frigility	קרירות	11
13632	fraudulent	רַמַאִי	11
13633	freelance	עצמאי	11
13634	frivolous	קַל דַעַת	11
13635	frizz	מקורזל	11
13636	frontage	חֲזִית	11
13637	frugality	הִסתַפְּקוּת	11
13638	fruitless	לְחִינָם	11
13639	gabble	גמלון	11
13640	gaily	בְּעֲלִיצוּת	11
13641	gainful	מַכנִיס	11
13642	gateway	כְּנִיסָה	11
13643	gaudy	צַעֲקָנִי	11
13644	gist	תַמצִית	11
13645	glare	מַבָּט נוֹקֵב	11
13646	gleeful	צוֹהֵל	11
13647	glossary	אַגְרוֹן	11
13648	glum	מְדוּכדָך	11
13649	glutton	זוֹלֵל	11
13650	gluttony	גַרגְרָנוּת	11
13651	goblet	גָבִיעַ	11
13652	godless	כּוֹפֵר	11
13653	goggle	משקפיים	11
13654	gorge	עָרוּץ	11
13655	gossipy	רכלנית	11
13656	governess	אוֹמֶנֶת	11
13657	graceless	חֲסַר חֵן	11
13658	grate	לְגַרֵר	11
13659	groin	מִפשָׂעָה	11
13660	groundless	חסר בסיס	11
13661	growl	לִנְהוֹם	11
13662	grub	לְחַטֵט	11
13663	gruel	מִקפָּה	11
13664	hailstone	בָּרָד	11
13665	hairdresser	סַפָּר	11
13666	half-baked	חצי אפוי	11
13667	half-brother	אח למחצה	11
13668	half-moon	חצי ירח	11
13669	half-time	מחצית	11
13670	half-year	חצי שנה	11
13671	halve	לִבתוֹר	11
13672	hamper	סַל	11
13673	handgrip	אחיזת יד	11
13674	handicraft	מְלֶאכֶת יָד	11
13675	hangnail	hangnail	11
13676	hard-boiled	מבושל קשה	11
13677	harden	לְהַקְשִׁיחַ	11
13678	hardily	בקושי	11
13679	hardness	קַשִׁיוּת	11
13680	hardship	מְצוּקָה	11
13681	hare	אַרנֶבֶת	11
13682	headlight	פָּנָס קִדמִי	11
13683	headphone	אֹזְנִית	11
13684	heady	מְשַׁכֵּר	11
13685	heartily	מִקֶרֶב לֵב	11
13686	heedless	מְזַלזֵל	11
13687	heiress	יוֹרֶשֶׁת	11
13688	heirloom	נֶכֶס מוּרָשׁ	11
13689	hermic	הרמית	11
13690	hibernate	מצב שינה	11
13691	hiccup	לְשַׁהֵק	11
13692	hindrance	מִכשׁוֹל	11
13693	hindsight	חָכמָה לְאַחַר מַעֲשֶׂה	11
13694	hireling	שכירה	11
13695	hobble	להכשיל	11
13696	housemaid	עוֹזֶרֶת	11
13697	hugely	הַרבֵּה מְאוֹד	11
13698	humankind	המין האנושי	11
13699	humid	לַח	11
13700	husky	צָרוּד	11
13701	hysteria	הִיסטֵרִיָה	11
13702	icily	בִקרִירוּת	11
13703	icon	סמל	11
13704	illegible	לֹא קָרִיא	11
13705	illegimate	לא לגיטימי	11
13706	illicit	לֹא חוּקִי	11
13707	illusive	אשליה	11
13708	imbue	לְהַחדִיר	11
13709	immaculate	לְלֹא רְבָב	11
13710	immensely	הַרבֵּה מְאוֹד	11
13711	immerse	לִטבּוֹל	11
13712	impassable	לֹא עָבִיר	11
13713	imperfect	לֹא מוּשׁלָם	11
13714	impetuous	פָּזִיז	11
13715	impish	שׁוֹבָבִי	11
13716	implacable	ללא רחמים	11
13717	impregnable	בלתי חדיר	11
13718	imprint	חוֹתָם	11
13719	inaction	אִי פֵּעוּלָה	11
13720	inadequacy	אִי כְּשִׁירוּת	11
13721	inane	מְטוּפָּשׁ	11
13722	inapptitude	חוסר התאמה	11
13723	inattentive	לֹא מַקשִׁיב	11
13724	indelicate	לא עדין	11
13725	indicator	מַד	11
13726	indigenous	יְלִידִי	11
13727	indiscreet	לא דיסקרטי	11
13728	indulgence	תַעֲנוּג	11
13729	inedible	לֹא אָכִיל	11
13730	inept	שׁטוּתִי	11
13731	inexpedient	לֹא כְּדַאי	11
13732	inexperienced	לֹא מְנוּסֶה	11
13733	inexplicable	שֶׁאֵין לְהַסבִּירוֹ	11
13734	inextricable	בלתי נפרד	11
13735	infertile	עָקָר	11
13736	inflammable	דָלִיק	11
13737	infractructure	הפרת מבנה	11
13738	inhibit	לְעַכֵּב	11
13739	inhospitable	בלתי מסביר פנים	11
13740	inset	הַבלָעָה	11
13741	intrusive	פולשני	11
13742	invoke	לִקְרוֹא	11
13743	invulnerable	לֹא פָּגִיעַ	11
13744	irradiate	לְהַקְרִין	11
13745	irritable	עַצבָּנִי	11
13746	jaguar	יָגוּאָר	11
13747	jangle	ג'נגל	11
13748	jargon	ז'ָרגוֹן	11
13749	jaunty	קַלִיל	11
13750	jobless	חסרי עבודה	11
13751	joggle	לרוץ	11
13752	joyful	שַׂמֵחַ	11
13753	juxtapose	לָשִׂים בְּסָמוּך	11
13754	juxtaposition	סְמִיכוּת	11
13755	kerb	לְרַסֵן	11
13756	keyhole	חוֹר הַמַנעוּל	11
13757	keynote	נאום מרכזי	11
13758	knead	לָלוּשׁ	11
13759	lacerate	לִקְרוֹעַ	11
13760	lacy	מְשׁוּנָץ	11
13761	lagoon	לָגוּנָה	11
13762	lanentable	lanentable	11
13763	lamppost	עמוד תאורה	11
13764	lamp-shade	אָהִיל	11
13765	lance	רוֹמַח	11
13766	landfall	הִתקָרְבוּת לְיַבָּשָׁה	11
13767	landmark	צִיוּן דֶרֶך	11
13768	languid	רָפֶה	11
13769	lank	כָּחוּשׁ וּגָבוֹהַ	11
13770	lardy	לאדי	11
13771	lascivious	עצבני	11
13772	lassitude	תְשִׁישׁוּת	11
13773	latent	חָבוּי	11
13774	lavishness	ראוותנות	11
13775	lax	רָפֶה	11
13776	laxative	מְשַׁלשֵׁל	11
13777	leap year	שָׁנָה מְעוּבֶּרֶת	11
13778	leaseholder	בעל חכירה	11
13779	legalize	לְהַכשִׁיר	11
13780	leggy	רגלית	11
13781	lenient	וַתְרָן	11
13782	levity	קַלוּת רֹאשׁ	11
13783	libellous	מַשׁמִיץ	11
13784	likeable	חביב	11
13785	likelihood	סְבִירוּת	11
13786	limelight	אוֹרוֹת הַבִימָה	11
13787	limelight	אוֹרוֹת הַבִימָה	11
13788	limitless	בלתי מוגבל	11
13789	lineal	מְקוּוקַו	11
13790	linear	ליניארי	11
13791	lioness	לְבִיאָה	11
13792	liquidate	לְחַסֵל	11
13793	lisp	עִלְגוּת	11
13794	listless	אָדִישׁ	11
13795	literacy	יְדִיעַת קְרוֹא וּכְתוֹב	11
13796	lithe	גָמִישׁ	11
13797	livestock	בַּעֲלֵי חַיִים	11
13798	locus	לוקוס	11
13799	lollipop	סוּכָּריָה עַל מַקֵל	11
13800	loom	נוֹל	11
13801	loot	לִבזוֹז	11
13802	lozenge	מְעוּיָן	11
13803	lucent	שקופה	11
13804	lucidity	צְלִילוּת	11
13805	lackless	חסרי חוסר	11
13806	lucrative	מִשׁתַלֵם	11
13807	lumpy	מְסוּקָס	11
13808	magnanimity	גַדלוּת נֶפֶשׁ	11
13809	majestic	מַלכּוּתִי	11
13810	malicious	זְדוֹנִי	11
13811	marshy	טוֹבְעָנִי	11
13812	mediocre	בֵּינוֹנִי	11
13813	mercenary	שְׂכִיר חֶרֶב	11
13814	mermaid	בְּתוּלַת הַיָם	11
13815	merriment	עֲלִיצוּת	11
13816	mesh	רֶשֶׁת	11
13817	mesmerize	לְהַפּנֵט	11
13818	middle-aged	בגיל העמידה	11
13819	midland	מידלנד	11
13820	midsummer	אֶמצַע הַקַיִץ	11
13821	midwife	מְיַלֶדֶת	11
13822	migration	הֲגִירָה	11
13823	migrant	מהגר	11
13824	mildness	מְתִינוּת	11
13825	mileage	מִספָּר הַמַיִלִים	11
13826	milestone	צִיוּן דֶרֶך	11
13827	minder	שומר	11
13828	mindless	חסר דעת	11
13829	minefield	שְׂדֵה מוֹקשִׁים	11
13830	misfire	לְהַחטִיא	11
13831	misfortune	צָרָה	11
13832	mishandle	לְטַפֵּל לֹא כְּרָאוּי	11
13833	mislead	לְהַטְעוֹת	11
13834	misspell	לִשְׁגוֹת בִּכְתִיב	11
13835	mole	חֲפַרפֶּרֶת	11
13836	mussel	שַׁבְּלוּל	11
13837	muteness	אֵלֶם	11
13838	mutinous	מַרדָנִי	11
13839	nameless	אַלמוֹנִי	11
13840	namely	כְּלוֹמַר	11
13841	namesake	בעל שם	11
13842	naval	שֶׁל הַצִי	11
13843	navel	טַבּוּר	11
13844	navigate	לנווט	11
13845	nebulous	מְעוּרפָּל	11
13846	needful	נָחוּץ	11
13847	negate	לִשְׁלוֹל	11
13848	negation	שְׁלִילָה	11
13849	negligence	רַשְׁלָנוּת	11
13850	negligent	רַשְׁלָנִי	11
13851	neighbourly	שכנות	11
13852	nestle	לְהִתְכַּרְבֵּל	11
13853	neutrality	אֲדִישׁוּת	11
13854	nightfall	רֶדַת הַחֲשֵׁכָה	11
13855	nightingale	זָמִיר	11
13856	noiseless	חֲרִישִׁי	11
13857	nomad	נַוָד	11
13858	nomad	נַוָד	11
13859	nonchalance	קוֹר רוּחַ	11
13860	nonpareil	ללא התאמה	11
13861	nosebleed	דימום מהאף	11
13862	notability	בולטות	11
13863	notary	נוֹטָרִיוֹן	11
13864	notoriety	גְנַאִי	11
13865	nudge	דְחִיפָה	11
13866	nurture	לְטַפֵּחַ	11
13867	nutmeg	מוּסקָט	11
13868	nutrient	מֵזִין	11
13869	obdurate	עַקשָׁן	11
13870	obedience	צִיוּת	11
13871	objectless	ללא אובייקט	11
13872	obliterate	לְהַשְׁמִיד	11
13873	obscenity	מַעֲשֶׂה מְגוּנֶה	11
13874	observance	שְׁמִירָה	11
13875	obsess	לִכפּוֹת	11
13876	obstinate	עַקשָׁן	11
13877	obtrusive	מִתבַּלֵט	11
13878	occult	נִסתָר	11
13879	occupant	דייר	11
13880	occurrence	הִתרַחֲשׁוּת	11
13881	octopus	תָמְנוּן	11
13882	offender	עבריין	11
13883	offset	לְקַזֵז	11
13884	old-fashioned	מְיוּשָׁן	11
13885	ominous	מְאַיֵם	11
13886	omnipotent	כֹּל יָכוֹל	11
13887	omnipresent	נוכח בכל מקום	11
13888	oncoming	מִתקַרֵב	11
13889	onefold	חד פעמי	11
13890	onerous	מַכבִּיד	11
13891	open-air	באוויר הפתוח	11
13892	open-minded	עם ראש פתוח	11
13893	opinionated	דוֹגמָטִי	11
13894	opinionated	דוֹגמָטִי	11
13895	oppression	עוֹשֶׁק	11
13896	orb	גַלגַל הָעַיִן	11
13897	ostensible	לכאורה	11
13898	outbalance	חוסר איזון	11
13899	outbid	הצעות גבוהות יותר	11
13900	outbreak	התפרצות	11
13901	outburst	הִתפָּרְצוּת	11
13902	outlay	הוֹצָאָה	11
13903	outmatch	התאמה	11
13904	outnumber	מספר גדול יותר	11
13905	outright	מוּחלָט	11
13906	outset	רֵאשִׁית	11
13907	outskirts	פַּרבָּר	11
13908	overjoyed	מאושר יתר על המידה	11
13909	overlap	חֲפִיפָה	11
13910	overlive	לחיות יתר על המידה	11
13911	oversleep	לְהַאֲרִיך לִישׁוֹן	11
13912	overweight	עודף משקל	11
13913	oxide	תַחמוֹצֶת	11
13914	pacify	לְהַרְגִיעַ	11
13915	palette	לוּחַ הַצְבָעִים	11
13916	pallor	חיוורון	11
13917	palmful	כף היד	11
13918	palpable	מַמָשִׁי	11
13919	palpate	למשש	11
13920	palsy	שִׁתוּק	11
13921	pancreas	לַבלָב	11
13922	parable	מָשָׁל	11
13923	parity	שִׁוּוּי	11
13924	parquet	פַּרקֶט	11
13925	parting	פְּרִידָה	11
13926	passable	עָבִיר	11
13927	paternal	אַבהִי	11
13928	patronage	חָסוּת	11
13929	pavilion	בִּיתָן	11
13930	peachy	אפרסקי	11
13931	pectoral	שֶׁל חָזֶה	11
13932	peculiarity	מוּזָרוּת	11
13933	peephole	חוֹר הַצָצָה	11
13934	peerless	חסרי אח ורע	11
13935	peevish	עַצבָּנִי	11
13936	pelt	לִזרוֹק	11
13937	pendulous	מְשׁוּלשָׁל	11
13938	penitence	תְשׁוּבָה	11
13939	penitent	חוֹזֵר בִּתְשׁוּבָה	11
13940	penniless	חֲסַר פְּרוּטָה	11
13941	pensioner	פֶּנסִיוֹנֶר	11
13942	peppery	מְפוּלפָּל	11
13943	percussive	הַקָשָׁתִי	11
13944	peremptory	תַקִיף	11
13945	perennial	רַב שְׁנָתִי	11
13946	perfunctory	שִׁטחִי	11
13947	periodic	תְקוּפָתִי	11
13948	permissive	מַתִיר	11
13949	perpetrate	לְבַצֵעַ	11
13950	perpetrator	מְבַצֵעַ	11
13951	persevere	להתמיד	11
13952	personify	לְגַלֵם	11
13953	perspiration	זֵעָה	11
13954	perspire	לְהָזִיעַ	11
13955	pert	חָצוּף	11
13956	peruse	לִקְרוֹא בְּעִיוּן	11
13957	pervasive	מִתפַּשֵׁט	11
13958	pester	לְהָצִיק	11
13959	pestilent	מציק	11
13960	petulant	רַגזָן	11
13961	picturesque	צִיוּרִי	11
13962	pictorial	צִיוּרִי	11
13963	piercing	נוֹקֵב	11
13964	piety	אֲדִיקוּת	11
13965	pillar	עַמוּד	11
13966	pillowcase	ציפית לכרית	11
13967	pilotage	טיס	11
13968	pine cone	אצטרובלים	11
13969	pinprick	דקירת סיכה	11
13970	placidity	שלווה	11
13971	plash	פלאש	11
13972	platitude	אִמְרָה נְדוֹשָׁה	11
13973	plenitude	גוֹדֶשׁ	11
13974	pliant	גָמִישׁ	11
13975	plumb	אֲנָך	11
13976	plume	נוֹצָה	11
13977	plump	שְׁמַנמַן	11
13978	poignant	נוֹקֵב	11
13979	polity	מִשׁטָר	11
13980	pollen	אֲבָקָה	11
13981	pomegranate	רִמוֹן	11
13982	pomp	הוֹד	11
13983	pomposity	נִפּוּחַ סִגנוֹן	11
13984	ponderous	כבד	11
13985	populate	לְאַכלֵס	11
13986	portent	אוֹת לַבָּאוֹת	11
13987	portly	שְׁמַנמַן	11
13988	portray	לְתַאֵר	11
13989	posh	מְהוּדָר	11
13990	possible	אֶפשָׁרִי	11
13991	postal	דואר	11
13992	posture	יְצִיבָה	11
13993	potency	פּוֹטֵנצִיָה	11
13994	prawn	חֲסִילוֹנִים	11
13995	precursor	מְבַשֵׂר	11
13996	predestination	גְזֵרָה קְדוּמָה	11
13997	predestine	גזרה מראש	11
13998	premonition	תְחוּשָׁה מוּקדֶמֶת	11
13999	preparation	הֲכָנָה	11
14000	prepay	לְשַׁלֵם מִרֹאשׁ	11
14001	prepense	הכנה	11
14002	prevalent	נָפוֹץ	11
14003	prevention	מְנִיעָה	11
14004	prickly	דוֹקְרָנִי	11
14005	primeval	רֵאשִׁיתִי	11
14006	proclamation	הַכרָזָה	11
14007	prod	לְדַרבֵּן	11
14008	prodigal	אובד	11
14009	prodigious	מַפלִיא	11
14010	profane	לְחַלֵל	11
14011	profanity	ניבולי פה	11
14012	profess	לְהַכרִיז	11
14013	progeny	צֶאֱצָאִים	11
14014	prohibition	איסור	11
14015	projection	הַקרָנָה	11
14016	propel	לְהַנִיעַ	11
14017	prosperity	שִׂגשׂוּג	11
14018	prosperity	שִׂגשׂוּג	11
14019	provisional	זְמַנִי	11
14020	prowess	תְעוּזָה	11
14021	prowl	לְשׁוֹטֵט	11
14022	prudent	זָהִיר	11
14023	puncture	נֶקֶר	11
14024	purge	לְטַהֵר	11
14025	purify	לְטַהֵר	11
14026	pushful	דוחף	11
14027	putrefy	לְהִרָקֵב	11
14028	putrescent	מרקב	11
14029	puzzlement	פְּלִיאָה	11
14030	quake	רְעִידַת אֲדָמָה	11
14031	quaking	רועד	11
14032	quandary	מְבוּכָה	11
14033	quarrelsome	נִרגָן	11
14034	quasi	מֵעֵין	11
14035	quell	לְשַׁכֵּך	11
14036	quench	לְהַשׂבִּיעַ רָצוֹן	11
14037	rabid	קַנָאִי	11
14038	radiant	קוֹרֵן	11
14039	rancid	מְעוּפָּשׁ	11
14040	rancorous	שׂוֹטֵם	11
14041	rant	לְדַבֵּר בְּטִרוּף	11
14042	rapacity	חַמסָנוּת	11
14043	rapt	נלהב	11
14044	rarity	נְדִירוּת	11
14045	rasp	מָשׁוֹף	11
14046	ravenous	מוּרעָב	11
14047	rebellion	מֶרֶד	11
14048	rebuff	לִדחוֹת	11
14049	recant	לַחֲזוֹר בּוֹ	11
14050	recast	לִבנוֹת מִחָדָשׁ	11
14051	recede	לָסֶגֶת	11
14052	reseptive	קבלת פנים	11
14053	recipient	מְקַבֵּל	11
14054	reciprocal	הֲדָדִי	11
14055	recite	לְדַקלֵם	11
14056	reckon	לְחַשֵׁב	11
14057	rectangle	מַלבֵּן	11
14058	rectification	יִשׁוּר	11
14059	recuperate	לְהַברִיא	11
14060	recurrent	חוֹזֵר וְנִשׁנֶה	11
14061	redden	לְהַאֲדִים	11
14062	redeem	לִפְדוֹת	11
14063	redress	לְתַקֵן	11
14064	reed	קָנֶה	11
14065	reek	צַחֲנָה	11
14066	referee	שׁוֹפֵט	11
14067	reform	רֵפוֹרמָה	11
14068	refrigerate	לְקַרֵר	11
14069	refuse	אַשׁפָּה	11
14070	regretful	מצער	11
14071	regrettable	מְצַעֵר	11
14072	relapse	לְהָרֵע	11
14073	reliance	הִסתַמְכוּת	11
14074	reliant	סוֹמֵך	11
14075	relish	הֲנָאָה	11
14076	remembrance	זֵכֶר	11
14077	remiss	רַשְׁלָנִי	11
14078	renaissance	רֵנֵסַנס	11
14079	renewal	הִתחַדְשׁוּת	11
14080	repellent	דוֹחֶה	11
14081	replica	הֶעתֵק מְדוּיָק	11
14082	repose	מְנוֹחָה	11
14083	reprehensible	רָאוּי לִנְזִיפָה	11
14084	reprove	לִנְזוֹף	11
14085	repute	מוֹנֵיטִין	11
14086	resemble	לִדמוֹת	11
14087	resentful	מִתרַעֵם	11
14088	resedue	המשך	11
14089	reverence	יִראַת כָּבוֹד	11
14090	revert	לַחֲזוֹר	11
14091	revoke	לְבַטֵל	11
14092	revolve	לְהִסְתוֹבֵב	11
14093	revulsion	סְלִידָה	11
14094	rigour	הַקפָּדָה	11
14095	riotous	פָּרוּעַ	11
14096	rotund	שְׁמַנמַן	11
14097	roundabout	עָקִיף	11
14098	rucksack	תַרמִיל גַב	11
14099	rudimentary	רִאשׁוֹנִי	11
14100	ruinous	הַרסָנִי	11
14101	ruse	תַחְבּוּלָה	11
14102	claim	reclamo	12
14103	stuff	cose	12
14104	improve	migliorare	12
14105	instead	Invece	12
14106	property	proprietà	12
14107	beautiful	Bellissimo	12
14108	bar	sbarra	12
14109	dream	sogno	12
14110	sea	mare	12
14111	middle	mezzo	12
14112	institution	istituzione	12
14113	shoulder	spalla	12
14114	fear	Paura	12
14115	challenge	sfida	12
14116	throughout	per tutto	12
14117	necessary	necessario	12
14118	trouble	guaio	12
14119	writer	scrittore	12
14120	specific	specifico	12
14121	individual	individuale	12
14122	edge	bordo	12
14123	front	anteriore	12
14124	deep	profondo	12
14125	far	lontano	12
14126	rather	Piuttosto	12
14127	mention	menzione	12
14128	range	allineare	12
14129	worry	preoccupazione	12
14130	adult	adulto	12
14131	style	stile	12
14132	best	migliore	12
14133	unit	unità	12
14134	conference	conferenza	12
14135	inside	dentro	12
14136	affect	simulare	12
14137	evening	sera	12
14138	trip	viaggio	12
14139	treat	trattare	12
14140	production	produzione	12
14141	top	superiore	12
14142	candidate	candidato	12
14143	discover	scoprire	12
14144	suddenly	All'improvviso	12
14145	weight	peso	12
14146	bit	morso	12
14147	perform	eseguire	12
14148	politics	politica	12
14149	structure	struttura	12
14150	camera	telecamera	12
14151	particular	particolare	12
14152	fish	pescare	12
14153	chair	sedia	12
14154	manage	maneggio	12
14155	interview	colloquio	12
14156	fly	volare	12
14157	shake	scuotere	12
14158	wide	Largo	12
14159	measure	misura	12
14160	play	giocare	12
14161	apply	fare domanda a	12
14162	pain	Dolore	12
14163	base	base	12
14164	control	controllare	12
14165	head	Testa	12
14166	peace	pace	12
14167	contain	contenere	12
14168	cultural	culturale	12
14169	employee	dipendente	12
14170	weapon	arma	12
14171	direction	direzione	12
14172	reveal	svelare	12
14173	onto	su	12
14174	traditional	tradizionale	12
14175	popular	popolare	12
14176	charge	carica	12
14177	maintain	mantenere	12
14178	statement	dichiarazione	12
14179	respond	rispondere	12
14180	impact	impatto	12
14181	theory	teoria	12
14182	talk	parlare	12
14183	yourself	te stesso	12
14184	finish	fine	12
14185	close	vicino	12
14186	no	NO	12
14187	ball	palla	12
14188	huge	Enorme	12
14189	tonight	stasera	12
14190	imagine	immaginare	12
14191	avoid	Evitare	12
14192	care	cura	12
14193	management	gestione	12
14194	visit	visita	12
14195	radio	radio	12
14196	Democrat	Democratico	12
14197	firm	ditta	12
14198	spring	primavera	12
14199	that	Quello	12
14200	expert	esperto	12
14201	trial	prova	12
14202	nice	Carino	12
14203	establish	stabilire	12
14204	cell	cella	12
14205	seat	posto a sedere	12
14206	above	Sopra	12
14207	card	carta	12
14208	memory	memoria	12
14209	green	verde	12
14210	science	scienza	12
14211	main	principale	12
14212	final	finale	12
14213	form	modulo	12
14214	cold	Freddo	12
14215	religious	religioso	12
14216	legal	legale	12
14217	network	rete	12
14218	enjoy	Godere	12
14219	sound	suono	12
14220	close	vicino	12
14221	help	aiuto	12
14222	manager	manager	12
14223	remove	rimuovere	12
14224	note	nota	12
14225	claim	reclamo	12
14226	since	Da	12
14227	forget	dimenticare	12
14228	enough	Abbastanza	12
14229	design	progetto	12
14230	rock	roccia	12
14231	entire	intero	12
14232	hang	appendere	12
14233	prove	dimostrare	12
14234	study	studio	12
14235	set	impostato	12
14236	executive	esecutivo	12
14237	guess	Indovinare	12
14238	laugh	ridere	12
14239	rather	Piuttosto	12
14240	various	vari	12
14241	public	pubblico	12
14242	dark	buio	12
14243	leg	gamba	12
14244	environment	ambiente	12
14245	check	controllo	12
14246	democratic	democratico	12
14247	example	esempio	12
14248	song	canzone	12
14249	truth	verità	12
14250	force	forza	12
14251	indeed	Infatti	12
14252	discuss	discutere	12
14253	clearly	chiaramente	12
14254	little	poco	12
14255	strategy	strategia	12
14256	state	stato	12
14257	blue	blu	12
14258	station	stazione	12
14259	gun	pistola	12
14260	knowledge	conoscenza	12
14261	ten	dieci	12
14262	act	atto	12
14263	one	uno	12
14264	sort	ordinare	12
14265	design	progetto	12
14266	miss	mancare	12
14267	authority	autorità	12
14268	compare	confrontare	12
14269	ok	OK	12
14270	stage	palcoscenico	12
14271	crime	crimine	12
14272	financial	finanziario	12
14273	operation	operazione	12
14274	professor	professore	12
14275	PM	PM	12
14276	sister	sorella	12
14277	skill	abilità	12
14278	answer	risposta	12
14279	glass	bicchiere	12
14280	environmental	ambientale	12
14281	section	sezione	12
14282	present	presente	12
14283	lawyer	avvocato	12
14284	forward	inoltrare	12
14285	sex	sesso	12
14286	name	nome	12
14287	benefit	beneficio	12
14288	analysis	analisi	12
14289	arrive	arrivare	12
14290	outside	al di fuori	12
14291	fail	fallire	12
14292	message	messaggio	12
14293	bill	conto	12
14294	standard	standard	12
14295	feeling	sensazione	12
14296	general	generale	12
14297	lay	posizione	12
14298	physical	fisico	12
14299	everybody	tutti	12
14300	election	elezione	12
14301	deal	Affare	12
14302	trade	commercio	12
14303	pretty	bello	12
14304	training	formazione	12
14305	TV	TV	12
14306	box	scatola	12
14307	television	televisione	12
14308	region	regione	12
14309	herself	se stessa	12
14310	attack	attacco	12
14311	wonder	Meraviglia	12
14312	degree	grado	12
14313	loss	perdita	12
14314	growth	crescita	12
14315	character	carattere	12
14316	indicate	indicare	12
14317	recognize	riconoscere	12
14318	staff	personale	12
14319	ability	capacità	12
14320	amount	quantità	12
14321	particularly	particolarmente	12
14322	cup	tazza	12
14323	argue	litigare	12
14324	success	successo	12
14325	whatever	Qualunque cosa	12
14326	disease	malattia	12
14327	prepare	preparare	12
14328	determine	determinare	12
14329	meeting	incontro	12
14330	left	Sinistra	12
14331	identify	identificare	12
14332	resource	risorsa	12
14333	hard	difficile	12
14334	answer	risposta	12
14335	accept	accettare	12
14336	pressure	pressione	12
14337	quality	qualità	12
14338	simple	semplice	12
14339	individual	individuale	12
14340	list	lista	12
14341	thought	Pensiero	12
14342	sign	cartello	12
14343	ready	pronto	12
14344	media	media	12
14345	occur	verificarsi	12
14346	serious	serio	12
14347	fund	finanziare	12
14348	dog	cane	12
14349	size	misurare	12
14350	lie	menzogna	12
14351	approach	approccio	12
14352	protect	proteggere	12
14353	exactly	esattamente	12
14354	happy	Contento	12
14355	beyond	al di là	12
14356	treatment	trattamento	12
14357	thus	così	12
14358	eight	otto	12
14359	central	centrale	12
14360	despite	nonostante	12
14361	career	carriera	12
14362	stock	azione	12
14363	scene	scena	12
14364	away	lontano	12
14365	artist	artista	12
14366	seven	Sette	12
14367	save	salva	12
14368	east	est	12
14369	shoot	sparare	12
14370	article	articolo	12
14371	decade	decennio	12
14372	factor	fattore	12
14373	animal	animale	12
14374	rise	salita	12
14375	dead	morto	12
14376	response	risposta	12
14377	usually	Generalmente	12
14378	each	ogni	12
14379	language	lingua	12
14380	hot	caldo	12
14381	similar	simile	12
14382	significant	significativo	12
14383	series	serie	12
14384	concern	preoccupazione	12
14385	race	gara	12
14386	natural	naturale	12
14387	other	altro	12
14388	poor	povero	12
14389	common	comune	12
14390	than	di	12
14391	share	condividere	12
14392	enter	entrare	12
14393	page	pagina	12
14394	movement	movimento	12
14395	near	vicino	12
14396	before	Prima	12
14397	fine	Bene	12
14398	note	nota	12
14399	sound	suono	12
14400	reduce	ridurre	12
14401	store	negozio	12
14402	recently	recentemente	12
14403	no	NO	12
14404	color	colore	12
14405	nature	natura	12
14406	push	spingere	12
14407	agency	agenzia	12
14408	upon	su	12
14409	blood	sangue	12
14410	plan	piano	12
14411	drop	gocciolare	12
14412	foreign	straniero	12
14413	focus	messa a fuoco	12
14414	represent	rappresentare	12
14415	fill	riempire	12
14416	author	autore	12
14417	order	ordine	12
14418	bed	letto	12
14419	second	secondo	12
14420	goal	obiettivo	12
14421	past	passato	12
14422	quickly	velocemente	12
14423	top	superiore	12
14424	throw	gettare	12
14425	fight	combattimento	12
14426	performance	prestazione	12
14427	deal	Affare	12
14428	behavior	comportamento	12
14429	rest	riposo	12
14430	private	privato	12
14431	officer	ufficiale	12
14432	subject	soggetto	12
14433	per	per	12
14434	seek	cercare	12
14435	board	asse	12
14436	sport	sport	12
14437	west	ovest	12
14438	certainly	certamente	12
14439	myself	me stessa	12
14440	bank	banca	12
14441	security	sicurezza	12
14442	increase	aumento	12
14443	anyone	chiunque	12
14444	defense	difesa	12
14445	involve	coinvolgere	12
14446	wrong	sbagliato	12
14447	future	futuro	12
14448	fire	fuoco	12
14449	current	attuale	12
14450	risk	rischio	12
14451	thousand	mille	12
14452	close	vicino	12
14453	church	Chiesa	12
14454	hospital	Ospedale	12
14455	medical	medico	12
14456	economy	economia	12
14457	call	chiamata	12
14458	well	BENE	12
14459	population	popolazione	12
14460	material	materiale	12
14461	campaign	campagna	12
14462	floor	pavimento	12
14463	Congress	Congresso	12
14464	husband	marito	12
14465	south	sud	12
14466	administration	amministrazione	12
14467	daughter	figlia	12
14468	rule	regola	12
14469	single	separare	12
14470	place	posto	12
14471	choice	scelta	12
14472	condition	condizione	12
14473	letter	lettera	12
14474	short	corto	12
14475	term	termine	12
14476	opportunity	opportunità	12
14477	likely	probabile	12
14478	plant	pianta	12
14479	available	disponibile	12
14480	hundred	centinaio	12
14481	realize	realizzare	12
14482	less	meno	12
14483	summer	estate	12
14484	course	corso	12
14485	period	periodo	12
14486	energy	energia	12
14487	brother	fratello	12
14488	chance	opportunità	12
14489	billion	miliardi	12
14490	culture	cultura	12
14491	soon	Presto	12
14492	listen	Ascoltare	12
14493	difficult	difficile	12
14494	window	finestra	12
14495	evidence	prova	12
14496	century	secolo	12
14497	point	punto	12
14498	look	Aspetto	12
14499	hair	capelli	12
14500	cause	causa	12
14501	choose	scegliere	12
14502	organization	organizzazione	12
14503	nearly	quasi	12
14504	red	rosso	12
14505	source	fonte	12
14506	tree	albero	12
14507	Republican	Repubblicano	12
14508	film	film	12
14509	draw	disegno	12
14510	attention	Attenzione	12
14511	type	tipo	12
14512	computer	computer	12
14513	baby	Bambino	12
14514	step	fare un passo	12
14515	catch	presa	12
14516	technology	tecnologia	12
14517	third	terzo	12
14518	simply	semplicemente	12
14519	support	supporto	12
14520	open	aprire	12
14521	personal	personale	12
14522	love	Amore	12
14523	north	nord	12
14524	certain	certo	12
14525	movie	film	12
14526	test	test	12
14527	news	notizia	12
14528	worker	lavoratore	12
14529	patient	paziente	12
14530	wall	parete	12
14531	doctor	medico	12
14532	product	prodotto	12
14533	describe	descrivere	12
14534	recent	recente	12
14535	land	terra	12
14536	piece	pezzo	12
14537	practice	pratica	12
14538	clear	chiaro	12
14539	picture	immagine	12
14540	quite	abbastanza	12
14541	cover	copertina	12
14542	data	dati	12
14543	either	O	12
14544	phone	telefono	12
14545	itself	si	12
14546	image	immagine	12
14547	street	strada	12
14548	face	viso	12
14549	figure	figura	12
14550	industry	industria	12
14551	cost	costo	12
14552	easy	facile	12
14553	situation	situazione	12
14554	half	metà	12
14555	oil	olio	12
14556	teach	insegnare	12
14557	American	americano	12
14558	eat	mangiare	12
14559	produce	produrre	12
14560	court	Tribunale	12
14561	need	Bisogno	12
14562	table	tavolo	12
14563	star	stella	12
14564	activity	attività	12
14565	base	base	12
14566	hit	colpo	12
14567	project	progetto	12
14568	end	FINE	12
14569	site	sito	12
14570	couple	coppia	12
14571	center	centro	12
14572	everyone	tutti	12
14573	matter	questione	12
14574	whose	di chi	12
14575	official	ufficiale	12
14576	event	evento	12
14577	support	supporto	12
14578	form	modulo	12
14579	ground	terra	12
14580	space	spazio	12
14581	special	speciale	12
14582	paper	carta	12
14583	wear	Indossare	12
14584	pick	scegliere	12
14585	record	documentazione	12
14586	especially	particolarmente	12
14587	agree	Essere d'accordo	12
14588	player	giocatore	12
14589	position	posizione	12
14590	early	Presto	12
14591	director	direttore	12
14592	tax	tassare	12
14593	because	Perché	12
14594	society	società	12
14595	season	stagione	12
14596	join	giuntura	12
14597	model	modello	12
14598	full	pieno	12
14599	action	azione	12
14600	building	edificio	12
14601	international	internazionale	12
14602	value	valore	12
14603	receive	ricevere	12
14604	thank	Grazie	12
14605	difference	differenza	12
14606	better	Meglio	12
14607	break	rottura	12
14608	federal	federale	12
14609	TRUE	VERO	12
14610	arm	braccio	12
14611	drive	guidare	12
14612	road	strada	12
14613	town	città	12
14614	carry	trasportare	12
14615	relationship	relazione	12
14616	view	visualizzazione	12
14617	develop	sviluppare	12
14618	even	Anche	12
14619	hope	Speranza	12
14620	son	figlio	12
14621	explain	spiegare	12
14622	decision	decisione	12
14623	according	secondo	12
14624	less	meno	12
14625	report	rapporto	12
14626	price	prezzo	12
14627	military	militare	12
14628	free	gratuito	12
14629	return	ritorno	12
14630	pull	tiro	12
14631	finally	Finalmente	12
14632	mind	mente	12
14633	police	Polizia Stradale	12
14634	whole	Totale	12
14635	wife	moglie	12
14636	voice	voce	12
14637	light	leggero	12
14638	leader	leader	12
14639	show	spettacolo	12
14640	drug	farmaco	12
14641	heart	cuore	12
14642	possible	possibile	12
14643	strong	forte	12
14644	rate	valutare	12
14645	decide	decidere	12
14646	up	su	12
14647	effort	sforzo	12
14648	economic	economico	12
14649	better	Meglio	12
14650	role	ruolo	12
14651	report	rapporto	12
14652	themselves	loro stessi	12
14653	development	sviluppo	12
14654	along	lungo	12
14655	require	richiedere	12
14656	sometimes	A volte	12
14657	major	maggiore	12
14658	sell	vendere	12
14659	former	ex	12
14660	pass	passaggio	12
14661	else	altro	12
14662	field	campo	12
14663	hard	difficile	12
14664	late	tardi	12
14665	little	poco	12
14666	perhaps	Forse	12
14667	care	cura	12
14668	raise	aumentare	12
14669	control	controllare	12
14670	class	classe	12
14671	suggest	suggerire	12
14672	yeah	Sì	12
14673	use	utilizzo	12
14674	effect	effetto	12
14675	remain	rimanere	12
14676	six	sei	12
14677	kill	uccisione	12
14678	local	locale	12
14679	reach	portata	12
14680	behind	dietro	12
14681	experience	esperienza	12
14682	someone	qualcuno	12
14683	course	corso	12
14684	death	morte	12
14685	interest	interesse	12
14686	college	college	12
14687	cut	taglio	12
14688	plan	piano	12
14689	nation	nazione	12
14690	oh	OH	12
14691	fall	autunno	12
14692	stay	rimanere	12
14693	build	costruire	12
14694	sense	senso	12
14695	home	casa	12
14696	expect	aspettarsi	12
14697	send	Inviare	12
14698	die	morire	12
14699	market	mercato	12
14700	serve	servire	12
14701	wait	Aspettare	12
14702	human	umano	12
14703	probably	probabilmente	12
14704	buy	acquistare	12
14705	actually	In realtà	12
14706	appear	apparire	12
14707	consider	considerare	12
14708	including	compreso	12
14709	music	musica	12
14710	process	processo	12
14711	love	Amore	12
14712	everything	qualunque cosa	12
14713	policy	politica	12
14714	off	spento	12
14715	age	età	12
14716	able	capace	12
14717	toward	verso	12
14718	maybe	Forse	12
14719	boy	ragazzo	12
14720	second	secondo	12
14721	foot	piede	12
14722	remember	Ricordare	12
14723	although	Sebbene	12
14724	across	attraverso	12
14725	education	istruzione	12
14726	both	Entrambi	12
14727	enough	Abbastanza	12
14728	offer	offerta	12
14729	force	forza	12
14730	teacher	insegnante	12
14731	air	aria	12
14732	himself	se stesso	12
14733	moment	momento	12
14734	before	Prima	12
14735	food	cibo	12
14736	early	Presto	12
14737	guy	tipo	12
14738	girl	ragazza	12
14739	research	ricerca	12
14740	win	vincita	12
14741	low	Basso	12
14742	reason	motivo	12
14743	walk	camminare	12
14744	morning	Mattina	12
14745	change	modifica	12
14746	open	aprire	12
14747	result	risultato	12
14748	grow	crescere	12
14749	within	entro	12
14750	party	festa	12
14751	history	storia	12
14752	war	guerra	12
14753	such	come	12
14754	sure	Sicuro	12
14755	art	arte	12
14756	person	persona	12
14757	health	salute	12
14758	door	porta	12
14759	spend	trascorrere	12
14760	office	ufficio	12
14761	add	aggiungere	12
14762	allow	permettere	12
14763	level	livello	12
14764	read	Leggere	12
14765	others	altri	12
14766	speak	parlare	12
14767	already	Già	12
14768	public	pubblico	12
14769	create	creare	12
14770	anything	nulla	12
14771	face	viso	12
14772	stop	fermare	12
14773	only	soltanto	12
14774	parent	genitore	12
14775	around	in giro	12
14776	follow	seguire	12
14777	together	insieme	12
14778	watch	orologio	12
14779	back	Indietro	12
14780	whether	se	12
14781	understand	capire	12
14782	social	sociale	12
14783	lead	Guida	12
14784	right	Giusto	12
14785	ago	fa	12
14786	nothing	Niente	12
14787	information	informazioni	12
14788	body	corpo	12
14789	kid	ragazzo	12
14790	idea	idea	12
14791	several	parecchi	12
14792	best	migliore	12
14793	minute	minuto	12
14794	team	squadra	12
14795	change	modifica	12
14796	real	vero	12
14797	learn	Imparare	12
14798	president	presidente	12
14799	least	meno	12
14800	white	bianco	12
14801	once	una volta	12
14802	five	cinque	12
14803	name	nome	12
14804	much	tanto	12
14805	community	comunità	12
14806	later	Dopo	12
14807	set	impostato	12
14808	continue	continuare	12
14809	include	includere	12
14810	almost	Quasi	12
14811	city	città	12
14812	car	auto	12
14813	meet	Incontrare	12
14814	law	legge	12
14815	pay	paga	12
14816	member	membro	12
14817	however	Tuttavia	12
14818	lose	perdere	12
14819	bad	Cattivo	12
14820	stand	in piedi	12
14821	ever	mai	12
14822	among	tra	12
14823	end	FINE	12
14824	political	politico	12
14825	line	linea	12
14826	yet	Ancora	12
14827	often	Spesso	12
14828	game	gioco	12
14829	hour	ora	12
14830	power	energia	12
14831	until	Fino a	12
14832	away	lontano	12
14833	sit	sedersi	12
14834	father	padre	12
14835	important	importante	12
14836	friend	amico	12
14837	around	in giro	12
14838	service	servizio	12
14839	provide	fornire	12
14840	long	lungo	12
14841	since	Da	12
14842	after	Dopo	12
14843	yes	SÌ	12
14844	house	casa	12
14845	little	poco	12
14846	both	Entrambi	12
14847	long	lungo	12
14848	black	nero	12
14849	far	lontano	12
14850	head	Testa	12
14851	four	quattro	12
14852	kind	Tipo	12
14853	side	lato	12
14854	issue	problema	12
14855	business	Attività commerciale	12
14856	though	Anche se	12
14857	word	parola	12
14858	job	lavoro	12
14859	eye	occhio	12
14860	book	libro	12
14861	study	studio	12
14862	right	Giusto	12
14863	lot	quantità	12
14864	different	diverso	12
14865	month	mese	12
14866	fact	fatto	12
14867	young	giovane	12
14868	story	storia	12
14869	money	soldi	12
14870	national	nazionale	12
14871	area	zona	12
14872	mother	madre	12
14873	write	scrivere	12
14874	room	camera	12
14875	water	acqua	12
14876	under	Sotto	12
14877	home	casa	12
14878	must	dovere	12
14879	million	milioni	12
14880	all	Tutto	12
14881	large	grande	12
14882	before	Prima	12
14883	without	senza	12
14884	next	Prossimo	12
14885	happen	accadere	12
14886	bring	Portare	12
14887	today	Oggi	12
14888	hold	Presa	12
14889	believe	credere	12
14890	point	punto	12
14891	Mr.	Sig.	12
14892	live	vivere	12
14893	night	notte	12
14894	like	Piace	12
14895	move	mossa	12
14896	always	Sempre	12
14897	off	spento	12
14898	number	numero	12
14899	small	piccolo	12
14900	run	correre	12
14901	government	governo	12
14902	play	giocare	12
14903	work	lavoro	12
14904	during	durante	12
14905	question	domanda	12
14906	so	COSÌ	12
14907	hear	ascoltare	12
14908	program	programma	12
14909	right	Giusto	12
14910	each	ogni	12
14911	system	sistema	12
14912	where	Dove	12
14913	company	azienda	12
14914	week	settimana	12
14915	most	maggior parte	12
14916	case	caso	12
14917	few	pochi	12
14918	again	Ancora	12
14919	such	come	12
14920	over	Sopra	12
14921	place	posto	12
14922	against	contro	12
14923	about	Di	12
14924	part	parte	12
14925	show	spettacolo	12
14926	American	americano	12
14927	might	Potrebbe	12
14928	hand	mano	12
14929	start	inizio	12
14930	every	ogni	12
14931	problem	problema	12
14932	turn	giro	12
14933	where	Dove	12
14934	talk	parlare	12
14935	help	aiuto	12
14936	country	Paese	12
14937	seem	sembrare	12
14938	begin	inizio	12
14939	group	gruppo	12
14940	big	grande	12
14941	same	Stesso	12
14942	great	Grande	12
14943	let	permettere	12
14944	why	Perché	12
14945	student	studente	12
14946	keep	Mantenere	12
14947	on	SU	12
14948	mean	Significare	12
14949	while	Mentre	12
14950	old	vecchio	12
14951	put	Mettere	12
14952	leave	Partire	12
14953	out	fuori	12
14954	own	Proprio	12
14955	family	famiglia	12
14956	much	tanto	12
14957	another	un altro	12
14958	most	maggior parte	12
14959	something	qualcosa	12
14960	really	Veramente	12
14961	high	alto	12
14962	between	fra	12
14963	become	diventare	12
14964	never	Mai	12
14965	state	stato	12
14966	when	Quando	12
14967	three	tre	12
14968	feel	Tatto	12
14969	too	pure	12
14970	need	Bisogno	12
14971	ask	chiedere	12
14972	last	scorso	12
14973	as	COME	12
14974	in	In	12
14975	try	Tentativo	12
14976	still	Ancora	12
14977	school	scuola	12
14978	over	Sopra	12
14979	world	mondo	12
14980	call	chiamata	12
14981	should	Dovrebbe	12
14982	after	Dopo	12
14983	may	Maggio	12
14984	down	giù	12
14985	work	lavoro	12
14986	there	Là	12
14987	child	bambino	12
14988	life	vita	12
14989	us	noi	12
14990	through	Attraverso	12
14991	woman	donna	12
14992	good	Bene	12
14993	any	Qualunque	12
14994	back	Indietro	12
14995	even	Anche	12
14996	her	suo	12
14997	very	molto	12
14998	one	uno	12
14999	tell	raccontare	12
15000	those	quelli	12
15001	only	soltanto	12
15002	well	BENE	12
15003	many	molti	12
15004	give	Dare	12
15005	thing	cosa	12
15006	here	Qui	12
15007	find	Trovare	12
15008	man	Uomo	12
15009	no	NO	12
15010	use	utilizzo	12
15011	more	Di più	12
15012	day	giorno	12
15013	because	Perché	12
15014	new	nuovo	12
15015	also	Anche	12
15016	first	Primo	12
15017	look	Aspetto	12
15018	way	modo	12
15019	want	Volere	12
15020	these	questi	12
15021	more	Di più	12
15022	two	due	12
15023	our	Nostro	12
15024	its	suo	12
15025	then	Poi	12
15026	how	Come	12
15027	other	altro	12
15028	like	Piace	12
15029	than	di	12
15030	now	Ora	12
15031	could	Potevo	12
15032	come	Venire	12
15033	your	tuo	12
15034	him	lui	12
15035	see	Vedere	12
15036	just	Appena	12
15037	into	in	12
15038	out	fuori	12
15039	take	Prendere	12
15040	people	persone	12
15041	me	Me	12
15042	some	Alcuni	12
15043	them	loro	12
15044	which	Quale	12
15045	when	Quando	12
15046	think	pensare	12
15047	so	COSÌ	12
15048	year	anno	12
15049	there	Là	12
15050	time	tempo	12
15051	one	uno	12
15052	up	su	12
15053	as	COME	12
15054	will	Volere	12
15055	know	Sapere	12
15056	about	Di	12
15057	make	Fare	12
15058	my	Mio	12
15059	all	Tutto	12
15060	her	suo	12
15061	would	volevo	12
15062	if	Se	12
15063	get	Ottenere	12
15064	who	Chi	12
15065	can	Potere	12
15066	their	loro	12
15067	go	andare	12
15068	what	Che cosa	12
15069	as	COME	12
15070	or	O	12
15071	she	Lei	12
15072	by	di	12
15073	won’t	non	12
15074	can’t	non posso	12
15075	not	non	12
15076	that	Quello	12
15077	from	da	12
15078	his	il suo	12
15079	we	Noi	12
15080	but	Ma	12
15081	at	A	12
15082	they	Essi	12
15083	this	Questo	12
15084	say	Dire	12
15085	do	Fare	12
15086	on	SU	12
15087	with	con	12
15088	he	Lui	12
15089	you	Voi	12
15090	for	per	12
15091	that	Quello	12
15092	I	IO	12
15093	it	Esso	12
15094	too	pure	12
15095	have	Avere	12
15096	to	A	12
15097	in	In	12
15098	a	UN	12
15099	of	Di	12
15100	and	E	12
15101	be	Essere	12
15102	claim	beanspruchen	13
15103	stuff	Sachen	13
15104	improve	verbessern	13
15105	instead	stattdessen	13
15106	property	Eigentum	13
15107	beautiful	Schön	13
15108	bar	Bar	13
15109	dream	Traum	13
15110	sea	Meer	13
15111	middle	Mitte	13
15112	institution	Institution	13
15113	shoulder	Schulter	13
15114	fear	Furcht	13
15115	challenge	Herausforderung	13
15116	throughout	hindurch	13
15117	necessary	notwendig	13
15118	trouble	Problem	13
15119	writer	Schriftsteller	13
15120	specific	spezifisch	13
15121	individual	Person	13
15122	edge	Rand	13
15123	front	Front	13
15124	deep	tief	13
15125	far	weit	13
15126	rather	eher	13
15127	mention	erwähnen	13
15128	range	Reichweite	13
15129	worry	Sorge	13
15130	adult	Erwachsene	13
15131	style	Stil	13
15132	best	am besten	13
15133	unit	Einheit	13
15134	conference	Konferenz	13
15135	inside	innen	13
15136	affect	beeinflussen	13
15137	evening	Abend	13
15138	trip	Reise	13
15139	treat	behandeln	13
15140	production	Produktion	13
15141	top	Spitze	13
15142	candidate	Kandidat	13
15143	discover	entdecken	13
15144	suddenly	plötzlich	13
15145	weight	Gewicht	13
15146	bit	bisschen	13
15147	perform	durchführen	13
15148	politics	Politik	13
15149	structure	Struktur	13
15150	camera	Kamera	13
15151	particular	besondere	13
15152	fish	Fisch	13
15153	chair	Stuhl	13
15154	manage	verwalten	13
15155	interview	Interview	13
15156	fly	fliegen	13
15157	shake	Shake	13
15158	wide	breit	13
15159	measure	messen	13
15160	play	spielen	13
15161	apply	anwenden	13
15162	pain	Schmerz	13
15163	base	Base	13
15164	control	Kontrolle	13
15165	head	Kopf	13
15166	peace	Frieden	13
15167	contain	enthalten	13
15168	cultural	kulturell	13
15169	employee	Mitarbeiter	13
15170	weapon	Waffe	13
15171	direction	Richtung	13
15172	reveal	aufdecken	13
15173	onto	auf	13
15174	traditional	traditionell	13
15175	popular	beliebt	13
15176	charge	Aufladung	13
15177	maintain	pflegen	13
15178	statement	Stellungnahme	13
15179	respond	antworten	13
15180	impact	Auswirkungen	13
15181	theory	Theorie	13
15182	talk	sprechen	13
15183	yourself	selbst	13
15184	finish	beenden	13
15185	close	schließen	13
15186	no	NEIN	13
15187	ball	Ball	13
15188	huge	riesig	13
15189	tonight	heute Abend	13
15190	imagine	vorstellen	13
15191	avoid	vermeiden	13
15192	care	Pflege	13
15193	management	Management	13
15194	visit	besuchen	13
15195	radio	Radio	13
15196	Democrat	Demokrat	13
15197	firm	Firma	13
15198	spring	Frühling	13
15199	that	Das	13
15200	expert	Experte	13
15201	trial	Versuch	13
15202	nice	Hübsch	13
15203	establish	gründen	13
15204	cell	Zelle	13
15205	seat	Sitz	13
15206	above	über	13
15207	card	Karte	13
15208	memory	Erinnerung	13
15209	green	Grün	13
15210	science	Wissenschaft	13
15211	main	hauptsächlich	13
15212	final	Finale	13
15213	form	bilden	13
15214	cold	kalt	13
15215	religious	religiös	13
15216	legal	legal	13
15217	network	Netzwerk	13
15218	enjoy	genießen	13
15219	sound	Klang	13
15220	close	schließen	13
15221	help	helfen	13
15222	manager	Manager	13
15223	remove	entfernen	13
15224	note	Notiz	13
15225	claim	beanspruchen	13
15226	since	seit	13
15227	forget	vergessen	13
15228	enough	genug	13
15229	design	Design	13
15230	rock	Felsen	13
15231	entire	gesamte	13
15232	hang	aufhängen	13
15233	prove	beweisen	13
15234	study	Studie	13
15235	set	Satz	13
15236	executive	Exekutive	13
15237	guess	erraten	13
15238	laugh	lachen	13
15239	rather	eher	13
15240	various	verschieden	13
15241	public	öffentlich	13
15242	dark	dunkel	13
15243	leg	Bein	13
15244	environment	Umfeld	13
15245	check	überprüfen	13
15246	democratic	demokratisch	13
15247	example	Beispiel	13
15248	song	Lied	13
15249	truth	Wahrheit	13
15250	force	Gewalt	13
15251	indeed	In der Tat	13
15252	discuss	diskutieren	13
15253	clearly	deutlich	13
15254	little	wenig	13
15255	strategy	Strategie	13
15256	state	Zustand	13
15257	blue	Blau	13
15258	station	Station	13
15259	gun	Pistole	13
15260	knowledge	Wissen	13
15261	ten	zehn	13
15262	act	Akt	13
15263	one	eins	13
15264	sort	Sortieren	13
15265	design	Design	13
15266	miss	vermissen	13
15267	authority	Behörde	13
15268	compare	vergleichen	13
15269	ok	OK	13
15270	stage	Bühne	13
15271	crime	Verbrechen	13
15272	financial	finanziell	13
15273	operation	Betrieb	13
15274	professor	Professor	13
15275	PM	PN	13
15276	sister	Schwester	13
15277	skill	Fähigkeit	13
15278	answer	Antwort	13
15279	glass	Glas	13
15280	environmental	Umwelt	13
15281	section	Abschnitt	13
15282	present	gegenwärtig	13
15283	lawyer	Rechtsanwalt	13
15284	forward	nach vorne	13
15285	sex	Sex	13
15286	name	Name	13
15287	benefit	Nutzen	13
15288	analysis	Analyse	13
15289	arrive	ankommen	13
15290	outside	draußen	13
15291	fail	scheitern	13
15292	message	Nachricht	13
15293	bill	Rechnung	13
15294	standard	Standard	13
15295	feeling	Gefühl	13
15296	general	allgemein	13
15297	lay	legen	13
15298	physical	körperlich	13
15299	everybody	alle	13
15300	election	Wahl	13
15301	deal	handeln	13
15302	trade	Handel	13
15303	pretty	hübsch	13
15304	training	Ausbildung	13
15305	TV	Fernseher	13
15306	box	Kasten	13
15307	television	Fernsehen	13
15308	region	Region	13
15309	herself	sich	13
15310	attack	Angriff	13
15311	wonder	Wunder	13
15312	degree	Grad	13
15313	loss	Verlust	13
15314	growth	Wachstum	13
15315	character	Charakter	13
15316	indicate	angeben	13
15317	recognize	erkennen	13
15318	staff	Personal	13
15319	ability	Fähigkeit	13
15320	amount	Menge	13
15321	particularly	insbesondere	13
15322	cup	Tasse	13
15323	argue	argumentieren	13
15324	success	Erfolg	13
15325	whatever	was auch immer	13
15326	disease	Krankheit	13
15327	prepare	vorbereiten	13
15328	determine	bestimmen	13
15329	meeting	treffen	13
15330	left	links	13
15331	identify	identifizieren	13
15332	resource	Ressource	13
15333	hard	hart	13
15334	answer	Antwort	13
15335	accept	akzeptieren	13
15336	pressure	Druck	13
15337	quality	Qualität	13
15338	simple	einfach	13
15339	individual	Person	13
15340	list	Liste	13
15341	thought	Gedanke	13
15342	sign	Zeichen	13
15343	ready	bereit	13
15344	media	Medien	13
15345	occur	geschehen	13
15346	serious	ernst	13
15347	fund	Fonds	13
15348	dog	Hund	13
15349	size	Größe	13
15350	lie	Lüge	13
15351	approach	Ansatz	13
15352	protect	schützen	13
15353	exactly	genau	13
15354	happy	Glücklich	13
15355	beyond	darüber hinaus	13
15356	treatment	Behandlung	13
15357	thus	daher	13
15358	eight	acht	13
15359	central	zentral	13
15360	despite	trotz	13
15361	career	Karriere	13
15362	stock	Aktie	13
15363	scene	Szene	13
15364	away	weg	13
15365	artist	Künstler	13
15366	seven	Sieben	13
15367	save	speichern	13
15368	east	Ost	13
15369	shoot	schießen	13
15370	article	Artikel	13
15371	decade	Jahrzehnt	13
15372	factor	Faktor	13
15373	animal	Tier	13
15374	rise	erheben	13
15375	dead	tot	13
15376	response	Antwort	13
15377	usually	normalerweise	13
15378	each	jede	13
15379	language	Sprache	13
15380	hot	heiß	13
15381	similar	ähnlich	13
15382	significant	bedeutsam	13
15383	series	Serie	13
15384	concern	Sorge	13
15385	race	Wettrennen	13
15386	natural	natürlich	13
15387	other	andere	13
15388	poor	arm	13
15389	common	gemeinsam	13
15390	than	als	13
15391	share	Aktie	13
15392	enter	eingeben	13
15393	page	Seite	13
15394	movement	Bewegung	13
15395	near	nahe	13
15396	before	vor	13
15397	fine	Bußgeld	13
15398	note	Notiz	13
15399	sound	Klang	13
15400	reduce	reduzieren	13
15401	store	speichern	13
15402	recently	kürzlich	13
15403	no	NEIN	13
15404	color	Farbe	13
15405	nature	Natur	13
15406	push	drücken	13
15407	agency	Agentur	13
15408	upon	auf	13
15409	blood	Blut	13
15410	plan	planen	13
15411	drop	fallen	13
15412	foreign	ausländisch	13
15413	focus	Fokus	13
15414	represent	darstellen	13
15415	fill	füllen	13
15416	author	Autor	13
15417	order	Befehl	13
15418	bed	Bett	13
15419	second	zweite	13
15420	goal	Ziel	13
15421	past	Vergangenheit	13
15422	quickly	schnell	13
15423	top	Spitze	13
15424	throw	werfen	13
15425	fight	kämpfen	13
15426	performance	Leistung	13
15427	deal	handeln	13
15428	behavior	Verhalten	13
15429	rest	ausruhen	13
15430	private	Privat	13
15431	officer	Offizier	13
15432	subject	Thema	13
15433	per	pro	13
15434	seek	suchen	13
15435	board	Planke	13
15436	sport	Sport	13
15437	west	Westen	13
15438	certainly	sicherlich	13
15439	myself	ich selbst	13
15440	bank	Bank	13
15441	security	Sicherheit	13
15442	increase	Zunahme	13
15443	anyone	irgendjemand	13
15444	defense	Verteidigung	13
15445	involve	einbeziehen	13
15446	wrong	falsch	13
15447	future	Zukunft	13
15448	fire	Feuer	13
15449	current	aktuell	13
15450	risk	Risiko	13
15451	thousand	tausend	13
15452	close	schließen	13
15453	church	Kirche	13
15454	hospital	Krankenhaus	13
15455	medical	medizinisch	13
15456	economy	Wirtschaft	13
15457	call	Anruf	13
15458	well	Also	13
15459	population	Bevölkerung	13
15460	material	Material	13
15461	campaign	Kampagne	13
15462	floor	Boden	13
15463	Congress	Kongress	13
15464	husband	Ehemann	13
15465	south	Süden	13
15466	administration	Verwaltung	13
15467	daughter	Tochter	13
15468	rule	Regel	13
15469	single	einzel	13
15470	place	Ort	13
15471	choice	Auswahl	13
15472	condition	Zustand	13
15473	letter	Brief	13
15474	short	kurz	13
15475	term	Begriff	13
15476	opportunity	Gelegenheit	13
15477	likely	wahrscheinlich	13
15478	plant	Anlage	13
15479	available	verfügbar	13
15480	hundred	hundert	13
15481	realize	realisieren	13
15482	less	weniger	13
15483	summer	Sommer	13
15484	course	Kurs	13
15485	period	Zeitraum	13
15486	energy	Energie	13
15487	brother	Bruder	13
15488	chance	Chance	13
15489	billion	Milliarde	13
15490	culture	Kultur	13
15491	soon	bald	13
15492	listen	Hören	13
15493	difficult	schwierig	13
15494	window	Fenster	13
15495	evidence	Beweis	13
15496	century	Jahrhundert	13
15497	point	Punkt	13
15498	look	sehen	13
15499	hair	Haar	13
15500	cause	Ursache	13
15501	choose	wählen	13
15502	organization	Organisation	13
15503	nearly	fast	13
15504	red	Rot	13
15505	source	Quelle	13
15506	tree	Baum	13
15507	Republican	Republikaner	13
15508	film	Film	13
15509	draw	ziehen	13
15510	attention	Aufmerksamkeit	13
15511	type	Typ	13
15512	computer	Computer	13
15513	baby	Baby	13
15514	step	Schritt	13
15515	catch	fangen	13
15516	technology	Technologie	13
15517	third	dritte	13
15518	simply	einfach	13
15519	support	Unterstützung	13
15520	open	offen	13
15521	personal	persönlich	13
15522	love	Liebe	13
15523	north	Norden	13
15524	certain	bestimmt	13
15525	movie	Film	13
15526	test	prüfen	13
15527	news	Nachricht	13
15528	worker	Arbeitnehmer	13
15529	patient	geduldig	13
15530	wall	Wand	13
15531	doctor	Arzt	13
15532	product	Produkt	13
15533	describe	beschreiben	13
15534	recent	jüngste	13
15535	land	Land	13
15536	piece	Stück	13
15537	practice	üben	13
15538	clear	klar	13
15539	picture	Bild	13
15540	quite	ganz	13
15541	cover	Abdeckung	13
15542	data	Daten	13
15543	either	entweder	13
15544	phone	Telefon	13
15545	itself	selbst	13
15546	image	Bild	13
15547	street	Straße	13
15548	face	Gesicht	13
15549	figure	Figur	13
15550	industry	Industrie	13
15551	cost	kosten	13
15552	easy	einfach	13
15553	situation	Situation	13
15554	half	Hälfte	13
15555	oil	Öl	13
15556	teach	unterrichten	13
15557	American	amerikanisch	13
15558	eat	essen	13
15559	produce	produzieren	13
15560	court	Gericht	13
15561	need	brauchen	13
15562	table	Tisch	13
15563	star	Stern	13
15564	activity	Aktivität	13
15565	base	Base	13
15566	hit	Schlag	13
15567	project	Projekt	13
15568	end	Ende	13
15569	site	Website	13
15570	couple	Paar	13
15571	center	Center	13
15572	everyone	alle	13
15573	matter	Gegenstand	13
15574	whose	wessen	13
15575	official	offiziell	13
15576	event	Ereignis	13
15577	support	Unterstützung	13
15578	form	bilden	13
15579	ground	Boden	13
15580	space	Raum	13
15581	special	besonders	13
15582	paper	Papier	13
15583	wear	tragen	13
15584	pick	wählen	13
15585	record	aufzeichnen	13
15586	especially	besonders	13
15587	agree	zustimmen	13
15588	player	Spieler	13
15589	position	Position	13
15590	early	früh	13
15591	director	Direktor	13
15592	tax	Steuer	13
15593	because	Weil	13
15594	society	Gesellschaft	13
15595	season	Jahreszeit	13
15596	join	verbinden	13
15597	model	Modell	13
15598	full	voll	13
15599	action	Aktion	13
15600	building	Gebäude	13
15601	international	international	13
15602	value	Wert	13
15603	receive	erhalten	13
15604	thank	Dank	13
15605	difference	Unterschied	13
15606	better	besser	13
15607	break	brechen	13
15608	federal	föderal	13
15609	TRUE	WAHR	13
15610	arm	Arm	13
15611	drive	fahren	13
15612	road	Straße	13
15613	town	Stadt	13
15614	carry	tragen	13
15615	relationship	Beziehung	13
15616	view	Sicht	13
15617	develop	entwickeln	13
15618	even	sogar	13
15619	hope	Hoffnung	13
15620	son	Sohn	13
15621	explain	erklären	13
15622	decision	Entscheidung	13
15623	according	nach	13
15624	less	weniger	13
15625	report	Bericht	13
15626	price	Preis	13
15627	military	Militär	13
15628	free	frei	13
15629	return	zurückkehren	13
15630	pull	ziehen	13
15631	finally	Endlich	13
15632	mind	Geist	13
15633	police	Polizei	13
15634	whole	ganz	13
15635	wife	Gattin	13
15636	voice	Stimme	13
15637	light	Licht	13
15638	leader	Führer	13
15639	show	zeigen	13
15640	drug	Arzneimittel	13
15641	heart	Herz	13
15642	possible	möglich	13
15643	strong	stark	13
15644	rate	Rate	13
15645	decide	entscheiden	13
15646	up	hoch	13
15647	effort	Bemühung	13
15648	economic	wirtschaftlich	13
15649	better	besser	13
15650	role	Rolle	13
15651	report	Bericht	13
15652	themselves	selbst	13
15653	development	Entwicklung	13
15654	along	entlang	13
15655	require	erfordern	13
15656	sometimes	Manchmal	13
15657	major	wesentlich	13
15658	sell	verkaufen	13
15659	former	ehemalig	13
15660	pass	passieren	13
15661	else	anders	13
15662	field	Feld	13
15663	hard	hart	13
15664	late	spät	13
15665	little	wenig	13
15666	perhaps	vielleicht	13
15667	care	Pflege	13
15668	raise	erheben	13
15669	control	Kontrolle	13
15670	class	Klasse	13
15671	suggest	vorschlagen	13
15672	yeah	Ja	13
15673	use	verwenden	13
15674	effect	Wirkung	13
15675	remain	bleiben	13
15676	six	sechs	13
15677	kill	töten	13
15678	local	lokal	13
15679	reach	erreichen	13
15680	behind	hinter	13
15681	experience	Erfahrung	13
15682	someone	jemand	13
15683	course	Kurs	13
15684	death	Tod	13
15685	interest	Interesse	13
15686	college	Hochschule	13
15687	cut	schneiden	13
15688	plan	planen	13
15689	nation	Nation	13
15690	oh	Oh	13
15691	fall	fallen	13
15692	stay	bleiben	13
15693	build	bauen	13
15694	sense	Sinn	13
15695	home	heim	13
15696	expect	erwarten	13
15697	send	schicken	13
15698	die	sterben	13
15699	market	Markt	13
15700	serve	Aufschlag	13
15701	wait	Warten	13
15702	human	menschlich	13
15703	probably	wahrscheinlich	13
15704	buy	kaufen	13
15705	actually	Genau genommen	13
15706	appear	erscheinen	13
15707	consider	halten	13
15708	including	einschließlich	13
15709	music	Musik	13
15710	process	Verfahren	13
15711	love	Liebe	13
15712	everything	alles	13
15713	policy	Politik	13
15714	off	aus	13
15715	age	Alter	13
15716	able	fähig	13
15717	toward	zu	13
15718	maybe	Vielleicht	13
15719	boy	Junge	13
15720	second	zweite	13
15721	foot	Fuß	13
15722	remember	erinnern	13
15723	although	Obwohl	13
15724	across	über	13
15725	education	Ausbildung	13
15726	both	beide	13
15727	enough	genug	13
15728	offer	Angebot	13
15729	force	Gewalt	13
15730	teacher	Lehrer	13
15731	air	Luft	13
15732	himself	sich selbst	13
15733	moment	Moment	13
15734	before	vor	13
15735	food	Essen	13
15736	early	früh	13
15737	guy	Kerl	13
15738	girl	Mädchen	13
15739	research	Forschung	13
15740	win	gewinnen	13
15741	low	niedrig	13
15742	reason	Grund	13
15743	walk	gehen	13
15744	morning	Morgen	13
15745	change	ändern	13
15746	open	offen	13
15747	result	Ergebnis	13
15748	grow	wachsen	13
15749	within	innerhalb	13
15750	party	Party	13
15751	history	Geschichte	13
15752	war	Krieg	13
15753	such	solch	13
15754	sure	Sicher	13
15755	art	Kunst	13
15756	person	Person	13
15757	health	Gesundheit	13
15758	door	Tür	13
15759	spend	ausgeben	13
15760	office	Büro	13
15761	add	hinzufügen	13
15762	allow	erlauben	13
15763	level	Ebene	13
15764	read	lesen	13
15765	others	andere	13
15766	speak	sprechen	13
15767	already	bereits	13
15768	public	öffentlich	13
15769	create	erstellen	13
15770	anything	irgendetwas	13
15771	face	Gesicht	13
15772	stop	stoppen	13
15773	only	nur	13
15774	parent	Elternteil	13
15775	around	um	13
15776	follow	folgen	13
15777	together	zusammen	13
15778	watch	betrachten	13
15779	back	zurück	13
15780	whether	ob	13
15781	understand	verstehen	13
15782	social	sozial	13
15783	lead	führen	13
15784	right	Rechts	13
15785	ago	vor	13
15786	nothing	Nichts	13
15787	information	Information	13
15788	body	Körper	13
15789	kid	Kind	13
15790	idea	Idee	13
15791	several	mehrere	13
15792	best	am besten	13
15793	minute	Minute	13
15794	team	Team	13
15795	change	ändern	13
15796	real	real	13
15797	learn	lernen	13
15798	president	Präsident	13
15799	least	am wenigsten	13
15800	white	Weiß	13
15801	once	einmal	13
15802	five	fünf	13
15803	name	Name	13
15804	much	viel	13
15805	community	Gemeinschaft	13
15806	later	später	13
15807	set	Satz	13
15808	continue	weitermachen	13
15809	include	enthalten	13
15810	almost	fast	13
15811	city	Stadt	13
15812	car	Auto	13
15813	meet	treffen	13
15814	law	Gesetz	13
15815	pay	zahlen	13
15816	member	Mitglied	13
15817	however	Jedoch	13
15818	lose	verlieren	13
15819	bad	schlecht	13
15820	stand	Stand	13
15821	ever	immer	13
15822	among	unter	13
15823	end	Ende	13
15824	political	politisch	13
15825	line	Linie	13
15826	yet	noch	13
15827	often	oft	13
15828	game	Spiel	13
15829	hour	Stunde	13
15830	power	Leistung	13
15831	until	bis	13
15832	away	weg	13
15833	sit	sitzen	13
15834	father	Vater	13
15835	important	wichtig	13
15836	friend	Freund	13
15837	around	um	13
15838	service	Service	13
15839	provide	bieten	13
15840	long	lang	13
15841	since	seit	13
15842	after	nach	13
15843	yes	Ja	13
15844	house	Haus	13
15845	little	wenig	13
15846	both	beide	13
15847	long	lang	13
15848	black	Schwarz	13
15849	far	weit	13
15850	head	Kopf	13
15851	four	vier	13
15852	kind	Art	13
15853	side	Seite	13
15854	issue	Ausgabe	13
15855	business	Geschäft	13
15856	though	obwohl	13
15857	word	Wort	13
15858	job	Arbeit	13
15859	eye	Auge	13
15860	book	Buch	13
15861	study	Studie	13
15862	right	Rechts	13
15863	lot	viel	13
15864	different	anders	13
15865	month	Monat	13
15866	fact	Tatsache	13
15867	young	jung	13
15868	story	Geschichte	13
15869	money	Geld	13
15870	national	national	13
15871	area	Bereich	13
15872	mother	Mutter	13
15873	write	schreiben	13
15874	room	Zimmer	13
15875	water	Wasser	13
15876	under	unter	13
15877	home	heim	13
15878	must	muss	13
15879	million	Million	13
15880	all	alle	13
15881	large	groß	13
15882	before	vor	13
15883	without	ohne	13
15884	next	nächste	13
15885	happen	passieren	13
15886	bring	bringen	13
15887	today	Heute	13
15888	hold	halten	13
15889	believe	glauben	13
15890	point	Punkt	13
15891	Mr.	Herr.	13
15892	live	live	13
15893	night	Nacht	13
15894	like	wie	13
15895	move	bewegen	13
15896	always	stets	13
15897	off	aus	13
15898	number	Nummer	13
15899	small	klein	13
15900	run	laufen	13
15901	government	Regierung	13
15902	play	spielen	13
15903	work	arbeiten	13
15904	during	während	13
15905	question	Frage	13
15906	so	Also	13
15907	hear	hören	13
15908	program	Programm	13
15909	right	Rechts	13
15910	each	jede	13
15911	system	System	13
15912	where	Wo	13
15913	company	Unternehmen	13
15914	week	Woche	13
15915	most	am meisten	13
15916	case	Fall	13
15917	few	wenige	13
15918	again	wieder	13
15919	such	solch	13
15920	over	über	13
15921	place	Ort	13
15922	against	gegen	13
15923	about	um	13
15924	part	Teil	13
15925	show	zeigen	13
15926	American	amerikanisch	13
15927	might	könnte	13
15928	hand	Hand	13
15929	start	Start	13
15930	every	jeder	13
15931	problem	Problem	13
15932	turn	drehen	13
15933	where	Wo	13
15934	talk	sprechen	13
15935	help	helfen	13
15936	country	Land	13
15937	seem	erscheinen	13
15938	begin	beginnen	13
15939	group	Gruppe	13
15940	big	groß	13
15941	same	Dasselbe	13
15942	great	Großartig	13
15943	let	lassen	13
15944	why	Warum	13
15945	student	Student	13
15946	keep	halten	13
15947	on	An	13
15948	mean	bedeuten	13
15949	while	während	13
15950	old	alt	13
15951	put	setzen	13
15952	leave	verlassen	13
15953	out	aus	13
15954	own	eigen	13
15955	family	Familie	13
15956	much	viel	13
15957	another	ein anderer	13
15958	most	am meisten	13
15959	something	etwas	13
15960	really	Wirklich	13
15961	high	hoch	13
15962	between	zwischen	13
15963	become	werden	13
15964	never	niemals	13
15965	state	Zustand	13
15966	when	Wann	13
15967	three	drei	13
15968	feel	fühlen	13
15969	too	zu	13
15970	need	brauchen	13
15971	ask	fragen	13
15972	last	zuletzt	13
15973	as	als	13
15974	in	In	13
15975	try	versuchen	13
15976	still	Trotzdem	13
15977	school	Schule	13
15978	over	über	13
15979	world	Welt	13
15980	call	Anruf	13
15981	should	sollen	13
15982	after	nach	13
15983	may	Mai	13
15984	down	runter	13
15985	work	arbeiten	13
15986	there	Dort	13
15987	child	Kind	13
15988	life	Leben	13
15989	us	uns	13
15990	through	durch	13
15991	woman	Frau	13
15992	good	Gut	13
15993	any	beliebig	13
15994	back	zurück	13
15995	even	sogar	13
15996	her	ihr	13
15997	very	sehr	13
15998	one	eins	13
15999	tell	erzählen	13
16000	those	diese	13
16001	only	nur	13
16002	well	Also	13
16003	many	viele	13
16004	give	geben	13
16005	thing	Ding	13
16006	here	Hier	13
16007	find	finden	13
16008	man	Mann	13
16009	no	NEIN	13
16010	use	verwenden	13
16011	more	mehr	13
16012	day	Tag	13
16013	because	Weil	13
16014	new	neu	13
16015	also	Auch	13
16016	first	Erste	13
16017	look	sehen	13
16018	way	Weg	13
16019	want	wollen	13
16020	these	diese	13
16021	more	mehr	13
16022	two	zwei	13
16023	our	unser	13
16024	its	es ist	13
16025	then	Dann	13
16026	how	Wie	13
16027	other	andere	13
16028	like	wie	13
16029	than	als	13
16030	now	Jetzt	13
16031	could	könnte	13
16032	come	kommen	13
16033	your	dein	13
16034	him	ihn	13
16035	see	sehen	13
16036	just	Nur	13
16037	into	hinein	13
16038	out	aus	13
16039	take	nehmen	13
16040	people	Menschen	13
16041	me	Mich	13
16042	some	manche	13
16043	them	ihnen	13
16044	which	welche	13
16045	when	Wann	13
16046	think	denken	13
16047	so	Also	13
16048	year	Jahr	13
16049	there	Dort	13
16050	time	Zeit	13
16051	one	eins	13
16052	up	hoch	13
16053	as	als	13
16054	will	Wille	13
16055	know	wissen	13
16056	about	um	13
16057	make	machen	13
16058	my	Mein	13
16059	all	alle	13
16060	her	ihr	13
16061	would	würde	13
16062	if	Wenn	13
16063	get	erhalten	13
16064	who	WHO	13
16065	can	dürfen	13
16066	their	ihre	13
16067	go	gehen	13
16068	what	Was	13
16069	as	als	13
16070	or	oder	13
16071	she	sie	13
16072	by	von	13
16073	won’t	Gewohnheit	13
16074	can’t	kippen	13
16075	not	nicht	13
16076	that	Das	13
16077	from	aus	13
16078	his	sein	13
16079	we	Wir	13
16080	but	Aber	13
16081	at	bei	13
16082	they	Sie	13
16083	this	Das	13
16084	say	sagen	13
16085	do	Tun	13
16086	on	An	13
16087	with	mit	13
16088	he	Er	13
16089	you	Du	13
16090	for	für	13
16091	that	Das	13
16092	I	ICH	13
16093	it	Es	13
16094	too	zu	13
16095	have	haben	13
16096	to	Zu	13
16097	in	In	13
16098	a	A	13
16099	of	von	13
16100	and	Und	13
16101	be	Sei	13
16102	claim	afirmar	\N
16103	claim	afirmar	14
16104	stuff	cosa	14
16105	improve	mejorar	14
16106	instead	en cambio	14
16107	property	propiedad	14
16108	beautiful	hermoso	14
16109	bar	bar	14
16110	dream	sueño	14
16111	sea	mar	14
16112	middle	medio	14
16113	institution	institución	14
16114	shoulder	hombro	14
16115	fear	miedo	14
16116	challenge	desafío	14
16117	throughout	a lo largo de	14
16118	necessary	necesario	14
16119	trouble	problema	14
16120	writer	escritor	14
16121	specific	específico	14
16122	individual	individual	14
16123	edge	borde	14
16124	front	frente	14
16125	deep	profundo	14
16126	far	lejos	14
16127	rather	bastante	14
16128	mention	mencionar	14
16129	range	rango	14
16130	worry	preocuparse	14
16131	adult	adulto	14
16132	style	estilo	14
16133	best	mejor	14
16134	unit	unidad	14
16135	conference	conferencia	14
16136	inside	adentro	14
16137	affect	afectar	14
16138	evening	noche	14
16139	trip	viaje	14
16140	treat	tratar	14
16141	production	producción	14
16142	top	arriba	14
16143	candidate	candidato	14
16144	discover	descubrir	14
16145	suddenly	de repente	14
16146	weight	peso	14
16147	bit	poco	14
16148	perform	llevar a cabo	14
16149	politics	política	14
16150	structure	estructura	14
16151	camera	cámara	14
16152	particular	particular	14
16153	fish	pez	14
16154	chair	silla	14
16155	manage	administrar	14
16156	interview	entrevista	14
16157	fly	volar	14
16158	shake	agitar	14
16159	wide	ancho	14
16160	measure	medida	14
16161	play	jugar	14
16162	apply	aplicar	14
16163	pain	dolor	14
16164	base	base	14
16165	control	control	14
16166	head	cabeza	14
16167	peace	paz	14
16168	contain	contener	14
16169	cultural	cultural	14
16170	employee	empleado	14
16171	weapon	arma	14
16172	direction	dirección	14
16173	reveal	revelar	14
16174	onto	sobre	14
16175	traditional	tradicional	14
16176	popular	popular	14
16177	charge	cargar	14
16178	maintain	mantener	14
16179	statement	declaración	14
16180	respond	responder	14
16181	impact	impacto	14
16182	theory	teoría	14
16183	talk	hablar	14
16184	yourself	tú mismo	14
16185	finish	finalizar	14
16186	close	cerca	14
16187	no	No	14
16188	ball	pelota	14
16189	huge	enorme	14
16190	tonight	esta noche	14
16191	imagine	imaginar	14
16192	avoid	evitar	14
16193	care	cuidado	14
16194	management	gestión	14
16195	visit	visita	14
16196	radio	radio	14
16197	Democrat	Demócrata	14
16198	firm	firme	14
16199	spring	primavera	14
16200	that	eso	14
16201	expert	experto	14
16202	trial	ensayo	14
16203	nice	lindo	14
16204	establish	establecer	14
16205	cell	celúla	14
16206	seat	asiento	14
16207	above	arriba	14
16208	card	tarjeta	14
16209	memory	memoria	14
16210	green	verde	14
16211	science	ciencia	14
16212	main	principal	14
16213	final	final	14
16214	form	forma	14
16215	cold	frío	14
16216	religious	religioso	14
16217	legal	legal	14
16218	network	red	14
16219	enjoy	disfrutar	14
16220	sound	sonido	14
16221	close	cerca	14
16222	help	ayuda	14
16223	manager	gerente	14
16224	remove	eliminar	14
16225	note	nota	14
16226	claim	afirmar	14
16227	since	desde	14
16228	forget	olvidar	14
16229	enough	suficiente	14
16230	design	diseño	14
16231	rock	roca	14
16232	entire	completo	14
16233	hang	colgar	14
16234	prove	probar	14
16235	study	estudiar	14
16236	set	colocar	14
16237	executive	ejecutivo	14
16238	guess	adivinar	14
16239	laugh	reír	14
16240	rather	bastante	14
16241	various	varios	14
16242	public	público	14
16243	dark	oscuro	14
16244	leg	pierna	14
16245	environment	ambiente	14
16246	check	controlar	14
16247	democratic	democrático	14
16248	example	ejemplo	14
16249	song	canción	14
16250	truth	verdad	14
16251	force	fuerza	14
16252	indeed	en efecto	14
16253	discuss	conversar	14
16254	clearly	claramente	14
16255	little	pequeño	14
16256	strategy	estrategia	14
16257	state	estado	14
16258	blue	azul	14
16259	station	estación	14
16260	gun	pistola	14
16261	knowledge	conocimiento	14
16262	ten	diez	14
16263	act	acto	14
16264	one	uno	14
16265	sort	clasificar	14
16266	design	diseño	14
16267	miss	extrañar	14
16268	authority	autoridad	14
16269	compare	comparar	14
16270	ok	OK	14
16271	stage	escenario	14
16272	crime	delito	14
16273	financial	financiero	14
16274	operation	operación	14
16275	professor	profesor	14
16276	PM	P.M	14
16277	sister	hermana	14
16278	skill	habilidad	14
16279	answer	respuesta	14
16280	glass	vaso	14
16281	environmental	ambiental	14
16282	section	sección	14
16283	present	presente	14
16284	lawyer	abogado	14
16285	forward	adelante	14
16286	sex	sexo	14
16287	name	nombre	14
16288	benefit	beneficio	14
16289	analysis	análisis	14
16290	arrive	llegar	14
16291	outside	afuera	14
16292	fail	fallar	14
16293	message	mensaje	14
16294	bill	factura	14
16295	standard	estándar	14
16296	feeling	sentimiento	14
16297	general	general	14
16298	lay	poner	14
16299	physical	físico	14
16300	everybody	todos	14
16301	election	elección	14
16302	deal	trato	14
16303	trade	comercio	14
16304	pretty	bonito	14
16305	training	capacitación	14
16306	TV	TELEVISOR	14
16307	box	caja	14
16308	television	televisión	14
16309	region	región	14
16310	herself	sí misma	14
16311	attack	ataque	14
16312	wonder	preguntarse	14
16313	degree	grado	14
16314	loss	pérdida	14
16315	growth	crecimiento	14
16316	character	personaje	14
16317	indicate	indicar	14
16318	recognize	reconocer	14
16319	staff	personal	14
16320	ability	capacidad	14
16321	amount	cantidad	14
16322	particularly	particularmente	14
16323	cup	taza	14
16324	argue	argumentar	14
16325	success	éxito	14
16326	whatever	lo que	14
16327	disease	enfermedad	14
16328	prepare	preparar	14
16329	determine	determinar	14
16330	meeting	reunión	14
16331	left	izquierda	14
16332	identify	identificar	14
16333	resource	recurso	14
16334	hard	duro	14
16335	answer	respuesta	14
16336	accept	aceptar	14
16337	pressure	presión	14
16338	quality	calidad	14
16339	simple	simple	14
16340	individual	individual	14
16341	list	lista	14
16342	thought	pensamiento	14
16343	sign	firmar	14
16344	ready	listo	14
16345	media	medios de comunicación	14
16346	occur	ocurrir	14
16347	serious	grave	14
16348	fund	financiar	14
16349	dog	perro	14
16350	size	tamaño	14
16351	lie	mentir	14
16352	approach	acercarse	14
16353	protect	proteger	14
16354	exactly	exactamente	14
16355	happy	feliz	14
16356	beyond	más allá de	14
16357	treatment	tratamiento	14
16358	thus	de este modo	14
16359	eight	ocho	14
16360	central	central	14
16361	despite	a pesar de	14
16362	career	carrera	14
16363	stock	existencias	14
16364	scene	escena	14
16365	away	lejos	14
16366	artist	artista	14
16367	seven	Siete	14
16368	save	ahorrar	14
16369	east	este	14
16370	shoot	disparar	14
16371	article	artículo	14
16372	decade	década	14
16373	factor	factor	14
16374	animal	animal	14
16375	rise	elevar	14
16376	dead	muerto	14
16377	response	respuesta	14
16378	usually	generalmente	14
16379	each	cada	14
16380	language	idioma	14
16381	hot	caliente	14
16382	similar	similar	14
16383	significant	significativo	14
16384	series	serie	14
16385	concern	inquietud	14
16386	race	carrera	14
16387	natural	natural	14
16388	other	otro	14
16389	poor	pobre	14
16390	common	común	14
16391	than	que	14
16392	share	compartir	14
16393	enter	ingresar	14
16394	page	página	14
16395	movement	movimiento	14
16396	near	cerca	14
16397	before	antes	14
16398	fine	bien	14
16399	note	nota	14
16400	sound	sonido	14
16401	reduce	reducir	14
16402	store	almacenar	14
16403	recently	recientemente	14
16404	no	No	14
16405	color	color	14
16406	nature	naturaleza	14
16407	push	empujar	14
16408	agency	agencia	14
16409	upon	al	14
16410	blood	sangre	14
16411	plan	plan	14
16412	drop	gota	14
16413	foreign	extranjero	14
16414	focus	enfocar	14
16415	represent	representar	14
16416	fill	llenar	14
16417	author	autor	14
16418	order	orden	14
16419	bed	cama	14
16420	second	segundo	14
16421	goal	meta	14
16422	past	pasado	14
16423	quickly	rápidamente	14
16424	top	arriba	14
16425	throw	tirar	14
16426	fight	luchar	14
16427	performance	actuación	14
16428	deal	trato	14
16429	behavior	comportamiento	14
16430	rest	descansar	14
16431	private	privado	14
16432	officer	oficial	14
16433	subject	sujeto	14
16434	per	por	14
16435	seek	buscar	14
16436	board	junta	14
16437	sport	deporte	14
16438	west	Oeste	14
16439	certainly	ciertamente	14
16440	myself	mí mismo	14
16441	bank	banco	14
16442	security	seguridad	14
16443	increase	aumentar	14
16444	anyone	alguien	14
16445	defense	defensa	14
16446	involve	involucrar	14
16447	wrong	equivocado	14
16448	future	futuro	14
16449	fire	fuego	14
16450	current	actual	14
16451	risk	riesgo	14
16452	thousand	mil	14
16453	close	cerca	14
16454	church	iglesia	14
16455	hospital	hospital	14
16456	medical	médico	14
16457	economy	economía	14
16458	call	llamar	14
16459	well	Bueno	14
16460	population	población	14
16461	material	material	14
16462	campaign	campaña	14
16463	floor	piso	14
16464	Congress	Congreso	14
16465	husband	marido	14
16466	south	sur	14
16467	administration	administración	14
16468	daughter	hija	14
16469	rule	regla	14
16470	single	soltero	14
16471	place	lugar	14
16472	choice	elección	14
16473	condition	condición	14
16474	letter	carta	14
16475	short	corto	14
16476	term	término	14
16477	opportunity	oportunidad	14
16478	likely	probable	14
16479	plant	planta	14
16480	available	disponible	14
16481	hundred	centenar	14
16482	realize	darse cuenta	14
16483	less	menos	14
16484	summer	verano	14
16485	course	curso	14
16486	period	período	14
16487	energy	energía	14
16488	brother	hermano	14
16489	chance	oportunidad	14
16490	billion	mil millones	14
16491	culture	cultura	14
16492	soon	pronto	14
16493	listen	escuchar	14
16494	difficult	difícil	14
16495	window	ventana	14
16496	evidence	evidencia	14
16497	century	siglo	14
16498	point	punto	14
16499	look	mirar	14
16500	hair	cabello	14
16501	cause	causa	14
16502	choose	elegir	14
16503	organization	organización	14
16504	nearly	cerca de	14
16505	red	rojo	14
16506	source	fuente	14
16507	tree	árbol	14
16508	Republican	Republicano	14
16509	film	película	14
16510	draw	dibujar	14
16511	attention	atención	14
16512	type	tipo	14
16513	computer	computadora	14
16514	baby	bebé	14
16515	step	paso	14
16516	catch	atrapar	14
16517	technology	tecnología	14
16518	third	tercero	14
16519	simply	simplemente	14
16520	support	apoyo	14
16521	open	abierto	14
16522	personal	personal	14
16523	love	amar	14
16524	north	norte	14
16525	certain	cierto	14
16526	movie	película	14
16527	test	prueba	14
16528	news	noticias	14
16529	worker	obrero	14
16530	patient	paciente	14
16531	wall	muro	14
16532	doctor	doctor	14
16533	product	producto	14
16534	describe	describir	14
16535	recent	reciente	14
16536	land	tierra	14
16537	piece	pedazo	14
16538	practice	práctica	14
16539	clear	claro	14
16540	picture	imagen	14
16541	quite	bastante	14
16542	cover	cubrir	14
16543	data	datos	14
16544	either	cualquiera	14
16545	phone	teléfono	14
16546	itself	sí mismo	14
16547	image	imagen	14
16548	street	calle	14
16549	face	rostro	14
16550	figure	cifra	14
16551	industry	industria	14
16552	cost	costo	14
16553	easy	fácil	14
16554	situation	situación	14
16555	half	medio	14
16556	oil	aceite	14
16557	teach	enseñar	14
16558	American	Americano	14
16559	eat	comer	14
16560	produce	producir	14
16561	court	corte	14
16562	need	necesidad	14
16563	table	mesa	14
16564	star	estrella	14
16565	activity	actividad	14
16566	base	base	14
16567	hit	golpear	14
16568	project	proyecto	14
16569	end	fin	14
16570	site	sitio	14
16571	couple	pareja	14
16572	center	centro	14
16573	everyone	todos	14
16574	matter	asunto	14
16575	whose	cuyo	14
16576	official	oficial	14
16577	event	evento	14
16578	support	apoyo	14
16579	form	forma	14
16580	ground	suelo	14
16581	space	espacio	14
16582	special	especial	14
16583	paper	papel	14
16584	wear	tener puesto	14
16585	pick	elegir	14
16586	record	registro	14
16587	especially	especialmente	14
16588	agree	aceptar	14
16589	player	jugador	14
16590	position	posición	14
16591	early	temprano	14
16592	director	director	14
16593	tax	impuesto	14
16594	because	porque	14
16595	society	sociedad	14
16596	season	estación	14
16597	join	unirse	14
16598	model	modelo	14
16599	full	lleno	14
16600	action	acción	14
16601	building	edificio	14
16602	international	internacional	14
16603	value	valor	14
16604	receive	recibir	14
16605	thank	agradecer	14
16606	difference	diferencia	14
16607	better	mejor	14
16608	break	romper	14
16609	federal	federal	14
16610	TRUE	VERDADERO	14
16611	arm	brazo	14
16612	drive	conducir	14
16613	road	camino	14
16614	town	ciudad	14
16615	carry	llevar	14
16616	relationship	relación	14
16617	view	vista	14
16618	develop	desarrollar	14
16619	even	incluso	14
16620	hope	esperanza	14
16621	son	hijo	14
16622	explain	explicar	14
16623	decision	decisión	14
16624	according	de acuerdo a	14
16625	less	menos	14
16626	report	informe	14
16627	price	precio	14
16628	military	militar	14
16629	free	gratis	14
16630	return	devolver	14
16631	pull	jalar	14
16632	finally	finalmente	14
16633	mind	mente	14
16634	police	policía	14
16635	whole	entero	14
16636	wife	esposa	14
16637	voice	voz	14
16638	light	luz	14
16639	leader	líder	14
16640	show	espectáculo	14
16641	drug	droga	14
16642	heart	corazón	14
16643	possible	posible	14
16644	strong	fuerte	14
16645	rate	tasa	14
16646	decide	decidir	14
16647	up	arriba	14
16648	effort	esfuerzo	14
16649	economic	económico	14
16650	better	mejor	14
16651	role	role	14
16652	report	informe	14
16653	themselves	ellos mismos	14
16654	development	desarrollo	14
16655	along	a lo largo de	14
16656	require	requerir	14
16657	sometimes	a veces	14
16658	major	importante	14
16659	sell	vender	14
16660	former	anterior	14
16661	pass	aprobar	14
16662	else	demás	14
16663	field	campo	14
16664	hard	duro	14
16665	late	tarde	14
16666	little	pequeño	14
16667	perhaps	tal vez	14
16668	care	cuidado	14
16669	raise	aumentar	14
16670	control	control	14
16671	class	clase	14
16672	suggest	sugerir	14
16673	yeah	sí	14
16674	use	usar	14
16675	effect	efecto	14
16676	remain	permanecer	14
16677	six	seis	14
16678	kill	matar	14
16679	local	local	14
16680	reach	alcanzar	14
16681	behind	detrás	14
16682	experience	experiencia	14
16683	someone	alguien	14
16684	course	curso	14
16685	death	muerte	14
16686	interest	interés	14
16687	college	colega	14
16688	cut	cortar	14
16689	plan	plan	14
16690	nation	nación	14
16691	oh	Vaya	14
16692	fall	caer	14
16693	stay	permanecer	14
16694	build	construir	14
16695	sense	sentido	14
16696	home	hogar	14
16697	expect	esperar	14
16698	send	enviar	14
16699	die	morir	14
16700	market	mercado	14
16701	serve	atender	14
16702	wait	esperar	14
16703	human	humano	14
16704	probably	probablemente	14
16705	buy	comprar	14
16706	actually	de hecho	14
16707	appear	aparecer	14
16708	consider	considerar	14
16709	including	incluido	14
16710	music	música	14
16711	process	proceso	14
16712	love	amar	14
16713	everything	todo	14
16714	policy	política	14
16715	off	apagado	14
16716	age	edad	14
16717	able	capaz	14
16718	toward	hacia	14
16719	maybe	tal vez	14
16720	boy	chico	14
16721	second	segundo	14
16722	foot	pie	14
16723	remember	recordar	14
16724	although	a pesar de	14
16725	across	al otro lado de	14
16726	education	educación	14
16727	both	ambos	14
16728	enough	suficiente	14
16729	offer	oferta	14
16730	force	fuerza	14
16731	teacher	maestro	14
16732	air	aire	14
16733	himself	sí mismo	14
16734	moment	momento	14
16735	before	antes	14
16736	food	alimento	14
16737	early	temprano	14
16738	guy	chico	14
16739	girl	chica	14
16740	research	investigación	14
16741	win	ganar	14
16742	low	bajo	14
16743	reason	razón	14
16744	walk	caminar	14
16745	morning	mañana	14
16746	change	cambiar	14
16747	open	abierto	14
16748	result	resultado	14
16749	grow	crecer	14
16750	within	dentro	14
16751	party	fiesta	14
16752	history	historia	14
16753	war	guerra	14
16754	such	semejante	14
16755	sure	seguro	14
16756	art	arte	14
16757	person	persona	14
16758	health	salud	14
16759	door	puerta	14
16760	spend	gastar	14
16761	office	oficina	14
16762	add	agregar	14
16763	allow	permitir	14
16764	level	nivel	14
16765	read	leer	14
16766	others	otros	14
16767	speak	hablar	14
16768	already	ya	14
16769	public	público	14
16770	create	crear	14
16771	anything	cualquier cosa	14
16772	face	rostro	14
16773	stop	detener	14
16774	only	solo	14
16775	parent	padre	14
16776	around	alrededor	14
16777	follow	seguir	14
16778	together	juntos	14
16779	watch	mirar	14
16780	back	atrás	14
16781	whether	si	14
16782	understand	entender	14
16783	social	social	14
16784	lead	dirigir	14
16785	right	bien	14
16786	ago	atrás	14
16787	nothing	nada	14
16788	information	información	14
16789	body	cuerpo	14
16790	kid	niño	14
16791	idea	idea	14
16792	several	varios	14
16793	best	mejor	14
16794	minute	minuto	14
16795	team	equipo	14
16796	change	cambiar	14
16797	real	real	14
16798	learn	aprender	14
16799	president	presidente	14
16800	least	el menos	14
16801	white	blanco	14
16802	once	una vez	14
16803	five	cinco	14
16804	name	nombre	14
16805	much	mucho	14
16806	community	comunidad	14
16807	later	más tarde	14
16808	set	colocar	14
16809	continue	continuar	14
16810	include	incluir	14
16811	almost	casi	14
16812	city	ciudad	14
16813	car	auto	14
16814	meet	encontrarse	14
16815	law	ley	14
16816	pay	pagar	14
16817	member	miembro	14
16818	however	sin embargo	14
16819	lose	perder	14
16820	bad	malo	14
16821	stand	pararse	14
16822	ever	alguna vez	14
16823	among	entre	14
16824	end	fin	14
16825	political	político	14
16826	line	línea	14
16827	yet	todavía	14
16828	often	a menudo	14
16829	game	juego	14
16830	hour	hora	14
16831	power	fuerza	14
16832	until	hasta	14
16833	away	lejos	14
16834	sit	sentarse	14
16835	father	padre	14
16836	important	importante	14
16837	friend	amigo	14
16838	around	alrededor	14
16839	service	servicio	14
16840	provide	proporcionar	14
16841	long	largo	14
16842	since	desde	14
16843	after	después	14
16844	yes	Sí	14
16845	house	casa	14
16846	little	pequeño	14
16847	both	ambos	14
16848	long	largo	14
16849	black	negro	14
16850	far	lejos	14
16851	head	cabeza	14
16852	four	cuatro	14
16853	kind	amable	14
16854	side	lado	14
16855	issue	asunto	14
16856	business	negocio	14
16857	though	aunque	14
16858	word	palabra	14
16859	job	trabajo	14
16860	eye	ojo	14
16861	book	libro	14
16862	study	estudiar	14
16863	right	bien	14
16864	lot	lote	14
16865	different	diferente	14
16866	month	mes	14
16867	fact	hecho	14
16868	young	joven	14
16869	story	historia	14
16870	money	dinero	14
16871	national	nacional	14
16872	area	área	14
16873	mother	madre	14
16874	write	escribir	14
16875	room	habitación	14
16876	water	agua	14
16877	under	bajo	14
16878	home	hogar	14
16879	must	debe	14
16880	million	millón	14
16881	all	todo	14
16882	large	grande	14
16883	before	antes	14
16884	without	sin	14
16885	next	próximo	14
16886	happen	suceder	14
16887	bring	traer	14
16888	today	hoy	14
16889	hold	sostener	14
16890	believe	creer	14
16891	point	punto	14
16892	Mr.	Señor.	14
16893	live	vivir	14
16894	night	noche	14
16895	like	como	14
16896	move	mover	14
16897	always	siempre	14
16898	off	apagado	14
16899	number	número	14
16900	small	pequeño	14
16901	run	correr	14
16902	government	gobierno	14
16903	play	jugar	14
16904	work	trabajar	14
16905	during	durante	14
16906	question	pregunta	14
16907	so	entonces	14
16908	hear	escuchar	14
16909	program	programa	14
16910	right	bien	14
16911	each	cada	14
16912	system	sistema	14
16913	where	dónde	14
16914	company	compañía	14
16915	week	semana	14
16916	most	mayoría	14
16917	case	caso	14
16918	few	pocos	14
16919	again	de nuevo	14
16920	such	semejante	14
16921	over	encima	14
16922	place	lugar	14
16923	against	contra	14
16924	about	acerca de	14
16925	part	parte	14
16926	show	espectáculo	14
16927	American	Americano	14
16928	might	podría	14
16929	hand	mano	14
16930	start	comenzar	14
16931	every	cada	14
16932	problem	problema	14
16933	turn	doblar	14
16934	where	dónde	14
16935	talk	hablar	14
16936	help	ayuda	14
16937	country	país	14
16938	seem	parecer	14
16939	begin	comenzar	14
16940	group	grupo	14
16941	big	grande	14
16942	same	mismo	14
16943	great	excelente	14
16944	let	dejar	14
16945	why	por qué	14
16946	student	alumno	14
16947	keep	mantener	14
16948	on	en	14
16949	mean	significar	14
16950	while	mientras	14
16951	old	viejo	14
16952	put	poner	14
16953	leave	dejar	14
16954	out	afuera	14
16955	own	propio	14
16956	family	familia	14
16957	much	mucho	14
16958	another	otro	14
16959	most	mayoría	14
16960	something	algo	14
16961	really	en realidad	14
16962	high	alto	14
16963	between	entre	14
16964	become	convertirse	14
16965	never	nunca	14
16966	state	estado	14
16967	when	cuando	14
16968	three	tres	14
16969	feel	sentir	14
16970	too	también	14
16971	need	necesidad	14
16972	ask	preguntar	14
16973	last	último	14
16974	as	como	14
16975	in	en	14
16976	try	intentar	14
16977	still	aún	14
16978	school	escuela	14
16979	over	encima	14
16980	world	mundo	14
16981	call	llamar	14
16982	should	debería	14
16983	after	después	14
16984	may	puede	14
16985	down	abajo	14
16986	work	trabajar	14
16987	there	allá	14
16988	child	niño	14
16989	life	vida	14
16990	us	a nosotros	14
16991	through	a través de	14
16992	woman	mujer	14
16993	good	bien	14
16994	any	cualquier	14
16995	back	atrás	14
16996	even	incluso	14
16997	her	su	14
16998	very	muy	14
16999	one	uno	14
17000	tell	decir	14
17001	those	aquellos	14
17002	only	solo	14
17003	well	Bueno	14
17004	many	muchos	14
17005	give	dar	14
17006	thing	cosa	14
17007	here	aquí	14
17008	find	encontrar	14
17009	man	hombre	14
17010	no	No	14
17011	use	usar	14
17012	more	más	14
17013	day	día	14
17014	because	porque	14
17015	new	nuevo	14
17016	also	también	14
17017	first	primero	14
17018	look	mirar	14
17019	way	forma	14
17020	want	desear	14
17021	these	estos	14
17022	more	más	14
17023	two	dos	14
17024	our	nuestro	14
17025	its	es	14
17026	then	entonces	14
17027	how	cómo	14
17028	other	otro	14
17029	like	como	14
17030	than	que	14
17031	now	ahora	14
17032	could	podría	14
17033	come	venir	14
17034	your	su	14
17035	him	a él	14
17036	see	ver	14
17037	just	justo	14
17038	into	en	14
17039	out	afuera	14
17040	take	llevar	14
17041	people	gente	14
17042	me	a mí	14
17043	some	alguno	14
17044	them	a ellos	14
17045	which	cual	14
17046	when	cuando	14
17047	think	pensar	14
17048	so	entonces	14
17049	year	año	14
17050	there	allá	14
17051	time	tiempo	14
17052	one	uno	14
17053	up	arriba	14
17054	as	como	14
17055	will	voluntad	14
17056	know	saber	14
17057	about	acerca de	14
17058	make	hacer	14
17059	my	mi	14
17060	all	todo	14
17061	her	su	14
17062	would	quería	14
17063	if	si	14
17064	get	conseguir	14
17065	who	OMS	14
17066	can	poder	14
17067	their	su	14
17068	go	ir	14
17069	what	qué	14
17070	as	como	14
17071	or	o	14
17072	she	ella	14
17073	by	por	14
17074	won’t	no	14
17075	can’t	no poder	14
17076	not	no	14
17077	that	eso	14
17078	from	de	14
17079	his	su	14
17080	we	nosotros	14
17081	but	pero	14
17082	at	en	14
17083	they	ellos	14
17084	this	este	14
17085	say	decir	14
17086	do	hacer	14
17087	on	en	14
17088	with	con	14
17089	he	él	14
17090	you	tú	14
17091	for	para	14
17092	that	eso	14
17093	I	I	14
17094	it	él	14
17095	too	también	14
17096	have	tener	14
17097	to	a	14
17098	in	en	14
17099	a	a	14
17100	of	de	14
17101	and	y	14
17102	be	ser	14
17103	oh man!	oy gevalt	15
17104	man	mensch	15
17105	eat	nosh	15
17106	carry	schlep	15
17107	chat	schmooze	15
17108	crazy	meshuggeneh	15
17109	complain	kvetch	15
17110	clumsy person	klutz	15
17111	grandmother	bubbe	15
17112	presumption	chutzpah	15
17113	rag	shmatte	15
17114	grandfather	zeide	15
\.


--
-- Data for Name: wordsets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wordsets (id, language1, language2, theme, color, enabled, size) FROM stdin;
12	English	Italian	1000	green	t	1000
13	English	German	1000	#d60000	t	1000
14	English	Spanish	1000	#ffc400	t	1000
9	English	French	1000	#df5a5a	t	1000
7	English	Hebrew	3000	#0038B6	t	3000
11	English	Hebrew	10000	olive	t	10000
1	English	Hebrew	ten	aqua	f	10
2	English	French	five	#df5a5a	f	5
15	English	Yiddish	common	#8bf	t	12
3	English	French	restaurant	#df5a5a	f	\N
4	English	Hebrew	religious	aqua	f	\N
5	English	Hebrew	Israeli	aqua	f	\N
6	English	Italian	colors	green	f	\N
8	English	Hebrew	font-sizes	#800	f	\N
10	English	Hebrew	ashrei	brown	f	\N
\.


--
-- Name: words_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.words_id_seq', 17114, true);


--
-- Name: wordsets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wordsets_id_seq', 6, true);


--
-- Name: words words_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.words
    ADD CONSTRAINT words_pkey PRIMARY KEY (id);


--
-- Name: wordsets wordsets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wordsets
    ADD CONSTRAINT wordsets_pkey PRIMARY KEY (id);


--
-- Name: words words_wordset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.words
    ADD CONSTRAINT words_wordset_id_fkey FOREIGN KEY (wordset_id) REFERENCES public.wordsets(id);


--
-- PostgreSQL database dump complete
--

