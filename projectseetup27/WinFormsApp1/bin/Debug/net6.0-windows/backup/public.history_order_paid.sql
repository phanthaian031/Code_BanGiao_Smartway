PGDMP     -    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            1           1259    244979    history_order_paid    TABLE     '  CREATE TABLE public.history_order_paid (
    id integer NOT NULL,
    note character varying DEFAULT ''::character varying NOT NULL,
    request_id bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL
);
 &   DROP TABLE public.history_order_paid;
       public         heap    postgres    false            2           1259    244988    history_order_paid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.history_order_paid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.history_order_paid_id_seq;
       public          postgres    false    305            �           0    0    history_order_paid_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.history_order_paid_id_seq OWNED BY public.history_order_paid.id;
          public          postgres    false    306            R           2604    246403    history_order_paid id    DEFAULT     ~   ALTER TABLE ONLY public.history_order_paid ALTER COLUMN id SET DEFAULT nextval('public.history_order_paid_id_seq'::regclass);
 D   ALTER TABLE public.history_order_paid ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305            X           2606    246652 1   history_order_paid PK_c767259de3867c7c751f4c076ae 
   CONSTRAINT     q   ALTER TABLE ONLY public.history_order_paid
    ADD CONSTRAINT "PK_c767259de3867c7c751f4c076ae" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.history_order_paid DROP CONSTRAINT "PK_c767259de3867c7c751f4c076ae";
       public            postgres    false    305            Z           2606    246720 1   history_order_paid UQ_1c34dcb7345c524e8ebfb119b63 
   CONSTRAINT     t   ALTER TABLE ONLY public.history_order_paid
    ADD CONSTRAINT "UQ_1c34dcb7345c524e8ebfb119b63" UNIQUE (request_id);
 ]   ALTER TABLE ONLY public.history_order_paid DROP CONSTRAINT "UQ_1c34dcb7345c524e8ebfb119b63";
       public            postgres    false    305           