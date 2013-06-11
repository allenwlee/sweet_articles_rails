--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category character varying(255),
    tags character varying(255)
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	impedit amet qui	Sed nihil qui itaque quibusdam et quia. Quia nobis consequatur dolor in qui fuga aperiam. Eveniet iusto voluptatum debitis fugit maiores minima id. Vel exercitationem officiis. Quaerat voluptas et minus aut consequatur.	articles/6/11/2013/impedit-amet-qui	programming	
2	fuga et voluptas	Odio asperiores illum quas nobis et non sunt. Rerum quam deserunt non quos molestiae repellat quia. Dicta culpa est officia est eligendi et eaque. Blanditiis dignissimos aut asperiores rerum veniam nobis.	articles/6/11/2013/fuga-et-voluptas	programming	widget
3	officiis quo eaque	Et adipisci debitis nulla. Tempore cumque magni eum est quaerat possimus. Qui numquam modi dolor aut labore sit. Aut molestiae eveniet.	articles/6/11/2013/officiis-quo-eaque	sport	random-tags, jquery, hate
4	nobis atque molestiae	Quaerat velit sint sed ab aut. Aut ea neque ipsa ad. Esse tempora ut nihil expedita architecto. Consequuntur velit autem dignissimos ipsum quia molestiae. Provident eum impedit itaque reprehenderit illum qui.	articles/6/11/2013/nobis-atque-molestiae	Sports	love, widget
5	aut sit itaque	Sequi incidunt neque reiciendis voluptate non officiis. Dolorem vel assumenda explicabo molestiae voluptates nisi. Magni quo illum reiciendis culpa quo aut officia. Hic consectetur ea quibusdam voluptatem temporibus aut.	articles/6/11/2013/aut-sit-itaque	sport	
6	magnam nulla qui	Ex voluptate ut sequi ea commodi eaque. Iusto sint nisi iure ipsum veritatis. Corrupti temporibus eum. Debitis eum dignissimos deserunt consequatur. Enim ut eveniet odio.	articles/6/11/2013/magnam-nulla-qui	computer world	widget, random-tags
7	ut dolorem ipsa	Quis magnam placeat quam. Aliquid error sit sed optio. Magnam libero qui hic voluptatem. Maxime molestiae sed eius laboriosam aliquid velit officia. Iusto fugit consequatur ea.	articles/6/11/2013/ut-dolorem-ipsa	programming	medicine, hate, ruby
8	sequi beatae explicabo	Unde cumque et aut vitae iste quae tempora. Voluptas molestias possimus. Autem dolorum eum quos ut odit.	articles/6/11/2013/sequi-beatae-explicabo	business	music
9	deserunt facere nostrum	Odio eum quo aperiam. Eaque natus maxime quidem nisi earum animi aperiam. Consequatur totam eum voluptatem.	articles/6/11/2013/deserunt-facere-nostrum	Sports	random, art, jquery
10	blanditiis tenetur est	Mollitia aut qui rerum. Aliquam eum temporibus omnis iure repellendus. Reprehenderit nostrum adipisci qui. Minima et cumque minus.	articles/6/11/2013/blanditiis-tenetur-est	HEALTH	computer, art
11	atque aut qui	Repellendus corrupti optio accusantium dolorum unde dolor et. Sit minima itaque unde. Autem vel amet odit modi quis. Dolores corrupti magni sunt rerum.	articles/6/11/2013/atque-aut-qui	business	random-tags
12	saepe in doloribus	Itaque est quisquam quis nihil suscipit illo ut. Qui ea iure aut labore sit. Cupiditate odit ipsum enim est nemo qui id. Delectus vitae provident et vero excepturi omnis repellendus.	articles/6/11/2013/saepe-in-doloribus	business	
13	cumque ad commodi	Ut corrupti harum id explicabo vel maxime eum. Consequatur sapiente quo doloribus magni consequuntur asperiores. Doloremque laborum rerum.	articles/6/11/2013/cumque-ad-commodi	sport	ruby, computer
14	id et doloremque	Consequatur autem aut aut quasi ut magni. Velit facilis porro. Ut quam voluptatibus. Pariatur voluptatibus aut maiores. Quibusdam optio aspernatur.	articles/6/11/2013/id-et-doloremque	computer-world	ruby, hate
15	qui tempora sint	Voluptatem enim et fugiat et repudiandae. Perspiciatis dolores a voluptatum velit nemo. Praesentium error eligendi non fugiat sint. Laudantium inventore quibusdam aliquid est suscipit illo occaecati.	articles/6/11/2013/qui-tempora-sint	HEALTH	
16	vitae ut magni	Et architecto consequuntur impedit eos. Voluptatum dignissimos cum similique commodi consequuntur aut. Et id ipsum officiis. Architecto aliquam quas qui. Nostrum quaerat quasi consequatur ea et excepturi provident.	articles/6/11/2013/vitae-ut-magni	Business	cloud
17	quia id fugit	Velit rerum enim sunt praesentium maxime modi beatae. Dolorem voluptas consectetur minima occaecati et. Consectetur ut distinctio tenetur. Aut porro quia nisi excepturi.	articles/6/11/2013/quia-id-fugit	computer world	
18	debitis natus aut	Dicta consequatur sunt asperiores qui. Perferendis sed consequatur. Unde dolores harum et inventore. Deserunt saepe officiis. Beatae id ea corporis.	articles/6/11/2013/debitis-natus-aut	computer-world	
19	voluptas adipisci id	Ut reprehenderit quia consequatur eaque nemo. Harum laudantium sit sint non id vel. Maiores dignissimos rerum excepturi culpa tempore cum ut. Iure inventore cum non doloribus laborum quia. Sed cum omnis hic occaecati cumque neque.	articles/6/11/2013/voluptas-adipisci-id	computer world	medicine
20	in nulla quis	Reiciendis porro quis et. Voluptatem vel omnis. Corporis illum occaecati sed.	articles/6/11/2013/in-nulla-quis	HEALTH	rails, computer, medicine
21	voluptatibus impedit magni	Architecto aliquam nostrum ab. Odio repellat veritatis animi maxime. Officiis deserunt sit est soluta corrupti et id. Rem aperiam quaerat iusto.	articles/6/11/2013/voluptatibus-impedit-magni	sport	
22	fugit ad consequatur	Quasi dolore cumque aspernatur dolor. Suscipit sapiente facere. Quia voluptatem eveniet quo inventore est et. Repellat tempora doloribus doloremque sint. Dolores sint dolor nulla.	articles/6/11/2013/fugit-ad-consequatur	programming	music
23	nulla sint exercitationem	Voluptatem voluptatem voluptatibus voluptas fugiat. Dicta impedit dolore alias voluptatem. At ullam ut dolor atque voluptas. Dolorem sapiente suscipit autem unde voluptates.	articles/6/11/2013/nulla-sint-exercitationem	business	cloud
24	et dolores earum	Alias qui ut labore aut porro voluptatem. Consequatur doloribus ipsum autem. Omnis dignissimos minus nihil recusandae quos. Dolor voluptatum corporis odio non quaerat numquam. Illo tempora et.	articles/6/11/2013/et-dolores-earum	programming	random-tags, cloud
25	et tempore aut	Delectus id minima. Consequuntur et sed veritatis hic voluptates. Tenetur rerum aut sed quasi nemo quisquam. Aut cupiditate voluptatem sint rerum.	articles/6/11/2013/et-tempore-aut	sport	ruby, cloud, jquery
26	natus eum doloremque	Et voluptatum illo eveniet sit libero aut non. Quia qui eligendi et reiciendis aut omnis. Tempore quasi repellat occaecati. Repellendus enim ut animi. Accusantium porro harum provident non quis reprehenderit magni.	articles/6/11/2013/natus-eum-doloremque	Sports	
27	nihil accusantium eligendi	Quia sed aliquid consequatur. Facere quo aut. Non illo voluptatibus consequatur.	articles/6/11/2013/nihil-accusantium-eligendi	HEALTH	computer
28	deserunt et inventore	Earum unde sit. Ducimus qui quia laudantium illum numquam perferendis sequi. Nesciunt commodi distinctio. Omnis molestiae eum. Aut aut repellendus aliquid.	articles/6/11/2013/deserunt-et-inventore	computer-world	
29	assumenda nesciunt consequatur	Voluptatem dolorem facere. Voluptatibus iusto nulla quo facere. Accusamus enim tenetur sequi asperiores ut. Officia id molestiae dolorem minima sunt quia accusantium.	articles/6/11/2013/assumenda-nesciunt-consequatur	Business	widget
30	eos expedita a	Minus doloremque nostrum. Voluptatibus quia et totam. Ex odio voluptate aspernatur et vel velit voluptas.	articles/6/11/2013/eos-expedita-a	HEALTH	
31	ut et voluptatibus	Est optio qui ipsum. Omnis accusantium sunt neque et. Corporis dolore provident molestias. Et nemo quasi harum ducimus numquam mollitia sequi. Quisquam quam eveniet quo veniam excepturi quae recusandae.	articles/6/11/2013/ut-et-voluptatibus	computer world	love
32	temporibus dolor fugit	Et repellat voluptate ducimus voluptatem. Ut dolore eligendi quia ea quia. Architecto est voluptate repellendus qui voluptatibus enim. Hic laborum repellendus earum cumque reiciendis ut. Vel tenetur quibusdam corporis soluta ea.	articles/6/11/2013/temporibus-dolor-fugit	computer-world	art
33	hic nulla quia	Impedit nobis sint doloremque sit molestiae culpa. Molestiae ab sit voluptatibus vel. Ab quaerat molestias harum numquam vel occaecati. Placeat consequatur corrupti exercitationem facere ea et.	articles/6/11/2013/hic-nulla-quia	programming	love, ruby, rails
34	architecto dignissimos possimus	Quibusdam ut id omnis omnis. Voluptatem unde eveniet id cum. Quae aut minima asperiores laborum. Qui consectetur expedita doloremque. Cupiditate autem provident sit rem officia natus.	articles/6/11/2013/architecto-dignissimos-possimus	computer-world	cloud, jquery
35	porro deleniti illo	Nostrum nihil perspiciatis consequatur qui. Sapiente velit ex ut cum. Facere nihil itaque alias corrupti est.	articles/6/11/2013/porro-deleniti-illo	business	art
36	pariatur quo qui	Autem aut numquam ut vel. Nemo fugiat commodi. Molestiae quam maiores consequatur officiis quia pariatur.	articles/6/11/2013/pariatur-quo-qui	programming	hate, cloud, medicine
37	optio magnam ut	Rem fuga veritatis rerum. Eum unde dolorem tempora illo tempore sit. Omnis qui voluptatem quo non et minus.	articles/6/11/2013/optio-magnam-ut	computer world	
38	blanditiis porro qui	Quibusdam culpa nihil nostrum. Minus sit dicta. Sit officiis sit.	articles/6/11/2013/blanditiis-porro-qui	sport	
39	quisquam aut molestias	Consectetur perspiciatis itaque soluta molestiae modi asperiores praesentium. Molestiae perferendis non doloremque exercitationem hic. Qui earum illum quo non. Quasi quos incidunt rerum tempore. Modi perferendis quia.	articles/6/11/2013/quisquam-aut-molestias	sport	
40	eligendi enim enim	Voluptatem repellendus eveniet delectus et. Maxime cupiditate est rerum voluptas. In tempora corporis et ea quas a. Magni quasi quia omnis omnis alias. Corporis impedit odit cupiditate sint facilis aut aut.	articles/6/11/2013/eligendi-enim-enim	business	
41	possimus blanditiis consequatur	Ea ab possimus saepe necessitatibus quia ratione. Laudantium consequatur iusto veniam quod magni. Corporis et rerum quia.	articles/6/11/2013/possimus-blanditiis-consequatur	Sports	ruby, random-tags
42	est id iste	Ipsa est qui aut blanditiis libero quaerat porro. Ea pariatur maxime. Ut qui natus.	articles/6/11/2013/est-id-iste	sport	love, cloud
43	cupiditate optio eveniet	Ad tenetur necessitatibus alias corporis numquam praesentium nisi. Velit reprehenderit quas quibusdam voluptatem quod accusantium inventore. Laborum non reiciendis rem eaque. Voluptates dolore cumque. Sit incidunt et molestiae.	articles/6/11/2013/cupiditate-optio-eveniet	Business	
44	voluptas quasi error	Quia consectetur voluptatem facere eligendi corporis quae ut. Eos cumque expedita et ea dolores iure quo. Suscipit sint est. Nesciunt natus est esse possimus beatae amet. Nemo quas id cupiditate ducimus.	articles/6/11/2013/voluptas-quasi-error	computer-world	ruby, medicine, rails
45	laboriosam non cum	Natus possimus cumque reiciendis tempora enim voluptas. Quia laborum libero ut. Tenetur qui error et accusantium quo necessitatibus. Temporibus nemo qui non sed odio id aperiam. Mollitia id voluptatum sed excepturi dolorem tempora est.	articles/6/11/2013/laboriosam-non-cum	Business	random, random-tags
46	numquam temporibus animi	Ut sed repudiandae sunt quia ut molestias. Blanditiis est ratione consequatur. Libero eius maiores et rerum in repellat. Atque dolor dolores pariatur nihil nostrum assumenda. Ut neque est ut fugit sit voluptatem explicabo.	articles/6/11/2013/numquam-temporibus-animi	Sports	random, art
47	repudiandae inventore dolore	Dolore et minima sed beatae. Laudantium officiis architecto sit ut aliquid et fuga. Molestiae quidem nulla rerum nihil quam atque.	articles/6/11/2013/repudiandae-inventore-dolore	programming	music, computer
48	in doloribus et	Nihil exercitationem nostrum et. Rerum ad assumenda aut illo. Aut consectetur aliquid a id rerum ea suscipit. Occaecati ducimus ut non magni.	articles/6/11/2013/in-doloribus-et	Business	ruby, cloud, love
49	quia officia itaque	Illo voluptatum magnam eum placeat. Facilis facere culpa deleniti dolore repudiandae rerum. Est quis quis autem sed perferendis.	articles/6/11/2013/quia-officia-itaque	computer-world	random
50	corrupti cum ea	Iure omnis numquam odio sed expedita quia. Culpa ut perspiciatis dolorum neque sit. Enim consequatur est voluptas sunt incidunt molestiae.	articles/6/11/2013/corrupti-cum-ea	sport	music
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

