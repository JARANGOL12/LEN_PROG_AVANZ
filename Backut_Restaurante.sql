PGDMP                      |            RESTAURANTE    15.8    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16396    RESTAURANTE    DATABASE        CREATE DATABASE "RESTAURANTE" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE "RESTAURANTE";
                postgres    false            �            1259    16425    catalogo    TABLE     i  CREATE TABLE public.catalogo (
    id_prenda integer NOT NULL,
    nombre character varying(250) NOT NULL,
    descripcion text,
    categoria character varying(100) NOT NULL,
    talla character varying(20) NOT NULL,
    color character varying(50) NOT NULL,
    precio numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    imagen_url character varying(2500),
    marca character varying(100),
    material character varying(100),
    genero character varying(20),
    estado_auditoria character(1) DEFAULT '1'::bpchar NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.catalogo;
       public         heap    postgres    false            �            1259    16424    catalogo_id_prenda_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogo_id_prenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.catalogo_id_prenda_seq;
       public          postgres    false    217                       0    0    catalogo_id_prenda_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.catalogo_id_prenda_seq OWNED BY public.catalogo.id_prenda;
          public          postgres    false    216            �            1259    16413 
   sucursales    TABLE     J  CREATE TABLE public.sucursales (
    id_sucursal integer NOT NULL,
    nombre character varying(250) NOT NULL,
    direccion character varying(500) NOT NULL,
    imagen_url character varying(2500),
    telefono character varying(20),
    correo character varying(200),
    dias_atencion character varying(250),
    horario_atencion character varying(250),
    latitud character varying(200) NOT NULL,
    longitud character varying(200) NOT NULL,
    estado_auditoria character(1) DEFAULT 1 NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.sucursales;
       public         heap    postgres    false            �            1259    16412    sucursales_id_sucursal_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursales_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.sucursales_id_sucursal_seq;
       public          postgres    false    215                       0    0    sucursales_id_sucursal_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.sucursales_id_sucursal_seq OWNED BY public.sucursales.id_sucursal;
          public          postgres    false    214            m           2604    16428    catalogo id_prenda    DEFAULT     x   ALTER TABLE ONLY public.catalogo ALTER COLUMN id_prenda SET DEFAULT nextval('public.catalogo_id_prenda_seq'::regclass);
 A   ALTER TABLE public.catalogo ALTER COLUMN id_prenda DROP DEFAULT;
       public          postgres    false    217    216    217            j           2604    16416    sucursales id_sucursal    DEFAULT     �   ALTER TABLE ONLY public.sucursales ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursales_id_sucursal_seq'::regclass);
 E   ALTER TABLE public.sucursales ALTER COLUMN id_sucursal DROP DEFAULT;
       public          postgres    false    215    214    215                      0    16425    catalogo 
   TABLE DATA           �   COPY public.catalogo (id_prenda, nombre, descripcion, categoria, talla, color, precio, stock, imagen_url, marca, material, genero, estado_auditoria, fecha_creacion) FROM stdin;
    public          postgres    false    217   �                 0    16413 
   sucursales 
   TABLE DATA           �   COPY public.sucursales (id_sucursal, nombre, direccion, imagen_url, telefono, correo, dias_atencion, horario_atencion, latitud, longitud, estado_auditoria, fecha_creacion) FROM stdin;
    public          postgres    false    215   -                  0    0    catalogo_id_prenda_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.catalogo_id_prenda_seq', 4, true);
          public          postgres    false    216                       0    0    sucursales_id_sucursal_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.sucursales_id_sucursal_seq', 3, true);
          public          postgres    false    214            s           2606    16434    catalogo catalogo_ropa_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.catalogo
    ADD CONSTRAINT catalogo_ropa_pkey PRIMARY KEY (id_prenda);
 E   ALTER TABLE ONLY public.catalogo DROP CONSTRAINT catalogo_ropa_pkey;
       public            postgres    false    217            q           2606    16422    sucursales sucursales_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id_sucursal);
 D   ALTER TABLE ONLY public.sucursales DROP CONSTRAINT sucursales_pkey;
       public            postgres    false    215               �  x�u�Mn�0FףS��EJ�%������(�n�#ӡ9EMn�EW=�/VJ��,�1��{x?�E����=�g�Vڱ{���_���׿B)�2��%C���p��k�L��j�e\��'�����\�ա5K:�mH��m`ȃ�����$�B��S�A$"�%Ō/�H�$��E\%_.#k���e�Jm���N��30����A��i	���d#�2���Ƅ�)�d����}���<�EYr���k�C4[պ��=�;��j���^�-�.��h�>=���;X�����,� 1B�Bae�3/�����ΫD�e���;��.�|?�[�g��~;��{J��#�m�j�[mBt��
x�=A����!�˘L3���f8�+��J��"ͣ�qE� �>��         �  x���Oo�0��Χ��ob;^iEK ԞZq���&ެQ��[�|z&Y�>�g���{�ݘ~�]��wt�B��쿞�䰐�_��0@�x���x�yJ����m��/5K!{��&���J��͎b�;��_G�
%9��Sp���>�]λ;?��f�H���/S���BjYZ��Ǵ��_L�@��G7�g�h� >|���C�Ot�xa�*D���e�
c(/��5V��D,�F�Mi�ԕ�e!���C�N�G�f���փ߈?�����'��p]�_�|iڑ��ɵ/!�yqz�����Ğ��5�y��n&g�\ǿg0�^�# [��\0~��S��
z�,J�x����ɲ8�u��]\-�?7�<�!4���#��qϬ`B1x&���ͷ����%�*m�R)�4z�n��|ӁT��ߟF ����P"^����z�`%|��@���M͵��wx)7Jm`K.��3-��8��@     