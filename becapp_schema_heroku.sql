PGDMP     -                
    z            d6n14ci2k9h892     13.9 (Ubuntu 13.9-1.pgdg20.04+1)    14.1 X    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16556    d6n14ci2k9h892    DATABASE     c   CREATE DATABASE d6n14ci2k9h892 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE d6n14ci2k9h892;
                cwdkethxjqdxez    false            %           0    0    DATABASE d6n14ci2k9h892    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d6n14ci2k9h892 FROM PUBLIC;
                   cwdkethxjqdxez    false    4132            &           0    0    d6n14ci2k9h892    DATABASE PROPERTIES     R   ALTER DATABASE d6n14ci2k9h892 SET search_path TO '$user', 'public', 'heroku_ext';
                     cwdkethxjqdxez    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                cwdkethxjqdxez    false            '           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   cwdkethxjqdxez    false    6            (           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cwdkethxjqdxez;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   cwdkethxjqdxez    false    6            )           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO cwdkethxjqdxez;
                   postgres    false    708            �            1259    5706854    address_ent    TABLE     W  CREATE TABLE public.address_ent (
    id bigint NOT NULL,
    additional_text character varying(255),
    description character varying(255),
    postcode character varying(255),
    text_address character varying(255),
    id_block bigint NOT NULL,
    ordinal_number integer,
    latitude double precision,
    longitude double precision
);
    DROP TABLE public.address_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706865 	   block_ent    TABLE     �   CREATE TABLE public.block_ent (
    id bigint NOT NULL,
    name character varying(255),
    id_profile bigint NOT NULL,
    ordinal_number integer
);
    DROP TABLE public.block_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5901090    contact_ent    TABLE     (  CREATE TABLE public.contact_ent (
    id bigint NOT NULL,
    archive boolean,
    avatar character varying(255),
    favourite boolean,
    name character varying(255),
    note character varying(255),
    id_user bigint NOT NULL,
    reference uuid,
    date_trash bigint,
    trash boolean
);
    DROP TABLE public.contact_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5901083    contact_profile    TABLE     h   CREATE TABLE public.contact_profile (
    id_contact bigint NOT NULL,
    id_profile bigint NOT NULL
);
 #   DROP TABLE public.contact_profile;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706873    custom_field_ent    TABLE     �   CREATE TABLE public.custom_field_ent (
    id bigint NOT NULL,
    name character varying(255),
    value character varying(255),
    id_block bigint NOT NULL,
    id_type bigint NOT NULL,
    ordinal_number integer
);
 $   DROP TABLE public.custom_field_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706884 	   email_ent    TABLE     �   CREATE TABLE public.email_ent (
    id bigint NOT NULL,
    description character varying(255),
    email character varying(255),
    priority boolean,
    id_block bigint NOT NULL,
    ordinal_number integer
);
    DROP TABLE public.email_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5971953    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          cwdkethxjqdxez    false    6            �            1259    5706895    main_info_ent    TABLE       CREATE TABLE public.main_info_ent (
    id bigint NOT NULL,
    avatar character varying(255),
    birthday character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    nickname character varying(255),
    id_profile bigint NOT NULL
);
 !   DROP TABLE public.main_info_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706906 	   phone_ent    TABLE       CREATE TABLE public.phone_ent (
    id bigint NOT NULL,
    description character varying(255),
    number character varying(255),
    priority boolean,
    id_block bigint NOT NULL,
    ordinal_number integer,
    time_end integer,
    time_start integer
);
    DROP TABLE public.phone_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706917    profile_ent    TABLE       CREATE TABLE public.profile_ent (
    id bigint NOT NULL,
    allow_import boolean,
    allow_share boolean,
    name character varying(255),
    note character varying(255),
    id_user bigint,
    local boolean,
    reference uuid,
    qr_code character varying(255)
);
    DROP TABLE public.profile_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    6673535    recent_profile_ent    TABLE     �   CREATE TABLE public.recent_profile_ent (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    id_user bigint NOT NULL
);
 &   DROP TABLE public.recent_profile_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706928    reference_ent    TABLE     7  CREATE TABLE public.reference_ent (
    id bigint NOT NULL,
    description character varying(255),
    icon integer,
    priority boolean,
    text character varying(255),
    url character varying(255),
    id_block bigint NOT NULL,
    ordinal_number integer,
    time_end integer,
    time_start integer
);
 !   DROP TABLE public.reference_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    1533199    role_ent    TABLE     Y   CREATE TABLE public.role_ent (
    id bigint NOT NULL,
    name character varying(20)
);
    DROP TABLE public.role_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706939    test1ent    TABLE     �   CREATE TABLE public.test1ent (
    id bigint NOT NULL,
    name character varying(255),
    "time" time without time zone,
    time_z time without time zone
);
    DROP TABLE public.test1ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706947    test2ent    TABLE     w   CREATE TABLE public.test2ent (
    id bigint NOT NULL,
    key character varying(255),
    test1_id bigint NOT NULL
);
    DROP TABLE public.test2ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706955    type_custom_ent    TABLE     a   CREATE TABLE public.type_custom_ent (
    id bigint NOT NULL,
    name character varying(255)
);
 #   DROP TABLE public.type_custom_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    1533207    user_ent    TABLE     �  CREATE TABLE public.user_ent (
    id bigint NOT NULL,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    role_id bigint,
    confirmed boolean,
    confirmed_code character varying(255),
    time_send_code bigint,
    count_change_pass integer,
    state_change_pass integer,
    old_email character varying(255),
    time_zone integer
);
    DROP TABLE public.user_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    7038637    user_session_ent    TABLE     �  CREATE TABLE public.user_session_ent (
    id bigint NOT NULL,
    refresh_token character varying(255),
    id_user bigint NOT NULL,
    application character varying(255),
    device_type integer,
    ip character varying(255),
    os character varying(255),
    os_version character varying(255),
    device_id character varying(255),
    expiration_time bigint,
    device_model character varying(255),
    active boolean,
    created_time bigint
);
 $   DROP TABLE public.user_session_ent;
       public         heap    cwdkethxjqdxez    false    6            �            1259    5706971    work_ent    TABLE     �   CREATE TABLE public.work_ent (
    id bigint NOT NULL,
    place character varying(255),
    "position" character varying(255),
    id_block bigint NOT NULL,
    ordinal_number integer
);
    DROP TABLE public.work_ent;
       public         heap    cwdkethxjqdxez    false    6                      0    5706854    address_ent 
   TABLE DATA           �   COPY public.address_ent (id, additional_text, description, postcode, text_address, id_block, ordinal_number, latitude, longitude) FROM stdin;
    public          cwdkethxjqdxez    false    203   �s                 0    5706865 	   block_ent 
   TABLE DATA           I   COPY public.block_ent (id, name, id_profile, ordinal_number) FROM stdin;
    public          cwdkethxjqdxez    false    204   ~u                 0    5901090    contact_ent 
   TABLE DATA           x   COPY public.contact_ent (id, archive, avatar, favourite, name, note, id_user, reference, date_trash, trash) FROM stdin;
    public          cwdkethxjqdxez    false    216   �x                 0    5901083    contact_profile 
   TABLE DATA           A   COPY public.contact_profile (id_contact, id_profile) FROM stdin;
    public          cwdkethxjqdxez    false    215   �|                 0    5706873    custom_field_ent 
   TABLE DATA           ^   COPY public.custom_field_ent (id, name, value, id_block, id_type, ordinal_number) FROM stdin;
    public          cwdkethxjqdxez    false    205   6}                 0    5706884 	   email_ent 
   TABLE DATA           _   COPY public.email_ent (id, description, email, priority, id_block, ordinal_number) FROM stdin;
    public          cwdkethxjqdxez    false    206   S}                 0    5706895    main_info_ent 
   TABLE DATA           j   COPY public.main_info_ent (id, avatar, birthday, first_name, last_name, nickname, id_profile) FROM stdin;
    public          cwdkethxjqdxez    false    207   �~                 0    5706906 	   phone_ent 
   TABLE DATA           v   COPY public.phone_ent (id, description, number, priority, id_block, ordinal_number, time_end, time_start) FROM stdin;
    public          cwdkethxjqdxez    false    208   ��                 0    5706917    profile_ent 
   TABLE DATA           t   COPY public.profile_ent (id, allow_import, allow_share, name, note, id_user, local, reference, qr_code) FROM stdin;
    public          cwdkethxjqdxez    false    209   �                 0    6673535    recent_profile_ent 
   TABLE DATA           E   COPY public.recent_profile_ent (id, id_profile, id_user) FROM stdin;
    public          cwdkethxjqdxez    false    218   ��                 0    5706928    reference_ent 
   TABLE DATA           �   COPY public.reference_ent (id, description, icon, priority, text, url, id_block, ordinal_number, time_end, time_start) FROM stdin;
    public          cwdkethxjqdxez    false    210   ��                 0    1533199    role_ent 
   TABLE DATA           ,   COPY public.role_ent (id, name) FROM stdin;
    public          cwdkethxjqdxez    false    201   y�                 0    5706939    test1ent 
   TABLE DATA           <   COPY public.test1ent (id, name, "time", time_z) FROM stdin;
    public          cwdkethxjqdxez    false    211   ��                 0    5706947    test2ent 
   TABLE DATA           5   COPY public.test2ent (id, key, test1_id) FROM stdin;
    public          cwdkethxjqdxez    false    212   ǘ                 0    5706955    type_custom_ent 
   TABLE DATA           3   COPY public.type_custom_ent (id, name) FROM stdin;
    public          cwdkethxjqdxez    false    213   �                 0    1533207    user_ent 
   TABLE DATA           �   COPY public.user_ent (id, email, first_name, last_name, password, role_id, confirmed, confirmed_code, time_send_code, count_change_pass, state_change_pass, old_email, time_zone) FROM stdin;
    public          cwdkethxjqdxez    false    202   �                 0    7038637    user_session_ent 
   TABLE DATA           �   COPY public.user_session_ent (id, refresh_token, id_user, application, device_type, ip, os, os_version, device_id, expiration_time, device_model, active, created_time) FROM stdin;
    public          cwdkethxjqdxez    false    219   ѝ                 0    5706971    work_ent 
   TABLE DATA           S   COPY public.work_ent (id, place, "position", id_block, ordinal_number) FROM stdin;
    public          cwdkethxjqdxez    false    214   Z�       *           0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 1610, true);
          public          cwdkethxjqdxez    false    217            T           2606    5706862    address_ent address_ent_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address_ent
    ADD CONSTRAINT address_ent_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.address_ent DROP CONSTRAINT address_ent_pkey;
       public            cwdkethxjqdxez    false    203            V           2606    5706870    block_ent block_ent_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.block_ent
    ADD CONSTRAINT block_ent_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.block_ent DROP CONSTRAINT block_ent_pkey;
       public            cwdkethxjqdxez    false    204            s           2606    5901098    contact_ent contact_ent_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.contact_ent
    ADD CONSTRAINT contact_ent_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.contact_ent DROP CONSTRAINT contact_ent_pkey;
       public            cwdkethxjqdxez    false    216            q           2606    5901087 $   contact_profile contact_profile_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.contact_profile
    ADD CONSTRAINT contact_profile_pkey PRIMARY KEY (id_contact, id_profile);
 N   ALTER TABLE ONLY public.contact_profile DROP CONSTRAINT contact_profile_pkey;
       public            cwdkethxjqdxez    false    215    215            X           2606    5706881 &   custom_field_ent custom_field_ent_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.custom_field_ent
    ADD CONSTRAINT custom_field_ent_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.custom_field_ent DROP CONSTRAINT custom_field_ent_pkey;
       public            cwdkethxjqdxez    false    205            Z           2606    5706892    email_ent email_ent_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.email_ent
    ADD CONSTRAINT email_ent_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.email_ent DROP CONSTRAINT email_ent_pkey;
       public            cwdkethxjqdxez    false    206            \           2606    5706903     main_info_ent main_info_ent_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.main_info_ent
    ADD CONSTRAINT main_info_ent_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.main_info_ent DROP CONSTRAINT main_info_ent_pkey;
       public            cwdkethxjqdxez    false    207            `           2606    5706914    phone_ent phone_ent_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.phone_ent
    ADD CONSTRAINT phone_ent_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.phone_ent DROP CONSTRAINT phone_ent_pkey;
       public            cwdkethxjqdxez    false    208            b           2606    5706925    profile_ent profile_ent_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.profile_ent
    ADD CONSTRAINT profile_ent_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.profile_ent DROP CONSTRAINT profile_ent_pkey;
       public            cwdkethxjqdxez    false    209            u           2606    6673539 *   recent_profile_ent recent_profile_ent_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.recent_profile_ent
    ADD CONSTRAINT recent_profile_ent_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.recent_profile_ent DROP CONSTRAINT recent_profile_ent_pkey;
       public            cwdkethxjqdxez    false    218            d           2606    5706936     reference_ent reference_ent_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.reference_ent
    ADD CONSTRAINT reference_ent_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.reference_ent DROP CONSTRAINT reference_ent_pkey;
       public            cwdkethxjqdxez    false    210            N           2606    1533204    role_ent role_ent_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.role_ent
    ADD CONSTRAINT role_ent_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.role_ent DROP CONSTRAINT role_ent_pkey;
       public            cwdkethxjqdxez    false    201            f           2606    5706944    test1ent test1ent_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.test1ent
    ADD CONSTRAINT test1ent_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.test1ent DROP CONSTRAINT test1ent_pkey;
       public            cwdkethxjqdxez    false    211            h           2606    5706952    test2ent test2ent_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.test2ent
    ADD CONSTRAINT test2ent_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.test2ent DROP CONSTRAINT test2ent_pkey;
       public            cwdkethxjqdxez    false    212            k           2606    5706960 $   type_custom_ent type_custom_ent_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.type_custom_ent
    ADD CONSTRAINT type_custom_ent_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.type_custom_ent DROP CONSTRAINT type_custom_ent_pkey;
       public            cwdkethxjqdxez    false    213            ^           2606    5707250 *   main_info_ent uk_c3kgfvt3ean4ise99fcrspvjc 
   CONSTRAINT     k   ALTER TABLE ONLY public.main_info_ent
    ADD CONSTRAINT uk_c3kgfvt3ean4ise99fcrspvjc UNIQUE (id_profile);
 T   ALTER TABLE ONLY public.main_info_ent DROP CONSTRAINT uk_c3kgfvt3ean4ise99fcrspvjc;
       public            cwdkethxjqdxez    false    207            m           2606    5706981 %   work_ent uk_ejjtexnv9nkx3mgg7wvo45boh 
   CONSTRAINT     d   ALTER TABLE ONLY public.work_ent
    ADD CONSTRAINT uk_ejjtexnv9nkx3mgg7wvo45boh UNIQUE (id_block);
 O   ALTER TABLE ONLY public.work_ent DROP CONSTRAINT uk_ejjtexnv9nkx3mgg7wvo45boh;
       public            cwdkethxjqdxez    false    214            P           2606    1533215    user_ent user_ent_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.user_ent
    ADD CONSTRAINT user_ent_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.user_ent DROP CONSTRAINT user_ent_pkey;
       public            cwdkethxjqdxez    false    202            R           2606    2128886    user_ent user_ent_unique_email 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_ent
    ADD CONSTRAINT user_ent_unique_email UNIQUE (email);
 H   ALTER TABLE ONLY public.user_ent DROP CONSTRAINT user_ent_unique_email;
       public            cwdkethxjqdxez    false    202            w           2606    7038641 &   user_session_ent user_session_ent_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_session_ent
    ADD CONSTRAINT user_session_ent_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_session_ent DROP CONSTRAINT user_session_ent_pkey;
       public            cwdkethxjqdxez    false    219            o           2606    5706979    work_ent work_ent_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.work_ent
    ADD CONSTRAINT work_ent_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.work_ent DROP CONSTRAINT work_ent_pkey;
       public            cwdkethxjqdxez    false    214            i           1259    5971952    test2entity_key    INDEX     C   CREATE INDEX test2entity_key ON public.test2ent USING btree (key);
 #   DROP INDEX public.test2entity_key;
       public            cwdkethxjqdxez    false    212            }           2606    5707002 %   email_ent fk5cohfkuvscfi51f15jkr97nrc    FK CONSTRAINT     �   ALTER TABLE ONLY public.email_ent
    ADD CONSTRAINT fk5cohfkuvscfi51f15jkr97nrc FOREIGN KEY (id_block) REFERENCES public.block_ent(id);
 O   ALTER TABLE ONLY public.email_ent DROP CONSTRAINT fk5cohfkuvscfi51f15jkr97nrc;
       public          cwdkethxjqdxez    false    204    3926    206            �           2606    6673540 .   recent_profile_ent fk5mfw22a8fbxqij5yury7oyk91    FK CONSTRAINT     �   ALTER TABLE ONLY public.recent_profile_ent
    ADD CONSTRAINT fk5mfw22a8fbxqij5yury7oyk91 FOREIGN KEY (id_profile) REFERENCES public.profile_ent(id);
 X   ALTER TABLE ONLY public.recent_profile_ent DROP CONSTRAINT fk5mfw22a8fbxqij5yury7oyk91;
       public          cwdkethxjqdxez    false    3938    209    218            �           2606    7038642 ,   user_session_ent fk6k1081qfhi8a6rnoow32ywi5k    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_session_ent
    ADD CONSTRAINT fk6k1081qfhi8a6rnoow32ywi5k FOREIGN KEY (id_user) REFERENCES public.user_ent(id);
 V   ALTER TABLE ONLY public.user_session_ent DROP CONSTRAINT fk6k1081qfhi8a6rnoow32ywi5k;
       public          cwdkethxjqdxez    false    202    3920    219            �           2606    5901109 '   contact_ent fk6o9v6dvx2k3busrodtvgoql98    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_ent
    ADD CONSTRAINT fk6o9v6dvx2k3busrodtvgoql98 FOREIGN KEY (id_user) REFERENCES public.user_ent(id);
 Q   ALTER TABLE ONLY public.contact_ent DROP CONSTRAINT fk6o9v6dvx2k3busrodtvgoql98;
       public          cwdkethxjqdxez    false    216    202    3920            �           2606    6673545 .   recent_profile_ent fk7dkh0ktwoocaof9vkaix4tau8    FK CONSTRAINT     �   ALTER TABLE ONLY public.recent_profile_ent
    ADD CONSTRAINT fk7dkh0ktwoocaof9vkaix4tau8 FOREIGN KEY (id_user) REFERENCES public.user_ent(id);
 X   ALTER TABLE ONLY public.recent_profile_ent DROP CONSTRAINT fk7dkh0ktwoocaof9vkaix4tau8;
       public          cwdkethxjqdxez    false    218    3920    202                       2606    5707012 %   phone_ent fk7uiu4fbvofh57gd3jqt07pvig    FK CONSTRAINT     �   ALTER TABLE ONLY public.phone_ent
    ADD CONSTRAINT fk7uiu4fbvofh57gd3jqt07pvig FOREIGN KEY (id_block) REFERENCES public.block_ent(id);
 O   ALTER TABLE ONLY public.phone_ent DROP CONSTRAINT fk7uiu4fbvofh57gd3jqt07pvig;
       public          cwdkethxjqdxez    false    3926    208    204            x           2606    1533216 $   user_ent fk9vygtsy4k5mnooebldu4q02um    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_ent
    ADD CONSTRAINT fk9vygtsy4k5mnooebldu4q02um FOREIGN KEY (role_id) REFERENCES public.role_ent(id);
 N   ALTER TABLE ONLY public.user_ent DROP CONSTRAINT fk9vygtsy4k5mnooebldu4q02um;
       public          cwdkethxjqdxez    false    201    202    3918            ~           2606    5707007 )   main_info_ent fkdc08sl9ppmdmw0y0dcccbf4qt    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_info_ent
    ADD CONSTRAINT fkdc08sl9ppmdmw0y0dcccbf4qt FOREIGN KEY (id_profile) REFERENCES public.profile_ent(id);
 S   ALTER TABLE ONLY public.main_info_ent DROP CONSTRAINT fkdc08sl9ppmdmw0y0dcccbf4qt;
       public          cwdkethxjqdxez    false    207    3938    209            �           2606    5707032 $   test2ent fkh1i5rogucki16f3x9xwemjhxf    FK CONSTRAINT     �   ALTER TABLE ONLY public.test2ent
    ADD CONSTRAINT fkh1i5rogucki16f3x9xwemjhxf FOREIGN KEY (test1_id) REFERENCES public.test1ent(id);
 N   ALTER TABLE ONLY public.test2ent DROP CONSTRAINT fkh1i5rogucki16f3x9xwemjhxf;
       public          cwdkethxjqdxez    false    211    3942    212            �           2606    5707022 )   reference_ent fkh6s41bwnncnyp1f92p1ny932y    FK CONSTRAINT     �   ALTER TABLE ONLY public.reference_ent
    ADD CONSTRAINT fkh6s41bwnncnyp1f92p1ny932y FOREIGN KEY (id_block) REFERENCES public.block_ent(id);
 S   ALTER TABLE ONLY public.reference_ent DROP CONSTRAINT fkh6s41bwnncnyp1f92p1ny932y;
       public          cwdkethxjqdxez    false    204    210    3926            {           2606    5706992 ,   custom_field_ent fkii3eun9h5klueladw9h8nmkqa    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_field_ent
    ADD CONSTRAINT fkii3eun9h5klueladw9h8nmkqa FOREIGN KEY (id_block) REFERENCES public.block_ent(id);
 V   ALTER TABLE ONLY public.custom_field_ent DROP CONSTRAINT fkii3eun9h5klueladw9h8nmkqa;
       public          cwdkethxjqdxez    false    204    205    3926            �           2606    5901099 +   contact_profile fkkhmo496uambja54yxqqmdpgap    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_profile
    ADD CONSTRAINT fkkhmo496uambja54yxqqmdpgap FOREIGN KEY (id_profile) REFERENCES public.profile_ent(id);
 U   ALTER TABLE ONLY public.contact_profile DROP CONSTRAINT fkkhmo496uambja54yxqqmdpgap;
       public          cwdkethxjqdxez    false    3938    209    215            �           2606    5707037 $   work_ent fkmyh19bdyqfe2l9wrmxbc0udyg    FK CONSTRAINT     �   ALTER TABLE ONLY public.work_ent
    ADD CONSTRAINT fkmyh19bdyqfe2l9wrmxbc0udyg FOREIGN KEY (id_block) REFERENCES public.block_ent(id);
 N   ALTER TABLE ONLY public.work_ent DROP CONSTRAINT fkmyh19bdyqfe2l9wrmxbc0udyg;
       public          cwdkethxjqdxez    false    3926    204    214            z           2606    5706987 %   block_ent fknsafporc77geo1qnnnkpb20js    FK CONSTRAINT     �   ALTER TABLE ONLY public.block_ent
    ADD CONSTRAINT fknsafporc77geo1qnnnkpb20js FOREIGN KEY (id_profile) REFERENCES public.profile_ent(id);
 O   ALTER TABLE ONLY public.block_ent DROP CONSTRAINT fknsafporc77geo1qnnnkpb20js;
       public          cwdkethxjqdxez    false    3938    209    204            �           2606    5901104 +   contact_profile fko0bldca1d25xyh3sjus9lijxj    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_profile
    ADD CONSTRAINT fko0bldca1d25xyh3sjus9lijxj FOREIGN KEY (id_contact) REFERENCES public.contact_ent(id);
 U   ALTER TABLE ONLY public.contact_profile DROP CONSTRAINT fko0bldca1d25xyh3sjus9lijxj;
       public          cwdkethxjqdxez    false    3955    215    216            y           2606    5706982 '   address_ent fkovtccrjohvag6m94derraxv0j    FK CONSTRAINT     �   ALTER TABLE ONLY public.address_ent
    ADD CONSTRAINT fkovtccrjohvag6m94derraxv0j FOREIGN KEY (id_block) REFERENCES public.block_ent(id);
 Q   ALTER TABLE ONLY public.address_ent DROP CONSTRAINT fkovtccrjohvag6m94derraxv0j;
       public          cwdkethxjqdxez    false    203    204    3926            |           2606    5706997 ,   custom_field_ent fkqlxoxoixieusywfdsxe95cwkj    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_field_ent
    ADD CONSTRAINT fkqlxoxoixieusywfdsxe95cwkj FOREIGN KEY (id_type) REFERENCES public.type_custom_ent(id);
 V   ALTER TABLE ONLY public.custom_field_ent DROP CONSTRAINT fkqlxoxoixieusywfdsxe95cwkj;
       public          cwdkethxjqdxez    false    205    213    3947            �           2606    5707017 '   profile_ent fkrqqnr7r8rg2073uix8qnbiig7    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile_ent
    ADD CONSTRAINT fkrqqnr7r8rg2073uix8qnbiig7 FOREIGN KEY (id_user) REFERENCES public.user_ent(id);
 Q   ALTER TABLE ONLY public.profile_ent DROP CONSTRAINT fkrqqnr7r8rg2073uix8qnbiig7;
       public          cwdkethxjqdxez    false    209    3920    202               �  x���KN�@���)� %��d^K$֜�;Z�n 5��H ��
V� q�҇��<7��P7 ��(�=�?���.}W15F� f����������V�		8��(ޡx�wq^cŗ�o8�g�@�t"Y�����>~�{WɊ��Z	
�FV$�ԕ�N6�ʩ�O��W��p;��*�^��
��T��0�.W$;�⾿ŉ�7|@���sF�@�v��F�)HUXZ�� �FvN'k���B&���g>�7�4�8e4�i�}Bp�)�XR��#�]L�JEJ��N�T8c����8&���QZ�C�\�����X�h�m|��)�7�?+�����o� �N�vv[�4�����q��nfnJAC�Y'��ݺ�n]^��Ld�i�ڕ��v�I��Q� �T�         @  x��VKnA]��bNM���,� [V�,(�8�E"�D !�a��I�!��Bύx���ǲdٯ^U���-җ4�w�0��e�a�&��^���!�-�H'���tU�.�z;]�;i �*���g ��N	Y(�,�b� ��4�m�?��K��P�KB
骛Z�Z.S��V�U�j�պ�ZM���ZC�v�ZC�n��j}��j�2���mN�@P�ZE��0hΧt�(��1t��~�0���	��{u�p��NhѫhqԂ6��U�>�F1�n�귤���U��U�3��ܴG��;�U�m4��/ɗ����1I�|Χm4���	��;���6����ű��j糫�w���W��+-&�KW���t�U�*|��_�k�̋���"]��q�pL����p��Q��X�>�-橲�����U��Iߘ�l�h�;,K<��a�.ܢ*�염u�8��ή���9�3��O.�,��,�v�Y��Π��G	dHoT'���#�=������َ���;ly;���P�#[��a�c=�Y�|�co-�XQӟ��M�v{~\����&Á��!���_8>�? F�� ���XȈ��v>�������Ę�{���T
g�{�$�w��ηp�v_�5�q-8s@���!��g���y�f:J��C��<����(3�f0�W��}e2�ǀʀ,<^���%�z��¼i�?ތ�?y��U��a���o 6ַ6O� {�v�Wt���H{�T-���Mhe�N������!��!d�`�PV*D��7��$}�-�GĊ+ ʛb��E�<��ZQ� i�9         �  x��VMoE=���8�������Q@��@HG����(1^ G�R�DY��!
 ��U��N�B�?�f?"+�Z�f�g��ޫW��|W����������N�������m����0d��G��e,A�N�(N����7��y���M��y��W�v�N۸�h'�����v���]{<�������fzС�pA���[���5@>+�U�	򢻶��5�L7�/G]��C����O�W{���{�k�r*wg��|L�-��S�L�sZ�|=�EF��.Y����h��I����6���I��n_ƫ�m}24������`�T@5PJ�B>ii��OLM��'��Ⴁ��׵�?�3������񌷳鏃�r�!?b���V쏾)�������Y08�(D�g	�E���_]B�"y�����U �G��ܹ��P�*%
2� %�B���%JU���rƩj*X##�,�T�nu.�8��T����ͯ�H�(&Q� ��<x���*��:��c�=�7�؈K�
�R�.�%�+�_,�L+3���밽n�{�\��q�3����ZHGţ �#��D�ހ,�bc��-�M�J������oY��n.勱W����J�)(�%d/U4�V5��W�ƕ�Yl����:`��J�@BU��J��r"���ݙ��1K��:J�^.)��B�l�UQ����g�X?���F�G=�>h����"a����!���x)U1�е��K����I�����,����߰��^L��y�����}��"�b�]�x�͏3���rx�t2��M����dM�\��Y'����	0�F��&�)I�Y�����-��޸l�*)]�?�91 n	�+�%�|T9[L���4+���޺f�;��͵f��<��B��V��ǣ��l~9�<ѪQ��(��Tx[���>b���?d���`�ۛ7����spP
�C<#� �UL5JI��=.�hV�{L�I;�+=�ٞϥ� �����!�CE�ʋ,��%�������gږ         S   x�-���0�7�
DİK���1��Y&�b!-Bl�"��/��������Ϊe/y���)EkO�������i��u15z �.            x������ � �         k  x����N�0���S�	";��x˂���t�H��OHՔ�C&&x@�Z��W��gS�U�,E�}������Ϋk|�f��Q:S�w�vo�9t�������O�&�|�����}&d}��l��$�$B�Gܢ���^R��CB��Z����n�3�ߜ}e��Q]иK*������LZ�P�ɦ*��v�Q1)F�A�;����|�p&#�z�+|�.�Y�e��~�ϐOq���/��n�k#W���JG��ϨMqI)��4K�d[՜���Ej��q�	hZ�ϴv�a�%�F�ցm2I�J�����{FFY�(��S��D�jd�S��Gb��~�zi��<��'S�)u         �  x��W�n$�}������}�<"\�Q���x9U�Ըm�v��ܞ$H�(�"%R��(y�c�����/T�Q֩�[��`'#\n�ʵ�Y�����:{�V����g�O6����?������>O7���m��R�Z�l6;9��h4��bXNF�k�V�o�|�T(Q&�%2(C���hɔ�ecÃ����o��Y��J���g�O��e�M����L+�k-�8WCF��9�.����M26��I�=���4g=&������r�K.��
B)`�c�>��]�CЪTae���8��A�u�,�~4�b9nrmxsG�J'�\��M}��u�y�ɽ��g==T��{�� �u#�~�L�n��!Ò��^}���w��랜2c,���R�唊�C���vln����Q����"��lI���8�ќ{���&�&6T�hV��>G�\vM���P���ye�_2���KT���
7O y��<�8c<W/���b��C�m�GFSB3�r�R�Y[D���7j�Ɏ��s,�i��ˉ?Տ��_mU*39c�X��{����`B�
��pV��%���d�bN���q۞�l|��y�'PȿB���Y�z*�����Y}�տγ���3��̯J}cw�l���@���Ȫ�W�#���ؔ��G�	a#jxL(.�	�[����h��4nT`5���D�5B6 �h�����3���d�F�����'�ȧ�Ec �{�p}e��V4�6hF���(ؗD��LÛg��`�x���_i�?_r<h�g�n��k��u��6���W����\�)��d2���I1&'�p�O�Ƈ��L��I��h<]?��'��̈PŽ\ؑ����R�Z�t��2*�ғ��͝�v�lO}i��D�����+�"��N悎���II�.K0Y�W�s`�����/���hO��;��=Q��
� ��=g)|�z�R,�*������MH�I�&s�z�a�~q��G�,�UI<5�H���`�����ш�j�0�i3�Ū��[[\i��=%p��ͻwn�\�>*F,�kR��@1`4p�pkSBd|�l�iT���lp�bv�/��@ǋku�ȍQM[¡�x�5����9���pϙZ�(��M�]�HU�L/�V2~���qP��JD�p�X{�%�vw0�:�ӻ�a�4�reV>�`M��?q�����=���#���ӑ*�*�h@�$�:C�T�Z��%��Y"��Ɲ^���������ݓ&UQ`�&�q0��4Pb����	�GWѶ��<Z��J�&���F��R�-*�r��x�BK��(YtK���ơ��qo�(|x�<�4��qM��"��^�N�-�X��O�YJ���j��Df�Y�^��<6Ys�&��!hg�O�fr��e�~5�nY�	v5��6��Hs5	5�QSWQ�Ps�	��坐X���g15,�F�^a��A(�#��0���a(Z9��+�!�����>99�ɜ�mZ!7덲^9�N]R�+?�����'��d�r�W"�R\Aq��#'z�Pc�t�T��J�+ȡ��i9?T��+?T�uto��Pv�^T��7��^e޶rpe�V�8��L�P!Zo�Ј�794n�x�dl�fP�~�D�c�E,<���"p�u��6��]��;l�4�@������Q����RؑxE��U�M8�KラtU44�A�G��a0>]"�_��k�r1.�+�;j�ҭ_~���8����<�����%         r  x��VM�5={~E��D��v���ÕKn�(Q��pK� 	��8 E�_0,�2��ݿ��G�r�۽�(�h4=~�>_��My9>+��U�������l˟�j|^���H�C�`�e㬉I�q�n���7,D#��'xo�)��p}���@!&s7��[��n�a�%��f���I��e4���>�D�{â����7��?��PR Q��m(���Q�/k@1V��|���k@��������~�!t�?
�@k��"u@XR�v����&�πԲȵ��� ��DS� ����X����y�A��T�@
�7�k|ySv�3YȱPfRq�h�l�7gX8V��-�G�)Y��V����Ox+Rkȶ"}P$t�3D�+���v�.��/�˫������?3A�O�Z
�Q�
_�m���3E��lbn�\�*m�>���5(�!�M�d>=}�p����LNޡ�>1�v��P˜�L۩���\�Y�{t��C7�|�����*��@�F&��cm  ��=P�"r�F܁,&�_�Y,�@����x����q���{a��&��:y���tq���U�Uގߎ��<H� ��I�9]VH�M�Ů���3���x>��Hw|1~_vj�����NG��k��R�P�e7>�,�j��i�����9 B�b��2�L��t���j|��k��1m^�3I�Ay	��Qͭ���T���!,p���+e�.����lS��6w��ҏ�jq�!�׫Ey�0+7�f�|ȡ�т��8�3�6L܆gN��0�=�F���)���o糘%�~�����"S��l:Ē]%�$J���;`>�����6�z�i��NT���`к���޿��l�i	��         v  x��Yێ\�}E��<U��;�`%H�q�Kݶ���# <��P,�"!�B�/p��=�U���v�̀eFM�Ϫ]�����rpt������'�ǟ��w�Ƌ>���[�2L]��D%ד��[���|Ǘ/�9��#�+2�+guW�MP����\��:#��$'��g�z��dÊ��X7]d��gc0{���8rZ�ڳ�5&�K5�Ý�!)��]Q5!).���h�r��k.6u�`��0��d����reUbo��1�uiY/w1�Ƿ�Z�]����j}�� ��@1��d+>�V�X��"7I[�i�M��lX���� [��r���?����C�yo����������;���8�!N{���x���g�+����ut��w�^��<�`�D�jm7t:�A�l�^B�͈;x����[?=<�z�j)�×^��.��ꡩ6�H�h�4;��˂oŊ�������+(��̔�3�X�R`��Y%�ѥ�+~KT�^
��-f[U�@��]�}�ute�Hgc��=�!J�q�XT���$$����A�=���{d����#��v�j�ّ`�
 �׊+��9z�#c�R\?��<}g����Ƿ�?�s�|{����
����RHߒ���%���bOY15��S���|-ʇ�wrh5
V}A��g�X2�Q-�썭K!}L3��n���\����!GJF�C�f?ޛ��k���`�!αQ%d�:�3�N�.Y�yԿ6w�8�]\��yK)_q�hpgp��|d�QV��fS� �kĻ	��2�YY=f���C|�q������:�c�!k���V!	f�f�B�A�gNZ1TZo]�B��6ؗ:��X�����YF?�YI��s�
���PЃ.��R|]��KϿj~��so��]$vJ7A��Fd%Fe]���lcsK/�ڞ9Tn���̥9T�{BCio��=KZ�8x��g�I��*� ��P��@�9�]�/�YAO��@���9�3��Sm�M R1���r��kN<��g3�P�i��kU�u̙0A�Rժ�<p
�]�m�rǟݸ�z��ͷ�*Os��!"a^��D�X��F�6��M7�3	[4̀��*-�@�!␭�0��o���$�,�6G����M���Y�U�,�v6"�������W_x�0R1�G��� �ip�,����y�rpyNC��Q�֞"NKփ;��2ĸڪ��`Ԉ;KoS����S%���:�wE�]�0@����أ�!H�i�?�=�AV�����!?��ro��G���)*,Aj�A4�F����;�G#�&�䈗�����K,�'�ɛ�s�ϤRK��������R{�`��������J�`�}���w;���e`PC.+B����i�թ �e>���|����v_]��;	���bG�$-����:Jp�	�|�HOp�j��q���L���>����@.*�8��T\ZlD�t�U<W�iT��,I��X���{`L����,�|t����k�K+*J&0gU�merDî�MP��	�5�9`�k�,�ፔ�^��tKq�}�(��|�WG處�' ڳ���֪֠�u���e�2�F?��F`�GC�g,�F��ܺQ�i��'zB)mGӹ��r5�~)ר[pU����=����.�it�L��x�z��\7B�("�F��ZOE؄	�vA�	��i���4��YR5J\w���� �lmK+��n��	�~�x�<i�+�5��N:D|�s��S,\��Q�dE��H��u��:1N0R`v�!(;sD��N��C2;��18�	�/��jc�t��2E?�Auu&:�������K�)0�!نd,Q�L6>)��r2-����0�^�n�V'V��e14����Ɗ�!P��Y�g�p�l,"g\��xY`�Bᛸ�Qd.��xĝ�P�z[0����Ԃ���P�pB���Ě]��n����i��aa�P�����m�sr��mC�R��`�94�f��Z��5i���~��{<���C�Z�KľPjW�e�pc!�0{y*s�
�nX���mxG�D���60���;���{���C�10��;�F�l��&��K[B�|�~���L�u�X�1u �<����t������z���Q.��F��@a�� ��CQ�Pi�v��/��e����%oE[rÞo��5�����^b,>�a��P�Sv�]s��u��XgQdS����U˽Z紁/�3h�9Mk�e­:�E/@9l8��d$�7�a;����R1��~���&XX�˘�&�� ��[%��\Xp��s0z���;�v�Q&��Aɞޗ� �Q:x�/qbJ�4��R,����a�� D�����	��Z���v�0[v�13h���w;P-�J�Z!%Pv��60����TW+�$�ϣS������w����l�Ta.�AJ1P<$�!�D,a5�`��	�w�`�=ӱ��,�|������h�$0{��	sJ��V��@�Au�C�"�1����`��M4{��a[p��d,�÷�! ���� ��f60��^�o_m[��oxI���tC:*�%�e,���2'��8�y�FT����`��,m��GTӌ'���z룱��悝��G��=L�VfLdaxK3�=��q^~�x�<cj��_��%$�d�5�$SCD�uJz����OAW$ �b��`�'-1q+�6x���;�q�H=HUuoF�Ѐ��\�-�nTdy�x�/���>�5+�#YX�@�� (���i�������t{�B�6��'~���*>m�n��w�>y���]��ko�~�W�g���Y�.�V{oʄ-ʑ3��X_"�x�e��M(�[?��Կb����u�7����T�7��0˰�����/�x�G��?��F�oI��f`Ð ��S�A�^����q���	�M         .   x�343��44�45�2421�44�2�`LcsNCc(�ʌ���� #�	N         �  x��V�n�@=o��@c��]ۜ�R�(H�"�Jȉ�ĥ�C�$ͭ-�U!���-D��_X��v��� ZUU;��{�fvvƔ�聻�V[v�-�
��h�a�F�b���k�J��W���a�,��Ԝu�X��7������uwݍ��F������r Њ]vK����e���;�b)HGX�LSͭ>FNLs��4���@Y�2�W�K1>)��T��=w��b�o��R�\�ٍ��!?���P�<ZҼv�ޣ�%���J�HWQ�j���Ah�݉���A� ]D_�H�1�\Y�hE�1A�#�K���mvƆ���h'ڋ����!;�^����lmG;l0�3s�4͘��$dblҸb�|1aҼ�I�1i]�I26�b�> w_� ;d�p=�\/�b��w�d�S����6#̈́�jRMW�RPի����iq�����0��SXi%t�����Wo7���(������A	�ز0%�e�������h�����ͻ+3ϗ���U���.'g|�Y�7�9	\�!fȉV��,G�g�q����R�w@��ֿ&Av�G;l Oz����T�\3�za�V;����r�s\?�'�����s׃��#�P�XU���\V�N(�����b�M��	Pφ�"��M���g: N�㬨�Uu{���OHL����QA	"'�N���M�7򜖚�"��/v"�R�)į���r��f3�e���h�bR�ڍɃ��r���/L�8U�'k�b�a�Ox{��lylG�@�%\�y��Y������,X��~�G�oi;�DsدɎ�bN]�����O u�̽�o��&�D`-d���yO����x�h�����L2⊜B��Q�� ~<��h��C��$��V,
�m͌         !   x�3���q�v�2��]|=��b���� t��            x������ � �            x������ � �            x������ � �         �  x�}UɎ�F>��1�a�
n^��16^4�1�,��`�)�"�KnQ�7��K)�W��(���u�J�[��+ �����d��9vC�y��;�~g&X�Rj�H���=4(��fb�d��v۟�w�j�Z@um���< bO,�ϱ� 2 "���0&�� ��ٙ��Ȏ��t}r�bP��F�@M�\@뀖�C͏A�6I�Vچ�}��7�:�"aBk�E��{7g��� ��$�� �F� p�� ��qd�P3���͊������WD�K����X�S���]�g�wC�_���%�#E�l씝�&ƈU�>��v��t�H���X��#��%@�մ(p4�A����bX�0};�R'q�X[S�2�8�wel1��E�2i��'dDQ�./sw�9��|��Т>���]s�Ss�E��@�{"d��ٞ�;_z~amsg{��&p���)��R�Yx��	l��Pѡ{u����5_o��ճXu�D#��@�j"���Ţ����~�l�1o]��71�IW3�ɉ�K��9&CʵR��IIG�0�˪!�<�2z���7�ׁ��� ��0�,b�	[r8k�Xyw�O����(�z��RV��Rc�<ux�XAo�`�������8���	jaF礵o�i<�*��t�Y(r>ַ��%�tЛu�l�>mIv���!�"RU�fC��<`_U��"�bILt��%i-y|\�`���{�{nڶ}^F])�R�9D�`>� �&�f�.�CVռ��"��b^O���p����t�A��0pRM!0O�U��16N�(���8�PT�P�I����Es9~3��@�Mv��ݥ_�	�� �X�#{x~Ha�Pĝ��ћh�H6x~�.I��;�@��cwR#"�֚!Q�Epk�]��������I�N��n����p�/��!�-�%���!�Rr�%v'�k�%D���\���[ɪ8_��L�����. �8M��g�o|�w�[u ~_�U~$�_��}�����Wa�2�f���,#��4��\��8�,(^��WH'C[�A���&,3��Z��r��rΰ��� w1:�3;�k{��]�P̎���~�����K?Z�����ξ;"Ο~���ʟʟ	�D�xbD�Ӣ��F3���QƩ0e�(=b��
�Y��xf �R��O���f�Q2t=��]ƞ�| ��J@            x��}�neKr�x�+�P=H"��YlÖ`H4�)7duz���{�Sn�fա��]u/���##V��;�z��A�\.�5\.s���r�R�tF:����!=ǔ�c	�!�������?�o���o����ߢ�����k�a&�SÈQ�PK.���W�������t��z}J%=�<v�n��\�]-���Lu�^l�L(a�9��c�?����~wd�K�\;JY_FVI���?}����?������ĞR�cy��u���ty��z�ޥ�Z\a���2��`j>>�ta%ì��3����᫙8�r�m����?��o�����������ۼ$y��R�G�k��I	�eq�su��(��N����5�C|�����������������W)	������p��"&+�x��$������K�3j��V0M�=+X�VH���Sm�IK�WPs���W�a-÷������|���c4?zL�!��h�W��S�V����Q+Q��G-�
�叄���&�#�C��V���OM��yu>!v���r^b�F�N���sD�nhT���=��,�]��!�� Õ���p#0c�s��ܠ/粫��э��Zݯ�'��廨g�⒱rL��ZV.u=������B��r��?�p�׀�w�p��L��!��'>u,�4g	�a ���V��G�
ѝ��B�nR��[M~G'yE��
�I�����Q�}$�﯂�6Z=�F�anW�d \�~���C��~�S���̇���0v:r� -.噀�x|5@�b�XX5"��0诱�j6`~A`z�#�025�n2k&k�O5T���1TB�Ä�c��a�V�ޜ!�]2�e���oe�.P�]Ka`S����8��gl��Ű�f�dU�k���6��~_���(����b�.OI����#/"�H�{}�t�7_�n
|y�+������Ȃ�4����� U��)&_@ԜNC�n�f�y���B�I�aԈ>�F<=���l]�dO0
��� �~��OsϜ��q�l�cg�KW���G�"�La�U�A7�4`1D�`��OVZ[�(�G!��`�w�ڊ����gO��`���+���ւ� .�[���Z{�}�s���ބJN�D�����qbBj�v-�yd{g��%�K>O��)�ԛ�����U�>�3\���:��rܛ�,�C�R�2�w���$�'��W/�`P8 �⏸ŗU��#�1�%Ó!P�Ȗ��纋���2�)�
Hc�>�m�PY��r��g�)T�ʥ�@�*ǚ�n���dH?-N�5L�C.Ll��K�ᵻH��EQ�+ =��]l�]$����Z�%i�Ƙ	,�f]���W�1\�����eL�u��i-&���!�?sBRs|t��'&9�Ze#1bu)K���lD���sH����RK7�t`�W��ZU�z2�c�,�t�G�(����7b��:h���]��2���9{ȁzn ����TS�oUҦf�tP�ڻ[J������ ��e���j��ɓ�h<��i���yʏ�l���L+j�^�gr�X-o��Ph?�*�8��1����0�ev�}�[?�I*!]f�
��i��jj%lD~�e�́�mT�a��R3�P
0��h)��L��r���5� D�<�k�u���T��B������&&�C|j=r(Uj�NF���RX���[�CuY��S'�ywb1 �A0{^Z*nZG��!ӑi2�-��0��N����X�S�s�}b�"Y	Il�>V��:��lk �p*:Z�+�:&$5�L2���h�V+ǚ�j��A��O��%�f��c���\38c��%�c��5Z�]���Z�ǦU�)��Ŵ�� ��S8����{�2D.�E���B�� �ߧ������$���Uh�������i�~ ��������Ƚ��Q,�8�c�=�x��ʡ���1�����"b>����Cv�L�nS����e�W��y��%U��wU|Ŵ�(���θ%�{E��v1���[ӽm��Nˤ"Į�e����/3��
�%o�NWh[��2���������j^a���r4?Wn�9�4\�
�5kPԊ+#C߾-����� Y${��+�,�L��D��:+���嚱�-K;��3����ye_j<�c�Ug�T���a���_D0����(�jf�QX	9�͆?��������MW!����Z/ }���'�)���	8�y��-mD��ļ`A����3`[����#m^8<�!�����\G���ļ�=YH���AI�>-��·w,f�9 �R:$2�����{ƚ�6�ϫ$x\���xVz֋���9���l�K���ș[l,�w2a+L7q8�m�h������s�dA�l�T��n*X�T���ȳ	7��VBH�b���J�~޴�y��մ�]($L�X��� U, 4J�Za-�ʃ{&��5��s��\��/(]�Z��|�t�`@��K�v��R�r-������E�moQ��NL���tb|߃Bab���5\*��`���N۱:��r�q;H�� ��@�A�Ϗn��w�@D���[���N�0\}\�B)��A���<�|��c�e�6{P� ��@ W�yn������M<)LAK�?�"���	� ����b���"o�9�N��v7��Z,�+����� �XZɶ��ռе�#��6ħ��H�wp�j��P^�P2	FK�����{��,�8x�F���q?>Z��ΣY@�|��oc�x膼�i��at���u�0��h���ѢOD=F��!H$�G���	��������JT��
L
�2���������5)(Fv۫���+j�W�+B6��$�Is Kx.*�e'�A]$<�z칠3^=W�"۱B��ӭ�pX�Ŷ��U��Ge���_�4u�	V� P���g��_�׷8 0i�G�V�J�f���{�n��@�6H��1������~�l��p����tc�a�r�t��!սp���vtj��&.|��t�H��e��s�iGZvA�ȈS�([*�-*���P��ey����U ��
��	ֹ��闆�ZB/^���`B`�q����\��V(������u�Ųܽd���[ ���iAT�
��׼�@�b�2��������j�ÿk�������� u'f&R���_A�a��D3w�(�롉�G0.Ծ�$�>dr��!h@/��K�LȂj)����a랛�g���k��e���ʡ�e�{���F$k��N@q�	��N���`�XZ��¢����Ig�����t-�нv��B�(B��$�Wm����[���5�ٺ �`�
w�So�%��Ԁ�s�Xڨ3~���K��9����{"�s3 �*����\�قY���8-�v-��B"+��M!�ckN�d���UJL+b�R�ٽ��G�e�=�WӲ*|�zp`����
W%2u��~�T�|��U��i�@�u5-|d�	�y��G;��(\�]S:蔤�Ǹ#g�ec�;�\�����P��� �H���.�6�� +A��x L��ϴ �9�VJ�ӊ��g�H��rs�e9_&r� ��O��M�,^�	����4F���!˗F9L��q�C�����?<��z�W��'�2���/���]q1���F�=t�4��Q��L�.�U�?1H~�=���e?�*0� ���).XnB�����l�^�k��� ��lq�z��.�l�C�Ǥ������_V����+#����鴖��C������T���,��1ӭm�q3!�{���H��->`l��� ���g%�6�0'���n�;�K'�>- �D���CQ�, ��$R5Y˭Ի�gW��ū�cy[� ���0�[䈑�86�J��P.ط�׬�8�G�/�l g���ŧRq���7���JJ�Ԥ��*��Ϭ�B
�v������#磎� Z�E,)��O�zbj�zHH'q}p}0��7�l�8���cBp@e���Ts���`��U�z?h)���������0��    _��^�N8
r�k�7��!nJ]*��s��[x�3Գ%���)Ӓ�,���"+0���tlhR�`�Z�� /;@��3�RQ���d~b�����%�jl�L��摱ww��C��{�21��H�����#�=��t��z��n} ����ȅHIߓ&��N ~�=(�38;��!p��8�e��[{x4�S	�_�����j7�����b�?Q�f�,Z�r��a��{�f&d8L'q���b�����FB�:@�*~��Ss��`�ϧ�K�7���C�O�|���J������1e�B|�⩶���v����X�b)ėR�+��/O�[��0��&�u�f׊;���Lw����+�p�R��+]��+��a�O����|�2��2S��>��1S���2�k������;B�gBq�0 �e0�~n�O��)�Z�]P���|�<��m�;4��_�~yo>��7�0MM�\<"=�P���X��pMɧ6g�`C��"������b����G��Lv ��(�ί��"�����>d&�mk2K�t��6@�Ё��[��#��}f3R�rw>�s��+�g3�H&�z����Nz���M]/l�Y�O�'_�3�����،�/<�J�Wy&
�˸S�0� ;YHOXmn"�!������
�N��I�|�ѧ� ~��fС���	���0���\�����-D��B`ZY�4�Qi������~�ymk@a]����O����
� e��}S���C35v냊kk�����x�����`��p;�3?�#ͅ��3m�׌]<
[v��t�}�k�Y@ě� 1��	1h�.on�3�C#��J[d#�5.Z�>�o����N��Y�� j��<����o�3+�Mu���%���؝�d�UNǎ�T��n,#o���$���B��8IwSs�qH����Ż�� �/���X�m	R��_?�zd��ԫNvYL,y�blw��5ϑ\K���[��N6��&��9�t�U�'� ��wk�%��u`�i���SɜO��Ӛ�%Z0W��ed�̌����ޱ4��J�v�D;!b0/DR@DAJ��y�l��P�%P���=[m�h'F�R��o�ca�Dx�����r��V]аV�a�z��������|����1V����_k���!��O�3Lp�����{5Ze:��C,�I|I/�Z3<��+˜�,���!?�/8v�ҷ
��K��]����|��:���BQ  �ˆ^�P��y0�W�W�sͯb_̻�=g��(�r�4Fh@�γKeB3��ޭ^r�#O�T�0p.B+�������W������v>=l�q>��2��lO�j��b��fɱ>A�`�մNn��l�׼��3����>��XCBl��<�P1��ī���n�R�l�����
?g��	&p�@���| 0�GJ��C��Fh���\X��ى��!#��x�A����ʕ��]��8t��1r���RJ`Kk��\Dl�4|m�g`�����~g���,GE��t�Jh�ix@��ӟ�^�W����N��x;R�j���`�	^pL�p��.�6��2�w";�[�C{���#�z8-h#��/�m��911eS�x�� �Π�Q7�B�8�8���2�3uF�SH (��ъ	O�&���;o��|*�^�V|`Mc�v��Gd<�lE �E	��_{s`q����)wo��J-�2[�*��nx�G�5�/e%9���0���C�<�D�z"p�ft�|�x2�ac���B�V�Ɵ������P�J`�eD�ܫ5��]���^5�H���_��׹�ps�*�1�|�t���X�Kٳi;�f�L%��G�v������{S:m�Qg��O_�y�>�:􎤝�����`Z�ͮ[��<r��Ry��Ɨy�ň{�a��Q ���j*�� i��� t����Bv�T�>0���1�o�����چ���l������x�3� ,/�H	��R���	xM�Ңxp��rǈ�)�߶٢c��� �	$�������ASى'(`e���ݐ2uo����� �^��ypS���_s�"�2Q"���r��3�3?ف�$C��t�ID��>84D�E�"�7�ʄ��[@`f�*�x���͏չa���۩�!���R/6��@��A�`��L�Co^��]�ܲ�ՠ-����#��տ����% o�0>�W�Eo�� !�� �/�~��;12N��ᐟ�س��|p���t;:����uS}����'�a$�X�y"�=���A��0����i�		�s=Y�1+�cI���J�U�J����8 �,�%�/�a��P�sX�Ʊ q�3o-#�[P>zS� 5<�����#���ɒ��g�Y�^klMn�턎Ѧ�(5m Q���<^8�Y��D�}A��㠂1�rd$�!�r�<���G,L�ꐾ+��zu=���RL|5�0���wb�c#�����.��o @Z����X��؛l��f�
���<�u:<�J����;��둣�>	-�[kӱ��b�e��܀�R�2G=H�i�ٞ@�غǾ��N��>:��.�����S/;$��L��R ����G@��k �$�%��{5-�R��ad@K:���OO��[`�A��\���:O�`� �e��.�-�(v.�x�3;�m�)Y�T��6�W�BX��2��<�%�����"P�#A�p̩�e�1c��jN�hU��=�HZc:q�l�`|b[�$]�MG�n�T�kiWFZ#���Ǎ�Σ8�m�x,5_�X��hT��R���_?%�oG㭃�%�_x��iA����;ɍ���A�n��?P7����1Z>v��y�������H%y�����Q���$�M�=�ƣB��� d��j�J���g��W�!qb�z��҆)]���<� ��
�b��x��*�����u�Cl�YnFx�f�20㜪́��={��+8�xY���G �o�w m�?/,�Q�aJоA��C�����W�`�A_��4�}5^����TjFS�w+��U?��a��L�!��)�3��L�l"`汴�!�GI(7}s}��� g�$��Gj������<�t�)c�$��0˝�@D�F<g��E�:06�o'<�|��W����Pr� y8U�6U6��@�:�lb�%p_䠙'u��6 ��A�<��5�<�sq�	��=�n�-�P�W!�7�T���J�?�.��J�}$~��(k�qYM�%����0���ҝ{�\{�9���H�'�<�.r(%_h��xUx6�t�e��Cl"ųX��3��K�I��D
�X�w�I��̶��7n�$״V��?�L�_Y�f�#�
o1�v��6'��	�Ƈ���o������B<oU>x�eX_^�!����ٗ�P��B����>XL�,��@�1%-���A ��<��a��D�Ok�?<��{��GS*  <�7���f̑��*pwҳ�փ�U��������u�IV�Z�2[$�'c�e�/z;��2bSႥ�t��3��}�T�}f����Z=�D�88?���b��6��ݎ��+���lK^�$
�{�ܪ���!�)����[� ��vq3�	�j�k~��U������L:!����_z���d5/��)Bb�}��i2����z7K�u`=�PT|������H�7B9=���2u�:>3�Z�Q�A��g1��r���z�w	�����hL�=�@�l\�y������+��N�Ԉd�j^�A�f� �I�xuݘ�,+O�E�h��e�2�A�}�6^FC������$n�7QZ��Biq�����=�\|�����+`�q��S��|���y��~bݧ~�Ӷ��ہ��RO	���$T��n�O��#�����I�m�0�c�oZ/��x�\9�c��*��ȆS�N&RZ�w#�Y����7�q�}�)����6�{<P��;`�7(X?:�W��`����� o  ��� q��m_����-�mb���j�l��5��?��/#zC���b/y�>+������h��+���$�h=N�y�%��ŗ���c���ή���==����k=&�|A�KGf�9,�ӛ��s�[";�]����7��)�<?=�m�	���t�Y2t�H�x�& ��i�a���G
�ܙR�N�TX:����T��)#�*(RD��ns�N�"5̟.�_A�� ɇ �5	�z�98�Z�LfY��D�=��d����Cd�as;�d��f����%�$�w/㱑�z��u\
P,|b�{CB��Y'���
�#=�ٷ� ���d<�D1Ed�|D�zqIx�ؕk!��X����o];�.�8�����>){��ł���A�܀ ��5���C�S����k+���0�:q����*���8fY�������"zy,X8�\U��?��+|�Ǖ����@j�h�z��&������o��n[ڈ ��6&�Z/�v�r�]��g:�{~~}c0^�ɱ� O�[��B�Z�U^_���c�����r�+�[��ϗWr���0�uҗhm�w�=���+p�hwa@ 綸a�Y*�>�� ֏/���OV`�p�t��i*@Q�����eؙ��ĩgɠ `�JC~{-�R���C��I�`���Y����8�l�e��,�ۃE��}�'f�?�k&!�:�U0����Τ�]��nd��V�|�ˏv�8Z�g�ncK,O�aT��y����n��n�F��Z�z��F��Y��˅G�0�mH�/�,�>��c��K5t���xq���0^>|��I��y�7�Y�Ω*f?_de�_>��/��M،	ɱ�ōo���zQ�Z
D�M?x�4��~ 4@�éYS�0_��Edx�i��&؈/�+�#��{ԫxzՠ����>�]���V̜l"m���;�a�KD�x�S�d���;���$��h��L0��G��_��X���{���y7�M,q˫�yi�����ݒS��\��S�O��8�˼��w%��y�\eBFX���y���hxye<�4�`�PȔ17��ӭ"��Ѭ܏�v'�x�߯�����A/3�c��8/��~	�౔$�G�]X�O@�ۭ�I[2ښY�R�zk�~3P�A�8��b�l���_.��y1Pf������(@wXZ��&'fyɖ�_���N{L'�Z��%V^0�G��>դ
� ������[�������������O�hHSy��y�����a�,1�yn��^����������x*�>��x�t!p�"���W��F]���
�����K�<�|g]2U�����F����.�^��ƬX�(�����SA�NXa�poĵ0��j?�GV��a�������EA��,���pܶ}䥔�l��Do�jͥ�DA/�OLW�'�<�v�-����M޲#���&�<y7ĭN�K���P�#0�����f�d<e&�'R!�b�s��l�Lx�S��������e��!9F��
����\��Ec�*���qO���<2���S��Z|/�ꉫ� 3А>�ʅ1/�L���A瀠�=ws��W "��Zϗ)7���e���/��.��NU�xd��ѩ�D%&��H^|a`2�#e��Mr�Z�T��:P6J�tH��Ol@ ����N�v\�ǃt!:ZI������A=�7/���G ��&&GC��c���~�k�70 t��%��왲al`�e��	q�5얐r'R�2!���^2�:,���T0n�l���|�����/�_
!��$���d��"P�'��&�0���[��U�|�����O��+3 i ?�� ��>=��cWݷ7�k$�x�`|���D��R*|��
,���>�;�y����8N�y�� ����߬�g^t1A�λ��>�g��t�Ҷ[S����}.`i+�w�������
t���ڸ��sVQ����
CX����Xط�Q��u)8_����z�����p��n{��y�k18�Edb���<�p��_�N�A�|''a�v�[μ�Q�m7�o�j� ���h=)2�0R&�罗�Dx��j0#S\`rA��X=���r�ɥ̭�"$�,kO)�o}�B�#g���Y�u�p`@<�� *XlbV�M�tA�.�y�^	*~���!q��,�_�������K�}�'��נm�/��|��>�}x��I��ӑ@l5oY��g$}��?ŭ��:��g��0@�Ǜ��#��=����⸌��	ݸ��ٹ�@pk�{�9#��)X5���T �,�n��⋽#_�<�d'�e���a��ӡ,���!bA��#��҅�&��8�� qf#�/�noF{U
@
#{�Y��WV�5���[k_���O��U���Pͼ �\�HJT4���gZ��VHn�;/�)|�x]D*$�����,��F8��B򩟈�|�#�h{@�V�6�
ғ�.v�l�Ǻ_��
�����PU}��]A� UN��G$6��#�W��&�U"l����;�ȼx-_�Z&�o�ʇ-"Ӂ��l��_��(6;GO����}��l7yѼ��T�,<x�o#�F��S��"��`m�`S������x�) �j���/�Ԗ�H�k�j3/� �U��{�5�R�,6_a�R����G�	R��"�dG������/Ƕ�yjc;��������ߣ^U���w�W�/6���nͫ
*O�zAX ��&tO\���`�SS7o��Y8����N�Q+�e���K����|���ׄ�H��ey9@�첨^n]����iĥl���_��M�p���e�}��Og����d<�o=�"����˛6��đ�Ζ�ッi�3�H�+E��4c8v�����*:�L��c{{��G�
{���s{Ue�;��֘\���=���Nᣮ��j��]��\�qa��A�6>^����`g0C�!��\�;c)�BR�F����t�	މl����ǋ�x���M:�z�#h?�ݢ;6��8Z�.��_]�X�ew΃�$ԛ�Y��5�.h��W��$��
���T��|8�ݡj�X9��P�� �<�{Y���Vo&/�D�k)�V4��.�S.>�ȷ�0o��_o��lA��>0�a5��)��<�x�:��V�x�ɥ�y���X�q�rl"^C�(���^A)� f������L*�\�vw,N���4/�=X8���d�2.��Lk,���Xu��� )�ZP��҅�,W������2}϶Ɔ���6k�ct� '��l���^[�f���_�k�$z��Ɩ�]%��r̕yl�H��d�W@��o�]4�O\!t���q��}�V�ts����m`F�A�����H,�d��Ō�I~��秧��)��,         T  x����N�0���SX�Av�8�H�0t@,,,��Pը�ĜV�$�*� �iH_��F�����"Ew���N>����}��8<޳\��^c��ci'v
(������5�v��w�����'꯰�W�ca��3��'}|#>��]���S�s;�t�NI�?�e@2)5�q��"H�$e�,|'�q���r�iJ�Kt�4Z�kM�ӆV�7�F}ޏ.�8I�1h�`Z�-����%YZKg�M�����޸�e^�����-A!Y�B�I2�Qܥء\��hFʻ�Ջu�N��,�U�S��Y�.�B�Q2#�搦�A3#���ߏ��N�c_i�     