PGDMP         '            
    z            siakad    14.5    14.5                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16395    siakad    DATABASE     j   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16419    dosen    TABLE     ?   CREATE TABLE public.dosen (
    iddosen integer NOT NULL,
    namadosen character varying(30),
    namamk character varying(30)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16418    dosen_iddosen_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_iddosen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dosen_iddosen_seq;
       public          postgres    false    216                       0    0    dosen_iddosen_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dosen_iddosen_seq OWNED BY public.dosen.iddosen;
          public          postgres    false    215            ?            1259    16397 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16396    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            ?            1259    16404    makul    TABLE     n   CREATE TABLE public.makul (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);
    DROP TABLE public.makul;
       public         heap    postgres    false            ?            1259    16403    makul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.makul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.makul_idmk_seq;
       public          postgres    false    212                       0    0    makul_idmk_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.makul_idmk_seq OWNED BY public.makul.idmk;
          public          postgres    false    211            ?            1259    16411    matkul    TABLE     m   CREATE TABLE public.matkul (
    idmk integer NOT NULL,
    namamk character varying(30),
    sks integer
);
    DROP TABLE public.matkul;
       public         heap    postgres    false            ?            1259    16410    matkul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.matkul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.matkul_idmk_seq;
       public          postgres    false    214                       0    0    matkul_idmk_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.matkul_idmk_seq OWNED BY public.matkul.idmk;
          public          postgres    false    213            n           2604    16422    dosen iddosen    DEFAULT     n   ALTER TABLE ONLY public.dosen ALTER COLUMN iddosen SET DEFAULT nextval('public.dosen_iddosen_seq'::regclass);
 <   ALTER TABLE public.dosen ALTER COLUMN iddosen DROP DEFAULT;
       public          postgres    false    215    216    216            k           2604    16400    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    209    210    210            l           2604    16407 
   makul idmk    DEFAULT     h   ALTER TABLE ONLY public.makul ALTER COLUMN idmk SET DEFAULT nextval('public.makul_idmk_seq'::regclass);
 9   ALTER TABLE public.makul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    211    212    212            m           2604    16414    matkul idmk    DEFAULT     j   ALTER TABLE ONLY public.matkul ALTER COLUMN idmk SET DEFAULT nextval('public.matkul_idmk_seq'::regclass);
 :   ALTER TABLE public.matkul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    214    213    214            	          0    16419    dosen 
   TABLE DATA           ;   COPY public.dosen (iddosen, namadosen, namamk) FROM stdin;
    public          postgres    false    216   ?                 0    16397 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210   J                  0    16404    makul 
   TABLE DATA           4   COPY public.makul (idmk, namamk, nilai) FROM stdin;
    public          postgres    false    212   ?                  0    16411    matkul 
   TABLE DATA           3   COPY public.matkul (idmk, namamk, sks) FROM stdin;
    public          postgres    false    214   ?                   0    0    dosen_iddosen_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dosen_iddosen_seq', 1, false);
          public          postgres    false    215                       0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209                       0    0    makul_idmk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.makul_idmk_seq', 1, false);
          public          postgres    false    211                       0    0    matkul_idmk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.matkul_idmk_seq', 1, false);
          public          postgres    false    213            v           2606    16424    dosen dosen_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (iddosen);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    216            p           2606    16402    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            r           2606    16409    makul makul_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (idmk);
 :   ALTER TABLE ONLY public.makul DROP CONSTRAINT makul_pkey;
       public            postgres    false    212            t           2606    16416    matkul matkul_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.matkul
    ADD CONSTRAINT matkul_pkey PRIMARY KEY (idmk);
 <   ALTER TABLE ONLY public.matkul DROP CONSTRAINT matkul_pkey;
       public            postgres    false    214            	   C   x?32240?.?IK?L?+??L??JLJ,R???KM,?2?q??V%fgr:%g?$?$r??qqq @?S         @   x?322407??*??L?+??t?+J?N?K?2I?q*8?? e?3?J?9?S?R??b???? !d?            x?????? ? ?         #   x?34040?tr??4???8??9??b???? M??     