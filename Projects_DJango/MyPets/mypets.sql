PGDMP                 	    	    y            mypets    14.0    14.0 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16569    mypets    DATABASE     e   CREATE DATABASE mypets WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE mypets;
                postgres    false            ?            1259    16596 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16595    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            ?            1259    16605    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16604    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            ?            1259    16589    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16588    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            ?            1259    16612 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16621    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16620    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            ?            1259    16611    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            ?            1259    16628    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16627 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            ?            1259    16687    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16686    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            ?            1259    16580    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16579    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            ?            1259    16571    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16570    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            ?            1259    16716    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    16726    tienda_mascotas_city    TABLE     ?  CREATE TABLE public.tienda_mascotas_city (
    id bigint NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(150) NOT NULL,
    abrev character varying(4) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL,
    id_country_id bigint NOT NULL
);
 (   DROP TABLE public.tienda_mascotas_city;
       public         heap    postgres    false            ?            1259    16725    tienda_mascotas_city_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tienda_mascotas_city_id_seq;
       public          postgres    false    229            ?           0    0    tienda_mascotas_city_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tienda_mascotas_city_id_seq OWNED BY public.tienda_mascotas_city.id;
          public          postgres    false    228            ?            1259    16733    tienda_mascotas_country    TABLE     w  CREATE TABLE public.tienda_mascotas_country (
    id bigint NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(150) NOT NULL,
    abrev character varying(4) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL
);
 +   DROP TABLE public.tienda_mascotas_country;
       public         heap    postgres    false            ?            1259    16732    tienda_mascotas_country_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tienda_mascotas_country_id_seq;
       public          postgres    false    231            ?           0    0    tienda_mascotas_country_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tienda_mascotas_country_id_seq OWNED BY public.tienda_mascotas_country.id;
          public          postgres    false    230            ?            1259    16740 #   tienda_mascotas_identification_type    TABLE     =  CREATE TABLE public.tienda_mascotas_identification_type (
    id bigint NOT NULL,
    type character varying(150) NOT NULL,
    abrev character varying(4) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL
);
 7   DROP TABLE public.tienda_mascotas_identification_type;
       public         heap    postgres    false            ?            1259    16739 *   tienda_mascotas_identification_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_identification_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.tienda_mascotas_identification_type_id_seq;
       public          postgres    false    233            ?           0    0 *   tienda_mascotas_identification_type_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.tienda_mascotas_identification_type_id_seq OWNED BY public.tienda_mascotas_identification_type.id;
          public          postgres    false    232            ?            1259    16777    tienda_mascotas_pet    TABLE     ?  CREATE TABLE public.tienda_mascotas_pet (
    id bigint NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(150) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL,
    id_race_id bigint NOT NULL,
    id_type_id bigint NOT NULL,
    id_user_id bigint NOT NULL
);
 '   DROP TABLE public.tienda_mascotas_pet;
       public         heap    postgres    false            ?            1259    16776    tienda_mascotas_pet_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_pet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tienda_mascotas_pet_id_seq;
       public          postgres    false    243            ?           0    0    tienda_mascotas_pet_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tienda_mascotas_pet_id_seq OWNED BY public.tienda_mascotas_pet.id;
          public          postgres    false    242            ?            1259    16747    tienda_mascotas_race    TABLE     t  CREATE TABLE public.tienda_mascotas_race (
    id bigint NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(150) NOT NULL,
    abrev character varying(4) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL
);
 (   DROP TABLE public.tienda_mascotas_race;
       public         heap    postgres    false            ?            1259    16746    tienda_mascotas_race_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_race_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tienda_mascotas_race_id_seq;
       public          postgres    false    235            ?           0    0    tienda_mascotas_race_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tienda_mascotas_race_id_seq OWNED BY public.tienda_mascotas_race.id;
          public          postgres    false    234            ?            1259    16770    tienda_mascotas_session    TABLE     C  CREATE TABLE public.tienda_mascotas_session (
    id bigint NOT NULL,
    ip character varying(200) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL,
    id_user_id bigint NOT NULL
);
 +   DROP TABLE public.tienda_mascotas_session;
       public         heap    postgres    false            ?            1259    16769    tienda_mascotas_session_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tienda_mascotas_session_id_seq;
       public          postgres    false    241            ?           0    0    tienda_mascotas_session_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tienda_mascotas_session_id_seq OWNED BY public.tienda_mascotas_session.id;
          public          postgres    false    240            ?            1259    16754    tienda_mascotas_type    TABLE     t  CREATE TABLE public.tienda_mascotas_type (
    id bigint NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(150) NOT NULL,
    abrev character varying(4) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL
);
 (   DROP TABLE public.tienda_mascotas_type;
       public         heap    postgres    false            ?            1259    16753    tienda_mascotas_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tienda_mascotas_type_id_seq;
       public          postgres    false    237            ?           0    0    tienda_mascotas_type_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tienda_mascotas_type_id_seq OWNED BY public.tienda_mascotas_type.id;
          public          postgres    false    236            ?            1259    16761    tienda_mascotas_user    TABLE     -  CREATE TABLE public.tienda_mascotas_user (
    id bigint NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    number_id character varying(15) NOT NULL,
    email character varying(200) NOT NULL,
    password character varying(200) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone NOT NULL,
    id_city_id bigint NOT NULL,
    id_identification_type_id bigint NOT NULL
);
 (   DROP TABLE public.tienda_mascotas_user;
       public         heap    postgres    false            ?            1259    16760    tienda_mascotas_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tienda_mascotas_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tienda_mascotas_user_id_seq;
       public          postgres    false    239            ?           0    0    tienda_mascotas_user_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tienda_mascotas_user_id_seq OWNED BY public.tienda_mascotas_user.id;
          public          postgres    false    238            ?           2604    16599    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    16608    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            ?           2604    16592    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    16615    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    16624    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    16631    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    16690    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    16583    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            ?           2604    16574    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    16729    tienda_mascotas_city id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_city ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_city_id_seq'::regclass);
 F   ALTER TABLE public.tienda_mascotas_city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            ?           2604    16736    tienda_mascotas_country id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_country ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_country_id_seq'::regclass);
 I   ALTER TABLE public.tienda_mascotas_country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            ?           2604    16743 &   tienda_mascotas_identification_type id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_identification_type ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_identification_type_id_seq'::regclass);
 U   ALTER TABLE public.tienda_mascotas_identification_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            ?           2604    16780    tienda_mascotas_pet id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_pet ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_pet_id_seq'::regclass);
 E   ALTER TABLE public.tienda_mascotas_pet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            ?           2604    16750    tienda_mascotas_race id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_race ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_race_id_seq'::regclass);
 F   ALTER TABLE public.tienda_mascotas_race ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            ?           2604    16773    tienda_mascotas_session id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_session ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_session_id_seq'::regclass);
 I   ALTER TABLE public.tienda_mascotas_session ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            ?           2604    16757    tienda_mascotas_type id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_type ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_type_id_seq'::regclass);
 F   ALTER TABLE public.tienda_mascotas_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            ?           2604    16764    tienda_mascotas_user id    DEFAULT     ?   ALTER TABLE ONLY public.tienda_mascotas_user ALTER COLUMN id SET DEFAULT nextval('public.tienda_mascotas_user_id_seq'::regclass);
 F   ALTER TABLE public.tienda_mascotas_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            ?          0    16596 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   ??       ?          0    16605    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218    ?       ?          0    16589    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ?       ?          0    16612 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   D?       ?          0    16621    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   [?       ?          0    16628    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   x?       ?          0    16687    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ??       ?          0    16580    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ??       ?          0    16571    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   Z?       ?          0    16716    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   !?       ?          0    16726    tienda_mascotas_city 
   TABLE DATA           ?   COPY public.tienda_mascotas_city (id, code, name, abrev, status, created_at, updated_at, deleted_at, id_country_id) FROM stdin;
    public          postgres    false    229   <?       ?          0    16733    tienda_mascotas_country 
   TABLE DATA           t   COPY public.tienda_mascotas_country (id, code, name, abrev, status, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    231   Y?       ?          0    16740 #   tienda_mascotas_identification_type 
   TABLE DATA           r   COPY public.tienda_mascotas_identification_type (id, type, abrev, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    233   v?       ?          0    16777    tienda_mascotas_pet 
   TABLE DATA           ?   COPY public.tienda_mascotas_pet (id, code, name, status, created_at, updated_at, deleted_at, id_race_id, id_type_id, id_user_id) FROM stdin;
    public          postgres    false    243   ??       ?          0    16747    tienda_mascotas_race 
   TABLE DATA           q   COPY public.tienda_mascotas_race (id, code, name, abrev, status, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    235   ??       ?          0    16770    tienda_mascotas_session 
   TABLE DATA           q   COPY public.tienda_mascotas_session (id, ip, status, created_at, updated_at, deleted_at, id_user_id) FROM stdin;
    public          postgres    false    241   ??       ?          0    16754    tienda_mascotas_type 
   TABLE DATA           q   COPY public.tienda_mascotas_type (id, code, name, abrev, status, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    237   ??       ?          0    16761    tienda_mascotas_user 
   TABLE DATA           ?   COPY public.tienda_mascotas_user (id, first_name, last_name, number_id, email, password, status, created_at, updated_at, deleted_at, id_city_id, id_identification_type_id) FROM stdin;
    public          postgres    false    239   ?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    219            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    225            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    211            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    209            ?           0    0    tienda_mascotas_city_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tienda_mascotas_city_id_seq', 1, false);
          public          postgres    false    228            ?           0    0    tienda_mascotas_country_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tienda_mascotas_country_id_seq', 1, false);
          public          postgres    false    230            ?           0    0 *   tienda_mascotas_identification_type_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.tienda_mascotas_identification_type_id_seq', 1, false);
          public          postgres    false    232            ?           0    0    tienda_mascotas_pet_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tienda_mascotas_pet_id_seq', 1, false);
          public          postgres    false    242            ?           0    0    tienda_mascotas_race_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tienda_mascotas_race_id_seq', 1, false);
          public          postgres    false    234            ?           0    0    tienda_mascotas_session_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tienda_mascotas_session_id_seq', 1, false);
          public          postgres    false    240            ?           0    0    tienda_mascotas_type_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tienda_mascotas_type_id_seq', 1, false);
          public          postgres    false    236            ?           0    0    tienda_mascotas_user_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tienda_mascotas_user_id_seq', 1, false);
          public          postgres    false    238            ?           2606    16714    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            ?           2606    16644 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            ?           2606    16610 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            ?           2606    16601    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            ?           2606    16635 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            ?           2606    16594 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            ?           2606    16626 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            ?           2606    16659 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            ?           2606    16617    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            ?           2606    16633 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            ?           2606    16673 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            ?           2606    16709     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            ?           2606    16695 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            ?           2606    16587 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            ?           2606    16585 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            ?           2606    16578 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?           2606    16722 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            ?           2606    16731 .   tienda_mascotas_city tienda_mascotas_city_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tienda_mascotas_city
    ADD CONSTRAINT tienda_mascotas_city_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tienda_mascotas_city DROP CONSTRAINT tienda_mascotas_city_pkey;
       public            postgres    false    229            ?           2606    16738 4   tienda_mascotas_country tienda_mascotas_country_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tienda_mascotas_country
    ADD CONSTRAINT tienda_mascotas_country_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.tienda_mascotas_country DROP CONSTRAINT tienda_mascotas_country_pkey;
       public            postgres    false    231            ?           2606    16745 L   tienda_mascotas_identification_type tienda_mascotas_identification_type_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_identification_type
    ADD CONSTRAINT tienda_mascotas_identification_type_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.tienda_mascotas_identification_type DROP CONSTRAINT tienda_mascotas_identification_type_pkey;
       public            postgres    false    233                       2606    16782 ,   tienda_mascotas_pet tienda_mascotas_pet_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tienda_mascotas_pet
    ADD CONSTRAINT tienda_mascotas_pet_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tienda_mascotas_pet DROP CONSTRAINT tienda_mascotas_pet_pkey;
       public            postgres    false    243            ?           2606    16752 .   tienda_mascotas_race tienda_mascotas_race_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tienda_mascotas_race
    ADD CONSTRAINT tienda_mascotas_race_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tienda_mascotas_race DROP CONSTRAINT tienda_mascotas_race_pkey;
       public            postgres    false    235                       2606    16775 4   tienda_mascotas_session tienda_mascotas_session_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tienda_mascotas_session
    ADD CONSTRAINT tienda_mascotas_session_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.tienda_mascotas_session DROP CONSTRAINT tienda_mascotas_session_pkey;
       public            postgres    false    241            ?           2606    16759 .   tienda_mascotas_type tienda_mascotas_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tienda_mascotas_type
    ADD CONSTRAINT tienda_mascotas_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tienda_mascotas_type DROP CONSTRAINT tienda_mascotas_type_pkey;
       public            postgres    false    237            ?           2606    16768 .   tienda_mascotas_user tienda_mascotas_user_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tienda_mascotas_user
    ADD CONSTRAINT tienda_mascotas_user_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tienda_mascotas_user DROP CONSTRAINT tienda_mascotas_user_pkey;
       public            postgres    false    239            ?           1259    16715    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            ?           1259    16655 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            ?           1259    16656 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            ?           1259    16641 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            ?           1259    16671 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            ?           1259    16670 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            ?           1259    16685 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            ?           1259    16684 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            ?           1259    16710     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            ?           1259    16706 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            ?           1259    16707 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            ?           1259    16724 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            ?           1259    16723 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            ?           1259    16824 +   tienda_mascotas_city_id_country_id_24c85fc0    INDEX     u   CREATE INDEX tienda_mascotas_city_id_country_id_24c85fc0 ON public.tienda_mascotas_city USING btree (id_country_id);
 ?   DROP INDEX public.tienda_mascotas_city_id_country_id_24c85fc0;
       public            postgres    false    229                       1259    16821 '   tienda_mascotas_pet_id_race_id_529431ee    INDEX     m   CREATE INDEX tienda_mascotas_pet_id_race_id_529431ee ON public.tienda_mascotas_pet USING btree (id_race_id);
 ;   DROP INDEX public.tienda_mascotas_pet_id_race_id_529431ee;
       public            postgres    false    243                       1259    16822 '   tienda_mascotas_pet_id_type_id_56949a74    INDEX     m   CREATE INDEX tienda_mascotas_pet_id_type_id_56949a74 ON public.tienda_mascotas_pet USING btree (id_type_id);
 ;   DROP INDEX public.tienda_mascotas_pet_id_type_id_56949a74;
       public            postgres    false    243                       1259    16823 '   tienda_mascotas_pet_id_user_id_677e48b5    INDEX     m   CREATE INDEX tienda_mascotas_pet_id_user_id_677e48b5 ON public.tienda_mascotas_pet USING btree (id_user_id);
 ;   DROP INDEX public.tienda_mascotas_pet_id_user_id_677e48b5;
       public            postgres    false    243                        1259    16805 +   tienda_mascotas_session_id_user_id_36c0c1e4    INDEX     u   CREATE INDEX tienda_mascotas_session_id_user_id_36c0c1e4 ON public.tienda_mascotas_session USING btree (id_user_id);
 ?   DROP INDEX public.tienda_mascotas_session_id_user_id_36c0c1e4;
       public            postgres    false    241            ?           1259    16798 (   tienda_mascotas_user_id_city_id_240032b8    INDEX     o   CREATE INDEX tienda_mascotas_user_id_city_id_240032b8 ON public.tienda_mascotas_user USING btree (id_city_id);
 <   DROP INDEX public.tienda_mascotas_user_id_city_id_240032b8;
       public            postgres    false    239            ?           1259    16799 7   tienda_mascotas_user_id_identification_type_id_929f30ca    INDEX     ?   CREATE INDEX tienda_mascotas_user_id_identification_type_id_929f30ca ON public.tienda_mascotas_user USING btree (id_identification_type_id);
 K   DROP INDEX public.tienda_mascotas_user_id_identification_type_id_929f30ca;
       public            postgres    false    239            
           2606    16650 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    218    3276            	           2606    16645 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    218    3281                       2606    16636 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    214    212    3271                       2606    16665 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    222    3281                       2606    16660 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3289    222    220                       2606    16679 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    3276    214                       2606    16674 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3289    220    224                       2606    16696 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    226    3271                       2606    16701 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    3289    220                       2606    16783 M   tienda_mascotas_city tienda_mascotas_city_id_country_id_24c85fc0_fk_tienda_ma    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_city
    ADD CONSTRAINT tienda_mascotas_city_id_country_id_24c85fc0_fk_tienda_ma FOREIGN KEY (id_country_id) REFERENCES public.tienda_mascotas_country(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.tienda_mascotas_city DROP CONSTRAINT tienda_mascotas_city_id_country_id_24c85fc0_fk_tienda_ma;
       public          postgres    false    231    229    3317                       2606    16806 H   tienda_mascotas_pet tienda_mascotas_pet_id_race_id_529431ee_fk_tienda_ma    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_pet
    ADD CONSTRAINT tienda_mascotas_pet_id_race_id_529431ee_fk_tienda_ma FOREIGN KEY (id_race_id) REFERENCES public.tienda_mascotas_race(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.tienda_mascotas_pet DROP CONSTRAINT tienda_mascotas_pet_id_race_id_529431ee_fk_tienda_ma;
       public          postgres    false    3321    235    243                       2606    16811 H   tienda_mascotas_pet tienda_mascotas_pet_id_type_id_56949a74_fk_tienda_ma    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_pet
    ADD CONSTRAINT tienda_mascotas_pet_id_type_id_56949a74_fk_tienda_ma FOREIGN KEY (id_type_id) REFERENCES public.tienda_mascotas_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.tienda_mascotas_pet DROP CONSTRAINT tienda_mascotas_pet_id_type_id_56949a74_fk_tienda_ma;
       public          postgres    false    3323    243    237                       2606    16816 H   tienda_mascotas_pet tienda_mascotas_pet_id_user_id_677e48b5_fk_tienda_ma    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_pet
    ADD CONSTRAINT tienda_mascotas_pet_id_user_id_677e48b5_fk_tienda_ma FOREIGN KEY (id_user_id) REFERENCES public.tienda_mascotas_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.tienda_mascotas_pet DROP CONSTRAINT tienda_mascotas_pet_id_user_id_677e48b5_fk_tienda_ma;
       public          postgres    false    243    239    3327                       2606    16800 M   tienda_mascotas_session tienda_mascotas_sess_id_user_id_36c0c1e4_fk_tienda_ma    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_session
    ADD CONSTRAINT tienda_mascotas_sess_id_user_id_36c0c1e4_fk_tienda_ma FOREIGN KEY (id_user_id) REFERENCES public.tienda_mascotas_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.tienda_mascotas_session DROP CONSTRAINT tienda_mascotas_sess_id_user_id_36c0c1e4_fk_tienda_ma;
       public          postgres    false    3327    239    241                       2606    16788 J   tienda_mascotas_user tienda_mascotas_user_id_city_id_240032b8_fk_tienda_ma    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tienda_mascotas_user
    ADD CONSTRAINT tienda_mascotas_user_id_city_id_240032b8_fk_tienda_ma FOREIGN KEY (id_city_id) REFERENCES public.tienda_mascotas_city(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.tienda_mascotas_user DROP CONSTRAINT tienda_mascotas_user_id_city_id_240032b8_fk_tienda_ma;
       public          postgres    false    3315    239    229                       2606    16793 T   tienda_mascotas_user tienda_mascotas_user_id_identification_ty_929f30ca_fk_tienda_ma    FK CONSTRAINT       ALTER TABLE ONLY public.tienda_mascotas_user
    ADD CONSTRAINT tienda_mascotas_user_id_identification_ty_929f30ca_fk_tienda_ma FOREIGN KEY (id_identification_type_id) REFERENCES public.tienda_mascotas_identification_type(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.tienda_mascotas_user DROP CONSTRAINT tienda_mascotas_user_id_identification_ty_929f30ca_fk_tienda_ma;
       public          postgres    false    3319    233    239            ?      x?????? ? ?      ?      x?????? ? ?      ?     x?m??n?0E??W?&Bh!???I?Y??ъ??????ؐ7?=?/?}???a>????v=??/?JW????U5??_?|u?£ /??y	?Q[ '?'?? C??????nsՀ?|?Nܜ ?c;?O?d??}?(H??8?\^???^0?J??\??!?{??!??V" .H6???ᖪ???-?O*?G?ȫ@?8??$Ci?Ty??>t??_wW??'J???&C???׆'?o?lsC?]????ᰫ'0Lo?????01?#{	c??!p??<??%؜>?q?A9?7t஠?F?.?.^?P?N_S??V?|??x??zЋ??ԃ~??K=??=0;????l??[d?[d???Y?Ef?E?m??X??*d&?W???bJ??[?g??$???y??J????,???i?D?
#!f?T	6?Q?????'?c}}V??(ǐ B?m$b, ?F3??Z?[O??1?YO???e^%(eqZ?T?RF??|Je1y?a?????b?Lf?3	??¨?P?ޔR??w??      ?     x?u?]O?0???Wx?[??????D???Dp???V??}?,??????蛓?7'9?? ???]rL??)?g?F??u?m???g?N??3??/}?7݁M$G???$[??o֡`?"(??&?l???}) ?????:?!??ռ????uG1 8??r=??c1]{ ???!???]???~٦K?\?Yߚ?s/?R????^?ӝ?<]UO??O???X??ӌv饒???.??!C?:zX????F??@b?!d?0q???0?/?]      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?e?K
?0D??aJ?????p?T??ƒ?}?C????͌r@?"~q?`y????ET%?2?X?(?o?c??fkb?x???s??p?h\H}4R?i??G<?k?٤???q????Ć?5??w]ý؊?oy,?#nh?L??}A?-?p?      ?   ?  x????n? ???S??p?+}?%?(s$*pY?~@m2?????q??Qh:7G3?xYLhB??l??c??#?#?/ Έ?	=	$[|D?????ǁs?4'H????OD??z?`5?!??/ʛ?}??wJ??>?c.df???)?t???ۨս;?%?,??????l??j??wԬ'???8/?D?????j1~?!??r^M?K?f?[?( Ίض?ȆZCZ̤????	??n?R?=%/???}=?@z??*??3FbVo???q?钂ĥa ?ݏ????xWY?J6?m>?Vʧm????t?x：Lz????%ZD ???y?Y ܒB??$9z%1???
І?[??0?u?W?uI??Z????M??vJm??(?:΀?o?f?S?J, ɮ??	f;???"????l?5s??A?sQ??g g*Osʊ????p??`i?      ?     x???n?0  ?g??? ?-R??zW?? Yb??	ȭ(t|????gқ???L?????,?a?/C????ʰ??l,???n?󪥆?r?UMU??y???k?­?????1??F^??[?+f?}?$\?}?ɮ%C?="????&?б?b9??'?`'?	8H???~??C?f?m?<??^]???J??6?I^???'ɓn??????v?{??ֵ}g?,Ca??v.F?xCR{y?q??@P?@E?\Z[ ?u??P????E??v_?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     