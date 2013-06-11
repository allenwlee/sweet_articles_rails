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
1	commodi ut enim	Quis vel natus iure deleniti aut. Esse qui nihil. Deleniti incidunt odit. Exercitationem voluptatum nemo eius rem similique possimus consequatur.	articles/4/9/2013/commodi-ut-enim	computer-world	
2	natus maiores possimus	Ut quos debitis. Saepe ducimus omnis. Possimus sunt in animi unde repellendus non consequatur. Dolor alias tenetur et aliquid.	articles/4/9/2013/natus-maiores-possimus	business	jquery, tech
3	ipsam voluptatibus quae	Qui aut dicta corrupti. Labore dolorem deleniti praesentium veniam quibusdam. Mollitia voluptas id voluptatem soluta adipisci eum. Aut voluptate est.	articles/4/9/2013/ipsam-voluptatibus-quae	programming	hate, love, art
4	ut consequuntur et	Nulla quia numquam aliquam molestiae. Ipsam quae at dolorem nulla omnis exercitationem. Maiores laboriosam doloribus. Reprehenderit incidunt adipisci provident explicabo. Cumque nulla nihil sint culpa.	articles/4/9/2013/ut-consequuntur-et	Sports	rails, love
5	dolor ratione nobis	Aut doloribus aliquam veritatis impedit voluptas. Unde recusandae voluptatem aut necessitatibus. Nobis omnis quod.	articles/4/9/2013/dolor-ratione-nobis	sport	
6	ipsa adipisci et	Omnis non est quae. Sed assumenda perferendis ratione temporibus. Ea et dolor aut et.	articles/4/9/2013/ipsa-adipisci-et	Business	cloud, random-tags, medicine
7	ipsum voluptate tempore	Et soluta et est. Voluptatum qui minus quo ipsam modi. Laborum quo rerum et non voluptatibus laboriosam.	articles/4/9/2013/ipsum-voluptate-tempore	business	medicine, random-tags
8	ullam aut qui	Aut nemo vel aut error laudantium. Officia nam consectetur molestias. Perferendis voluptatem reprehenderit dolor quo.	articles/4/9/2013/ullam-aut-qui	computer-world	hate, widget, random
9	pariatur in provident	Commodi qui est impedit dicta. Atque qui quo consequatur magni quas in. Exercitationem quo reiciendis consectetur unde cupiditate autem.	articles/4/9/2013/pariatur-in-provident	computer-world	hate, computer, cloud
10	incidunt illum voluptatem	Porro ipsam minima distinctio laborum in beatae. Ullam et aspernatur non odit labore. Aut earum sit dolor praesentium qui iste fugiat. Quos voluptatem sed voluptatibus. Qui et pariatur itaque mollitia quas.	articles/4/9/2013/incidunt-illum-voluptatem	computer world	random, music, rails
11	laborum nulla illo	Placeat a iusto voluptatem. Maiores veritatis iste voluptatem eveniet officia est. Ipsum et ut nisi alias recusandae quod dolor.	articles/4/9/2013/laborum-nulla-illo	Business	medicine
12	exercitationem soluta facilis	Nihil assumenda distinctio. Animi non veritatis corrupti. Tempore et commodi consequuntur nihil dolores. Consequatur ut neque quo deleniti commodi aut.	articles/4/9/2013/exercitationem-soluta-facilis	HEALTH	cloud
13	tenetur voluptas laborum	Libero necessitatibus harum eos voluptas nobis deleniti. Facere dolorum repellendus ab aut ea. Fugit explicabo nesciunt enim numquam et.	articles/4/9/2013/tenetur-voluptas-laborum	programming	widget
14	animi enim eum	Blanditiis suscipit harum excepturi. Accusamus dicta quo nulla et. Ut ratione iusto quos quo quasi consectetur. Et dolor autem. Dolorum iure qui totam quos enim iste perspiciatis.	articles/4/9/2013/animi-enim-eum	Sports	jquery, random-tags, cloud
15	totam laudantium quis	Officiis reiciendis iste rerum ut aperiam. Laudantium et ab labore ipsum. Rerum doloribus est quod. Libero sint sequi.	articles/4/9/2013/totam-laudantium-quis	computer world	
16	corporis qui quos	In aut minus nulla. Et in eum amet sit et atque. Esse libero distinctio. Odio neque consequatur quia in nemo dolor.	articles/4/9/2013/corporis-qui-quos	business	
17	facere labore ab	Ut repudiandae laboriosam provident rerum velit minima. Porro et doloribus. Iste et est a maxime quam dolor.	articles/4/9/2013/facere-labore-ab	HEALTH	hate
18	ut tenetur ad	Est beatae nisi dolorum aliquam eos dolorem cum. Voluptas aut accusantium. Repudiandae porro voluptas eos rerum quas.	articles/4/9/2013/ut-tenetur-ad	computer world	love, jquery, cloud
19	ut beatae laborum	Blanditiis sit explicabo. Recusandae aut ipsam esse. Labore dolorem enim. Omnis a eum rerum molestias qui quia. Voluptas est placeat molestiae optio.	articles/4/9/2013/ut-beatae-laborum	computer world	
20	distinctio quis natus	Tenetur est repudiandae amet a officiis. Veritatis debitis quod. Possimus nihil et vero cumque eum.	articles/4/9/2013/distinctio-quis-natus	Business	
21	perferendis soluta asperiores	Iste consequatur debitis. Quo atque repellendus odit est nesciunt neque. Enim sit voluptatem ut voluptas nam.	articles/4/9/2013/perferendis-soluta-asperiores	programming	
22	optio fugit sed	Dolor quidem totam rerum nihil. Quibusdam quod qui odit animi. Officia tempora qui placeat quis. Aperiam maxime quam quis excepturi dolores nihil.	articles/4/9/2013/optio-fugit-sed	Sports	rails, widget
23	voluptatum molestiae et	Deserunt necessitatibus voluptatum similique ut. Ea ullam rerum facere maxime repellendus soluta illo. Non eaque voluptatem officia quos.	articles/4/9/2013/voluptatum-molestiae-et	computer world	
24	corporis nemo harum	Fugiat magni ex eos et pariatur aut labore. Culpa velit fugiat explicabo et aut nihil consequatur. Quas id odio quam atque. Vero magnam dolores in excepturi est id exercitationem. Tempore in quia harum laborum error non unde.	articles/4/9/2013/corporis-nemo-harum	computer-world	art, ruby, random-tags
25	culpa quia voluptatum	Est doloribus ex perferendis reprehenderit omnis quod. Aut optio quod omnis ut. Qui sed doloremque eveniet deleniti. Enim hic rerum libero quo debitis. Repudiandae perferendis accusantium dignissimos magnam aliquid autem qui.	articles/4/9/2013/culpa-quia-voluptatum	computer-world	cloud, art, random
26	consequatur velit laboriosam	Reiciendis quod vel voluptate ut iure eum cupiditate. Tempore ex delectus occaecati hic. Ducimus sequi est. Dolorem sunt quia temporibus. Dolores ipsam quo maiores reiciendis.	articles/4/9/2013/consequatur-velit-laboriosam	computer world	
27	esse iste eligendi	Laudantium necessitatibus cupiditate. Est deserunt exercitationem iusto veritatis dolor qui. Ipsam incidunt ut aspernatur vel eaque voluptatum eligendi.	articles/4/9/2013/esse-iste-eligendi	Sports	widget
28	placeat delectus magnam	Voluptates quas delectus aut quia provident vel et. Earum fugiat quasi consequatur porro ea quam. Sed rerum ea omnis in autem. Magni deleniti dolores sapiente aperiam natus omnis ut. Voluptatum harum aspernatur perferendis rem.	articles/4/9/2013/placeat-delectus-magnam	computer-world	random-tags, random, rails
29	nisi et omnis	Consectetur dolor iste. Labore animi omnis eos. Consectetur eum qui excepturi qui suscipit et molestiae. Qui et neque corporis excepturi unde. Voluptas vel non dolor repellat ut.	articles/4/9/2013/nisi-et-omnis	Business	random
30	consequuntur ut iusto	Laudantium distinctio ipsum quo. Alias saepe quis eum porro. Aliquid rem dolores et. Numquam veritatis et nihil. Est quae nihil ipsam beatae.	articles/4/9/2013/consequuntur-ut-iusto	programming	random-tags, music
31	eum eos nam	Cumque iusto veritatis maxime vero quibusdam quo animi. Et asperiores veniam. Ut voluptatem tempore in dolores aliquid omnis. Non nisi consectetur id eos ipsa.	articles/4/9/2013/eum-eos-nam	business	computer, tech
32	laudantium ad ratione	Sed vel ut. Tempora dicta voluptatem id. Ab ullam aut excepturi sed. Velit voluptatibus voluptatum eos unde.	articles/4/9/2013/laudantium-ad-ratione	Business	widget
33	voluptas blanditiis nesciunt	Dignissimos id laudantium earum sint temporibus. Nam dolores numquam. Expedita tenetur molestiae dolor labore.	articles/4/9/2013/voluptas-blanditiis-nesciunt	Sports	computer
34	officiis vitae quis	Laudantium sapiente fuga enim dolor quia. Veritatis dolorem sit necessitatibus praesentium sit modi. Alias assumenda ut.	articles/4/9/2013/officiis-vitae-quis	Sports	widget, computer, art
35	ratione qui ut	Est odit iure quia. In quis labore non excepturi. Sequi repudiandae ratione. Fugit repudiandae a mollitia doloremque animi.	articles/4/9/2013/ratione-qui-ut	HEALTH	
36	commodi quisquam accusamus	Qui ratione consequuntur odio debitis rem asperiores. Et odio occaecati ab. Nam tempora veritatis repudiandae. Explicabo in ad eligendi culpa.	articles/4/9/2013/commodi-quisquam-accusamus	HEALTH	
37	sint veritatis officia	Odit nulla natus officiis. Magni fugiat sit. Temporibus officiis soluta fugit sequi. Aspernatur officia vero occaecati ratione nam provident soluta. Iusto non voluptas placeat ut.	articles/4/9/2013/sint-veritatis-officia	business	cloud, widget
38	aut ea non	Quod sit eius voluptas. Ut architecto in aut fugit et. Adipisci eligendi sunt.	articles/4/9/2013/aut-ea-non	sport	tech, art, widget
39	nostrum fuga cumque	Facilis est minus ut. Et velit distinctio accusamus sit et ut. Ut voluptatem molestiae cum et. Rem molestiae quia non. Quisquam temporibus eaque.	articles/4/9/2013/nostrum-fuga-cumque	programming	music, cloud, jquery
40	quidem voluptatem quia	Soluta vel ad exercitationem eos beatae dolor dicta. Vel saepe voluptas. Mollitia id accusantium eligendi odit vel.	articles/4/9/2013/quidem-voluptatem-quia	HEALTH	random-tags, love, widget
41	a saepe ipsum	Dolor voluptatibus corporis doloribus amet mollitia itaque. Natus et quisquam tempora numquam qui. Maxime voluptas ut nulla. Sapiente nam reprehenderit similique maiores.	articles/4/9/2013/a-saepe-ipsum	programming	love
42	nemo aut optio	Nisi dolorum sit est et laborum magnam. Reiciendis repellat quam accusantium numquam ut dolorem molestiae. Dolorem ad voluptas omnis accusamus. Fugit consectetur dolorem mollitia. Ut eos molestiae.	articles/4/9/2013/nemo-aut-optio	computer world	art, hate, rails
43	dolore qui laudantium	Ut id iure. Minus et sit eveniet suscipit qui neque excepturi. Doloribus cumque labore est qui ea. Architecto assumenda dolor.	articles/4/9/2013/dolore-qui-laudantium	programming	rails, love
44	voluptatem et veniam	Et magnam quia rerum odio qui. Laudantium omnis mollitia hic veritatis aut. A iure laudantium expedita possimus consequatur consequatur. Occaecati deserunt quos temporibus quasi. Eum quo sed ipsa et minima qui quidem.	articles/4/9/2013/voluptatem-et-veniam	computer world	random, music
45	at rerum et	Qui eos fuga ut minus quo distinctio. Hic exercitationem voluptatem totam veniam cumque voluptate. Id quia natus ut eaque pariatur dolorum rerum. Aliquid cupiditate enim voluptas et optio explicabo. Est dolor ut quos mollitia voluptatem eos.	articles/4/9/2013/at-rerum-et	HEALTH	tech, random-tags, cloud
46	et assumenda placeat	Consectetur voluptates est beatae. Magni nulla quia ullam est commodi. Autem aut accusamus sunt veritatis at.	articles/4/9/2013/et-assumenda-placeat	Business	
47	commodi velit et	Ullam libero qui ut sapiente delectus veritatis. Et quis praesentium. Autem odit error cumque laudantium officiis consequuntur qui.	articles/4/9/2013/commodi-velit-et	Business	hate
48	dolorem labore architecto	Enim dolorem voluptatem velit culpa. Atque repellendus velit quia. Blanditiis rem consequatur. Consequatur voluptatum sed illo est animi. Deleniti ut sequi similique enim ut voluptas laudantium.	articles/4/9/2013/dolorem-labore-architecto	sport	medicine
49	quis ipsa consequatur	Odio pariatur aperiam dolorem exercitationem voluptate. Dignissimos atque repudiandae doloribus. Blanditiis ea delectus reprehenderit nulla vero impedit sed. Tempora iste saepe non fugit cumque qui.	articles/4/9/2013/quis-ipsa-consequatur	computer world	widget, random, tech
50	rerum aut vero	Repudiandae sed ducimus omnis minima. Adipisci odio fugit quia. Quod asperiores voluptates ex qui quis numquam mollitia.	articles/4/9/2013/rerum-aut-vero	Sports	
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

