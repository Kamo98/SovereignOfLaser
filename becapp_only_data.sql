--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: address_ent; Type: TABLE; Schema: public; Owner: becapp_admin
--


--
-- Data for Name: address_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.address_ent (id, additional_text, description, postcode, text_address, id_block, ordinal_number, latitude, longitude) FROM stdin;
1	корп. 1, кв. 89	Домашний	658912	г. Барнаул, ул. Ленина 27	3	1	\N	\N
2	корп 2	Рабочий	658911	г. Барнаул, ул. Ленина 82	5	7	\N	\N
13	корп 2	Рабочий	658911	г. Барнаул, ул. Ленина 82	26	7	\N	\N
14	корп. 1, кв. 89	Домашний	658912	г. Барнаул, ул. Ленина 27	29	1	\N	\N
15	корп 2	Рабочий	658911	г. Барнаул, ул. Ленина 82	30	7	\N	\N
16	корп. 1, кв. 89	Домашний	658912	г. Барнаул, ул. Ленина 27	33	1	\N	\N
17	корп 2	Рабочий	658911	г. Барнаул, ул. Ленина 82	34	7	\N	\N
18	корп. 1, кв. 89	Домашний	658912	г. Барнаул, ул. Ленина 27	37	1	\N	\N
19	\N	Типография	658911	г. Барнаул, ул. Ленина 82, корпус 2	39	2	69.987544	25.987654
111	dsfdsfsdfsdf	dsdsfsdf	123456	Текстовый адрес	110	24	0.24567	-109.12355
566	\N	Блок 1 поле 2	\N	Адрес	565	1	\N	\N
606	\N	\N	\N	Город Барнаул, Красноармейский 78	605	0	\N	\N
612	\N	8	\N	Первый адрес	611	7	\N	\N
708	\N	\N	\N	Address	707	0	\N	\N
733	\N	Description	\N	Address	732	0	\N	\N
895	\N	\N	\N	Address	894	2	\N	\N
\.


--
-- Data for Name: block_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.block_ent (id, name, id_profile, ordinal_number) FROM stdin;
3	Личная информация	1	5
4	Социальные сети	1	2
26	Рабочая информация	12	1
27	Социальные сети	12	2
28	Контактная информация	12	3
29	Личная информация	12	5
30	Рабочая информация	13	1
31	Социальные сети	13	2
32	Контактная информация	13	3
33	Личная информация	13	5
34	Рабочая информация	14	1
35	Социальные сети	14	2
36	Контактная информация	14	3
37	Личная информация	14	5
38	Социальные сети	15	3
39	Работа	15	1
40	Контактная информация	15	4
41	Игровые аккаунты	16	2
42	Стриминговые аккаунты	16	1
43	Контактная информация	16	4
44	Аккаунты в соц. сетях	16	3
45	Контактная информация	17	1
46	Социальные сети	17	2
48	Контактая информация	19	1
49	Контактая информация	20	1
50	Контактая информация	21	1
51	Контактая информация	22	1
52	Контактая информация	23	1
53	Контактая информация	24	1
54	Контактая информация	25	1
55	Контактая информация	26	1
56	Контактая информация	27	1
57	Контактая информация	28	1
58	Контактая информация	29	1
2	Контактная информация	1	3
602	Работа	601	0
5	Очень очень очень длиное название блока профиля	1	1
110	Контактая информация	109	1
114	Контактая информация	109	2
117	Аккаунты	109	3
565	Блок  1	564	0
568	Блок 2	564	1
571	Блок 3	564	2
579	Блок	578	0
605	Личные данные	601	1
611	Основная информация обо мне	610	0
623	Второй блок	610	1
624	Третий блок	610	2
625	Четвёртый блок	610	3
626	Пятый блок	610	4
627	Шестой блок	610	5
628	Седьмой блок	610	6
629	Восьмой блок	610	7
630	Девятый блок	610	8
631	Десятый блок	610	9
644	Первый блок	643	0
655	Block1	654	0
661	Blok1	660	0
667	Первый блок	666	0
670	Второй блок	666	1
675	Block one	674	0
679	Контактая информация	678	1
684	Block one	683	0
688	Block one	687	0
692	Block one	691	0
696	Block one	695	0
705	Block1	704	0
707	Block2	704	1
712	Первый блок	711	0
714	Второй блок	711	1
732	First block	731	0
736	Second block	731	1
773	Первый блок	772	0
793	Первый блок	792	0
801	Первый блок	800	0
860	Block	859	1
877	First	876	0
881	First block	880	0
885	First block	884	0
894	First	893	0
909	Ееее	908	0
917	Block q	916	0
\.


--
-- Data for Name: contact_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.contact_ent (id, archive, avatar, favourite, name, note, id_user, reference, date_trash, trash) FROM stdin;
89	f	https://i.ibb.co/QvY5stF/ad13a955-f31c-4a68-b672-0e70a8dc9dd5.jpg	f	Сергей Владимирович	Директор	57	907a07dc-4673-4864-89d2-9ae562770890	\N	f
924	t	\N	t	Егор Потопахин	Тестовое примечание	57	957de8dd-7c63-43d7-b443-9381ec258b34	\N	f
771	t	https://i.ibb.co/qJ5ZPYH/4e7e3553-e86d-4012-8fae-221fe89c35ac.jpg	f	Алексей ПетровВВВ	В свободное время занимаюсь game streaming'ом	57	a7678ab3-f9d1-47b5-bd64-3eafb0c9750f	\N	f
875	t	https://i.ibb.co/cDFVxxM/352eeb04-1a2a-4513-9aab-0cf71a28cf16.jpg	f	Алексей ПетровВВВ	В свободное время занимаюсь game streaming'ом	57	27472f4f-641b-4a86-ace7-d133de2e73ba	\N	f
12	t	https://i.ibb.co/pbNXScC/b1c5c0fc-aa17-4e29-96c0-9c7d2e855de8.jpg	t	Я	\N	57	557a07dc-4003-4864-89d2-9ae5627707a9	\N	f
872	t	https://i.ibb.co/cDFVxxM/352eeb04-1a2a-4513-9aab-0cf71a28cf16.jpg	f	Алексей Петров	Визитка для работы	57	0178e950-69bc-470f-9594-60b34e6bed17	\N	f
90	t	https://i.ibb.co/QvY5stF/ad13a955-f31c-4a68-b672-0e70a8dc9dd5.jpg	f	Сергей Владимирович	Директор	57	907b95dc-4673-4864-89d2-9ae562770890	\N	f
915	f	\N	f	Егор Потопахин	Тестовое примечание	57	7fc36088-a2c6-44e0-8a4e-ead912b41ff2	\N	f
3	f	https://i.ibb.co/CVqd0Ct/ffe92257-fe8a-4156-802f-10f17c4270b1.png	t	Сергей Владимирович	Директор	57	d573f3b1-192e-474f-84e8-c6e3f2e0f223	\N	f
7	t	\N	f	саша черный	\N	57	f8b02813-a036-4ac9-b7ed-e9112a0bda09	\N	f
10	f	https://i.ibb.co/CVqd0Ct/ffe92257-fe8a-4156-802f-10f17c4270b1.png	f	Ярослав с работы	Любит поговорить	57	1655a00f-01d7-497b-a769-b8f2a5ecadaf	\N	f
87	f	https://i.ibb.co/QvY5stF/ad13a955-f31c-4a68-b672-0e70a8dc9dd5.jpg	t	Сергей Владимирович	Директор	57	557a07dc-4003-4864-89d2-9ae562770890	\N	f
874	f	\N	f	Егор Потопахин	Тестовое примечание	57	3f327ba4-8480-4ffb-b738-6cc145d02ba0	\N	f
9	f	https://i.ibb.co/Y8wfjJ4/2c23e8fb-ddc3-4d91-bdad-e29b2dd65c5d.jpg	f	Витя Слесарь	\N	57	6d7a07dc-4003-4864-89d2-9ae562770778	\N	f
768	t	https://i.ibb.co/Gthf4NW/6eaff426-b72d-48e2-8625-cc0a9b5b1df3.jpg	f	Виктор null	\N	57	838f3da7-ee5d-40d5-88ba-532bcfb11889	\N	f
5	t	\N	f	михаил	Дача	57	27da8fa8-9d5a-4ee5-ba19-903e5290d033	\N	f
\.


--
-- Data for Name: contact_profile; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.contact_profile (id_contact, id_profile) FROM stdin;
3	20
5	22
5	23
7	25
9	27
10	28
12	1
12	15
12	16
12	17
87	20
89	20
90	20
12	28
12	19
768	19
9	16
771	16
9	19
771	19
7	19
89	19
872	15
875	16
\.


--
-- Data for Name: custom_field_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.custom_field_ent (id, name, value, id_block, id_type, ordinal_number) FROM stdin;
\.


--
-- Data for Name: email_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.email_ent (id, description, email, priority, id_block, ordinal_number) FROM stdin;
3	Личный	petrov.i@gmail.com	f	2	4
4	Рабочий	petrov.i.work@gmail.com	t	5	3
15	Рабочий	petrov.i.work@gmail.com	t	26	3
16	Личный	petrov.i@gmail.com	f	28	4
17	Рабочий	petrov.i.work@gmail.com	t	30	3
18	Личный	petrov.i@gmail.com	f	32	4
19	Рабочий	petrov.i.work@gmail.com	t	34	3
20	Личный	petrov.i@gmail.com	f	36	4
21	По важным вопросам	petrov.work@gmail.com	t	39	5
112	\N	s@d.com	t	110	1
572	\N	potopakhin.ev@gmail.com	f	571	0
580	Емейл	Msmss@shshs.shsh	f	579	0
607	Email для работы	petr5678@mail.ru	f	605	1
671	\N	gehehd@mail.ru	f	670	0
734	\N	Mail@ml.ru	t	732	2
774	\N	Hdhdh@ml.ru	f	773	0
794	\N	Hdhdh@ml.ru	f	793	0
802	\N	Hdhdh@ml.ru	f	801	0
896	\N	Jdjdjdjs@ml.ru	f	894	1
897	\N	Ml@ml.ru	f	894	4
918	\N	Hfjd@ml.ru	f	917	0
\.


--
-- Data for Name: main_info_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.main_info_ent (id, avatar, birthday, first_name, last_name, nickname, id_profile) FROM stdin;
646	\N	\N	оаоаоао	тестов второй	\N	643
657	https://i.ibb.co/cF5Nb2V/aee0353f-1378-4d57-88ea-641556cfe111.jpg	\N	Егор	Потопахин	dvornik	654
664	\N	25.10.1992	Петр	Петров	@petya	660
17	https://i.ibb.co/Y8wfjJ4/2c23e8fb-ddc3-4d91-bdad-e29b2dd65c5d.jpg	\N	Витя Слесарь	\N	\N	27
672	\N	20.56.1999	Сергей	Петров	petrovS	666
677	\N	26.57.1999	Alex	Petrov	Pete	674
682	\N	27.11.1998	DMITRIY	Петров	\N	678
686	\N	09.57.2003	Alex	Petrov	Pete	683
3	https://i.ibb.co/V2SjhYS/dfcb88be-d58c-4402-909d-622a315967ee.jpg	05.09.1990	Иван	Петров	ivan9090	13
4	https://i.ibb.co/V2SjhYS/dfcb88be-d58c-4402-909d-622a315967ee.jpg	05.09.1990	Иван	Петров	ivan9090	14
2	https://i.ibb.co/V2SjhYS/dfcb88be-d58c-4402-909d-622a315967ee.jpg	05.09.1990	Денис	Андреев	den	12
5	https://i.ibb.co/V2SjhYS/dfcb88be-d58c-4402-909d-622a315967ee.jpg	05.09.1980	Алексей	Петров	alexPetr	15
690	\N	01.57.1980	Alex	Petrov	Pete	687
694	\N	01.57.1987	Alex	Petrov	Pete	691
7	https://i.ibb.co/V2SjhYS/dfcb88be-d58c-4402-909d-622a315967ee.jpg	05.09.1980	ЛЁХА	Петров	\N	17
11	https://i.ibb.co/fHY3CLr/b136d59b-1528-421f-8578-917fc1ef1958.png	\N	Андрей	Сосед из 35й	\N	21
14	https://i.ibb.co/fHY3CLr/b136d59b-1528-421f-8578-917fc1ef1958.png	\N	Саша	Белый	\N	24
19	https://i.ibb.co/d7Gc6CT/98eed71d-38ae-4fb3-af3a-903b3d781987.png	\N	Анна	Петрова	\N	29
1	https://i.ibb.co/KjV4htm/927a0eb4-15f3-48a5-8f08-374e48db0734.png	05.09.1990	Иван	Петров	ivan9090	1
12	\N	\N	Миха	Сосед по даче	\N	22
9	https://i.ibb.co/KjV4htm/927a0eb4-15f3-48a5-8f08-374e48db0734.png	04.10.1983	Виктор	\N	\N	19
18	https://i.ibb.co/Y8wfjJ4/2c23e8fb-ddc3-4d91-bdad-e29b2dd65c5d.jpg	\N	Ярослав с работы	\N	\N	28
6	https://i.ibb.co/V2SjhYS/dfcb88be-d58c-4402-909d-622a315967ee.jpg	05.09.1980	Алексей	ПетровВВВ	alexPetr	16
10	https://i.ibb.co/NpDg7hm/1623706543-34-oir-mobi-p-krasivaya-priroda-mira-priroda-krasivo-fot-35.png	\N	Сергей Владимирович	\N	\N	20
698	https://i.ibb.co/cJSKTtm/a0ac7174-68d9-4dc2-8395-66094d19d6e4.jpg	01.57.1987	Alex	Petrov	Pete	695
702	\N	\N	\N	Фамилия	\N	701
709	https://i.ibb.co/2W29Smz/05595d3b-0cde-4985-baef-1a4551e03562.jpg	02.36.1998	\N	Потопахин	\N	704
716	https://i.ibb.co/TwbCcfk/3cc163fc-a072-406a-91b1-08d2268e73bf.jpg	26.01.1993	Михаил	Петров	\N	711
740	https://i.ibb.co/mXLgWV8/d3beae51-8185-44be-a334-690279d39425.jpg	12.18.1999	first name	Last name	\N	731
13	\N	\N	Миха	Сосед по даче	\N	23
775	\N	16.08.1996	лалалал	Лалалал	\N	772
15	\N	\N	Саша	Черный	\N	25
16	\N	01.12.1993	Максим	\N	\N	26
120	\N	09.11.1990	Сергей	\N	sergey90	109
573	\N	\N	Егор	Потопахин	никнейм	564
581	https://i.ibb.co/98z8xRs/5bcf7fc1-dce7-4fac-8097-10d1c517b633.jpg	\N	аватара	тест	\N	578
609	https://i.ibb.co/WH0WcXp/59bbb4d5-d12c-480a-8fd1-0768d073861d.jpg	\N	Сергей	Петров	Pete	601
632	https://i.ibb.co/h7d1ZkY/426c00a9-8bf0-40a6-a5a1-3364aace41e9.jpg	\N	\N	Шариков	vozdushni	610
795	\N	31.12.1988	лалалал	Лалалал	\N	792
803	\N	01.01.1993	лалалал	Лалалал	\N	800
806	\N	01.01.2022	\N	ttt	\N	805
808	\N	01.01.1988	нананан	гагагаг	\N	807
811	\N	01.01.1992	нананан	гагагаг	\N	810
813	\N	01.01.1991	нананан	гагагаг	\N	812
815	\N	01.01.1987	нананан	гагагаг	\N	814
817	\N	01.01.1985	нананан	гагагаг	\N	816
819	\N	01.01.1988	нананан	гагагаг	\N	818
821	\N	01.01.1989	Сергей	\N	sergey90	820
823	\N	01.01.1988	нананан	гагагаг	\N	822
826	\N	01.01.1987	heheh	kdiekkdb	\N	825
828	\N	01.01.1987	heheh	kdiekkdb	\N	827
830	\N	01.01.1988	heheh	kdiekkdb	\N	829
832	\N	01.01.1999	heheh	kdiekkdb	\N	831
834	\N	01.01.2001	heheh	kdiekkdb	\N	833
836	\N	01.01.2004	heheh	kdiekkdb	\N	835
838	\N	01.01.2008	heheh	kdiekkdb	\N	837
841	\N	01.01.2011	heheh	kdiekkdb	\N	840
843	\N	01.01.2011	heheh	kdiekkdb	\N	842
845	\N	01.01.2013	heheh	kdiekkdb	\N	844
847	\N	01.01.2015	heheh	kdiekkdb	\N	846
849	\N	01.01.2015	heheh	kdiekkdb	\N	848
851	\N	01.01.2015	heheh	kdiekkdb	\N	850
853	\N	01.01.2016	heheh	kdiekkdb	\N	852
855	\N	01.01.1968	heheh	kdiekkdb	\N	854
858	\N	\N	\N	jfjfj	\N	857
862	\N	01.08.2022	jdjdj	huffiest	\N	859
866	\N	\N	\N	jdjdj	\N	865
879	\N	31.08.1998	\N	testov	\N	876
883	\N	31.08.1998	\N	testov	\N	880
888	\N	31.08.1998	\N	testov	\N	884
892	\N	01.01.1987	\N	Testov	\N	891
902	https://i.ibb.co/x6qMwF5/ee6ce5f5-0c2f-4a8f-8185-956c7ad7f6fb.jpg	31.12.1988	my name is	Testov	tttttttt	893
911	\N	\N	\N	ееее	\N	908
919	\N	\N	\N	last name	\N	916
\.


--
-- Data for Name: phone_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.phone_ent (id, description, number, priority, id_block, ordinal_number, time_end, time_start) FROM stdin;
7	Основной рабочий	89887654534	t	39	10	56880	8100
1	Основной рабочий	+79887654534	t	5	8	\N	\N
2	Доп. рабочий	+79776543456	f	5	7	\N	\N
3	Личный	+79670009800	t	2	6	\N	\N
4	Доп. рабочий	+79776543456	f	34	7	\N	\N
5	Основной рабочий	+79887654534	t	34	8	\N	\N
6	Личный	+79670009800	t	36	6	\N	\N
113	\N	12345678	t	110	1	1000	0
17	\N	+78881113344	\N	50	1	\N	\N
18	\N	+78881114455	\N	51	1	\N	\N
19	\N	+78881114455	\N	52	1	\N	\N
20	\N	+78881115566	\N	53	1	\N	\N
21	\N	+71112223344	\N	54	1	\N	\N
22	\N	+71112223344	\N	55	1	\N	\N
23	\N	+71112225566	\N	56	1	\N	\N
24	\N	+71112226677	\N	57	1	\N	\N
25	\N	+71232226677	\N	57	2	\N	\N
26	\N	+78997765544	\N	58	1	\N	\N
27	\N	+78997763322	\N	58	2	\N	\N
115	\N	+79887654534	f	114	1	\N	\N
567	Блок 1 поле 1	9831783973	f	565	0	\N	\N
10	\N	+79998887766	f	43	1	37200	36000
11	\N	+7 888 777 23 23	f	45	1	70200	32400
14	Всегда на связи	+78887776655	t	48	1	63000	43200
15	Запасной	+78887776666	f	48	1	75600	63000
16	\N	+78881112233	\N	49	1	62400	2700
603	Work phone	9621534558	f	602	1	\N	\N
645	\N	9635581232	f	644	0	\N	\N
656	Block1 field1	9831783973	f	655	0	\N	\N
676	\N	89632548115	f	675	0	\N	\N
680	\N	+78997765544	f	679	1	\N	\N
681	\N	+78997763322	f	679	2	\N	\N
685	\N	89632548115	f	684	0	\N	\N
689	\N	89632548115	f	688	0	\N	\N
8	Стационарный (скорее всего не возмут)	+7 385 222-66-31	f	39	11	43200	0
9	Стационарный (звонить дольше)	+738522 2-66-45	t	39	12	13140	77100
105	Тестовый 1	+79854322121	f	39	13	0	80100
693	\N	89632548115	f	692	0	\N	\N
697	\N	89632548115	f	696	0	\N	\N
108	Тестовый 4	+79998887654	f	39	16	0	43200
713	Описание номера	9632154545	f	712	0	\N	\N
109	Тестовый 5	+78764569090	f	39	17	50400	57600
106	Тестовый 2	+79764563423	f	39	14	86340	0
107	Тестовый 3	+79754321234	f	39	15	60	86340
737	\N	9632154545	t	736	1	\N	\N
738	\N	9523564242	t	736	2	\N	\N
861	\N	123456	f	860	0	\N	\N
878	\N	1234556	f	877	0	\N	\N
886	\N	123456	f	885	1	\N	\N
898	My first phone	+79632151551	f	894	0	\N	\N
899	\N	1234566	f	894	3	\N	\N
\.


--
-- Data for Name: profile_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.profile_ent (id, allow_import, allow_share, name, note, id_user, local, reference, qr_code) FROM stdin;
20	f	t	Личный	\N	57	t	d573f3b1-192e-474f-84e8-c6e3f2e0f25e	\N
21	f	t	Личный	\N	57	t	244f1fce-2165-430e-9a16-89810f44d9b5	\N
22	f	t	Личный	\N	57	t	27da8fa8-9d5a-4ee5-ba19-903e5290d0bf	\N
23	f	t	Личный	\N	57	t	995966cf-9ee8-4240-8cea-ec7846d48c8d	\N
24	f	t	Личный	\N	57	t	f87dba4b-c8b1-4686-9b04-ae789cab38e3	\N
25	f	t	Личный	\N	57	t	f8b02813-a036-4ac9-b7ed-e9112a0bda0f	\N
109	t	f	Валидация	\N	59	f	ba3f5690-1130-435a-8034-d203516f6436	\N
16	t	t	И	В свободное время занимаюсь game streaming'ом	57	f	f2a00039-a0fe-43f3-8426-8705f683d1f4	https://i.ibb.co/PY7sDkW/1c36ba62-371e-4945-822e-65db3f4c7935.png
26	f	t	Личный	\N	57	t	8ab415b3-4869-43a9-83af-809c43a82ca0	\N
27	f	t	Личный	\N	57	t	6d7a07dc-4003-4864-89d2-9ae56277074b	\N
28	f	t	Личный	\N	57	t	1655a00f-01d7-497b-a769-b8f2a5ecad9e	\N
29	f	t	Личный профиль	\N	57	t	4cb7a42f-19b7-4050-9c20-4a75fc30e117	\N
15	t	t	Для работы	Визитка для работы	57	f	5d852d75-55a9-4a5d-952a-92d298725283	https://i.ibb.co/Y7fz3yf/30db3c5b-1995-49cf-8171-1c39f98a513c.png
578	t	t	Тестовый	Тестовое примечание	57	f	e87c7363-6316-4491-b6a5-e2b0aa8092dc	\N
12	t	t	Рабочий	Примечания 2	14	f	328665cb-1715-441f-893f-5795501d17eb	\N
19	f	t	Название профиля 30 зззззнаков	\N	59	f	d575890a-012d-49ad-8580-68ff563a0675	\N
601	t	t	Тестовый	Тестовое примечание	57	f	b12bdede-bb21-4d16-82ef-86b3802c5fd9	\N
610	t	t	Тестовый	Тестовое примечание	57	f	8007ea87-ca06-456b-96fe-0be17bb56578	https://i.ibb.co/CW1LxBk/6de47294-0df1-4037-8577-3470fa8a37d4.png
643	t	t	Тестовый	Тестовое примечание	57	f	9d8dbb30-abd4-442e-ae81-b053015eaf8f	\N
654	t	t	Тестовый	Тестовое примечание	57	f	1938fba3-8d6c-438e-ad34-36109e047d34	\N
660	t	f	Тест названия	Тестовое примечание	57	f	73ecdf86-7664-42ac-a6e2-ecd4f5a825a1	\N
666	f	t	Для работы	Тестовое примечание	57	f	dcffdef2-9a85-417e-88c0-c92e986c9489	\N
674	t	f	For working	Тестовое примечание	57	f	5e670475-7b19-4f08-9345-f56f0019f9d9	\N
678	f	t	Личный	\N	57	f	0596338c-0fbb-4604-870e-580aa8539770	\N
683	t	f	For working	Тестовое примечание	57	f	d427c257-5884-43bb-95e3-5b319fa371ff	https://i.ibb.co/BZfSWHV/72b1457f-4e37-4388-9af9-e07cd54da64a.png
687	t	f	For working 2	Тестовое примечание	57	f	32350929-8f1e-4c3c-bdef-a1629e9fed4b	\N
691	t	f	For working 3	Тестовое примечание	57	f	dbf49ad3-6c04-4a6c-a5e4-c51c7e75a628	\N
695	f	t	For working 4	Тестовое примечание	57	f	d30649fa-8921-4257-9128-40a203acf51b	\N
701	t	t	Профиль	\N	57	f	6fc8c78a-0144-43fb-9ab7-8d894bb3d238	\N
704	t	t	Test	\N	57	f	b7be2498-671a-42ac-a443-a18bcbc5333b	\N
711	f	t	Мой профиль	Описание моего профиля	57	f	f472124a-ff24-4645-a8d2-202a202bbb39	\N
731	t	f	Profile name	\N	57	f	d0847e21-5f18-46e9-b8fb-8e660f721160	\N
772	t	t	Тест даты	Ггггггг	57	f	c640a777-2bcf-4273-ac08-2d674c58b48e	\N
800	t	t	Тест даты 7	Ггггггг	57	f	f940cf5c-8de0-40e4-9f5f-d0e7f06199b1	\N
805	t	t	Tttt	\N	57	f	0809f2ab-7fac-40aa-bc10-ca2422f8b07e	\N
807	t	t	Тест даты 8	\N	57	f	a6e641f3-5cee-4375-a3c5-0a504f00d879	\N
810	t	t	Date test 10	\N	57	f	515e012d-06b6-4afd-8ccc-e34f6a0c59f3	\N
13	t	t	Иван	Петров	14	f	f4faade1-c402-4523-8752-b83e7114aeae	\N
14	t	t	Иван	Петров	14	f	ac70d64c-5adb-4e8b-815a-7f4cf03733be	\N
812	t	t	Date test 10	\N	57	f	8d4e1026-c912-4506-998f-4654352bf916	\N
814	t	t	Date test 11	\N	57	f	377375f5-a826-4a95-b8c1-f4baade06395	\N
816	t	t	Date test 11	\N	57	f	03bdbeb0-6a28-4286-b511-c0049bda31fe	\N
818	t	t	Date test 11	\N	57	f	f5babd38-408d-4ade-b9ea-b2172c4bfa91	\N
822	t	t	Date test 12	\N	57	f	14fe6688-159a-4f2d-9970-cee222774279	\N
820	t	f	Date test 12	\N	57	f	4fb0a7c7-d813-4fc9-8735-57214514a223	https://i.ibb.co/5R6nRDc/a2812e85-12f9-438d-a158-04d18a81d6b5.png
825	t	t	Date test 13	\N	57	f	5087fa65-6852-4fd5-99dd-f44d068761a5	\N
827	t	t	Date test 13	\N	57	f	9d391335-9a7c-480e-91cf-85df4e97ffbf	\N
829	t	t	Date test 14	\N	57	f	2d9773e9-37f8-4cbf-9b2a-89f7766fbeba	\N
831	t	t	Date test 15	\N	57	f	bfb146e7-1d31-4efe-8a6c-c4f62da9361b	\N
1	t	t	Личный	Примечания	57	f	7d88fd47-c9a1-48ea-be3c-2f70020b140c	https://i.ibb.co/6vxCG6X/f97beb79-a6c7-4b63-afe1-a75711502c2b.png
564	t	t	Тестовый	Тестовое примечание	57	f	d350f273-3d64-496e-980f-8487cfc69d48	https://i.ibb.co/Cz5qgrr/345a7caf-9b4d-4be4-9110-65a9d35cadfd.png
792	t	t	Тест даты 5	Ггггггг	57	f	a0ee15b0-cc4d-4109-9302-0ddb39bdf683	https://i.ibb.co/mhZKbD5/d2cbaf94-0966-4770-8ac0-2a6e6717109e.png
17	t	f	Название профиля  20	\N	57	f	2a5190ad-75f5-433e-b8c9-0b74219ba248	https://i.ibb.co/Rp1RYNQ/150bef2f-2102-41fc-883e-daec3440180a.png
833	t	t	Date test 15	\N	57	f	b3839270-e792-4d6d-887e-64c9fe402771	\N
835	t	t	Date test 16	\N	57	f	9a642a3c-7a2e-4fdb-8de8-58f5e5771f58	\N
837	t	t	Date test2008	\N	57	f	f8457617-9a91-4ee4-a5cc-adc69cc1944b	\N
840	t	t	Date test2008	\N	57	f	a522e372-341a-4094-8004-08989561ac26	\N
842	t	t	Date test 2012	\N	57	f	b6f95ac5-57bf-4049-bd04-0f63dc26c39a	\N
844	t	t	Date test 2013	\N	57	f	e7a9f4e2-f769-4653-b750-71f0d843bc6a	\N
846	t	t	Date test 2013	\N	57	f	fc4cc952-d5a5-43d6-b456-f34ff4dae540	\N
848	t	t	Date test 2016	\N	57	f	cbe231cc-d359-4e8d-9f26-ffdcaa63afc0	\N
850	t	t	Date test 2015	\N	57	f	efa30af4-6c2e-4d98-9067-2314ff60f15c	\N
852	t	t	Date test 2017	\N	57	f	170d3356-ef0a-4f7d-91dd-504770fdf190	\N
854	t	t	Date test 1968	\N	57	f	3aafafba-4646-4802-a86e-7ed822556410	\N
857	t	t	Validate test 1	\N	57	f	66835f87-1da3-4e94-bd37-dad8d30f1ef1	\N
859	t	t	Validate test 1	\N	57	f	9363232b-5d54-41a0-8f5f-3a0b57962c80	\N
865	t	t	Test we	\N	57	f	475209b9-e98d-4512-9258-99c9fb9b0719	\N
876	t	f	Test 1	\N	57	f	3d595cc8-3e70-42ba-ba4e-5181c67b578d	\N
880	t	f	Test 2	\N	57	f	05860ca3-f2dd-459c-8275-b789dbccde22	\N
884	t	f	Test 2	\N	57	f	2086e9bd-e203-406e-9de3-ddba3f088227	\N
891	f	t	Test 3	\N	57	f	a95b855f-b3d1-4453-9383-020ae0669a37	\N
893	t	f	Test 3	Hdjdjdjdjjdjd Hdjdjdjdjjdjdjdjxjcjd djsjd Hdjdjdjdjjdjdjdjxjcjd djsjdjdjdjdjx Hdjdjdj Hdjdjdjdjjdjdjdjxjcjd djsjdjdjdjdjxjxjdjh djjdjdjdjxjcjd djsjdjdjdjdjxjxjdjh jxjdjh jdjdjdjxjxjdjh jdjxjcjd djsjdjdjdjdjxjxjdjh   .  sjdjdjdjdjxjxjdjh	57	f	07724241-bfe0-47ac-87f4-9f549b858643	\N
908	t	t	Еее	\N	57	f	699b2530-4c34-4411-908e-4b838d947154	\N
916	t	t	Testtttt valid	\N	57	f	ba6c3d51-1262-4144-b774-108985f04624	\N
\.


--
-- Data for Name: recent_profile_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.recent_profile_ent (id, id_profile, id_user) FROM stdin;
1609	12	57
1241	14	57
1242	14	57
1378	13	57
1379	13	57
\.


--
-- Data for Name: reference_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.reference_ent (id, description, icon, priority, text, url, id_block, ordinal_number, time_end, time_start) FROM stdin;
662	Telegram	\N	f	\N	@petya	661	0	\N	\N
668	\N	\N	f	\N	http://hdhdhhdjd.com	667	1	\N	\N
739	\N	\N	f	\N	Http://hdjeje.com	736	0	\N	\N
3	\N	1	t	\N	https://facebook.com/petrov9090	4	12	\N	\N
882	\N	\N	f	\N	Hdjdjd.com	881	0	\N	\N
887	\N	\N	f	\N	Hdjdjd.com	885	0	\N	\N
900	\N	\N	f	\N	Http//bdjdjdjdjjd.com	894	5	\N	\N
27		\N	f	\N	https://www.youtube.com/channel/UCDn0Zri6b3iuhOWVI5SGV5w	42	2	\N	\N
29		\N	f	\N	https://www.instagram.com/qrushcs	44	2	\N	\N
31		\N	f	\N	https://www.instagram.com/qrushcs	46	2	\N	\N
14		\N	t	\N	https://facebook.com/petrov9090	27	12	\N	\N
15	Не беспокоить без необходимости	\N	f	\N	https://vk.com/petrov9090	27	15	\N	\N
16		\N	t	\N	https://facebook.com/petrov9090	31	12	\N	\N
17	Не беспокоить без необходимости	\N	f	\N	https://vk.com/petrov9090	31	15	\N	\N
18		\N	t	\N	https://facebook.com/petrov9090	35	12	\N	\N
19	Не беспокоить без необходимости	\N	f	\N	https://vk.com/petrov9090	35	15	\N	\N
21	Моя основная страница	\N	t	\N	https://vk.com/durov	38	1	86340	0
22	Не беспокоить без необходимости	\N	f	\N	https://vk.com/petrov9090	38	2	86340	0
23	Мой профиль Steam	\N	t	\N	https://steamcommunity.com/profiles/76561199165497891/	41	1	86340	0
24	EPICGAMES	\N	f	\N	https://www.epicgames.com/	41	2	86340	0
25	xbox - редко играю	\N	f	\N	https://www.xbox.com/	41	3	86340	0
26	Заходите, тут весело	\N	t	\N	https://www.twitch.tv/qrushcsgo/videos	42	1	86340	0
28	Моя оф страница	\N	t	\N	https://vk.com/qrushcsgo	44	1	75540	61200
30	Моя оф страница	\N	t	\N	https://vk.com/qrushcsgo	46	1	75540	61200
20	\N	\N	f	\N	https://t.me/durov_russia	4	20	\N	\N
2	Не беспокоить без необходимости	0	f	\N	https://vk.com/petrov9090	4	15	\N	\N
118	\N	\N	t	\N	https://vk.com/sergey90	117	1	16900	12400
119	dsfsdfdsfd	\N	t	\N	https://www.instagram.com/sergey90	117	2	16900	12400
569	Блок 2 поле 2	\N	f	\N	BeCapp.com	568	0	\N	\N
608	Моё портфолио	\N	f	\N	https://mysite.com	605	2	\N	\N
613	\N	\N	f	\N	Какая-то ссылка.com	611	0	\N	\N
614	\N	\N	f	\N	Вторая.com	611	1	\N	\N
615	\N	\N	f	\N	Третья.com	611	2	\N	\N
616	\N	\N	f	\N	Четвёртая.com	611	3	\N	\N
617	\N	\N	f	\N	Пятая.com	611	4	\N	\N
618	\N	\N	f	\N	Шестая.com	611	5	\N	\N
619	7	\N	f	\N	Седьмая .com	611	6	\N	\N
620	9	\N	f	\N	Восьмая .com	611	8	\N	\N
621	10	\N	f	\N	Девятая.com	611	9	\N	\N
622	11	\N	f	\N	Десятая.com	611	10	\N	\N
\.


--
-- Data for Name: role_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.role_ent (id, name) FROM stdin;
1	ROLE_USER
2	ROLE_ADMIN
\.


--
-- Data for Name: test1ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.test1ent (id, name, "time", time_z) FROM stdin;
\.


--
-- Data for Name: test2ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.test2ent (id, key, test1_id) FROM stdin;
\.


--
-- Data for Name: type_custom_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.type_custom_ent (id, name) FROM stdin;
\.


--
-- Data for Name: user_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.user_ent (id, email, first_name, last_name, password, role_id, confirmed, confirmed_code, time_send_code, count_change_pass, state_change_pass, old_email, time_zone) FROM stdin;
326	ta@ml.ru	string	string	$2a$10$asoHP/HmDNK83.DVjeLV/.lcv9CqV3YccJRTdUoiQbHy3HYVMflBK	1	f	8401	1654489153827	0	0	\N	7
173	kamodeveloper@gmail.com	Kamo	dev	$2a$10$HsY5m0S20B7g/TjmrQhZv./IXQZ5xlawJaUBYuJhp8O0QTUEwGJIK	1	t	5623	1654785617997	2	1	\N	25200
328	potopahin98@yandex.ru	Егор	Потопахин	$2a$10$tfUSv2kiW5l7GQwZeu4PIOVM4GiJ3fVHQhpGuR7.269sNQ8SM3oMi	1	t	8325	1654838504531	0	2	\N	25200
149	alexchugunov@mail.ru	alrx	alex	$2a$10$k/a2obLo6wFX4UxCa09elO.p//6SBWxiOZqI6xcd8G8VQpJ/W91Le	1	t	6715	1655393992998	7	2	\N	25200
934	zapekano@yandex.ru	Ilya	Dadeko	$2a$10$ns3To6p1ymzWHntvntFfgO/mc3bG/phFzgAwSnjKFXzxYZ1oDm/Xi	1	t	\N	\N	0	0	\N	25200
14	potopakhin.ev@gmail.com	Egor	Potopakhin	$2a$10$bN6V8F.998Jao5kAzanr.O8Is4ngjsL/ibu73D1qGuM18Rp744Hn.	1	t	\N	\N	0	0	\N	25200
327	potopahin98@mail.ru	Egor	Potopakhin	$2a$10$Ymkx9uK7dBnpbb7no8VM8OeAg5bYgbxFKoqA9khnPMmzkAlCGXUqG	1	t	0632	1654610848897	0	1	\N	7
34	potopakhin.ev@icloud.com	Egor	Potopakhin	$2a$10$HybhMtsCfDBurLcLg/nSxuPEUGBxNSczTwuKLBuKIRFD4J0qc.4Me	1	t	3578	1640104210226	4	1	\N	25200
37	alexchugunov1@mail.ru	Er	Fk	$2a$10$CAQCBNjUi2dvXFfbDrLIiuDelS3wMFApz/9aL7wmTPv22JCOHZTHW	1	f	3785	1642347900271	0	0	\N	25200
47	achugunov84@gmail.com	Alex	Ch	$2a$10$iG.Hss8maq5byXDroVqtZe2/iCDEgXn9HD3ARAooNDgzi717N5xoi	1	t	\N	\N	0	0	\N	25200
58	myalex2005@yandex.ru	Al	Aq	$2a$10$mZrSvsVnnIoTqKAnEVG9deg9ljkOQMw2sZoTzQwsvcSEwlh0MYNiO	1	t	7345	1643521990920	2	2	\N	25200
59	avanesjan.k@gmail.com	Victor	Andreev	$2a$10$hsBb5i.oSxyQhnc/BIC9FOpUoQ.b8pTTk20sqWW7rCIXBH9TWBDvS	1	t	\N	\N	0	0	\N	-7200
163	rusanov-alex@mail.ru	Сашко	Рус	$2a$10$NqJZiG1rEGP5R4Wwxyjvv.uOPsFx5vWQ5b.y/6Hdxz30sLeBN2Kum	1	t	\N	\N	0	0	\N	25200
160	barnaul.rusanov@gmail.com	Alex	Rusan	$2a$10$14MtX/TS2oFKr7h6Ren3YeKY6ibyGaEQU0mJruBotx9WlpYxSPJzS	1	t	\N	\N	4	0	\N	25200
57	t@ml.ru	кАМО	Avanesyan	$2a$10$q19V3iPyJ1IMR32tncgGNu8P1kpujog5pyGgUHdrRV777uAISPLhe	1	t	\N	\N	0	0	avanesyan.nikolay@yandex.ru	25200
\.


--
-- Data for Name: user_session_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.user_session_ent (id, refresh_token, id_user, application, device_type, ip, os, os_version, device_id, expiration_time, device_model, active, created_time) FROM stdin;
346	06817cde-3dec-45dc-bace-733bcc5b01c3	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654568107	Mi Note 3	f	1654567808
351	b2c4cf36-d41a-49d2-b1a2-a3dd36cab59f	57	1.0	1	31.173.242.225	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654587340	Redmi Note 8 Pro	f	1654586979
348	e079b48f-a43d-4fc3-b3f0-363a2e1e8069	57	1.0	1	5.141.102.43	Android	Android SDK: 29 (10)	997b84700120c118	1654573405	Samsung Galaxy S10	f	1654573004
362	22ed173d-7515-4777-8b46-3ad279386d9c	57	\N	\N	212.74.200.57	unknown	unknown	\N	1654675369	\N	f	1654675069
349	7797e2c6-3814-4374-8cb4-fe0556d28b67	57	1.0	1	5.141.102.43	Android	Android SDK: 29 (10)	997b84700120c118	1654579834	Samsung Galaxy S10	f	1654579406
363	312436ab-7a34-4189-bb0c-e0858665c0a6	57	\N	\N	212.74.200.57	unknown	unknown	\N	1654675601	\N	f	1654675301
352	ca0cb23a-142e-46b4-a35c-62cb843a5395	57	1.0	1	31.173.242.225	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654595287	Redmi Note 8 Pro	f	1654594987
350	33dd9d44-8ebc-4150-a407-820bd838ae67	57	1.0	1	31.173.242.225	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654580553	Redmi Note 8 Pro	f	1654579562
364	40bdc29b-c828-4dd4-805c-a921f54f8c78	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654675621	Mi Note 3	f	1654675321
347	1524b9a3-c2c6-45f6-9d82-c1a6eeb0e62e	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654568194	Mi Note 3	f	1654567894
354	3371978b-663c-42c8-b26b-d80f4fcc8216	57	1.0	1	31.173.243.20	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654606116	Redmi Note 8 Pro	f	1654605817
355	0a28b385-703b-4d7a-93ce-c381c0b9548b	57	\N	\N	212.74.200.57	unknown	unknown	\N	1654611839	\N	f	1654611540
365	24a630f2-74e2-4ee1-a716-4c720adc5696	57	\N	\N	212.74.200.57	unknown	unknown	\N	1654675640	\N	f	1654675340
366	f82701df-52f4-4225-a60d-bf17c14ca606	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654677787	Mi Note 3	f	1654677197
353	4b7f1ca0-34d3-43e1-89ab-14c9c591e647	57	1.0	1	5.141.102.43	Android	Android SDK: 29 (10)	997b84700120c118	1654597225	Samsung Galaxy S10	f	1654596499
358	508c4b15-c7c4-4780-a3c9-3a733d37c1c1	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654673600	Mi Note 3	f	1654673300
359	1ce90f21-a9a0-4009-9621-398f5eeaf501	57	1.0	1	5.141.194.195	Android	Android SDK: 29 (10)	997b84700120c118	1654673988	Samsung Galaxy S10	f	1654673482
357	65c9fc1c-7514-4f7a-9488-06b28f18a8fe	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654672956	Redmi Note 8 Pro	f	1654672435
373	14f85034-20a5-47a3-be7d-eba056fa8cc8	57	\N	\N	0:0:0:0:0:0:0:1	unknown	unknown	\N	1654700823	\N	f	1654700524
356	32305ab5-8d96-4f96-9b96-00e873146377	57	\N	\N	212.74.200.57	unknown	unknown	\N	1654612029	\N	f	1654611729
360	152cf182-217e-4193-b2ae-cb0c5c17468b	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654674438	Mi Note 3	f	1654674138
368	f40f5b8a-9fb7-4e74-bd62-cd73f021428d	59	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654677925	Mi Note 3	f	1654677625
369	56a1b185-fc52-4e97-be25-269e2ea06fed	59	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654677960	Mi Note 3	f	1654677660
367	86a36aa1-60bd-4aca-9aa4-eefc6f233146	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654677843	Mi Note 3	f	1654677543
361	b9ae8902-f2dd-489c-8cee-2c727f002da1	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654675237	Redmi Note 8 Pro	f	1654674621
374	4ba88966-ae07-485f-a806-2f52edf16c18	57	\N	\N	0:0:0:0:0:0:0:1	unknown	unknown	\N	1654700925	\N	f	1654700625
371	201a19b3-5286-4c90-98a6-0a72ce89a434	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654690602	Redmi Note 8 Pro	f	1654690046
370	2f705e6a-0f2e-49a4-b742-4cc5077f7bb5	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654677995	Mi Note 3	f	1654677695
372	7e590ff6-68e8-428a-aaf7-45eab4e381e3	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654691668	Redmi Note 8 Pro	f	1654691368
375	ed46f8d5-6394-4a2d-8af0-1d81d3e4e3de	57	\N	\N	0:0:0:0:0:0:0:1	unknown	unknown	\N	1654701015	\N	f	1654700715
376	8385bd8d-7f76-49e0-9738-83abee2a37a6	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654701916	Mi Note 3	f	1654700912
381	c104661f-cb4a-4bee-b82a-1a23515bbed1	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654776420	Mi Note 3	f	1654775820
377	7c7ea61a-4396-40ae-bb02-bca7849c24ee	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654701853	Redmi Note 8 Pro	f	1654701253
378	8f75818c-bc5a-4850-aa68-3b399dcc9d57	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654737421	Redmi Note 8 Pro	f	1654736822
379	4e3da6b6-f57a-4553-b440-74342292dae6	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654763444	Mi Note 3	f	1654762844
380	2b6476bb-e842-42fb-a276-c7159b3b94c7	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654775629	Mi Note 3	f	1654775029
382	a233fc0e-1acd-40cb-9e13-784e283208bb	57	1.0	1	213.234.251.142	Android	Android SDK: 28 (9)	084f1d333361c228	1654784855	Mi Note 3	f	1654784255
383	40cfe544-8be4-490c-8247-14221caf59f6	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654787132	Redmi Note 8 Pro	f	1654786532
384	963a51fe-b51f-42bd-ae29-a1bbf911541f	57	1.0	1	5.141.101.246	Android	Android SDK: 29 (10)	997b84700120c118	1654837665	Samsung Galaxy S10	f	1654836634
385	9565eccc-6317-44dc-a57e-ead8a560a5fe	57	1.0	1	5.141.101.246	Android	Android SDK: 29 (10)	997b84700120c118	1654837707	Samsung Galaxy S10	f	1654837107
386	41567656-7c33-4475-8cbb-0950c88e96fc	57	1.0	1	5.141.101.246	Android	Android SDK: 29 (10)	997b84700120c118	1654837818	Samsung Galaxy S10	f	1654837218
387	088e5a35-d9b8-4b72-a6e0-445e2258c1d5	57	1.0	1	5.141.101.246	Android	Android SDK: 29 (10)	997b84700120c118	1654837865	Samsung Galaxy S10	f	1654837265
418	1ea0fbde-e22e-4aca-a659-a55c0d5eeb74	57	\N	\N	0:0:0:0:0:0:0:1	unknown	unknown	\N	1654968211	\N	f	1654967911
419	43b4a0a3-6479-47c2-8333-e42645886627	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1654999923	Redmi Note 8 Pro	f	1654999324
420	c65a4643-51ba-48e5-8983-fca32b87f065	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1655098778	Redmi Note 8 Pro	f	1655098178
431	ee1e3206-fe47-4fa8-89f6-6f1636abdb70	57	1.0	1	185.210.143.173	Android	Android SDK: 30 (11)	40ae7338ddef275e	1656002887	Redmi Note 8 Pro	f	1656001752
421	ba8c9e1d-d73b-4baa-a068-1bec592a2c64	57	1.0	1	89.113.140.206	Android	Android SDK: 28 (9)	084f1d333361c228	1655191215	Mi Note 3	f	1655190549
422	79139414-08ba-45b2-8210-161cf7e3750c	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1655209306	Redmi Note 8 Pro	f	1655208706
423	1002d1d4-95dc-4b6b-aaaf-226fcbd4f83f	57	1.0	1	31.173.243.22	Android	Android SDK: 30 (11)	40ae7338ddef275e	1655297619	Redmi Note 8 Pro	f	1655297019
424	905d1f46-f10f-44fc-a501-8e1af85d47de	57	1.0	1	31.173.242.208	Android	Android SDK: 30 (11)	40ae7338ddef275e	1655565046	Redmi Note 8 Pro	f	1655564384
425	a0de4a3a-7af8-4684-9a9a-ee8ae77c4ae8	57	1.0	1	5.141.195.24	Android	Android SDK: 29 (10)	997b84700120c118	1655740371	Samsung Galaxy S10	f	1655739771
426	33485167-b1df-4b5e-a9c8-b7e8b8dd01a4	57	1.0	1	5.141.195.24	Android	Android SDK: 29 (10)	997b84700120c118	1655741163	Samsung Galaxy S10	f	1655740563
432	d4e6d3d5-c8f5-41ec-b71f-0e48e59253f1	57	1.0	1	89.113.140.134	Android	Android SDK: 28 (9)	084f1d333361c228	1656163661	Mi Note 3	f	1656163062
427	6842ea7d-8747-414a-9315-dab5a0a94b52	57	1.0	1	5.141.195.24	Android	Android SDK: 29 (10)	997b84700120c118	1655742196	Samsung Galaxy S10	f	1655741432
428	2425ac26-fed7-4740-8284-aa4645ea0fae	57	1.0	1	185.210.143.173	Android	Android SDK: 30 (11)	40ae7338ddef275e	1655968074	Redmi Note 8 Pro	f	1655967474
429	0301a7cb-40bf-444f-9773-575fb9b54485	57	1.0	1	5.141.101.216	Android	Android SDK: 29 (10)	997b84700120c118	1655999016	Samsung Galaxy S10	f	1655998416
433	72eeb70b-b472-4b4d-8bad-04e533d548b0	57	1.0	1	89.113.143.80	Android	Android SDK: 28 (9)	084f1d333361c228	1656163673	Mi Note 3	f	1656163073
434	4421f521-3b1f-495a-a02c-96acb2969fd5	57	1.0	1	31.173.241.67	Android	Android SDK: 30 (11)	40ae7338ddef275e	1656515953	Redmi Note 8 Pro	f	1656515354
435	dbac4da7-3a77-4b7d-84e6-4b2a72010768	57	1.0	1	31.173.241.67	Android	Android SDK: 30 (11)	40ae7338ddef275e	1656690851	Redmi Note 8 Pro	f	1656690251
436	e53d2f85-e44a-4a02-b66c-976904c97227	57	\N	\N	178.186.57.114	unknown	unknown	\N	1656784268	\N	f	1656783668
430	939af19e-337d-4657-886c-46c1086a3f98	57	1.0	1	5.141.101.216	Android	Android SDK: 29 (10)	997b84700120c118	1656002251	Samsung Galaxy S10	f	1656000550
437	6b482616-35b6-4194-a33f-a19b02c0a142	57	\N	\N	178.186.57.114	unknown	unknown	\N	1656784717	\N	f	1656784117
448	3232a332-cf24-4b10-a3b2-d8fbba47e004	57	1.0	1	89.113.137.162	Android	Android SDK: 28 (9)	084f1d333361c228	1657078509	Mi Note 3	f	1657077909
440	128b645d-31fa-4977-ac2d-9f6e2f4df891	57	\N	\N	178.186.57.114	unknown	\N	\N	1656826222	\N	f	1656825359
441	d5994252-c802-4792-9bdb-ee0dc18de77a	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1656859462	Redmi Note 8 Pro	f	1656858862
442	749f1745-aef1-44b9-b7d4-f9b2a92c9693	57	\N	\N	212.74.200.59	unknown	unknown	\N	1656862428	\N	f	1656861828
443	e5a9b032-c01a-4e2d-a745-6bd2fbf9c82f	57	\N	\N	212.74.200.59	unknown	unknown	\N	1656862526	\N	f	1656861926
444	aa6ab9ce-2472-4ad7-bbdb-6bee082cbcec	57	\N	\N	212.74.200.59	unknown	unknown	\N	1656862631	\N	f	1656862031
438	c17bb1ea-297c-4027-bf37-a96f923b8cd5	57	\N	\N	178.186.57.114	unknown	\N	\N	1656786588	\N	f	1656785100
445	7027aa85-a326-437b-b22b-66c9fea9711f	57	\N	\N	212.74.200.59	unknown	unknown	\N	1656862867	\N	f	1656862267
439	53f7fa7a-592c-4abd-85c1-7ba51933b8e5	57	\N	\N	178.186.57.114	unknown	\N	\N	1656787508	\N	f	1656786144
449	e129103a-0f24-4eb9-af9e-68f91747ebb5	57	1.0	1	89.113.137.162	Android	11	12345	1657078570	Xiaomi MI Note 3	f	1657077970
450	62331e36-4a61-47cd-b943-49719e3016dd	57	\N	\N	212.74.200.59	unknown	unknown	\N	1657083610	\N	f	1657083010
446	aafb89dd-ce84-4572-a62c-136fe693ee8b	57	\N	\N	212.74.200.59	unknown	\N	\N	1656866069	\N	f	1656864679
447	3ff17b7f-f280-4287-87a4-179b18c566d8	57	1.0	1	89.113.137.162	Android	11	12345	1657078366	Xiaomi MI Note 3	f	1657077766
451	e5abaa83-f977-4696-b76b-e106fd432fde	57	1.0	1	89.113.137.162	Android	11	12345	1657085723	Xiaomi MI Note 3	f	1657085123
452	2d41eb13-1f76-4832-a0df-425f8edeeccc	57	1.0	1	5.141.101.48	Android	Android SDK: 31 (12)	3e563c540b163bed	1657122770	sdk_gphone64_x86_64	f	1657122170
453	1dd41775-96c4-444a-91f1-f4ddf5a7dbec	57	1.0	1	5.141.101.48	Android	Android SDK: 29 (10)	997b84700120c118	1657123940	Samsung Galaxy S10	f	1657123340
454	d000a7bb-3866-4c93-ace5-43aa30d9c9e8	57	1.0	1	89.113.136.253	Android	11	12345	1657126210	Xiaomi MI Note 3	f	1657125610
455	7e770bcc-c21f-41a7-b445-8f2631749053	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657127384	Redmi Note 8 Pro	f	1657126411
456	3d59975a-b6b3-4ea4-8fe6-0eeee34e68a6	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657167772	Redmi Note 8 Pro	f	1657167172
458	cd0050bd-3bae-4bab-89c1-de4be29766d2	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657180453	Redmi Note 8 Pro	f	1657179853
457	426fd242-1423-452a-aa29-5b491995e530	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657179765	Redmi Note 8 Pro	f	1657178675
459	a80e42aa-74d4-41dc-87f0-5b224155c99c	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657195834	Redmi Note 8 Pro	f	1657195161
460	321277f2-2266-4699-8ba7-fe43888903ee	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657211828	Redmi Note 8 Pro	f	1657211228
512	8d967a15-4437-4db8-968d-1927322a428c	57	1.0	1	89.113.142.20	Android	Android SDK: 28 (9)	084f1d333361c228	1658465090	Mi Note 3	f	1658464490
461	c97c318e-9c19-4527-915d-453182515f1d	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657212560	Redmi Note 8 Pro	f	1657211320
462	4dd049bf-a072-4dc9-907e-05d6d87aba66	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657213638	Redmi Note 8 Pro	f	1657213039
463	98220f80-2165-4009-a66b-4cc09fde6865	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657214882	Redmi Note 8 Pro	f	1657214282
464	7b34b271-b196-4791-beb3-288fc8e4e6d1	160	\N	\N	212.74.203.119	unknown	unknown	\N	1657292608	\N	f	1657292008
465	40569dda-0183-4184-932e-15968ddf3d23	57	1.0	1	31.173.241.26	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657296668	Redmi Note 8 Pro	f	1657296068
466	359ea7f7-650c-42e0-8f14-e43238555251	57	1.0	1	89.113.136.253	Android	Android SDK: 28 (9)	084f1d333361c228	1657355160	Mi Note 3	f	1657354561
499	7abd9a31-cbdb-4a3c-a437-ed808a3ba720	57	1.0	1	31.173.240.57	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657610091	Redmi Note 8 Pro	f	1657609492
500	3ae9ffd3-a46e-49e3-a0d0-08ac9f13c433	57	1.0	1	31.173.240.57	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657610092	Redmi Note 8 Pro	f	1657609492
501	c7248878-fde4-4ee7-9ffd-7286289a4a56	57	1.0	1	89.113.136.98	Android	Android SDK: 28 (9)	084f1d333361c228	1657680259	Mi Note 3	f	1657679659
502	2888c4b7-7925-4947-9036-c0850a40ed62	57	1.0	1	31.173.240.57	Android	Android SDK: 30 (11)	40ae7338ddef275e	1657696016	Redmi Note 8 Pro	f	1657695416
503	439d544b-a218-4d77-aaf6-dea1437e5493	57	1.0	1	89.113.136.98	Android	11	12345	1657762663	Xiaomi MI Note 3	f	1657762064
504	6cc525e1-2610-410d-abbc-36ff880af90c	57	1.0	1	89.113.136.98	Android	Android SDK: 28 (9)	084f1d333361c228	1657762705	Mi Note 3	f	1657762105
505	d4830774-f135-462b-8ed1-9d5cf8794c9f	57	1.0	1	89.113.136.98	Android	11	12345	1657767511	Xiaomi MI Note 3	f	1657766911
506	9d33a061-4de5-43a6-8db7-320d1ed0bdbc	57	1.0	1	178.176.48.44	Android	Android SDK: 30 (11)	40ae7338ddef275e	1658065464	Redmi Note 8 Pro	f	1658064865
507	5e7278fe-2ad7-4992-8cff-fe53d37e85ff	57	1.0	1	185.210.141.250	Android	Android SDK: 30 (11)	40ae7338ddef275e	1658335894	Redmi Note 8 Pro	f	1658335296
508	b80ef60a-1c02-469f-a839-13b766541230	57	1.0	1	185.210.141.250	Android	Android SDK: 30 (11)	40ae7338ddef275e	1658335899	Redmi Note 8 Pro	f	1658335299
509	251d0a4a-ef47-46ed-ad15-8e333689b324	57	\N	\N	212.74.200.43	unknown	unknown	\N	1658418572	\N	f	1658417973
510	4218851a-a259-4041-a63c-2d8a44e664aa	57	\N	\N	212.74.200.43	unknown	unknown	\N	1658419828	\N	f	1658419228
511	fa96b9d0-cd6f-4979-b478-3db65946e504	57	1.0	1	89.113.142.20	Android	Android SDK: 28 (9)	084f1d333361c228	1658464320	Mi Note 3	f	1658463720
513	2ecbfee4-f9dd-4bee-b9a7-86c07e64f105	57	1.0	1	89.113.140.121	Android	Android SDK: 28 (9)	084f1d333361c228	1658592765	Mi Note 3	f	1658592166
514	80bb1914-3979-4d25-8184-5d7e9d36979f	57	\N	\N	178.186.140.255	unknown	unknown	\N	1658593120	\N	f	1658592520
515	80b7ad14-d1d2-4276-b01a-ee2f3c14ad38	57	1.0	1	89.113.140.121	Android	11	12345	1658596575	Xiaomi MI Note 3	f	1658592975
516	16b1e4dd-011b-4a19-9d7c-fc8d99c88301	57	1.0	1	89.113.140.121	Android	Android SDK: 28 (9)	084f1d333361c228	1658632456	Mi Note 3	f	1658628856
517	ba11b8a4-c720-4927-8f02-7947eca0d618	57	1.0	1	89.113.140.121	Android	Android SDK: 28 (9)	084f1d333361c228	1658632456	Mi Note 3	f	1658628856
518	b45559bb-74f0-4449-ba17-3d44c6efaf2e	57	1.0	1	89.113.140.105	Android	Android SDK: 28 (9)	084f1d333361c228	1658641928	Mi Note 3	f	1658638328
521	a2921140-3a69-41af-8127-03add2b286fd	57	1.0	1	31.173.240.88	Android	Android SDK: 30 (11)	40ae7338ddef275e	1658764113	Redmi Note 8 Pro	f	1658760513
519	846b7819-7e93-48ae-b1e6-39df7a42d191	57	1.0	1	89.113.140.105	Android	Android SDK: 28 (9)	084f1d333361c228	1658681016	Mi Note 3	f	1658675192
524	3f8994a5-9eac-4916-abb5-85b04db70607	57	1.0	1	89.113.140.213	Android	Android SDK: 28 (9)	084f1d333361c228	1658812819	Mi Note 3	f	1658809219
520	f18276a4-b82d-45a8-b5d4-9e3bd0279f69	57	\N	\N	212.74.200.42	unknown	\N	\N	1658685352	\N	f	1658680482
527	40f346ae-76c0-4a63-b18a-d69fb4564469	57	1.0	1	89.113.140.213	Android	Android SDK: 28 (9)	084f1d333361c228	1658826211	Mi Note 3	f	1658821672
525	bd8e189a-84e5-4bf7-9941-d66d8c95a8ab	57	1.0	1	89.113.140.213	Android	Android SDK: 28 (9)	084f1d333361c228	1658814302	Mi Note 3	f	1658809223
526	95efee93-7a5a-4450-9fb0-9b4ef9aad18e	57	\N	\N	212.74.200.42	unknown	\N	\N	1658815490	\N	f	1658810786
530	f7b2750c-4e26-4d3a-9736-d8aa8f2fd201	57	1.0	1	185.210.141.221	Android	Android SDK: 30 (11)	40ae7338ddef275e	1659188944	Redmi Note 8 Pro	f	1659185345
522	3deee276-d9c7-4cf2-a18b-65f3aa88e5f4	57	\N	\N	212.74.200.42	unknown	\N	\N	1658770984	\N	f	1658764772
523	3f926e09-cf5c-48db-9013-5ae04782bec4	57	1.0	1	89.113.140.213	Android	Android SDK: 28 (9)	084f1d333361c228	1658812818	Mi Note 3	f	1658809218
528	1d6b326e-dcb5-4711-84f0-2b8a7b585901	57	1.0	1	89.113.141.18	Android	Android SDK: 28 (9)	084f1d333361c228	1658846498	Mi Note 3	f	1658842898
529	a499ba1b-9515-41ab-8f94-af37c5b1316d	57	1.0	1	89.113.141.18	Android	Android SDK: 28 (9)	084f1d333361c228	1658847316	Mi Note 3	f	1658843166
533	b3756e3d-4154-4aa7-a11d-c99c041a343a	57	1.0	1	185.210.141.223	Android	Android SDK: 30 (11)	40ae7338ddef275e	1659678517	Redmi Note 8 Pro	f	1659674917
531	4c898be4-0ad0-4dc3-a30e-c3a2aa8db71f	57	1.0	1	109.233.233.60	Android	Android SDK: 28 (9)	7d8c294faa3650c3	1659677146	Mi Note 3	f	1659673547
532	33d34b2a-0b37-4cbf-98b4-7e494a5f14be	57	1.0	1	5.141.195.26	Android	Android SDK: 29 (10)	997b84700120c118	1659678402	Samsung Galaxy S10	f	1659674140
534	512beef6-4f86-4db5-ad66-3f3c3b312a6a	57	1.0	1	109.233.233.60	Android	Android SDK: 28 (9)	7d8c294faa3650c3	1659688090	Mi Note 3	f	1659684490
727	6368765c-0b63-4acf-b018-181eeb41fd6e	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587871	\N	f	1661501471
728	ce561418-c955-4079-81fd-0fe12af4c3bd	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661588019	\N	f	1661501619
563	1d5e98a8-de27-4568-a639-ad39e4e47dd4	57	1.0	1	188.233.214.36	Android	11	12345	1661189642	Xiaomi MI Note 3	f	1661103243
673	3ee7d34b-d559-471b-805f-13e64dba040f	57	1.0	1	5.166.64.208	Android	11	12345	1661562134	Xiaomi MI Note 3	f	1661475734
535	a3cc1aab-ba68-40fd-b4ea-e44b54b6c4d7	57	1.0	1	185.210.141.223	Android	Android SDK: 30 (11)	40ae7338ddef275e	1659690774	Redmi Note 8 Pro	f	1659686008
536	1010ab86-e3cf-4a80-ae21-391f7464ccbb	57	1.0	1	185.210.142.9	Android	Android SDK: 30 (11)	40ae7338ddef275e	1660551092	Redmi Note 8 Pro	f	1660547426
637	5216986d-e109-46e6-9e6c-a095f916678f	57	1.0	1	188.233.214.36	Android	Android SDK: 28 (9)	7d8c294faa3650c3	1661358715	Mi Note 3	f	1661272315
647	ffd5d5e9-350a-4a46-bf27-8aa3d9e8dcf2	57	1.0	1	89.113.137.174	Android	Android SDK: 28 (9)	084f1d333361c228	1661397589	Mi Note 3	f	1661311190
649	3150573f-4546-4b8a-9148-d79508cf117d	57	1.0	1	89.113.137.174	Android	11	12345	1661398491	Xiaomi MI Note 3	f	1661312091
537	ac4c9444-01cb-41bc-ae2e-25637d91bc95	57	\N	\N	212.74.200.45	unknown	\N	\N	1661004082	\N	f	1660999967
583	ed151a58-4ba5-4263-acd6-d606cb290639	57	\N	\N	188.233.214.36	unknown	\N	\N	1661260745	\N	f	1661137336
650	d8fa09d8-3437-4a01-945c-d71ff12217a2	57	1.0	1	5.141.102.214	Android	Android SDK: 29 (10)	997b84700120c118	1661412074	Samsung Galaxy S10	f	1661313591
651	c1286770-f2ca-4442-a28f-0b472dcad1ce	57	\N	\N	89.113.137.5	unknown	\N	\N	1661427521	\N	f	1661314796
538	2959782a-3fb0-433a-a0a8-caf32fb679e2	57	\N	\N	212.74.200.45	unknown	\N	\N	1661022695	\N	f	1661005411
634	56350866-aa70-4fdf-96ba-5158a6cc9509	57	\N	\N	212.74.200.45	unknown	\N	\N	1661335657	\N	f	1661233160
539	b6f04006-3ed7-4e86-8d31-851c559cb9b4	57	\N	\N	212.74.200.45	unknown	\N	\N	1661023550	\N	f	1661019578
540	b757a5dc-004b-4f31-bf08-9be31a72d622	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661070791	\N	f	1661067191
541	8dfeaa0b-6fd3-4a85-b682-1871dfe4f98f	57	1.0	1	188.233.214.36	Android	11	12345	1661157248	Xiaomi MI Note 3	f	1661070848
543	c2e4ce37-9340-4658-a17d-e70c65c15a1b	57	1.0	1	188.233.214.36	Android	11	12345	1661182689	Xiaomi MI Note 3	f	1661096289
544	ad2c6d52-ad2e-4f4e-bd12-11bbba0339dc	57	1.0	1	188.233.214.36	Android	11	12345	1661184909	Xiaomi MI Note 3	f	1661098509
542	d2ca0d8c-f76a-45e0-9e90-c8f2fe8fd1d8	57	\N	\N	212.74.200.45	unknown	\N	\N	1661173581	\N	f	1661083511
546	6ca3d55c-f5c5-4014-b56f-bba6c030422c	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661186808	\N	f	1661100408
584	2b2a8f29-384f-4b9c-833e-4217fa03e73b	57	1.0	1	188.233.214.36	Android	11	12345	1661260329	Xiaomi MI Note 3	f	1661173929
636	944c2506-7fb8-4d72-995e-b3bd34db0d34	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661337742	\N	f	1661251342
545	b91908ff-2551-41fc-b0e7-b915c431d805	57	1.0	1	188.233.214.36	Android	11	12345	1661185701	Xiaomi MI Note 3	f	1661099301
548	322d2d44-0db3-4a74-909d-2304679e7114	57	1.0	1	188.233.214.36	Android	11	12345	1661188766	Xiaomi MI Note 3	f	1661102366
652	302da4c2-7ea8-4926-bbe8-3bceb2ecbbc6	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661507985	\N	f	1661421585
547	81285d7f-652f-4770-bc49-e9ab9b818a33	57	\N	\N	212.74.200.45	unknown	\N	\N	1661196760	\N	f	1661100451
582	5405c9a8-4088-4a73-b2a0-c56e1c34b5bf	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661196812	\N	f	1661110412
638	8d903c06-5166-4501-8600-292c67ab0406	57	\N	\N	188.233.214.36	unknown	\N	\N	1661397374	\N	f	1661272498
648	89bfa170-8b45-437e-b58a-861c3641ac1b	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661397880	\N	f	1661311480
653	8a5e5179-9da0-41f4-82c9-8924e7c0e412	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661508167	\N	f	1661421767
659	e8359f44-42a5-4efd-8955-4c038b48cdb0	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661526204	\N	f	1661439804
633	08eecf83-e8e6-4b90-8bf9-de29c682fe81	57	1.0	1	185.210.140.151	Android	Android SDK: 30 (11)	40ae7338ddef275e	1661328386	Redmi Note 8 Pro	f	1661183801
635	4e90926c-a6da-49b6-891d-36c7bf694887	57	1.0	1	212.74.200.45	Android	Android SDK: 29 (10)	028a012db1386b0a	1661335609	MAR-LX1H	f	1661249209
665	a4b993d8-7039-4574-a6b6-e5fd58b6f1e7	57	\N	\N	5.166.64.208	unknown	\N	\N	1661565454	\N	f	1661442988
710	6fd4aaad-5100-4541-841a-c0fd8eec25c7	57	\N	\N	5.166.64.208	unknown	\N	\N	1661580096	\N	f	1661489488
700	611b2be1-ee82-4b41-892a-b77f50b0bb30	57	\N	\N	212.74.200.45	unknown	\N	\N	1661573251	\N	f	1661483189
703	0a902930-0ec1-43bd-8db6-39a308834f66	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661575013	\N	f	1661488613
721	663ca192-8bb7-42b5-9619-c805744515d9	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587402	\N	f	1661501002
699	dd2ae0aa-96db-4903-bcf4-fb3051ef8362	57	1.0	1	5.166.64.208	Android	11	12345	1661565758	Xiaomi MI Note 3	f	1661479359
719	3f2cb781-80e2-424a-baea-75ca68c365a2	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661586238	\N	f	1661499838
720	738e3947-09a5-4e5b-a3f1-5c3ec35fc8e1	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587338	\N	f	1661500938
722	e9871ea2-7897-4467-ad4f-899b6ae3e0e8	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587600	\N	f	1661501200
723	813e3557-24ab-4c3a-9eda-b17efa5b508e	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587652	\N	f	1661501252
724	f4238194-8b69-409d-aa9c-842bdd4b054c	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587673	\N	f	1661501273
725	7fdc259b-b263-4c0b-9dae-61ba1a7670d0	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587797	\N	f	1661501397
726	1f33f355-34fc-4d30-8087-56d3d06ac821	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661587810	\N	f	1661501410
718	7496a9ac-ea30-43e4-a742-943608947744	57	1.0	1	5.141.195.168	Android	Android SDK: 29 (10)	997b84700120c118	1661589922	Samsung Galaxy S10	f	1661499057
717	00a0c679-ae51-4e9d-917d-9474d4afbc4a	57	1.0	1	5.166.64.208	Android	11	12345	1661580608	Xiaomi MI Note 3	f	1661494208
658	05900526-5a7e-4f52-8881-66c014483a47	57	1.0	1	185.210.140.161	Android	Android SDK: 30 (11)	40ae7338ddef275e	1661589152	Redmi Note 8 Pro	f	1661439728
729	303cf13e-2d74-44b4-8121-ee93f49db64f	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661588246	\N	f	1661501846
730	4742b3e0-b389-4f79-928f-3a0016dad7cf	57	\N	\N	5.166.64.208	unknown	unknown	\N	1661613502	\N	f	1661527102
741	67f42388-59ff-4a92-9bb4-edb620d8ae36	57	1.0	1	5.166.64.208	Android	11	12345	1661613763	Xiaomi MI Note 3	f	1661527363
742	dee34384-eecc-4d33-86db-d4d9e71fb3bd	57	\N	\N	178.186.236.77	unknown	unknown	\N	1661614157	\N	f	1661527757
751	3eb94711-15a6-48c1-ae83-a3893366a546	57	\N	\N	178.186.236.77	unknown	\N	\N	1661703544	\N	f	1661617082
743	ed2e963b-3fe6-4591-ad9b-cba34310e4c7	57	\N	\N	178.186.236.77	unknown	\N	\N	1661702793	\N	f	1661615139
752	31a88b55-35f1-416f-b47c-28c79d002540	57	\N	\N	178.186.236.77	unknown	\N	\N	1661703702	\N	f	1661617274
744	1ee8988d-71c2-49fd-adc9-c80463ee26ab	57	\N	\N	178.186.236.77	unknown	\N	\N	1661702804	\N	f	1661616402
753	77698ff7-578f-4a89-9369-015eae682ad2	57	\N	\N	178.186.236.77	unknown	unknown	\N	1661705340	\N	f	1661618940
745	33254e81-8f9c-42b7-90f9-6e05d93038d5	57	\N	\N	178.186.236.77	unknown	\N	\N	1661702823	\N	f	1661616422
766	40b77aad-f1e6-4105-9b7a-5d93c8111045	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661942498	\N	f	1661856098
746	b87ff58d-9547-4c37-8e53-a7cd89b55b1e	57	\N	\N	178.186.236.77	unknown	\N	\N	1661702862	\N	f	1661616461
754	3bbf0b19-d9bf-487b-aea6-5d1b47861623	57	\N	\N	5.166.64.208	unknown	\N	\N	1661783940	\N	f	1661693384
756	9b52f639-4859-4222-95bb-70b94e755c0e	57	\N	\N	178.186.236.77	unknown	\N	\N	1661788462	\N	f	1661698362
755	e9d54e84-cbcb-4c21-9d06-42248a9f74e7	57	1.0	1	5.166.64.208	Android	11	12345	1661780512	Xiaomi MI Note 3	f	1661694112
757	7e4b0425-cd34-4824-a6f5-d13deb9a9464	57	\N	\N	178.186.236.77	unknown	unknown	\N	1661788557	\N	f	1661702157
747	decf3500-682d-45dd-84e1-e07ea0c0cd76	57	\N	\N	178.186.236.77	unknown	\N	\N	1661703113	\N	f	1661616613
748	17276560-d5b4-48b3-857a-85b4ecef6e71	57	\N	\N	178.186.236.77	unknown	\N	\N	1661703122	\N	f	1661616721
760	cf4d8f82-1d41-4357-a9c0-0ebd5971f567	57	1.0	1	31.173.241.80	Android	Android SDK: 30 (11)	40ae7338ddef275e	1661834709	Redmi Note 8 Pro	f	1661748309
749	462a074e-8095-47b8-856d-c712e9364eb0	57	\N	\N	178.186.236.77	unknown	\N	\N	1661703199	\N	f	1661616775
863	8c58f733-63e8-4432-b39b-b82b83595c86	57	\N	\N	212.74.200.45	unknown	unknown	\N	1662026750	\N	f	1661940351
750	d64025ee-ba78-4833-88e3-9e6238721ff9	57	\N	\N	178.186.236.77	unknown	\N	\N	1661703347	\N	f	1661616921
770	f2f28688-2c86-4104-88f9-46870b1926fa	57	\N	\N	89.113.137.20	unknown	\N	\N	1661952564	\N	f	1661861359
758	8c8ab9da-b663-4416-adda-8c3cbcad11db	57	1.0	1	5.166.64.208	Android	11	12345	1661789869	Xiaomi MI Note 3	f	1661703469
759	cdb2e6a6-9267-4364-bbb4-133e94f3edb7	57	\N	\N	5.166.64.208	unknown	unknown	\N	1661790249	\N	f	1661703849
762	0641f951-8c3f-4056-9396-722679a48cc3	57	1.0	1	5.141.193.219	Android	Android SDK: 28 (9)	8eb09f7d4deabf9f	1661842262	Xiaomi Redmi Note 7	f	1661755862
769	c6a04316-d1af-47e9-99a0-5c209e8126d3	57	1.0	1	77.106.87.147	Android	11	12345	1661947249	Xiaomi MI Note 3	f	1661860849
763	ab2d0f35-44be-4833-93e0-b2296f6d8136	57	1.0	1	5.141.193.219	Android	Android SDK: 29 (10)	997b84700120c118	1661852176	Samsung Galaxy S10	f	1661758006
764	c47c5bff-1af2-4d0b-8b43-add6f5ff67af	57	\N	\N	77.106.82.22	unknown	\N	\N	1661931867	\N	f	1661835010
804	34726612-73c2-4c33-85b9-ec3eac934a73	57	\N	\N	212.74.200.45	unknown	unknown	\N	1661952602	\N	f	1661866202
761	7c11a5d0-76ec-4484-85ea-d52ceb4a4241	57	1.0	1	31.173.241.80	Android	Android SDK: 30 (11)	40ae7338ddef275e	1661870035	Redmi Note 8 Pro	f	1661748311
856	7a0ca71e-2634-44e0-a669-399489d34b0a	57	1.0	1	77.106.87.147	Android	11	12345	1661960989	Xiaomi MI Note 3	f	1661874589
809	345f4489-f31b-484d-8e40-251a37e0b07c	57	1.0	1	77.106.87.147	Android	11	12345	1661953420	Xiaomi MI Note 3	f	1661867020
839	dd900ff1-3ad7-4bff-80ca-0c71fdbf7f17	57	1.0	1	77.106.87.147	Android	11	12345	1661957032	Xiaomi MI Note 3	f	1661870632
864	28613807-37fa-48a9-a13a-4c1138de03fb	57	\N	\N	77.106.84.80	unknown	unknown	\N	1662027838	\N	f	1661941438
824	3b2d9c80-374e-4e78-a9b4-1fd1a781b6fc	57	\N	\N	89.113.137.20	unknown	\N	\N	1661961590	\N	f	1661869988
869	21d9cbae-c2de-4faa-918c-92cd5e3a12a6	57	\N	\N	212.74.200.45	unknown	unknown	\N	1662043443	\N	f	1661957043
765	e9467fc3-297c-4991-bfd9-f1de983ee96b	57	1.0	1	77.106.82.22	Android	Android SDK: 28 (9)	084f1d333361c228	1661956729	Mi Note 3	f	1661835111
867	73acd9e0-55e4-4955-aef0-8c3b5f4d3183	57	\N	\N	212.74.200.45	unknown	\N	\N	1662032013	\N	f	1661941868
870	2be79aed-6bad-4401-bfcc-5ef5945b9aea	57	1.0	1	5.141.192.62	Android	Android SDK: 29 (10)	997b84700120c118	1662044383	Samsung Galaxy S10	f	1661957983
871	08add58b-1cc9-4ae3-b249-408bdaf00c06	57	\N	\N	212.74.200.45	unknown	unknown	\N	1662047783	\N	f	1661961383
873	1ae3d987-7683-46c0-a387-71f4e6932d84	57	\N	\N	188.191.173.149	unknown	\N	\N	1662086158	\N	f	1661962427
889	39e411de-ac77-46ab-bcb7-24fff6f670af	57	\N	\N	212.74.200.45	unknown	unknown	\N	1662087050	\N	f	1662000650
890	b5eabce6-49c4-43d0-8bd8-c4158619aee8	57	1.0	1	188.191.173.149	Android	11	12345	1662087125	Xiaomi MI Note 3	f	1662000725
903	11200210-f485-4e5e-a3ff-39449aa2c13d	57	\N	\N	188.191.173.149	unknown	unknown	\N	1662090769	\N	f	1662004369
906	913b0e1e-473a-4b6f-98ff-85161b7081bc	57	\N	\N	188.191.173.149	unknown	unknown	\N	1662091394	\N	f	1662004994
904	0bf2021e-4f17-4805-abf6-f00887ebcee6	57	1.0	1	188.191.173.149	Android	Android SDK: 28 (9)	084f1d333361c228	1662090814	Mi Note 3	f	1662004414
907	eae3a8d5-46c7-41e1-8eb0-d0c5496a71f3	57	\N	\N	212.74.200.45	unknown	\N	\N	1662133123	\N	f	1662005202
905	fb777c07-6540-4091-8d90-b5fb58904fbb	57	1.0	1	188.191.173.149	Android	11	12345	1662091066	Xiaomi MI Note 3	f	1662004666
1189	f0dd9799-7f6f-4a2b-bd60-e1e5245fcc54	57	\N	\N	85.117.117.90	unknown	\N	\N	1665519652	\N	f	1664914629
868	307ee459-3ac3-46a4-8140-40f7a0252f78	57	1.0	1	185.210.142.235	Android	Android SDK: 30 (11)	40ae7338ddef275e	1662043587	Redmi Note 8 Pro	f	1661952360
912	10201bcf-a06e-4b2f-a966-374415cafe21	57	\N	\N	188.191.173.149	unknown	\N	\N	1662178422	\N	f	1662046830
943	24a9928d-e573-4510-8100-2ae0b24f2aef	57	\N	\N	176.50.244.13	unknown	\N	\N	1665060478	\N	f	1664455495
929	a377f193-6589-43b7-b51f-38aa4ff9ed48	57	\N	\N	77.106.86.223	unknown	\N	\N	1663417137	\N	f	1663257497
926	438259a4-4ff2-41d4-9bb6-26a3e167f2c7	57	1.0	1	77.106.86.223	Android	Android SDK: 28 (9)	084f1d333361c228	1663340077	Mi Note 3	f	1663252258
921	86540e06-0c64-4e1f-938f-0388ee65d077	57	1.0	1	5.141.194.163	Android	Android SDK: 29 (10)	997b84700120c118	1663254314	Samsung Galaxy S10	f	1662996440
930	ae417852-5649-4d91-afe8-04741e231dd8	57	\N	\N	178.186.241.154	unknown	unknown	\N	1663431264	\N	f	1663344865
928	e142a72c-4acd-4f1d-8bae-27d1906019bc	57	1.0	1	77.106.86.223	Android	Android SDK: 28 (9)	084f1d333361c228	1663429297	Mi Note 3	f	1663254010
923	6739c6c6-7464-4ef0-bf2b-ec1cd688e279	57	\N	\N	77.106.86.223	unknown	\N	\N	1663255140	\N	f	1663168256
931	984e691c-8a78-47ae-894b-6347f3cf3919	57	\N	\N	77.106.86.223	unknown	\N	\N	1663469112	\N	f	1663345224
913	f9f02f37-11a6-4b35-a5c9-ede803512ce2	57	1.0	1	188.191.173.149	Android	Android SDK: 28 (9)	084f1d333361c228	1662265948	Mi Note 3	f	1662178859
914	f0870f22-b144-44d2-8c16-ad7211be816f	57	\N	\N	188.191.173.149	unknown	\N	\N	1662309809	\N	f	1662178932
933	b7a39c2d-d0e1-46df-beae-974dd06fdd0e	57	1.0	1	185.210.141.95	Android	Android SDK: 30 (11)	40ae7338ddef275e	1663828823	Redmi Note 8 Pro	f	1663742424
920	db7826be-f158-42fd-9836-66b320b0486f	57	\N	\N	77.106.86.223	unknown	\N	\N	1663075684	\N	f	1662987608
932	04d5aa28-4136-43eb-97d0-dcc3b1e49988	57	1.0	1	185.210.141.95	Android	Android SDK: 30 (11)	40ae7338ddef275e	1663828823	Redmi Note 8 Pro	f	1663742424
940	05342496-f581-4e8f-a8ba-bed688a5e586	57	\N	\N	212.74.200.62	unknown	\N	\N	1665024419	\N	f	1664378723
939	7d4512ae-3963-47d5-8dd5-74b7e1a1d590	57	\N	\N	212.74.200.62	unknown	\N	\N	1664983513	\N	f	1664377948
922	1d3a1407-d67f-4f44-8bde-ae361a537ec3	57	1.0	1	5.141.195.156	Android	Android SDK: 29 (10)	997b84700120c118	1663337202	Samsung Galaxy S10	f	1663167952
927	a2250cfc-fcb1-44fd-9add-09138fbdf740	57	1.0	1	77.106.86.223	Android	11	12345	1663339846	Xiaomi MI Note 3	f	1663253446
935	d61fa3a4-d40e-44d4-a613-eacb5ffe7cfe	934	1.0	1	213.87.224.45	Android	Android SDK: 30 (11)	b7460ae1a235194f	1664307645	Mi A3	f	1664221245
925	9d96ae53-71ea-45dc-af50-1da3f57d0c57	57	1.0	1	77.106.86.223	Android	11	12345	1663254803	Xiaomi MI Note 3	f	1663168403
1227	f68f4e1f-a53f-43f2-9227-af77a89aae58	57	\N	\N	95.57.229.111	unknown	\N	\N	1666367134	\N	f	1665757537
941	217641a6-8783-4a55-a0f4-134ba11daa42	57	\N	\N	195.189.71.243	unknown	\N	\N	1665051342	\N	f	1664445151
936	05ed2643-1abd-49db-88df-f48de97daac1	57	\N	\N	212.74.200.62	unknown	\N	\N	1664982719	\N	f	1664271098
944	5076e58b-f979-4ba1-8531-05fdbbb8d78f	57	\N	\N	212.74.200.62	unknown	\N	\N	1665068677	\N	f	1664461894
945	4c17deed-9ae9-467d-a549-04ce31ee3117	57	\N	\N	178.186.119.9	unknown	\N	\N	1665319498	\N	f	1664712746
1223	57a51fa8-940d-4943-9b38-ed5d475d139f	57	1.0	1	31.173.242.108	Android	Android SDK: 30 (11)	40ae7338ddef275e	1666227441	Redmi Note 8 Pro	f	1665568770
1226	c017a684-d8df-4ab4-99c3-d5efd752bf8d	57	\N	\N	212.74.200.59	unknown	unknown	\N	1666341035	\N	f	1665736235
1221	90b63a00-b9ae-4f6f-804d-18cf5d5748a5	57	1.0	1	5.141.192.28	Android	Android SDK: 29 (10)	997b84700120c118	1666087837	Samsung Galaxy S10	f	1665475008
942	480e828d-a601-498b-a904-c0741090a6a6	57	\N	\N	176.50.244.13	unknown	\N	\N	1665060216	\N	f	1664450093
1220	0a64f56f-d20a-402b-ae6f-40f09b11d497	57	\N	\N	212.74.200.59	unknown	\N	\N	1666029884	\N	f	1665409230
947	2cc8b3c4-be1b-47ca-84eb-fd15cfea2b17	57	\N	\N	95.59.93.10	unknown	\N	\N	1665487279	\N	f	1664812930
946	f6d529c2-8316-4209-9dec-0b32d2d25c8c	57	\N	\N	95.59.93.10	unknown	\N	\N	1665417260	\N	f	1664804138
1218	4cd9f746-b756-4314-a617-9c2afc919702	57	\N	\N	85.117.117.90	unknown	\N	\N	1665676562	\N	f	1664915343
937	372382f2-a969-486f-9679-a473b80d08a9	57	1.0	1	31.173.240.147	Android	Android SDK: 30 (11)	40ae7338ddef275e	1664884350	Redmi Note 8 Pro	f	1664279550
1188	d895b7a3-2253-4858-b7d0-2f571ab19752	57	\N	\N	2.135.31.195	unknown	\N	\N	1665519404	\N	f	1664882519
1225	a26236dd-85e4-4dba-b6ef-48f70ab26f05	57	1.0	1	128.204.66.8	Android	Android SDK: 30 (11)	40ae7338ddef275e	1666605970	Redmi Note 8 Pro	f	1665734269
1219	02a0f9fe-59e1-4864-b3b4-34419ad0923c	57	1.0	1	178.176.48.78	Android	Android SDK: 30 (11)	40ae7338ddef275e	1666173543	Redmi Note 8 Pro	f	1665068329
1224	7585d292-a231-44aa-ab06-9e3f49cb39ac	57	\N	\N	91.213.49.147	unknown	\N	\N	1666273269	\N	f	1665572449
1228	1cb98408-256d-498e-b3ad-2ff9f98f7405	57	1.0	1	128.204.66.2	Android	Android SDK: 30 (11)	40ae7338ddef275e	1666688285	Redmi Note 8 Pro	f	1666001200
938	3dde73d0-c041-406b-8d62-fee190a35c02	57	1.0	1	176.50.244.13	Android	Android SDK: 28 (9)	084f1d333361c228	1666019326	Mi Note 3	f	1664371902
1229	a9e98bcd-b552-493b-a6bf-64fd4faad200	57	\N	\N	212.74.200.61	unknown	\N	\N	1666672826	\N	f	1666067975
1230	40344f68-464b-4092-8edc-7ed7422e2672	57	\N	\N	212.74.200.61	unknown	\N	\N	1666682873	\N	f	1666068047
1231	200c8e93-c538-4796-ba31-f5f526d06601	57	1.0	1	213.234.222.117	Android	11	12345	1666678269	Xiaomi MI Note 3	f	1666073469
1232	f3c2e88f-3dd4-473f-971c-e679089a5c46	57	1.0	1	213.234.222.117	Android	11	12345	1666678340	Xiaomi MI Note 3	f	1666073540
1233	29a9a077-7359-4237-a966-1652c48bc942	57	1.0	1	213.234.222.117	Android	11	12345	1666678574	Xiaomi MI Note 3	f	1666073774
1222	d63c78bc-0319-4b44-8f9e-6bfe737db2ac	57	1.0	1	5.141.192.28	Android	Android SDK: 29 (10)	997b84700120c118	1666942451	Samsung Galaxy S10	f	1665483104
1512	d8dd2d2f-76d5-4bca-8e6f-028ef76d6adb	57	\N	\N	5.63.122.98	unknown	\N	\N	1666983453	\N	f	1666359226
1517	aba52c61-8312-4918-a5c9-ab8ec2c71686	57	1.0	1	5.166.120.8	Android	Android SDK: 28 (9)	084f1d333361c228	1668573501	Mi Note 3	f	1667968701
1513	1801d40d-0dd2-4c3b-9464-2cabc2b263b4	57	\N	\N	212.74.200.55	unknown	unknown	\N	1667276404	\N	f	1666671604
1520	d063d18e-d4a2-47c7-8474-3d28846f9997	57	\N	\N	77.106.72.199	unknown	\N	\N	1668790673	\N	f	1668149925
1610	b07efe83-9630-43d7-86e1-a328caae9800	57	1.0	1	128.204.66.111	Android	Android SDK: 30 (11)	40ae7338ddef275e	1669700066	Redmi Note 8 Pro	t	1669095266
1514	86ec9e2b-465b-44d6-9022-bd93bd6e5e3b	57	\N	\N	212.74.200.55	unknown	unknown	\N	1667882673	\N	f	1667277873
1515	f8047a62-5f7c-4dfe-8420-cd20b21ae16e	57	\N	\N	95.82.118.166	unknown	\N	\N	1668423705	\N	f	1667289946
1511	d905229a-6624-4f22-bece-4195ae344a66	57	1.0	1	188.170.247.29	Android	Android SDK: 30 (11)	40ae7338ddef275e	1667882718	Redmi Note 8 Pro	f	1666083511
1516	0b49e75b-6872-4f91-accb-00136d7e44ad	57	\N	\N	77.106.72.199	unknown	unknown	\N	1668423723	\N	f	1667818924
1518	c5ecf754-67a3-41f4-8092-fc21293a7f4b	57	\N	\N	5.166.120.8	unknown	\N	\N	1668583600	\N	f	1667969567
1519	fbe4a53d-dd96-44fe-ab39-391375642fd7	57	\N	\N	77.106.72.199	unknown	\N	\N	1668753904	\N	f	1668097534
\.


--
-- Data for Name: work_ent; Type: TABLE DATA; Schema: public; Owner: becapp_admin
--

COPY public.work_ent (id, place, "position", id_block, ordinal_number) FROM stdin;
1	ООО "BeCApp"	HR-специалист	5	30
12	ООО "BeCApp"	HR-специалист	26	30
13	ООО "BeCApp"	HR-специалист	30	30
14	ООО "BeCApp"	HR-специалист	34	30
15	ООО "Типограф"	Менеждер по работе с клиентами	39	1
116	pla ce	pos	114	1
570	BeCApp llc	Дворник	568	1
604	BeCApp LLC	Backend developer	602	0
663	BeCApp LLC	Big boss	661	1
669	Место работы	Должность	667	0
706	Work	Place	705	0
715	Моя работа	Моя должность	714	0
735	Work	Position	732	1
901	Work	Place	894	6
910	Ееее	Ееее	909	0
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: becapp_admin
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1610, true);




--
-- PostgreSQL database dump complete
--

