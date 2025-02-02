PGDMP     9    (                z            acc-v4    12.9    14.1 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    acc-v4    DATABASE     ]   CREATE DATABASE "acc-v4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "acc-v4";
                doadmin    false            �            1259    16441    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    acc-v4    false            �            1259    16439    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          acc-v4    false    211            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          acc-v4    false    210            �            1259    16553    admin_permissions_role_links    TABLE     e   CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    acc-v4    false            �            1259    16467    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    acc-v4    false            �            1259    16465    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          acc-v4    false    215            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          acc-v4    false    214            �            1259    16454    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    acc-v4    false            �            1259    16452    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          acc-v4    false    213            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          acc-v4    false    212            �            1259    16558    admin_users_roles_links    TABLE     Z   CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    acc-v4    false            �            1259    16724    code_challenges    TABLE     �  CREATE TABLE public.code_challenges (
    id integer NOT NULL,
    starting_code text,
    prompt text,
    internal_label character varying(255),
    internal_notes text,
    get_starting_code_from_previous_challenge boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    published_at timestamp(6) without time zone
);
 #   DROP TABLE public.code_challenges;
       public         heap    acc-v4    false                       1259    16872    code_challenges_components    TABLE     �   CREATE TABLE public.code_challenges_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 .   DROP TABLE public.code_challenges_components;
       public         heap    acc-v4    false                       1259    16870 !   code_challenges_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.code_challenges_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.code_challenges_components_id_seq;
       public          acc-v4    false    260            �           0    0 !   code_challenges_components_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.code_challenges_components_id_seq OWNED BY public.code_challenges_components.id;
          public          acc-v4    false    259            �            1259    16722    code_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.code_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.code_challenges_id_seq;
       public          acc-v4    false    234            �           0    0    code_challenges_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.code_challenges_id_seq OWNED BY public.code_challenges.id;
          public          acc-v4    false    233            �            1259    16812 $   components_challenge_challenge_hints    TABLE     �   CREATE TABLE public.components_challenge_challenge_hints (
    id integer NOT NULL,
    text text,
    recommended_time_before_viewing numeric(10,2)
);
 8   DROP TABLE public.components_challenge_challenge_hints;
       public         heap    acc-v4    false            �            1259    16810 +   components_challenge_challenge_hints_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_challenge_hints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_challenge_challenge_hints_id_seq;
       public          acc-v4    false    248            �           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_challenge_challenge_hints_id_seq OWNED BY public.components_challenge_challenge_hints.id;
          public          acc-v4    false    247            �            1259    16823 )   components_challenge_code_challenge_tests    TABLE     �   CREATE TABLE public.components_challenge_code_challenge_tests (
    id integer NOT NULL,
    label character varying(255),
    internal_test text,
    further_explanation text
);
 =   DROP TABLE public.components_challenge_code_challenge_tests;
       public         heap    acc-v4    false            �            1259    16821 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_code_challenge_tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_challenge_code_challenge_tests_id_seq;
       public          acc-v4    false    250            �           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_challenge_code_challenge_tests_id_seq OWNED BY public.components_challenge_code_challenge_tests.id;
          public          acc-v4    false    249            �            1259    16834 ,   components_challenge_multiple_choice_options    TABLE     �   CREATE TABLE public.components_challenge_multiple_choice_options (
    id integer NOT NULL,
    text text,
    is_correct boolean,
    incorrect_choice_explanation text
);
 @   DROP TABLE public.components_challenge_multiple_choice_options;
       public         heap    acc-v4    false            �            1259    16832 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_multiple_choice_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_challenge_multiple_choice_options_id_seq;
       public          acc-v4    false    252            �           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_challenge_multiple_choice_options_id_seq OWNED BY public.components_challenge_multiple_choice_options.id;
          public          acc-v4    false    251            �            1259    16845    components_content_challenges    TABLE     O   CREATE TABLE public.components_content_challenges (
    id integer NOT NULL
);
 1   DROP TABLE public.components_content_challenges;
       public         heap    acc-v4    false                       1259    16980 2   components_content_challenges_code_challenge_links    TABLE     �   CREATE TABLE public.components_content_challenges_code_challenge_links (
    challenges_id integer,
    code_challenge_id integer
);
 F   DROP TABLE public.components_content_challenges_code_challenge_links;
       public         heap    acc-v4    false            �            1259    16843 $   components_content_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_content_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_content_challenges_id_seq;
       public          acc-v4    false    254            �           0    0 $   components_content_challenges_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_content_challenges_id_seq OWNED BY public.components_content_challenges.id;
          public          acc-v4    false    253                       1259    17964 =   components_content_challenges_multiple_choice_challenge_links    TABLE     �   CREATE TABLE public.components_content_challenges_multiple_choice_challenge_links (
    challenges_id integer,
    multiple_choice_challenge_id integer
);
 Q   DROP TABLE public.components_content_challenges_multiple_choice_challenge_links;
       public         heap    acc-v4    false                        1259    16853 %   components_content_external_resources    TABLE     �   CREATE TABLE public.components_content_external_resources (
    id integer NOT NULL,
    name character varying(255),
    link character varying(255),
    type character varying(255)
);
 9   DROP TABLE public.components_content_external_resources;
       public         heap    acc-v4    false            �            1259    16851 ,   components_content_external_resources_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_content_external_resources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_content_external_resources_id_seq;
       public          acc-v4    false    256            �           0    0 ,   components_content_external_resources_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_content_external_resources_id_seq OWNED BY public.components_content_external_resources.id;
          public          acc-v4    false    255                       1259    16864    components_misc_module_lessons    TABLE     P   CREATE TABLE public.components_misc_module_lessons (
    id integer NOT NULL
);
 2   DROP TABLE public.components_misc_module_lessons;
       public         heap    acc-v4    false                       1259    16862 %   components_misc_module_lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_misc_module_lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_misc_module_lessons_id_seq;
       public          acc-v4    false    258            �           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_misc_module_lessons_id_seq OWNED BY public.components_misc_module_lessons.id;
          public          acc-v4    false    257                       1259    16990 +   components_misc_module_lessons_lesson_links    TABLE     y   CREATE TABLE public.components_misc_module_lessons_lesson_links (
    module_lesson_id integer,
    lesson_id integer
);
 ?   DROP TABLE public.components_misc_module_lessons_lesson_links;
       public         heap    acc-v4    false            �            1259    16737    courses    TABLE     @  CREATE TABLE public.courses (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.courses;
       public         heap    acc-v4    false            �            1259    16735    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          acc-v4    false    236            �           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          acc-v4    false    235                       1259    16885    courses_modules_links    TABLE     \   CREATE TABLE public.courses_modules_links (
    course_id integer,
    module_id integer
);
 )   DROP TABLE public.courses_modules_links;
       public         heap    acc-v4    false            �            1259    16493    files    TABLE     {  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    acc-v4    false            �            1259    16491    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          acc-v4    false    219            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          acc-v4    false    218            �            1259    16563    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    acc-v4    false            �            1259    16506    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    acc-v4    false            �            1259    16504    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          acc-v4    false    221            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          acc-v4    false    220            �            1259    16750    lessons    TABLE     n  CREATE TABLE public.lessons (
    id integer NOT NULL,
    slug character varying(255),
    name character varying(255),
    is_hard boolean,
    internal_notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.lessons;
       public         heap    acc-v4    false                       1259    16892    lessons_components    TABLE     �   CREATE TABLE public.lessons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 &   DROP TABLE public.lessons_components;
       public         heap    acc-v4    false                       1259    16890    lessons_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.lessons_components_id_seq;
       public          acc-v4    false    263            �           0    0    lessons_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lessons_components_id_seq OWNED BY public.lessons_components.id;
          public          acc-v4    false    262            �            1259    16748    lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.lessons_id_seq;
       public          acc-v4    false    238            �           0    0    lessons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;
          public          acc-v4    false    237                       1259    16905    lessons_module_links    TABLE     [   CREATE TABLE public.lessons_module_links (
    lesson_id integer,
    module_id integer
);
 (   DROP TABLE public.lessons_module_links;
       public         heap    acc-v4    false            	           1259    16910    lessons_syntax_entry_links    TABLE     g   CREATE TABLE public.lessons_syntax_entry_links (
    lesson_id integer,
    syntax_entry_id integer
);
 .   DROP TABLE public.lessons_syntax_entry_links;
       public         heap    acc-v4    false            �            1259    16763    modules    TABLE       CREATE TABLE public.modules (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    published_at timestamp(6) without time zone
);
    DROP TABLE public.modules;
       public         heap    acc-v4    false                       1259    16917    modules_components    TABLE     �   CREATE TABLE public.modules_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 &   DROP TABLE public.modules_components;
       public         heap    acc-v4    false            
           1259    16915    modules_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.modules_components_id_seq;
       public          acc-v4    false    267            �           0    0    modules_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.modules_components_id_seq OWNED BY public.modules_components.id;
          public          acc-v4    false    266            �            1259    16761    modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.modules_id_seq;
       public          acc-v4    false    240            �           0    0    modules_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.modules_id_seq OWNED BY public.modules.id;
          public          acc-v4    false    239            �            1259    16773    multiple_choice_challenges    TABLE     v  CREATE TABLE public.multiple_choice_challenges (
    id integer NOT NULL,
    prompt text,
    internal_label character varying(255),
    can_select_multiple_options boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    published_at timestamp(6) without time zone
);
 .   DROP TABLE public.multiple_choice_challenges;
       public         heap    acc-v4    false                       1259    16932 %   multiple_choice_challenges_components    TABLE     �   CREATE TABLE public.multiple_choice_challenges_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 9   DROP TABLE public.multiple_choice_challenges_components;
       public         heap    acc-v4    false                       1259    16930 ,   multiple_choice_challenges_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multiple_choice_challenges_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.multiple_choice_challenges_components_id_seq;
       public          acc-v4    false    269            �           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.multiple_choice_challenges_components_id_seq OWNED BY public.multiple_choice_challenges_components.id;
          public          acc-v4    false    268            �            1259    16771 !   multiple_choice_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multiple_choice_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.multiple_choice_challenges_id_seq;
       public          acc-v4    false    242            �           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.multiple_choice_challenges_id_seq OWNED BY public.multiple_choice_challenges.id;
          public          acc-v4    false    241            �            1259    16480    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    acc-v4    false            �            1259    16478    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          acc-v4    false    217            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          acc-v4    false    216            �            1259    16419    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    acc-v4    false            �            1259    16417 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          acc-v4    false    207            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          acc-v4    false    206            �            1259    16408    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    acc-v4    false            �            1259    16406    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          acc-v4    false    205            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          acc-v4    false    204            �            1259    16400    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    acc-v4    false            �            1259    16398    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          acc-v4    false    203            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          acc-v4    false    202            �            1259    16430    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    acc-v4    false            �            1259    16428    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          acc-v4    false    209            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          acc-v4    false    208            �            1259    16786 
   sublessons    TABLE     Q  CREATE TABLE public.sublessons (
    id integer NOT NULL,
    name character varying(255),
    internal_notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text,
    published_at timestamp(6) without time zone
);
    DROP TABLE public.sublessons;
       public         heap    acc-v4    false                       1259    16947    sublessons_components    TABLE     �   CREATE TABLE public.sublessons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 )   DROP TABLE public.sublessons_components;
       public         heap    acc-v4    false                       1259    16945    sublessons_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sublessons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.sublessons_components_id_seq;
       public          acc-v4    false    271            �           0    0    sublessons_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.sublessons_components_id_seq OWNED BY public.sublessons_components.id;
          public          acc-v4    false    270            �            1259    16784    sublessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sublessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sublessons_id_seq;
       public          acc-v4    false    244            �           0    0    sublessons_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sublessons_id_seq OWNED BY public.sublessons.id;
          public          acc-v4    false    243                       1259    17845    sublessons_lesson_links    TABLE     a   CREATE TABLE public.sublessons_lesson_links (
    sublesson_id integer,
    lesson_id integer
);
 +   DROP TABLE public.sublessons_lesson_links;
       public         heap    acc-v4    false                       1259    17850    sublessons_syntax_entry_links    TABLE     m   CREATE TABLE public.sublessons_syntax_entry_links (
    sublesson_id integer,
    syntax_entry_id integer
);
 1   DROP TABLE public.sublessons_syntax_entry_links;
       public         heap    acc-v4    false            �            1259    16799    syntax_entries    TABLE     h  CREATE TABLE public.syntax_entries (
    id integer NOT NULL,
    content text,
    name character varying(255),
    internal_notes text,
    max_width integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.syntax_entries;
       public         heap    acc-v4    false            �            1259    16797    syntax_entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.syntax_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.syntax_entries_id_seq;
       public          acc-v4    false    246            �           0    0    syntax_entries_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.syntax_entries_id_seq OWNED BY public.syntax_entries.id;
          public          acc-v4    false    245                       1259    18078    syntax_entries_lesson_links    TABLE     h   CREATE TABLE public.syntax_entries_lesson_links (
    syntax_entry_id integer,
    lesson_id integer
);
 /   DROP TABLE public.syntax_entries_lesson_links;
       public         heap    acc-v4    false                       1259    24576    syntax_entries_sublesson_links    TABLE     n   CREATE TABLE public.syntax_entries_sublesson_links (
    syntax_entry_id integer,
    sublesson_id integer
);
 2   DROP TABLE public.syntax_entries_sublesson_links;
       public         heap    acc-v4    false            �            1259    16519    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    acc-v4    false            �            1259    16517    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          acc-v4    false    223            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          acc-v4    false    222            �            1259    16570    up_permissions_role_links    TABLE     b   CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    acc-v4    false            �            1259    16529    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    acc-v4    false            �            1259    16527    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          acc-v4    false    225            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          acc-v4    false    224            �            1259    16542    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    acc-v4    false            �            1259    16540    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          acc-v4    false    227            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          acc-v4    false    226            �            1259    16575    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    acc-v4    false                       2604    16444    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    211    210    211                       2604    16470    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    214    215    215                       2604    16457    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    213    212    213                       2604    16727    code_challenges id    DEFAULT     x   ALTER TABLE ONLY public.code_challenges ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_id_seq'::regclass);
 A   ALTER TABLE public.code_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    233    234    234                       2604    16875    code_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.code_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_components_id_seq'::regclass);
 L   ALTER TABLE public.code_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    260    259    260                       2604    16815 '   components_challenge_challenge_hints id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_challenge_hints_id_seq'::regclass);
 V   ALTER TABLE public.components_challenge_challenge_hints ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    248    247    248                       2604    16826 ,   components_challenge_code_challenge_tests id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_code_challenge_tests_id_seq'::regclass);
 [   ALTER TABLE public.components_challenge_code_challenge_tests ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    250    249    250                       2604    16837 /   components_challenge_multiple_choice_options id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_multiple_choice_options_id_seq'::regclass);
 ^   ALTER TABLE public.components_challenge_multiple_choice_options ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    251    252    252                       2604    16848     components_content_challenges id    DEFAULT     �   ALTER TABLE ONLY public.components_content_challenges ALTER COLUMN id SET DEFAULT nextval('public.components_content_challenges_id_seq'::regclass);
 O   ALTER TABLE public.components_content_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    253    254    254                       2604    16856 (   components_content_external_resources id    DEFAULT     �   ALTER TABLE ONLY public.components_content_external_resources ALTER COLUMN id SET DEFAULT nextval('public.components_content_external_resources_id_seq'::regclass);
 W   ALTER TABLE public.components_content_external_resources ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    256    255    256                       2604    16867 !   components_misc_module_lessons id    DEFAULT     �   ALTER TABLE ONLY public.components_misc_module_lessons ALTER COLUMN id SET DEFAULT nextval('public.components_misc_module_lessons_id_seq'::regclass);
 P   ALTER TABLE public.components_misc_module_lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    258    257    258                       2604    16740 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    235    236    236            	           2604    16496    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    218    219    219            
           2604    16509    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    221    220    221                       2604    16753 
   lessons id    DEFAULT     h   ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);
 9   ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    237    238    238                       2604    16895    lessons_components id    DEFAULT     ~   ALTER TABLE ONLY public.lessons_components ALTER COLUMN id SET DEFAULT nextval('public.lessons_components_id_seq'::regclass);
 D   ALTER TABLE public.lessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    263    262    263                       2604    16766 
   modules id    DEFAULT     h   ALTER TABLE ONLY public.modules ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);
 9   ALTER TABLE public.modules ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    239    240    240                       2604    16920    modules_components id    DEFAULT     ~   ALTER TABLE ONLY public.modules_components ALTER COLUMN id SET DEFAULT nextval('public.modules_components_id_seq'::regclass);
 D   ALTER TABLE public.modules_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    266    267    267                       2604    16776    multiple_choice_challenges id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_id_seq'::regclass);
 L   ALTER TABLE public.multiple_choice_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    242    241    242            !           2604    16935 (   multiple_choice_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_components_id_seq'::regclass);
 W   ALTER TABLE public.multiple_choice_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    269    268    269                       2604    16483    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    217    216    217                       2604    16422    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    207    206    207                       2604    16411    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    204    205    205                       2604    16403    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    202    203    203                       2604    16433    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    209    208    209                       2604    16789    sublessons id    DEFAULT     n   ALTER TABLE ONLY public.sublessons ALTER COLUMN id SET DEFAULT nextval('public.sublessons_id_seq'::regclass);
 <   ALTER TABLE public.sublessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    243    244    244            #           2604    16950    sublessons_components id    DEFAULT     �   ALTER TABLE ONLY public.sublessons_components ALTER COLUMN id SET DEFAULT nextval('public.sublessons_components_id_seq'::regclass);
 G   ALTER TABLE public.sublessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    270    271    271                       2604    16802    syntax_entries id    DEFAULT     v   ALTER TABLE ONLY public.syntax_entries ALTER COLUMN id SET DEFAULT nextval('public.syntax_entries_id_seq'::regclass);
 @   ALTER TABLE public.syntax_entries ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    246    245    246                       2604    16522    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    222    223    223                       2604    16532    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    224    225    225                       2604    16545    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    227    226    227            x          0    16441    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    211   �      �          0    16553    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    228   |      |          0    16467    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    215   K      z          0    16454    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    213   ,      �          0    16558    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    229   }      �          0    16724    code_challenges 
   TABLE DATA           �   COPY public.code_challenges (id, starting_code, prompt, internal_label, internal_notes, get_starting_code_from_previous_challenge, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    234   �      �          0    16872    code_challenges_components 
   TABLE DATA           q   COPY public.code_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    260   M0      �          0    16812 $   components_challenge_challenge_hints 
   TABLE DATA           i   COPY public.components_challenge_challenge_hints (id, text, recommended_time_before_viewing) FROM stdin;
    public          acc-v4    false    248   l3      �          0    16823 )   components_challenge_code_challenge_tests 
   TABLE DATA           r   COPY public.components_challenge_code_challenge_tests (id, label, internal_test, further_explanation) FROM stdin;
    public          acc-v4    false    250   �6      �          0    16834 ,   components_challenge_multiple_choice_options 
   TABLE DATA           z   COPY public.components_challenge_multiple_choice_options (id, text, is_correct, incorrect_choice_explanation) FROM stdin;
    public          acc-v4    false    252   �?      �          0    16845    components_content_challenges 
   TABLE DATA           ;   COPY public.components_content_challenges (id) FROM stdin;
    public          acc-v4    false    254   �G      �          0    16980 2   components_content_challenges_code_challenge_links 
   TABLE DATA           n   COPY public.components_content_challenges_code_challenge_links (challenges_id, code_challenge_id) FROM stdin;
    public          acc-v4    false    272   �G      �          0    17964 =   components_content_challenges_multiple_choice_challenge_links 
   TABLE DATA           �   COPY public.components_content_challenges_multiple_choice_challenge_links (challenges_id, multiple_choice_challenge_id) FROM stdin;
    public          acc-v4    false    276   mH      �          0    16853 %   components_content_external_resources 
   TABLE DATA           U   COPY public.components_content_external_resources (id, name, link, type) FROM stdin;
    public          acc-v4    false    256   �H      �          0    16864    components_misc_module_lessons 
   TABLE DATA           <   COPY public.components_misc_module_lessons (id) FROM stdin;
    public          acc-v4    false    258   8L      �          0    16990 +   components_misc_module_lessons_lesson_links 
   TABLE DATA           b   COPY public.components_misc_module_lessons_lesson_links (module_lesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    273   oL      �          0    16737    courses 
   TABLE DATA           u   COPY public.courses (id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    236   �L      �          0    16885    courses_modules_links 
   TABLE DATA           E   COPY public.courses_modules_links (course_id, module_id) FROM stdin;
    public          acc-v4    false    261   /M      �          0    16493    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    219   PM      �          0    16563    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          acc-v4    false    230   mM      �          0    16506    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    221   �M      �          0    16750    lessons 
   TABLE DATA           �   COPY public.lessons (id, slug, name, is_hard, internal_notes, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    238   �M      �          0    16892    lessons_components 
   TABLE DATA           i   COPY public.lessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    263   �P      �          0    16905    lessons_module_links 
   TABLE DATA           D   COPY public.lessons_module_links (lesson_id, module_id) FROM stdin;
    public          acc-v4    false    264   "Q      �          0    16910    lessons_syntax_entry_links 
   TABLE DATA           P   COPY public.lessons_syntax_entry_links (lesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    265   aQ      �          0    16763    modules 
   TABLE DATA           o   COPY public.modules (id, name, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    240   ~Q      �          0    16917    modules_components 
   TABLE DATA           i   COPY public.modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    267   �Q      �          0    16773    multiple_choice_challenges 
   TABLE DATA           �   COPY public.multiple_choice_challenges (id, prompt, internal_label, can_select_multiple_options, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    242   R      �          0    16932 %   multiple_choice_challenges_components 
   TABLE DATA           |   COPY public.multiple_choice_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    269   {Y      ~          0    16480    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    217   �[      t          0    16419    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          acc-v4    false    207   �[      r          0    16408    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          acc-v4    false    205   �t      p          0    16400    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          acc-v4    false    203   ~~      v          0    16430    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          acc-v4    false    209   �~      �          0    16786 
   sublessons 
   TABLE DATA           �   COPY public.sublessons (id, name, internal_notes, created_at, updated_at, created_by_id, updated_by_id, description, published_at) FROM stdin;
    public          acc-v4    false    244   �~      �          0    16947    sublessons_components 
   TABLE DATA           l   COPY public.sublessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    271   ȸ      �          0    17845    sublessons_lesson_links 
   TABLE DATA           J   COPY public.sublessons_lesson_links (sublesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    274   N�      �          0    17850    sublessons_syntax_entry_links 
   TABLE DATA           V   COPY public.sublessons_syntax_entry_links (sublesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    275   ��      �          0    16799    syntax_entries 
   TABLE DATA           �   COPY public.syntax_entries (id, content, name, internal_notes, max_width, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    246   �      �          0    18078    syntax_entries_lesson_links 
   TABLE DATA           Q   COPY public.syntax_entries_lesson_links (syntax_entry_id, lesson_id) FROM stdin;
    public          acc-v4    false    277   ��      �          0    24576    syntax_entries_sublesson_links 
   TABLE DATA           W   COPY public.syntax_entries_sublesson_links (syntax_entry_id, sublesson_id) FROM stdin;
    public          acc-v4    false    278   ��      �          0    16519    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    223   ҿ      �          0    16570    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    231   P�      �          0    16529    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    225   ��      �          0    16542    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    227   ;�      �          0    16575    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    232   X�      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 269, true);
          public          acc-v4    false    210            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          acc-v4    false    214            �           0    0    admin_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_users_id_seq', 35, true);
          public          acc-v4    false    212            �           0    0 !   code_challenges_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.code_challenges_components_id_seq', 163, true);
          public          acc-v4    false    259            �           0    0    code_challenges_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.code_challenges_id_seq', 33, true);
          public          acc-v4    false    233            �           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_challenge_challenge_hints_id_seq', 6, true);
          public          acc-v4    false    247            �           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_challenge_code_challenge_tests_id_seq', 77, true);
          public          acc-v4    false    249            �           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_challenge_multiple_choice_options_id_seq', 101, true);
          public          acc-v4    false    251            �           0    0 $   components_content_challenges_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_content_challenges_id_seq', 56, true);
          public          acc-v4    false    253            �           0    0 ,   components_content_external_resources_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_content_external_resources_id_seq', 17, true);
          public          acc-v4    false    255            �           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_misc_module_lessons_id_seq', 14, true);
          public          acc-v4    false    257            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 1, true);
          public          acc-v4    false    235            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          acc-v4    false    218            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          acc-v4    false    220            �           0    0    lessons_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lessons_components_id_seq', 56, true);
          public          acc-v4    false    262            �           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 14, true);
          public          acc-v4    false    237            �           0    0    modules_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.modules_components_id_seq', 27, true);
          public          acc-v4    false    266            �           0    0    modules_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modules_id_seq', 2, true);
          public          acc-v4    false    239            �           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.multiple_choice_challenges_components_id_seq', 90, true);
          public          acc-v4    false    268            �           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.multiple_choice_challenges_id_seq', 23, true);
          public          acc-v4    false    241            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          acc-v4    false    216            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 39, true);
          public          acc-v4    false    206            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 65, true);
          public          acc-v4    false    204            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          acc-v4    false    202            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          acc-v4    false    208            �           0    0    sublessons_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.sublessons_components_id_seq', 207, true);
          public          acc-v4    false    270            �           0    0    sublessons_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sublessons_id_seq', 82, true);
          public          acc-v4    false    243            �           0    0    syntax_entries_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.syntax_entries_id_seq', 6, true);
          public          acc-v4    false    245            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 31, true);
          public          acc-v4    false    222            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          acc-v4    false    224            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          acc-v4    false    226            /           2606    16449 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            acc-v4    false    211            7           2606    16475    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            acc-v4    false    215            3           2606    16462    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            acc-v4    false    213            �           2606    16881 :   code_challenges_components code_challenges_components_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_components_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_components_pkey;
       public            acc-v4    false    260            \           2606    16732 $   code_challenges code_challenges_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_pkey;
       public            acc-v4    false    234            w           2606    16820 N   components_challenge_challenge_hints components_challenge_challenge_hints_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints
    ADD CONSTRAINT components_challenge_challenge_hints_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_challenge_challenge_hints DROP CONSTRAINT components_challenge_challenge_hints_pkey;
       public            acc-v4    false    248            y           2606    16831 X   components_challenge_code_challenge_tests components_challenge_code_challenge_tests_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests
    ADD CONSTRAINT components_challenge_code_challenge_tests_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests DROP CONSTRAINT components_challenge_code_challenge_tests_pkey;
       public            acc-v4    false    250            {           2606    16842 ^   components_challenge_multiple_choice_options components_challenge_multiple_choice_options_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options
    ADD CONSTRAINT components_challenge_multiple_choice_options_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options DROP CONSTRAINT components_challenge_multiple_choice_options_pkey;
       public            acc-v4    false    252            }           2606    16850 @   components_content_challenges components_content_challenges_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_content_challenges
    ADD CONSTRAINT components_content_challenges_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_content_challenges DROP CONSTRAINT components_content_challenges_pkey;
       public            acc-v4    false    254                       2606    16861 P   components_content_external_resources components_content_external_resources_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_content_external_resources
    ADD CONSTRAINT components_content_external_resources_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_content_external_resources DROP CONSTRAINT components_content_external_resources_pkey;
       public            acc-v4    false    256            �           2606    16869 B   components_misc_module_lessons components_misc_module_lessons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons
    ADD CONSTRAINT components_misc_module_lessons_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_misc_module_lessons DROP CONSTRAINT components_misc_module_lessons_pkey;
       public            acc-v4    false    258            `           2606    16745    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            acc-v4    false    236            ?           2606    16501    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            acc-v4    false    219            C           2606    16514    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            acc-v4    false    221            �           2606    16901 *   lessons_components lessons_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_components_pkey;
       public            acc-v4    false    263            d           2606    16758    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            acc-v4    false    238            �           2606    16926 *   modules_components modules_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_components_pkey;
       public            acc-v4    false    267            h           2606    16768    modules modules_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_pkey;
       public            acc-v4    false    240            �           2606    16941 P   multiple_choice_challenges_components multiple_choice_challenges_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_components_pkey;
       public            acc-v4    false    269            l           2606    16781 :   multiple_choice_challenges multiple_choice_challenges_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_pkey;
       public            acc-v4    false    242            ;           2606    16488 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            acc-v4    false    217            *           2606    16427 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            acc-v4    false    207            (           2606    16416 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            acc-v4    false    205            &           2606    16405 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            acc-v4    false    203            ,           2606    16438 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            acc-v4    false    209            �           2606    16956 0   sublessons_components sublessons_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_components_pkey;
       public            acc-v4    false    271            p           2606    16794    sublessons sublessons_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_pkey;
       public            acc-v4    false    244            t           2606    16807 "   syntax_entries syntax_entries_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_pkey;
       public            acc-v4    false    246            G           2606    16524 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            acc-v4    false    223            K           2606    16537    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            acc-v4    false    225            O           2606    16550    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            acc-v4    false    227            -           1259    16450 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            acc-v4    false    211            Q           1259    16556    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            acc-v4    false    228            R           1259    16557 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            acc-v4    false    228            0           1259    16451 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            acc-v4    false    211            5           1259    16476    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            acc-v4    false    215            8           1259    16477    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            acc-v4    false    215            1           1259    16463    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            acc-v4    false    213            S           1259    16561    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            acc-v4    false    229            T           1259    16562    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            acc-v4    false    229            4           1259    16464    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            acc-v4    false    213            �           1259    16883 $   code_challenges_component_type_index    INDEX     u   CREATE INDEX code_challenges_component_type_index ON public.code_challenges_components USING btree (component_type);
 8   DROP INDEX public.code_challenges_component_type_index;
       public            acc-v4    false    260            Z           1259    16733     code_challenges_created_by_id_fk    INDEX     e   CREATE INDEX code_challenges_created_by_id_fk ON public.code_challenges USING btree (created_by_id);
 4   DROP INDEX public.code_challenges_created_by_id_fk;
       public            acc-v4    false    234            �           1259    16884    code_challenges_entity_fk    INDEX     e   CREATE INDEX code_challenges_entity_fk ON public.code_challenges_components USING btree (entity_id);
 -   DROP INDEX public.code_challenges_entity_fk;
       public            acc-v4    false    260            �           1259    16882    code_challenges_field_index    INDEX     c   CREATE INDEX code_challenges_field_index ON public.code_challenges_components USING btree (field);
 /   DROP INDEX public.code_challenges_field_index;
       public            acc-v4    false    260            ]           1259    16734     code_challenges_updated_by_id_fk    INDEX     e   CREATE INDEX code_challenges_updated_by_id_fk ON public.code_challenges USING btree (updated_by_id);
 4   DROP INDEX public.code_challenges_updated_by_id_fk;
       public            acc-v4    false    234            �           1259    16983 5   components_content_challenges_code_challenge_links_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_fk ON public.components_content_challenges_code_challenge_links USING btree (challenges_id);
 I   DROP INDEX public.components_content_challenges_code_challenge_links_fk;
       public            acc-v4    false    272            �           1259    16984 9   components_content_challenges_code_challenge_links_inv_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_inv_fk ON public.components_content_challenges_code_challenge_links USING btree (code_challenge_id);
 M   DROP INDEX public.components_content_challenges_code_challenge_links_inv_fk;
       public            acc-v4    false    272            �           1259    24601 ?   components_content_challenges_multiple_choice_challenge_links_f    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_f ON public.components_content_challenges_multiple_choice_challenge_links USING btree (challenges_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_f;
       public            acc-v4    false    276            �           1259    24602 ?   components_content_challenges_multiple_choice_challenge_links_i    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_i ON public.components_content_challenges_multiple_choice_challenge_links USING btree (multiple_choice_challenge_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_i;
       public            acc-v4    false    276            �           1259    16993 .   components_misc_module_lessons_lesson_links_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_fk ON public.components_misc_module_lessons_lesson_links USING btree (module_lesson_id);
 B   DROP INDEX public.components_misc_module_lessons_lesson_links_fk;
       public            acc-v4    false    273            �           1259    16994 2   components_misc_module_lessons_lesson_links_inv_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_inv_fk ON public.components_misc_module_lessons_lesson_links USING btree (lesson_id);
 F   DROP INDEX public.components_misc_module_lessons_lesson_links_inv_fk;
       public            acc-v4    false    273            ^           1259    16746    courses_created_by_id_fk    INDEX     U   CREATE INDEX courses_created_by_id_fk ON public.courses USING btree (created_by_id);
 ,   DROP INDEX public.courses_created_by_id_fk;
       public            acc-v4    false    236            �           1259    16888    courses_modules_links_fk    INDEX     _   CREATE INDEX courses_modules_links_fk ON public.courses_modules_links USING btree (course_id);
 ,   DROP INDEX public.courses_modules_links_fk;
       public            acc-v4    false    261            �           1259    16889    courses_modules_links_inv_fk    INDEX     c   CREATE INDEX courses_modules_links_inv_fk ON public.courses_modules_links USING btree (module_id);
 0   DROP INDEX public.courses_modules_links_inv_fk;
       public            acc-v4    false    261            a           1259    16747    courses_updated_by_id_fk    INDEX     U   CREATE INDEX courses_updated_by_id_fk ON public.courses USING btree (updated_by_id);
 ,   DROP INDEX public.courses_updated_by_id_fk;
       public            acc-v4    false    236            =           1259    16502    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            acc-v4    false    219            U           1259    16569    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            acc-v4    false    230            @           1259    16503    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            acc-v4    false    219            A           1259    16515    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            acc-v4    false    221            D           1259    16516    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            acc-v4    false    221            �           1259    16903    lessons_component_type_index    INDEX     e   CREATE INDEX lessons_component_type_index ON public.lessons_components USING btree (component_type);
 0   DROP INDEX public.lessons_component_type_index;
       public            acc-v4    false    263            b           1259    16759    lessons_created_by_id_fk    INDEX     U   CREATE INDEX lessons_created_by_id_fk ON public.lessons USING btree (created_by_id);
 ,   DROP INDEX public.lessons_created_by_id_fk;
       public            acc-v4    false    238            �           1259    16904    lessons_entity_fk    INDEX     U   CREATE INDEX lessons_entity_fk ON public.lessons_components USING btree (entity_id);
 %   DROP INDEX public.lessons_entity_fk;
       public            acc-v4    false    263            �           1259    16902    lessons_field_index    INDEX     S   CREATE INDEX lessons_field_index ON public.lessons_components USING btree (field);
 '   DROP INDEX public.lessons_field_index;
       public            acc-v4    false    263            �           1259    16908    lessons_module_links_fk    INDEX     ]   CREATE INDEX lessons_module_links_fk ON public.lessons_module_links USING btree (lesson_id);
 +   DROP INDEX public.lessons_module_links_fk;
       public            acc-v4    false    264            �           1259    16909    lessons_module_links_inv_fk    INDEX     a   CREATE INDEX lessons_module_links_inv_fk ON public.lessons_module_links USING btree (module_id);
 /   DROP INDEX public.lessons_module_links_inv_fk;
       public            acc-v4    false    264            �           1259    16913    lessons_syntax_entry_links_fk    INDEX     i   CREATE INDEX lessons_syntax_entry_links_fk ON public.lessons_syntax_entry_links USING btree (lesson_id);
 1   DROP INDEX public.lessons_syntax_entry_links_fk;
       public            acc-v4    false    265            �           1259    16914 !   lessons_syntax_entry_links_inv_fk    INDEX     s   CREATE INDEX lessons_syntax_entry_links_inv_fk ON public.lessons_syntax_entry_links USING btree (syntax_entry_id);
 5   DROP INDEX public.lessons_syntax_entry_links_inv_fk;
       public            acc-v4    false    265            e           1259    16760    lessons_updated_by_id_fk    INDEX     U   CREATE INDEX lessons_updated_by_id_fk ON public.lessons USING btree (updated_by_id);
 ,   DROP INDEX public.lessons_updated_by_id_fk;
       public            acc-v4    false    238            �           1259    16928    modules_component_type_index    INDEX     e   CREATE INDEX modules_component_type_index ON public.modules_components USING btree (component_type);
 0   DROP INDEX public.modules_component_type_index;
       public            acc-v4    false    267            f           1259    16769    modules_created_by_id_fk    INDEX     U   CREATE INDEX modules_created_by_id_fk ON public.modules USING btree (created_by_id);
 ,   DROP INDEX public.modules_created_by_id_fk;
       public            acc-v4    false    240            �           1259    16929    modules_entity_fk    INDEX     U   CREATE INDEX modules_entity_fk ON public.modules_components USING btree (entity_id);
 %   DROP INDEX public.modules_entity_fk;
       public            acc-v4    false    267            �           1259    16927    modules_field_index    INDEX     S   CREATE INDEX modules_field_index ON public.modules_components USING btree (field);
 '   DROP INDEX public.modules_field_index;
       public            acc-v4    false    267            i           1259    16770    modules_updated_by_id_fk    INDEX     U   CREATE INDEX modules_updated_by_id_fk ON public.modules USING btree (updated_by_id);
 ,   DROP INDEX public.modules_updated_by_id_fk;
       public            acc-v4    false    240            �           1259    16943 /   multiple_choice_challenges_component_type_index    INDEX     �   CREATE INDEX multiple_choice_challenges_component_type_index ON public.multiple_choice_challenges_components USING btree (component_type);
 C   DROP INDEX public.multiple_choice_challenges_component_type_index;
       public            acc-v4    false    269            j           1259    16782 +   multiple_choice_challenges_created_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_created_by_id_fk ON public.multiple_choice_challenges USING btree (created_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_created_by_id_fk;
       public            acc-v4    false    242            �           1259    16944 $   multiple_choice_challenges_entity_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_entity_fk ON public.multiple_choice_challenges_components USING btree (entity_id);
 8   DROP INDEX public.multiple_choice_challenges_entity_fk;
       public            acc-v4    false    269            �           1259    16942 &   multiple_choice_challenges_field_index    INDEX     y   CREATE INDEX multiple_choice_challenges_field_index ON public.multiple_choice_challenges_components USING btree (field);
 :   DROP INDEX public.multiple_choice_challenges_field_index;
       public            acc-v4    false    269            m           1259    16783 +   multiple_choice_challenges_updated_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_updated_by_id_fk ON public.multiple_choice_challenges USING btree (updated_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_updated_by_id_fk;
       public            acc-v4    false    242            9           1259    16489 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            acc-v4    false    217            <           1259    16490 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            acc-v4    false    217            �           1259    16958    sublessons_component_type_index    INDEX     k   CREATE INDEX sublessons_component_type_index ON public.sublessons_components USING btree (component_type);
 3   DROP INDEX public.sublessons_component_type_index;
       public            acc-v4    false    271            n           1259    16795    sublessons_created_by_id_fk    INDEX     [   CREATE INDEX sublessons_created_by_id_fk ON public.sublessons USING btree (created_by_id);
 /   DROP INDEX public.sublessons_created_by_id_fk;
       public            acc-v4    false    244            �           1259    16959    sublessons_entity_fk    INDEX     [   CREATE INDEX sublessons_entity_fk ON public.sublessons_components USING btree (entity_id);
 (   DROP INDEX public.sublessons_entity_fk;
       public            acc-v4    false    271            �           1259    16957    sublessons_field_index    INDEX     Y   CREATE INDEX sublessons_field_index ON public.sublessons_components USING btree (field);
 *   DROP INDEX public.sublessons_field_index;
       public            acc-v4    false    271            �           1259    17848    sublessons_lesson_links_fk    INDEX     f   CREATE INDEX sublessons_lesson_links_fk ON public.sublessons_lesson_links USING btree (sublesson_id);
 .   DROP INDEX public.sublessons_lesson_links_fk;
       public            acc-v4    false    274            �           1259    17849    sublessons_lesson_links_inv_fk    INDEX     g   CREATE INDEX sublessons_lesson_links_inv_fk ON public.sublessons_lesson_links USING btree (lesson_id);
 2   DROP INDEX public.sublessons_lesson_links_inv_fk;
       public            acc-v4    false    274            �           1259    17853     sublessons_syntax_entry_links_fk    INDEX     r   CREATE INDEX sublessons_syntax_entry_links_fk ON public.sublessons_syntax_entry_links USING btree (sublesson_id);
 4   DROP INDEX public.sublessons_syntax_entry_links_fk;
       public            acc-v4    false    275            �           1259    17854 $   sublessons_syntax_entry_links_inv_fk    INDEX     y   CREATE INDEX sublessons_syntax_entry_links_inv_fk ON public.sublessons_syntax_entry_links USING btree (syntax_entry_id);
 8   DROP INDEX public.sublessons_syntax_entry_links_inv_fk;
       public            acc-v4    false    275            q           1259    16796    sublessons_updated_by_id_fk    INDEX     [   CREATE INDEX sublessons_updated_by_id_fk ON public.sublessons USING btree (updated_by_id);
 /   DROP INDEX public.sublessons_updated_by_id_fk;
       public            acc-v4    false    244            r           1259    16808    syntax_entries_created_by_id_fk    INDEX     c   CREATE INDEX syntax_entries_created_by_id_fk ON public.syntax_entries USING btree (created_by_id);
 3   DROP INDEX public.syntax_entries_created_by_id_fk;
       public            acc-v4    false    246            �           1259    18081    syntax_entries_lesson_links_fk    INDEX     q   CREATE INDEX syntax_entries_lesson_links_fk ON public.syntax_entries_lesson_links USING btree (syntax_entry_id);
 2   DROP INDEX public.syntax_entries_lesson_links_fk;
       public            acc-v4    false    277            �           1259    18082 "   syntax_entries_lesson_links_inv_fk    INDEX     o   CREATE INDEX syntax_entries_lesson_links_inv_fk ON public.syntax_entries_lesson_links USING btree (lesson_id);
 6   DROP INDEX public.syntax_entries_lesson_links_inv_fk;
       public            acc-v4    false    277            �           1259    24579 !   syntax_entries_sublesson_links_fk    INDEX     w   CREATE INDEX syntax_entries_sublesson_links_fk ON public.syntax_entries_sublesson_links USING btree (syntax_entry_id);
 5   DROP INDEX public.syntax_entries_sublesson_links_fk;
       public            acc-v4    false    278            �           1259    24580 %   syntax_entries_sublesson_links_inv_fk    INDEX     x   CREATE INDEX syntax_entries_sublesson_links_inv_fk ON public.syntax_entries_sublesson_links USING btree (sublesson_id);
 9   DROP INDEX public.syntax_entries_sublesson_links_inv_fk;
       public            acc-v4    false    278            u           1259    16809    syntax_entries_updated_by_id_fk    INDEX     c   CREATE INDEX syntax_entries_updated_by_id_fk ON public.syntax_entries USING btree (updated_by_id);
 3   DROP INDEX public.syntax_entries_updated_by_id_fk;
       public            acc-v4    false    246            E           1259    16525    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            acc-v4    false    223            V           1259    16573    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            acc-v4    false    231            W           1259    16574     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            acc-v4    false    231            H           1259    16526    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            acc-v4    false    223            I           1259    16538    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            acc-v4    false    225            L           1259    16539    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            acc-v4    false    225            M           1259    16551    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            acc-v4    false    227            X           1259    16578    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            acc-v4    false    232            Y           1259    16579    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            acc-v4    false    232            P           1259    16552    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            acc-v4    false    227            �           2606    16580 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          acc-v4    false    213    211    4147            �           2606    16670 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          acc-v4    false    4143    211    228            �           2606    16675 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          acc-v4    false    228    4151    215            �           2606    16585 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          acc-v4    false    211    4147    213            �           2606    16600 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          acc-v4    false    215    4147    213            �           2606    16605 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          acc-v4    false    4147    215    213            �           2606    16590 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          acc-v4    false    4147    213    213            �           2606    16680 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          acc-v4    false    213    229    4147            �           2606    16685 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          acc-v4    false    4151    215    229            �           2606    16595 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          acc-v4    false    213    213    4147            �           2606    16995 0   code_challenges code_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_created_by_id_fk;
       public          acc-v4    false    234    4147    213            �           2606    17065 4   code_challenges_components code_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_entity_fk;
       public          acc-v4    false    234    260    4188            �           2606    17000 0   code_challenges code_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_updated_by_id_fk;
       public          acc-v4    false    234    4147    213            �           2606    17160 h   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_fk FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_fk;
       public          acc-v4    false    254    272    4221            �           2606    17165 l   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_inv_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_inv_fk;
       public          acc-v4    false    4188    234    272            �           2606    24591 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_f    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f;
       public          acc-v4    false    4221    276    254            �           2606    24596 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_i    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i FOREIGN KEY (multiple_choice_challenge_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i;
       public          acc-v4    false    242    4204    276            �           2606    17180 Z   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_fk FOREIGN KEY (module_lesson_id) REFERENCES public.components_misc_module_lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_fk;
       public          acc-v4    false    273    258    4225            �           2606    17185 ^   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk;
       public          acc-v4    false    4196    273    238            �           2606    17005     courses courses_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_created_by_id_fk;
       public          acc-v4    false    4147    213    236            �           2606    17070 .   courses_modules_links courses_modules_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_fk FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_fk;
       public          acc-v4    false    236    261    4192            �           2606    17075 2   courses_modules_links courses_modules_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_inv_fk;
       public          acc-v4    false    4200    261    240            �           2606    17010     courses courses_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_updated_by_id_fk;
       public          acc-v4    false    236    4147    213            �           2606    16620    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          acc-v4    false    4147    213    219            �           2606    16690 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          acc-v4    false    230    219    4159            �           2606    16625    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          acc-v4    false    213    219    4147            �           2606    16630 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          acc-v4    false    213    4147    221            �           2606    16635 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          acc-v4    false    4147    221    213            �           2606    17015     lessons lessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_created_by_id_fk;
       public          acc-v4    false    213    4147    238            �           2606    17080 $   lessons_components lessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_entity_fk;
       public          acc-v4    false    263    4196    238            �           2606    17085 ,   lessons_module_links lessons_module_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_fk;
       public          acc-v4    false    238    4196    264            �           2606    17090 0   lessons_module_links lessons_module_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_inv_fk;
       public          acc-v4    false    4200    264    240            �           2606    17095 8   lessons_syntax_entry_links lessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_fk;
       public          acc-v4    false    238    4196    265            �           2606    17100 <   lessons_syntax_entry_links lessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    265    246    4212            �           2606    17020     lessons lessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_updated_by_id_fk;
       public          acc-v4    false    4147    238    213            �           2606    17025     modules modules_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_created_by_id_fk;
       public          acc-v4    false    213    240    4147            �           2606    17105 $   modules_components modules_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_entity_fk;
       public          acc-v4    false    267    240    4200            �           2606    17030     modules modules_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_updated_by_id_fk;
       public          acc-v4    false    4147    213    240            �           2606    17035 F   multiple_choice_challenges multiple_choice_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_created_by_id_fk;
       public          acc-v4    false    242    4147    213            �           2606    17110 J   multiple_choice_challenges_components multiple_choice_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_entity_fk;
       public          acc-v4    false    4204    269    242            �           2606    17040 F   multiple_choice_challenges multiple_choice_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_updated_by_id_fk;
       public          acc-v4    false    213    4147    242            �           2606    16610 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          acc-v4    false    4147    213    217            �           2606    16615 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          acc-v4    false    4147    217    213            �           2606    17045 &   sublessons sublessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_created_by_id_fk;
       public          acc-v4    false    4147    244    213            �           2606    17115 *   sublessons_components sublessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_entity_fk;
       public          acc-v4    false    244    271    4208            �           2606    17860 2   sublessons_lesson_links sublessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_fk;
       public          acc-v4    false    274    244    4208            �           2606    17865 6   sublessons_lesson_links sublessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_inv_fk;
       public          acc-v4    false    274    238    4196            �           2606    17870 >   sublessons_syntax_entry_links sublessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_fk;
       public          acc-v4    false    275    4208    244            �           2606    17875 B   sublessons_syntax_entry_links sublessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    275    246    4212            �           2606    17050 &   sublessons sublessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_updated_by_id_fk;
       public          acc-v4    false    213    244    4147            �           2606    17055 .   syntax_entries syntax_entries_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_created_by_id_fk;
       public          acc-v4    false    213    246    4147            �           2606    18093 :   syntax_entries_lesson_links syntax_entries_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_fk;
       public          acc-v4    false    246    277    4212            �           2606    18098 >   syntax_entries_lesson_links syntax_entries_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_inv_fk;
       public          acc-v4    false    277    238    4196            �           2606    24581 @   syntax_entries_sublesson_links syntax_entries_sublesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_sublesson_links
    ADD CONSTRAINT syntax_entries_sublesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.syntax_entries_sublesson_links DROP CONSTRAINT syntax_entries_sublesson_links_fk;
       public          acc-v4    false    4212    246    278            �           2606    24586 D   syntax_entries_sublesson_links syntax_entries_sublesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_sublesson_links
    ADD CONSTRAINT syntax_entries_sublesson_links_inv_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.syntax_entries_sublesson_links DROP CONSTRAINT syntax_entries_sublesson_links_inv_fk;
       public          acc-v4    false    278    244    4208            �           2606    17060 .   syntax_entries syntax_entries_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_updated_by_id_fk;
       public          acc-v4    false    246    213    4147            �           2606    16640 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          acc-v4    false    4147    223    213            �           2606    16695 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          acc-v4    false    4167    223    231            �           2606    16700 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          acc-v4    false    225    4171    231            �           2606    16645 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          acc-v4    false    4147    213    223            �           2606    16650 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          acc-v4    false    225    4147    213            �           2606    16655 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          acc-v4    false    213    4147    225            �           2606    16660 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          acc-v4    false    213    227    4147            �           2606    16705 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          acc-v4    false    232    4175    227            �           2606    16710 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          acc-v4    false    4171    232    225            �           2606    16665 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          acc-v4    false    213    227    4147            x   �  x��ZKo�H>ۿ����q�����F�h��䀇���K���h��vCw3]Po�؊�h��qU�W�U��Y��o�r���y��vÒ��󻳯��}�r�9�k����.�zt�z�O!����w�ޡȤmY��;.�ck�c�@��Nץ���}@zZ=��zY~� >� n���ʳ�nM��{�
�%n������Q5@����'z����� ����_�B�_���݇�A��<��~�R��5쪲cegI�ܰ�f�\eÿH�hKZִV͚"k۬*9�9����X����ŧ�@ʤ`�_.6�H�\|���>KY��y��T|o_�{	|��X)Pn�u�I�U��������_�*g�/0@vtvp�u��Y0ǂ��΀�F/�׼�.y��yHY�<,XaN��V�mV����j&��f�0�>c�� ���F�Rkj�Uy�v�ߢȣ�Σn������#S�y�T��5��b$p��i����Y�����7w�:��ǿ�C��.l1��e�tT!0R��P�R���*� %��ă:=L/F@,E*�<����0�4=P��,�!�?խ�Q�wJ� �j��Uo��KK���$g(�F@��VՋ���펀&5�M�G��1a���Q�Rxl.s��ps�\�>��j!jnoE���\*rW!<A̕B�R�����&_E!��P�͵@�R���H5,(� �i$@�Bă�pAU_���u���B������F ����.�L���ܱ�:!�F@�t �I*Q��-p9cp����H�;�qw���,V���6��a����wI��)6X�6��-)ٗ(5�1g&�K5D�y`W�Uu�ˬ8P}0��#���S` B�@�7��b1�B�f��f���c2%%�S�Rp�������k���T:����(�5�\&�� �@�✹T����@�A|;@C��P1xs�V�|Ku��\&�U
�J5��\*�U�������J����� I-�DS�D�A�:��c�_��#�`�1�@Ǻ��A4���5�!p9@v��&�x�[�hߴ����gFj^�ry⳨�=�㱎�nI����R��<Āojޠ�>��q�Z^�G��=�X0כ�f�:�������<ko�[~����џ������-�l2<�1�0x"3����ޜ��),MCp3��}=� .x �rs&cĥy���h�we�81��<�,#�d3e�������N/��ݨ�,�%�''sKf~�5�;�.5#R�T�L�9�XChN���������u�A�S�A�>�:ή��4�;K�Q�6�����[��=ĥ~�6��*����k���Œ1���G����E�)|s��S"zj���	�5�_O�bĞ��o�~��a
��4�Z�ڛo��d_�]?���c'2����˪i�n����e��q��=�4����g��L�����ϝ��V�9Hko_\�!��%��ql�	@\�uZ��z�
��'5���ڃWKV@�����3���:����&����r�Ukǎ�_�b��{�KuypO9c�m��!#�	����xډ�nhG���b��]����!X1q��Es��b�*4	��H��q���Ĳ�b��Gm�4b��#��.��He��Ry�#���}�ݲ�Ύ���%T�x�����)K?f��]�����n����>Ll���{߰��ڷc ����l�`�;�>:���M������أ.+?�T�z�2�LG/#�����9����z#�Ħ�g<��:��w��o�c�f3v��Kտ��=�<ₓ���.w�����7v�w��`}�Sux2��bOq.�hKD�h��k\��"	�g�#|��&e�8;d�H����v��I����(q����ȯ������T�~��N��?Ġv�c_��} �IBg����Ҿ~���}~~��q5�      �   �   x�%��!D�u̜��H�2��1<\P�r��h�˺�+��u�����_b?{mF8D�(��З@!�B!�B��0�!aC��p�#�G8��pD �@"�D ��/9K�}�m1�h)F�Ũ���ߟ�C4��LW�m�>kzr�:T9�}o����ٿf����.�n~�������A[      |   �   x�u��n� @g���
q�*[��]�f��%Fr��J���"Gɀ��=$���y�{w�A�$\|���?z9f� �%f�����8�p!���r&�<(�at�MoFЛ���i3�[�䧟�:��KLkթ�Z���m����6� >�9� 2E&��2�Wd�Ԋ��6y�ڨ}.�=��N�E����a��BR�"r����U���%�~U      z   A  x�u�Ko�P�ח_�­7�V�b��B5Xq�K��W	T���M��I�̙���,��k�β�/���9h��c��i�2c�1[]�E��D$���n�$��DZ���q�9t{���V�#�[r����A؝� �'�La��xd�������P��ϮH�-ja.]�)4��w��_<ce=Ę��U�|q����+j;]�}���Tq��JT&B	��\Q1��"]P)Њ�޾l�_Du|��P� ��Qޟ\�y�͚i���&3s�;���b.n4G�����hRw9�cx���}���d��UDU&C&^ŃD"I��o� ��`��      �      x�3�4�2bc ����� (      �      x��Z[��6�~�~��Y�I�]�T�7��:.�7��� �S�BP#+������E$��ޜ�=����|��;��<֩�j��t�<~"��c*0��(/����4ުG�'�>�����z/��"?(DJ�)���8י0�ɼ�l�ۭ2fwN���Ω2��0b�{D��t�~�+�2�)&�\��i�M��1q��D�Ln?����Mo�Ɓ���K�OW��*Xz�x��^0�������uQ]��9� ����XJ��_
���w�O*���&+?�� �_z��)����r�$՟T�5]��H��>��L���gNrPy�"l��T�Ǔ6�<T.��/J���J����{��LAcb�%�i�
f�t9m��I|�2�mI��g�[��p���_�&�܀��1����J�?;��xN�����>�t�	IQb���<[�c��x6ǃ�x�M�֑k4������&2S��^f�����X'�^�����5�_B�{��*�^&gh!;+O��}a�DT,�jL����\��u$�ve�r^V�����i�8����rE���Q,��\�~����
��E?�%�6�q��Imc���bx�0��ǔ>�(bbx>	��W�>S��(��*7sry&+{#�
��F+A�8<Ӽ]���u��8DC>UJ�����|���
)|@c*��ӄ��\;6,[:�U�7�s>tЗT��[u�&FJK�����~�e�󜈍X���Fe?�XEf���}�wl�P�\�j�\��ΗMQ/Vㅷ&�j���Oz�!���be^}��x��x��J���!N�q��b���\�2y�����BjQ?��飂�!cG;� m��d���<�X7�]Rp���ej��
*�E0q�-��R�G�^H���y|�E 2����XX�κL��dܔ"�/��d�a�%M��W��Hx����^=�ϰD�LȽ�^e��Cq��C�t6�𧋡ɌT<	���7���4���Nbظy)��\���&��[���W���a�YG"U�v0:^oV��`vn:��|O���?�t$��i��l]l$ΰ�u-+���ϟ��d���$�5���+"���3��Kz<�	ld�ޏ4��]��x�<g%�XM����=>�x3���FAӟӒ�B�
uYq"L�L�`�[!L����b�)�4\�<|�0��RC�&��ͤ.n�>������'So:�⦤�/n���R�����Q�����!(أ!����{`8�+�t�*����Ȧ
�~����a��R���<�0���2
��<�<��%ʓ%�>���W����f��S������!q���j´1c W�3��X�-d> (jq�Y5��� ��~a�N.C�"o6m�;����w%M��Q6O�9�_'��Gqd9�l�d��`Y�L#��ޒos<�y�w1]���IU.ȿ��_,B�U� 2Tv�`*z��i���&Cr8�M)� �ۇ�;[��R�d��`Ɵw Ⴄ�s���@P[�礷u=�Q�.�ӌD1ɢ � ����.�G�9Y?٨�����.&p��a�~�<�T�­�A�@�0����[���so<_vH�����_$1�Y�0����_4��Mu\�lE��ul⯦���M��(X&�?�:XI��_�Sl~�M?$�"�j��F��_l�� ��4.G�;�=C0;��FF�H� � ��'t�M�{����ޢY����}���/CN  �ŏ��(���C�b`�̚7$}DBd�$�f�g����*�!���ھD_
M���l�@�|��H�h"#�`AO)���@��'��-�s���ʹ�8D>���:M�M��~��-�<���'���J�,�Z����%K��<��I$6\ƃ���"�ټ��6��Hwg�FB[r"tn�Vf�s� _B8)Q���#s?�~���D������-��+�oY�t�� >M��8�t>i�j4��S��O"G�ź�(��Q�g�9��*��&�W��:�*$�t������bM�֥�Y��F_F�Q�;}~^�[���'���oKPꉗ�,�t}�2B3t�V���f��'Z���,@���8bK,ةEh-�&%�*����F+�+���+��UQ�R�heWdI�*K���B��8a��;�9��I.�Ej�5s'벫���iD��C�mc�OF���F�˛�EY��y�_��K/�.�(h�7�~Rd��r��o��#��>�D��F��.dB�{�N��C�=�F��c}�ۑ���;�(&\cN��w�*�D�A&#П���N0�J`)�C���^R\r�x:cW;���N&�� A��7lG��7dʡ'^��F�3�)��?#����ϙ�<0��8���e~i̸)��aRSM~Q~4�6>�UQ̊O�J��q���xO�����A�d�"{�9���2��*�[���WE��] 4�1:'�H*���{U ����'Zѿ*�I�T��;��,���!�T�����yo��,�r�{�*p�<���A#��r`N��L���u]i"m�rU )�����6��@d;��^�}B�O�.�S�1�x+Ԧܡ�����s��(��s��r�A-�Y�V,?��2u��#�'-�4��m����>�6�l�S����*�.��O��/�>�W٬��9�~�n��@yK��IL��!n=�~;��"\��f�̿���W�ds��d�1T]Z�<�)����o\��$�\#����k�JZ�X����@�I96fW��8�dY���-5�4\�r#������Dg�F��8;�����y�W'R._��I �_϶D��ٲX���������^d�(���x8
�����r()�s
��P�癄]�c"�h�h�� ��|��.3���8��磋m���4`��4G�E�:i�+B�͆�E��S\pw��%�/��Eq�5�e7.Z��,(�s�.� ��J�s��C ,x:���(��=$	\X�UDx*6��[�{_�q^�I�mlt�\D�: � ZQg1��
�5ʹkD�֔�?8��\�L�(�Jd���梴J����E�h��h~"V�Y��­.W6��f��E���+ ����7���B�lʡ�_RGd:�0��W㩷����M?��+C��B>i*��m��,�+l���u\1$�)���0�,h��|�҉�r]��j�h�s&G\tQ��eR��3�
`w�DF��l��=ɕ1��ױ́������H�D��L��r�6qD;˸�!��n�[4�������w��Www�ZL,"g�����{���V}Q�o�I�.OJj8Qyx{�^�;W6\�OM���t�M���x�ϼ0h�5�~��mU��w�ۙ겸�B�w�gP����ᱪVo�C��`Lݯp�<*�ϼ�ݠ����W�8^�$Ai�d��Ѻ=re���ҵ�(��ŭo+7�R�q�-l�O���v:z���:lެ�9���:�5�~0�^P����w���^��62�>�NU$��bm}K��E����uu=�Q �G�U�M���Hq1R�	)�$J|��Y
�����e{<{�q��4��;t�Pu�\re{�ۇ*0������U��S��!�}�!�!��Bɸa����C2�E����UءtN���b$z��/R,fb�.�M}�z����$�&���J��,�+-�^"n$E�ۻ�R�5a�:�? 
F�S��f��>�O�W�v
oQV�Cl�����a�Ə�wۇ����ѐVS�M��%g/	G�(�D�/z�r�D��,���)E	�j�b6b>�h�7�S��H�J�a�ؼ4�u��`�P�7�C�N�P���1��wޟ}L����w����r�R��r"�|~k*�R��iT�,25	{O�8,��;��^���)�SlɈ�ݫ����xx��-k���^�j�9|��uFb󋂷PjH�����.�������^'kϸ��\��(�2�fP
XE0�����>���=�k�_�䨤5���N��?{�M�ܣ`v�)Z��T+-�_O�"��~lE��������>)�5�vh�^�-�YK�����Z)�N���4zo�3�Av�����9�N+��3~��W�)���3��v􄌲� �  mT��\�a Q�����`��R�Ox|b�b��������ʢ����ʛc�W�m���A�W]qi�5]�[&lW=J�}��Us�uujݼo۴_��w�9勶4&/���mqeā],غ�%�:�ĩt.iki~�r_���)���Okzދ�N��^Q�nSU���R�Z��:3%��L��O��ӝ�N��soy{O�t��[���$�0dCW�ؐ�abV�nH~�Hǔ��������nv>�.n��#?'.�����u�Q�my���@K���Sz`4���8�z���%M??P1�?�ku��^�ʬ�Zo}mSL��%=3M��N*��tS��2|~�ƭD�mH��7��G[�V޾⺺�U�}�FGN�`����T>��ޔ���M�������赱      �     x����N\1D����n��\g�M���(DB���W���F\���td�}���qO�F��{z�<���޿<\n>~޼]^��^�e�����-q���緛����_���TRUg�]�}n���.�5�p�|]հ�%��r�f@�b��+�Cܪ�R;mյ�;�Ǵ�=Hu���i��Ϳ ��9�hӴg�Hk�+�ҚD<7v��TK���L�i�OQm'����kS����&)�+pM�%�#pM0��?��Jɽ�a��.�W��W⧎�VCcM7��k�&a�0��Ƌ�d�Ui}�Jm�m���\���ċ&`�0����F��k"�W%<��5�x�F�6�7W%<��mlrV"���و����W�;� �D�ݚ�k�y���&���A�6��H٘��D��� RըZ3p5��
\+;�ಱ;�)�N�#��)�p�� 9�kz'Z��-@Qߢ\~���h:���Y͎�o��x�/~~����8VS��x��d�63���z���MU�֘�gW˨d�z\5�1�z`5���1:�́i��\��z0��8'�2�c35�ۍK�������~L^�P�9L^Uˆ��?5D+���	���ZEs|M���G�ԂmA؁�M "LW�N�P$/?}�"y��k5w��k���M�n�`�l����W�L0\�ɫwCZ�����8�M-9╼��~��]�º�Y-�n�Z��e����$��E|����W0C=X|��z��p�et��l�#
>B^�(�y�Jk0�ڃ���m��78�+�      �   5  x�u�Oo�0��Χ`{�n��;��E���!Ţm5�dHr<������z�A���TV��Fӧ���؁�P���JW`z���BK�6#T��
��k�´]�ѦL��.oG�($�������V�����χ�Fotl"�UM�g\U�;�1;>t����(��m�\.��#Z�ac�V��EM����V��T:J����u�r3j��R�XJتoQ��M敇��ԃ4 �Heu���)��,��ڰ�I��"*�o!��إ���L�<u�r�X�����)u!i$�᪂bf�~Ӡ���ˤ��A��)�:(v!J�R9�T��V�0e��k�8�4��k����)l���n \{����6�&��ڠ�ݹ���H8L�Di��
%`P�]pL�Ax�N8�{+��4	|\''��d���h�<��������I;i�����x��9V]a�0��hp����p��A��mO�b�A#SO�gG	��8V�ʒ��~�A� w��gfeur4c�>9;��¿)ک�ᦊ��ؚ=f�őqG�O�[�G�k@�q�^*�hSx���[��~/�l&DC�TI�ӵ6́�%?�e)�����Q��N ���a�����4��8ʃ�Ғ��� ��e�>�z�D�$O�B� ژSD����=`o�c%��7N?L�k�:��]3-b�1Y�o����0����)GA�3�-H���p�U��LVA������C'��y����6.Ǝ��3h�v���/_2���c+�u�\1��1���Ėߚ�=NpI�xÿ#=Et���R�L�Y�&_,� 3�N�      �   �  x��Y[o��~�����T�Ȣ�F�Yw�M�H��<��zDI�)��!�(����s��H���`�C��9�o�mΌ����o�&��w��C��A�zm�@�%��L+V�id?��H%gY짡��&LR� U2ϖ�"ݮ@Ϥe����N���~���9
�c���Xwa�"�e�K�?�	��x��Հ��%���Q���䤊��@��k��j�L*%�:�w��9�Ʌ2r
� fa�� �&M��
�K�5������O?�U�)���� 1��za
f�|p��J�_�Ʒ1i\��_�A5��;Lt�\�;2���ؤm��}F�������c�yL�B]��O��"0/���,�������u.����g�	�7��_HG���8��Ӧ������ɱgx���¯�f�x�η)`���Y��a�(�EC�������N���ʃE�����X�"�u�D��ξX ���|@"�ބ�9qN�s���,ŕ���F��%js��+�E���^���	�rM�;a�GY Ƶ�r�1Sk�`@.u��1o�#��ӥ�pҐ6�5%�3�����9Ӭ�Sв��aW�Z�&�Z#�p2G�6���@ S�ii3����C���WlR����,L��;�*W���n��ܷu�\��8�����| ��tݕN.��w���	ϰ����KN�]�TA��	`�ͱ�_�f���S��6v����FhM^�U��}8ggN��������z�7�<u
�GP�q̦�{
�T���|�~U$�'`i���s"0��|��e��Q]�Y�;&:TE���8	BC��jg��p��j�Yw���Y����g� ]$P�e3��Y���V��)�5�+�C���8gèa��HMU��8}�}���1�X��Kj����(�A)����4��h�����D�~��٣è���Y�����gwՔ�TE�
�?��6{^�+���s^Fq���r��s��1NMI�W{L�xC��P�kVĽ��xl�s^O�d{8�I�j��ܞ4��)Q������%������kQ��g���s�#�L��������߮�5j�a�{n]��u�V����&\���hw�&�Fz�H}��m����q�/�'\o�odx��:�٪�0k5`�9�^�����{���b@⪘�x��=U�b�����4ש�9�v�I����[gip¹h��HˍN���@:>y�NI�E�μ[%
��P��k\gj@���z�3�ys��D� �w�}U��O��4�.��E+F��C�ǵ�¹�:��,+�A��R���\Ur� 7�:�㓯"<�v8�B�m���ܒ��"�૫jm�*��Vgl;1*�;�|i�.PND������Z��nYxXX����Tt��|���&Ue�+��q����R˓��	�MS�Wwx*m����5D��=�v�_S��h�����-LN%�����2��e�o&b�@0U�}�=�1:I�o��O	_�1!�X:N]�r�Ȑ�AE�+�Lq�7{y�T_�tM`¦f��ȣRv�W��%��ھ�":��`G�)f5$�[u)���Y�����6�c}@�?0�>Y��.�J:J��,)��0�t�C�s�ce�ç��� f�{.|��U�8z���*_�Hqv<V}�F�rw��km	�q���n����� By%��*l���a�J�h8o�зסb�Ί�e���yOmh��(�w�F|�q�9��.��xgA�95A�ތ�R8�U���C�����Ѩ��'�6=`/�4ϫx��I,�����@�ރGc�g3Hv�J.fezS�[��$щ)q�N�*���#gܸ[�bz�f=���핹���w�/;6�ձ���/}!O������n�c��A��
�8_���qF�c�� [n~4D!�x��Kt��'����^x��0=�X~�>?
��C�Z� �/�t�U;�����Z.��w!/*�鸟������ß�3���I�����Nm��/�;��\ӓ�S���xШ�x�����7?�vH�[��yEx��Қ�@��^˷3��6{�TmO�����������yeC�8.�|��� ŷSlq�8��.�; ɧC>)�^�I��W�}�ix��������N�yɇ�xT}��UhP�oT8��7S�����l����m%u���,�#�u�g�@]/��c]y ��9��O��(�m��]�=\o;Ϟ=�/�� �      �   �  x��Xmo�6�L�
.(�vs=��FA��ٺ4H�ĴD[�%R)�j���;������_�����܅d�R͉!w�A��LQ�Y�p�o��T�E�J��n����T*�Q�Qm
����h�/Z�l͕J9�m�d-M�2���l�2���Z���J2;��(��
�/��(j�֔��K�Z�S8ǴK	[t�ҒS����S��CbO>���1���ۄW�VWR�*C_4k,͔6��YƝ(��2nD^˹�SN7"M��J�'y���E�0�� ���vKW���iP6��t^Z O��pGY�
ä��X,`<��+@��lE�jc�s�� �i�b�@`����uQ�����S��'��X��f˜E�i}��B����P������F��k9��'��+1G�!��C�5��4{��9���٧_����=f��y�͆s��u�cvrj;V�Wa�`�R�����\� �6��N�	�04��|�1iA� ���yHQJ�=$�q�z�,�����_6^`����¤B�6����A�Xs$$FA���D�g�.	�2�{��1Ix�*�τ��>�D��P�&�)��ruR���kwlS���r�j �1�	�6U��kj��H�^@**n�c��@$+[
�g� �MB��[�^HNOm(�,P1#�B�ֱ|��`o)�G�zqWp]�F;o�z������{�����A���{����Na�Vc�r��J؜�����
��aHN����_AC(�o�,?qUp�ѕyiP-T�$.
� K8<����Av� ��%�A�LԄ�9�(R.�4�ǻ�K�W���4��U�{T#���4�W��q��g��x����d#����e@�p<U���,x�f��e��08�O��x�?C��
zJ{]x��������ʡi���F1m�j�<%Kq�Y���\Q�V���ޡ7��@��fXZpW�-��Ƿ��2�8P�Lr< ���FS�c�s@/^��m�%s����H�L���(��TvYfs�����f� ��?�L�ufA�!;h@�l
Q!w�I km۵ih. �08���]2����b�����I!���d��v�|�Ξ�?����"��B�h0�54����6K�:Ԣ]�ŘV�K��i���7���{�U��N��,�Av6l1E#�\r5b��;���h0!T��%����C�� �VRm$^� 4��f`J �w���x~�%Yu��-ي�G�b����g�����xs~}v���i�^���g7�o(|�~���%=��^]�_�����������3B{Xb��dRd,������K'-R%vw�;.uЊ���K��-g��t���I>���C�ޙ�{�poI���m^��_� Qɰ���vp���A�$u	6y����
�\m�F2���Җ�`6n�l���X>��z�]������L'��䏿�ޜ{�aCvְ��{w�OC�D�~*⸌�ߪ�* v6���8"���N�-Lx��N�`��mfT�<���p\�p��|8z�����}PoL�( 2��K.��:��j��0P�Qe�J�𢬸��`�ġ����'���X��A�W����^d��}l��I�<��<���?9$x�n^��I�!�ƍ��g���/?�IƳ�_�Hڗ��/p�?M��823�{�����R尔�fvh�'�M��-[*���'b�����Lƍzs�v�w	�H�Xd!��$nEl�m��l���ه��T;Dz]rw���1L�G�ɾ�g�1�Y�d���c���;��S��1<�,{Uă�鐴pͳ�T~Z���8��_�yYS��k�� aE�W'�Uj�����bb�;�X�9����*�D�=�:����jh3�k	ݲ���o�!E#T4P���ZJ��/v��8y�v37�ś����!�Qc?��0�n׍����|�uC����2Q��C��}�}=MDP��J��{&�:A�6��      �   [   x��ɍ1���巔��e�c,q��6.�|�G��dH��I��C6y�������n:�Џ^f1f�l�[��l>-$T4�������      �   o   x���@�PL���G/鿎8?��!���GC� 1�YP���/J(�S�^Ȣ��FC�1��,�釄��n\������N�tYsa��u�bM�m���f�/��?*��      �   L   x����0���0��\iم���,�r�\,-y�!ܪ�Q�:x�C�O�T���"Q���-�>Eӥ���̳㽀	��      �   _  x��U]o�6|���m�M���4@��$�c �4m ��=�9��C��뻤d�u�>��M�gfק���^x�aE��VT�}x��8��W1��z�Ǻu{nPx�����7q��ދ��ܺ�a^��`��a"�*D���[n���m�l�<���0��p^�r��>&a@��Lm��{�0�&-15XG[�rx�v���x�-�AKt���'蜓�f#��<�v��w���O3�G!���W���ܘ��}�	}2��:���V���^Ϻ�fOn�׻���|�I��y�2���j͗k~Y�ئ �_u��v�[�H�A�;�;�hj�|T#����(SF;��3�:�EY�%G�:�,8��tZaY�,z��n�B����Xt���([Q�Y�����9J�'��[.���6W��ބ������	Wst�UuEI���^t��V�&��{w����G�>n�tm����oIۦh�pK�����*��^h+��JO�������/ڇ�����Q�4���e?��`r&�U4yŘ�q�N[�"Qv���z/��-�QG���I����o��J�T�@�r�|B5�l��-� �>����.�[�E����'?*�R�@�GO6h�(N�K�d~ٿX�z.�7$��.Q�ypB�o
��śm�[��	ES�.�n�m��Rj�A�A��d���4U�"����pm�	���>�Q��4cvj�?��e�蒑��	�b9�SȌ}�n}K.b A5l\9!����kJ3��^�jZ���'���_�\5\�W3���E���/<^R�;rX�LK�swh~�v��S�ߺdeA��x|F�5�)O -��٤`��s�X,���n�      �   '   x��I   �?a��.��!d����e;�D�4�^�b$      �   :   x�˹�0İxY�G<����:l�p��cQY�\�����f���dŁ-��`E���}�OX	M      �   f   x�3��J,K,N.�,(Qp�/�KI,���+��*�MC���Y*Z[��Z��čtuL-�Lͭ�,�,M-1�虚rqr��qqq G�w      �      x�3�4����� ]      �      x������ � �      �      x������ � �      �   <   x�3�t�K��,�P�H���L��4202�54�52Q04�2��24�325�)�D\1z\\\ ��A      �   �  x�mTMs�0=��n>Iծ$:6�frH��L;=�B@��`HA�ǿ� ;Mef<fY=����<�}��n�eWs��T�M���^���Ż��O@��#q����ܡROn���Z'�3Z��MVHk��6��x�]��b�PP� a0O8���"ǔD�SVX�g�X�1���~��d_q�C�J]q��02O��a������U�����Z�H)�(2��,�)#�5~b�M��߷M��M��>�Lp{�2����W�񃱤9%������Ʉ����f��P���n�޼�஫�S�G����
jv�f�,!(��Ƿ�h���d��s�8S�����V25vCN6��u(E��5^�M��G±����??WD#q���p�oM�M����*8�VEy"�5]���P����n�z~�c�Ʈ~�g��|�{��q��C3�c�?��Y�o�,�l[�^ߦ#%�$A���s&�O�Oq,�(�Y���2�S�W}���?s�6j���bRN�vo�����a�����\�0NM�Ĕ��B�KW��𜍂߼��}����kW�!*���a���������BG � �B�26	ɡ)�6;!t�(9��a�H>_�_M8��ДO��v9f�1��ٷ���k#w2�K�fh'sRO�_�T�z�4��u�ͣ�l6�Oz�      �   �   x���1
�0��Y�KC$[Nr��]J�Vp\��+�� o���*�������T?���|�z=�w�+�'���$a5ZhEQq�@HY����Ց�hj󐠧Hs([I�HBcz���R�%��Z�XL���L���#s���
�CP����_FG      �   /   x�3�4�2bCa
��@lĖ A ab�#�q� ��      �      x������ � �      �   Y   x�3��J,K,N.�,(Qp�/�KI,���+�4202�54�56T02�26�21г4	���*ZZ[X�Ypq������� ��?      �   �   x���1�0D��s"�8��;p:H����������J���́A�x��t�����������:Z XLҗ����.&g_��j2�2C�d�e��?՗��ŗ�L��\�����P�ā�I��4�TP/ŁTLxL ~,m�)      �   �  x��Xmo�6�l�
.�4M�z����
�+���_���M�Bd���n���#�n�k�&H�����c���m�ܢ�tY�eU��P)Ю��l�Qy�W�+$�7�ܲb��o���<G喖��ם�I�-��o���bRN�G�-&�>F��$N��%8Ptr��w�N�����	��s"�<��-Km�ؗ�ಱ�`���
-���r�[���������i�^�FAb�1q��V_v�@���L���*[�Y����+�q4��#�W���|64��{�9��'�S}�'nvLӀ�A�m6�2�?�ĵyK�K��Db�(ZW|��yy�O�i��v���Z�w����d\^O>4��C����Oѳ��wH�)��il�	v���"N�T6���]�<��o��P)_��P5�Vhb˝�Dy��8uA��I�qDP粋�׷���#X�Vy����q� 4�$pqD,�d�p�Q�!�\��NB`
��:G�?�'6WΝ¥>R��q�v�)��w�7�%�7u��au���g���q���8�`(�MU���ʔ�/Ŋ��-*>�'*}�|>�?�.���A��ޢ��׻���r���˷w�`eUp��g�m�X-�Ls�h��բ��ۺ�Z��Fi�a�X����u2N�s�a�~>y(�B��� ��� }�6UN�u} �����	=�ZUц�����s������TɝMa�P����f�`�FPo0r�F��BW��Zoq�
sS������=�Zkw��2�`�xf����w
�_�����`
�"��?y��]d޼qZ��� �|����x<*�زe��^�1�h*�g��4�Gk�K�Z5;Fka �u�.m��%S��6G��}��)�Ye����)����	=qcْ��8��l" ��i9ui���!��wW���Qw�rZjB� �\�_t�/�K��2o0�hw��Q0Y^ܠ���n�C8d�i��C�Y*�1�DU�l����⤭!80z�L�}����<s��8�;��Ϫ� ���*�K���OX�@��K#���b�ݾ�ޡ�5����ԋ�(>�#�� �Q��1�q0n�h����zT�b�\�X�8;�]S[qm�T�luU*)�n������j˧i����=��:0�C�G����k֥9ǹ���R=͖�㠖P�F
B�J0���@m�>&�;��AQ�ٵWO�l���a��,�ؤ�V/=2�a>f��=$E�?2Z ��5�]C~�{&�Ē��Br�1� e��JZ뇕.����J5�8I-C���7����וF�����1xG�r+�m,�"� �j�~?K�0A��w���QK�Q���1m�����[����VƁ�1�o
��ϒW��CO�O�$�=����5�俲|��ނ.� ޕ��/s�1jt79�L��7A�t�/�#� ��-��dn���ȕ��)9JCxކ�%\��C�n�l��Ù�2)��(�R1�/nl��x�B\G��V��ǲ�Ě��WkΫ��YuM���8����nM�K-�C	�Ӵ���G��I`*�-��q��W��{@�v����Y�vg�G��'M�v�=���\�1�}�s{�i�=�0C,�u"�G�!�
kQ�s�t����f. ~�B��%XSU�*��6�V��;t	_�4w�Y	�,��M`��40o*���"'�O�R�}=rIh��@�!���N6y�Rҍv�XՏ*��Ŗ��W�c�1L��-<�G��V����2Σ�8ο� -�      �   �  x���Kn#1�ͻ$�D��w�&0��O`2��#��V޸ �YOd;�я����q��s{����}�z�^���������??���ͺ��n��; �B5�j�����&:c�X�-b����w�����8NTWky�[˖4�JXs5����:���3�!��}���H?U�J�X��v2̂ޤM���ɰd�Գ�l�H��'�o	�?�ϙ��~I����[.H��y/���=�Aҭ��=��a>
"�O�`ﮯ��B�� �W?"B�ť bİh����f�"uOh2#"�I���W��$F��Y�ݫ �\�iD�S�΂��?����%Ć�⧑4�FJ��E��IQi�ۨ����"U5�zR5!���jB��IUA�|=�)r<o�'���ӬE`�<ɺ������<6�o�jBl���	��+�"���~96���N����x��؂�f�l'ې���؊�j9<��U�b3W~k=�f-�b�S��ܩXt�����ne��I�n��䜷W3�l�;�      ~      x������ � �      t      x��]{s�8����ZU���$;���;Ǔ�����䦮����`k�Ԑ�oJU�5���'9��
zЖV�n,h4��_7�n���,�_�|�y��z4M�����9���I�]Z��P5&�)·�y�ʽ��9��}�Y�_����E�~�ͳ��,C�a]��~�g5*�'J�tb>�&N���Ǐ����0�h?縬�<�"���'�>-���M��M9&L���G����d��	c�����Ƹ&���W��~�����y=�C�U����X�}kz��+��*-�+)!fY��I�q&Ƀ+\a�/J����Ѥ�j��9=NZd� �'���dY|�c�DD>3�ɗ��%��fIU]���,k�I�x�%"�!ۼ/.Qq�ί��`7qoqAHq�lx	�R;����
�:Lk|��kY���.2T���
6��6<�Q���'Ye��P�ϲ"�D�.�Em����%:G%'�ŜXb9�:� ��I�i���k��#U��bJ��l��2r�q����^M��ye��M1���qZ��o9^�6�ʀ�̼C��6��+Jȃ�_���n\Ŝ��}UjЗ���u�a���H�M��̰V^C�6�T|���a�X�S�ș�VQ��z�i��y��+����z��	������3TNqU�
���KZu����]�~>Tp+N����C�ҶAP��ᰚ���X<Em�i�ٗ��P�a��V��cS�qF���ʁ0(��~-�q�Rh�E��u�z7͵��J�-�����&�7M4��r�b�H-�W5<��t�F_�5l�ڶLZ`����B�+'mm���o�����>ogǱ�Y��,�b���M?v'�]X��M���{k�L{���`o�%�A��i�љ��5qQS- #7Bi�d�K�d�ƶ��j�61f��t��Z4UЙ��0k��tP9�8}O���� �OQU���+rY�΢\S��8�k l�e����> ���B����)5AK�|-K����YV$�t���:{�� �Ü't3�=�jܡS�8����$hȎ�������5����YAJ�1�M�����+/i�AE:*��(�I��^��V�Z��%�$��i��>oe9�X�_���/�5x�ah����p�Q3-�9}��!'�"�`�χ��pN7���
��0ouiK���|�A�f݁�@���C I|>G�AibXWj�s��nj�� �����MW">eh5�&�ZES���
�0QNPx��3t�3�я��9Ł��,\��l2��>�R��Pl)Y��/-����AV�	�`3ʺ�N,�v�\�C�;=e�ÿ)���	�<ޣAf3lcʨJ'h����i�e�k��Ak�f�y��ZYp����"h4ϒRг����I数�"��$ޜx]��.f2�f�/`��z��{  �>�g�G�:tH��8���K]��l^�8$�����d�����*)?F��Fx��sP7e�D�qI{���X��oe�L	����PǐP(NG֋iڈ���F��V�/�>������'����M���]��Bcf}l�����};V�=�U��hh�r��ōQ3Z�H��2#Ҟ���.qm=p�4����J�_��<���m6	��83�X#�sF�F��:(��((��O&={ϻB!�@BK��Hȁz���@l.���<�Ȋ�${M��G�t���H���
ޘq�P������y��m������<�̵ܬ�)f�e���%�#)�\FANfL�=��̀X{:���J}+u��p>�;L m��Է%3�N8+|$F:C�y��,�嵣��7��.�I��o���8a�F�������W��Ԣfŗ�΋�67�";��٬�fu6�۶Y�/74�/]hhPl^bHH4�:ԥH�w�:��� ��H�%E�߉���[Ї �FP}���<b���P�!]�&�.��*O��L(��S�Yx9"�w�\�_�ۙ������asS������5m�(�h�K���%���%$A�(�0�?V	P����5,4��,=T�2���*��Y}g��l�d��\���)*�h�_,�%�"Ϩ\�ϳ�gC���U�ԤN�6�������6���J�J6�Ǧ�eGl�-3�W.�J �1H�h��I�ڈ�2Kcd[Y^aȫ�I=�� �+�G5�����&Q�׽���L1�l`d�,=�_�̛��m����*�u%3J��F)�&Yts���^�vbF�ۚ���
$.��)��־g`�T���Z���v������;�C�x���������w(�?�����!��5sm��pN%�XHǟV}�\Q�0x,	5a\&��a>~;?�0U6%!���t]AC��K��Q���K��;�a�،v:����~�|E���� �>��>��:�~�㉘`sc����+�%�M�Ys:���	v$��y
x"r#�������������:��;}�6�qs��������s�~Zl\�
�Cp�2)�
��E��+�k�o8�A+��@�蘋ͱ�Ϗ�X��MN���Й��as#S��N;�vn',m�����`�@p4�HF�����t���/�N��JaX�ה�c��:��[K�Y}�|���SvX%z �7M���O\Yl��r����ϳ�lJѼ`kbt`=����դ!N���<��; ���|s/2&�q�˻��2#gx8��:�$!�_����t�<`�MG�iC|�ӇEv�J��#��j�nRǝ5�W�Jz��8�H	�餦�#��@�o����N_�N����}�͈y�&���^u�80m��>��鬎��B�CP;;�6�	n"{)܂�I!�:LS��R��(�����o}�����IE�+����"���.�Ց�B�7��|��P���#�sA��.q�:L�0���-a��n��e͉0��+愅�.����W�w��Qz��{Lڱ�gv��Yё�M����@F6s5U�nUB�J?�P�9�6ן\2�u��
��l&8��g75t�}�ٌ1흖��e� {1�1 ob�����r'?�"�VBqޤA�M7V5s�\e�|���&N,�f��5)cv� ��t�,u���C��^�K�J�e9M\N���R[�k�弭�@��@�շ�U�3���m���l��W�/v��ɗ�y]������D��pǝ��,t���v�>�n�}��[�}�>��}�G����0���y�K��A�Pga�nf��o��{���;Y�v�2��Xw���ȕ�`��TL�Ag�;��������-�����5��ҨG��Q�ciH_x�����q�d5{$��8��3�pϮ�*
!���zK{K
a�h�WRXǋN���:#Z�@h�6�I~���ʷ2�ể����ع:<�Ρh�XD��5�exj��8 gQ�Zׯb|�ͅ�r�;�2Y�m!>5�ܱ�	�6ň9�+���57L\�ڷ0��ƫpD�zh!���n}�FKZ�t�@�O>�,>mb���7�a>5�S�c܉�H��T��#�7y��Pۺ��0����%�3�����i�|�=xa��>{dm ��Rn���=6���Wg�;���Gk��L�-QV��s0l�]`�g��f��+����>������r$^f$n)���T)�j8��4c��j�JU���L6��٥	��^�l>�PRΌ�'l����?���Wel�S!&b�O��f��)Y^l���ͷ�ϗ��Y4�Zm��4��X���>�YE����GR��	b�ġf�Iq&���I�ou�f�^(%��;E:�C�����<�j����0`X�îe�]��T�J���t\M�1�Z����U�
�&��R�M1�i3��G��Zu�e1j>s6�	H��dh%Q@~T����2����g�?��/�I����ZQS:����_�DY�U�
�Bܵ\\�˒y]�!Ɯ &o3�ӿn�@>S{P��(��.�84/N��dkېh��S]��2�R�Ű}%���[\�ʲV`ŠŨq��Ǩ�Ub��i�2���I�k�2�`?Q���3�^�v�%��
�@�9R�m /	  �I=�U�����65�ο���M�;��i\��3(I'o_J������������������Lk�,�=�G[���Dxy��������wG�]ȳ;i˫;���33��_��68���0���|N�&��Y���:�.Vϳ��ߦ��H��:5�B@�~,��p��"[�]�c`}�wg$o�H�R�����//�B̠����Lf-�5���D�<�Aa
ća�����G��j��5c��2�kb���8����pʦ�W(+���W�\���b�DmYc�I���vDD�k�7a3;K�K����d�&�z�P4z�JI��v�&��n|~��τ�s"BgEq����rP�1OJ�C�1ȑf�(.�3!*��7o��g\O�gM=�
���ڀ=��-��Ps1�iYT�y���5���u�'�p���5c���u-6M`d��X�4����6ӆ�t���S͂o<���\}�&ѿ�\��erN�"�,aRa�N'���	6d-�9Y༁Ue%>d+��r��ɑ'���(�K�u��q��h�+	�5?ԛ ?�7�s�� ǢǆI�'�(g6Δ����p**�����}�5N����	�������: ˺��Kσc�:�Q#$�������1ӳ��zL�7�%����aϨ�G榭����A��3�ӁSU�qu��}+>�,
���ߊ/�{o�ejl�OT�h���'�1�\���d5�{���.홗�KhNY���Ͽ�ބ�~�^=I�q�zYQ�?J�f�#k�򦗜�U��Og?�����������]��i�?���J��G�4@��"�
b�.z&zu�c#d�3T	ɟ���އwǽ?�������������	yb��~��Հ>뫣�����8O@u5W����s�sv���<�{c�̱7g3v^�d8/�����Й�$W��� �G���<��PB&+�pz�#oAg��Y+���5;�C6KGo~y�<I��=k^2�J���f��B��8¤B5������%+r�8�gԌT�R��Zr�����R8N�B��ٓ�}5�[�~ޫ�HRb��<�c`��}�Ս���^�<�K��M+��E�V ����o�\o�y���������WG:����hU�ɽ����P�6ߚڦD�Y��x~[r)��<�T,m{RR��\�����\���fy�:����$�Z��B�ϓЖ�+�Vo v�M��h��/'����Xryb��ά�&�<�a��!?�Ta��p08�q�|+�@��.W�O%;ۖaA���Q�{�<�%� �$�
ު����
m"��!*������*���g5�[�<ݲ2o#���1���c.�����a]��fv 7�V@�팼�eU����{�,�>�Bc̲�G
���>�-��]O�-TZ�?��Ν�^��`�;|�l}�
H�+8����{fg�l�F��4�p��M���u����{M�>Wg�;ۿf��k�6EO���P(��'b�H�l���4�ȷ��%E-�D�mŗ}M�ŝ�V2� \~;(���<�1�[�P�;�K�q3/d���*(�1�o���hI+�H��jވ�0/䍴����o�/Ź��O�m�MI9Nb� �����vm�^d���q%ߍ��(}j�o��s����q{��Gbv:f
V!��r�T���*�H-�
#�C�#A�R���d��l�ۓ�Q��u��%���z�$_ڱ��pw%"�9E����)z�΋�7F4���]S�6�fI���_Bq5���Ė�bD����+�F4(��L�g�Fo�x��Ĕyg��,��S���/�ָm�^��w]���,3$]�ԗno_5�n�s�˜���=5T����pg������=w;<ޅKQ�t����5�o_8���+���eKg~�Ʊa�Wl�C��?lS9n'F��pj� ��0��Y�g��.#|'\����j���X��g�
��\_׻��RR'�����w�K{=5E-]M%h���.��{zV`ޛ�Y֊E�ģ�;��a�۶�K�DW��[XKg}o?�2� �95t
X�n#�)���ᒁhŀsK�!�NnNB�x�Nv�d�nH�%K���Ada;!�z�=Oy}�=�%im�õ۱��m���ܙ1����ӌ�!]��q��c ��1%)�w���1k�qGV�-�.���j�{�rs�����w(o�5�|l��O�����n[�	3�af�����o�ˊ�b��pM��;Z���Rz�3m��U�.�e*����]Y�Ak$�Y&Zp9e����{���w�d��A)r�<�ȫ����܉��?�[M�y+w�p�����S����q�*F�x��s�i��������      r   �	  x��]I��8>ï@9���X}C�i���\���t�줡A��q�NR�m?wu�4"�[���{^���G��oC"��y1��w剄�#E>��$�/I�w��8 ?��_/���H�������i���@�Jn���c����I&	�}Q��i���w����R��i�|a�U������CfiQ��Kc!5�����P��w
��m�Q�"��MJϥ����aJj	���⽐������
 !��,κRM����m((���l�]?���l���6 z 8 \Ԫ�	o�����	0qV���[�B�c��ADct$<�BP�Q:\I,�h{�h�v�^�^�7���`DR뫔�8�l��8�Nb�_��+E���R��]-�����$$IV��/O>���g�i�	�`?���7"�~#>h9r&{6��|4)(��rD�F{e@Lh�P Q��睼#'>�P�]����t�(��F���1(�'\�����HQ�y+�$���&�2���]���j�|G�H�������Z�0A��;��N��U�P®	h0�dO�IU�Q���䦁c)x�e2�$�of(9�(��>�{Pd�$b�Ig!M"��ID!�l�`|���j��� T~@���zZ�Hv�$[.g��Y� �v�)nW�)�մ�|5�v|�	�K�}���7�ѯ��wt0��?)zQ��+�I�
�9�Ve�0�òeTn��q
�i������3�Pr�Ft�������Q�A!�φ�@�����g��'% v-�%��vC���:PD,i����9��^�(d>IV�(���5e��Д��Ӕu�ڙ�n:�[3���郀�2�x"��XɄ:��9�Z9]��CW_u(����E������ƇcUǪMN9"\}�aU����,fUw,xm�im,c��Į���v+���-����qb���5��l���$�M`N
)G�S9���}��W��Նa�`�=���k�pW�eȌ��M��)F�d��i�՚�=�|��p��:�����[���.Y1�nC*�m�:�b��p4�?jD�����`l�Spp��z�)���G��p-nH���-?*nU��*�I�J��p�	�Щ@�au��\qa<�D,H��ˏ�a��o*�(�F�\m? ��"8!������>0�O���W��a�ƘԐՠ�j�V˷k\��q��lq?Aw�ώ'o'�Er[bl�iǖm��ꏁ�"���h���n�6���Wǭ�� �� p'��\��Є�]F=��ցwW|&1[�!�/�[����#.츰c�pNtdqF6�"J�OZ�����M�#��/!�"�L �'Cڒ�=P��JAl��LwY�p,�D�@����άMl d���@8"?�!�1�h�K�����c�֘�"��9��=�s���/�!E8��q^���A6O1�9,��Y�b/1i|)�B�@_GT���TG}+����㿌�]�GY���U��Fg�Z;�珊��MGT�yb��c��lyh��~��1�~����?���\��L����3�~��BT��N���T<81	�N��
�,я�n]=/�E	���.��\+�:P���9	�iu���0�<s�d��BS[&haV�K���JdO�����ʎ���>�w�~�L;�/�9�e�r��U�T畼q�Vtt�Qz�q�������\��� �|�ca^F��!�\K*�y�n�ڏ���y\Ay��\ 8_+�3���a��v�قe��v�R��·#��-�^�������S�	���m���2�K�墨2�z�vK䥆�����}�l6���l[��������B[�M����p��.ٸ"<��r�Q��F7ZU���|!QU�K���ҙE�
���pP�+�%E���ZU�C�RK��W=�,������a��9�_��}=�*6��lƮ����c>38��g��d�U�S̲:jt��J�V�5_��tY�˲�dYc���X`��*1�0F�+�u�ч�ܥ�2v�ߑ�#�3#���	RiU$�>e��ѐ�E��,�d�7�	88_(gN#�����_Un�񀖀�9dS¬���$ӃX�CKĭ |�J�4w�g����}t����_��t��@'��k� ?ZgL��G@{ �@^�Ld��N��2��ň7wSɊ�uVQ~n��=p[B����{أG���ũ�w�-އ�����L{������֩sGPmf�c�Ag�n��\�U�"���)=���h�PM��h��o���Q�6�G��5�{�x�H:�ӿZ�D�zfi�|�1��~� �m!�h��j.������f�ץ��Փ��W��W/_<}��ţ��y�^lv���.��m��u�}��`�����?�
e6�      p      x������ � �      v      x������ � �      �      x��}{sWv���h![�@ )��%ɲ�D�QU*�2@l��t7c&S5_"��~��${~�q�� ;�$U��T,6�����~ݧO�>��UI�i<^$����������q�f���q9)ҕ|���dM��,)ʨ�`w�b�4�b��>f��h�1[$U��>�'ѳh0�\�~��$U���E�G�|��i-h�(���ӄ��Ս"�!���&/��&��eUy4����~ʒ���<�����NV�1�u�ޢ�C�/�e��3��V���|���I�ɤا�-h�"ʳ(Φ�A�I�(�T�x��F˄>{��y%����"�9yp��4f)���Ϣ���(|e$3��hpѥ�Lb��v�RV��2��2h9t��O�����i6��!P�:�~v��ū�y��Կ��o�1�`N��	�<)�v��L���k����$z]E�]�&��-�t�|�O�=M�2�S�rc�O�n�46Nn��%�zO�8K���&wqA{��Y���1���GUD8�lJ��ȏ?~����l����O��^�;��l�"�ǄW�A

��f��z*���'����C���e��9�R��ˮ��+W�$�'�v9�e��p��p�UJX��������q�\��qg�?�y���wU�*oNO7�Mo3,'w9֛��ӟK��O�ˤxH���\�D�ﳌg9�I�L�yAgF�s�Hv}�2�}�&Y�V�CZm��0&�	���ԷA]�|�	.��@N�hF1�7mwĘ^$3�-a���_IV��d�R?�q,��h �$������� �7N��N�ァ_�@�>K!=z��g�梇/���M#\Y�4��U�O��=)
B����^�AM���i���;� 똨�"%H�l��.�Fla��V�t��O��:1�)7�Ƨ���^��0^�!D����42"0�N��-6��<�c~�4ȇ�$c�aP�&���vlL�̗	�_]��}�$�8ouǃЄ�!�{v4'V�G+b���M�΄��� �=��kƿ����7	d�����E������-ֵ��j�7T;�7N�����4#��N�W_��KD.$x��E��5A�0��slK�<�y�9�T��U�M����85��ɂ�h�cG�"�����DB�"_F�5���0O�_2e�u�o���3��X@��/����qn$f�����t���,�����|"�0ZS�CB�T�˔�(�3ڍ�I"�PZ�LeH�<�{��Hdɸ� ��tH�xU$zѐ� Ă6?�:8�~��,7	��E�1�GKȪd@:���	����ً�О�t�y��|rO<��x^{���q�*����;z��Ym������g�qm�;v�ɴSG�`*Ƨ��q�{g
� Y&��%����� �;1�)�zYSt"�
��X�����/9w���#�K�6�f�"v'�*%�	cc�8)�i�x܋�*�2`	v�$��f��"�A�L�� �L�w���
T�*�/��NV�˗��_�J���{��d��p��`�m4[�;�}�|AM�v��W>XZNY��������b!)V�HvTLC�8_W~.��>��@o��o���x���xp��=������]%�2��g�������,�?��o�罫�����Oè}ӿ�9��=�~J�18z>���ݮ����\���[/H4.��Xm��;�w��VV�_Vɤr�wNr��FW��^��}<�DC�� �F�1p��[�tpj�
f�\Bk3��p����P[�3'h0�D��y�z��*	�F�j.��9����[�X�jhқ"^��h�\�c��}dr>V`�a@T��ŪH��Y�3�1o�wm�iF�:f��k��VG0�<���+��ln�F����������C�q|58�A�fRg?�)G#��E�]�ǂ�K�+l�~P2�4
X0v݋>A�u�z�N�� �e|�0��� e����ɫ��(Y6��Ϙ���aƬ�"��_��@Ғ���Aѓ	�ҋ �ע�LsX��xkCN���lv3���t���r�	��2'N;cS��Z���ɶ"�X.�)��յAZ�<!�76&�2%5����uk�ja�x��W����!Ät�or̚Ѯ�i��T���o�|5=zE�~�b�m2�뛳˛��^����T�Soxu�LE<%�8�Dd�1G��b�>B_V�2G|u�@�Z�D,-��E`��"�ZnU�'�O�h�4=Q6g)�����1=}����\���Jb��	Eo�y3��<f|H�I[ݩ���R[�[��dp���^�ʼ���0+O�&Q\X��2aC�X�pD��ȃ/{l`�w6���Ycb��(���*�]�����3���.�X&�N�?̒�H~���K����4pFb�5�xRЋ��\]�J�9��D�	O�C(�@�IZ�I4L���;_�';ڮ��������']g�	#�@��X%B#qӰC1�܈���L���,3�`8$X���#���i-��ܹ�(��8ER�2"hLIʛ.rϋrN�	��؈�X�W���"��ǻj���u0� �(&�/Șu'J ��P�ؼt�"Y$�EFkY:]��J �S1j� ;�%�I�RM-8w�Oћ�c��wA񬓅2��W~�A#�&M^����Xy��xg�-cj�!zv,�E��9��tF��#�.��"��ׯ���Ba-:�d�LS:�3>��:2@��76Kم���6���4��jUt�F
�9�p[]$��錔_��J����X��	i�¡�V��v�7�pmD8:V�|���V�Y'S���@�'��O^x�R��*y�_l�'�턕�/�\�̽��~�I��[�����?0_���V�"�pNf�d�ҜYe����obMj���=?c�L� e;UZ)�Vw^��%�!�Q���5��ג�],�;�^�ɂ��yi�K�b�&
T#2;a��`6
5��dPɾ�Uz���\a��������I�ǻ̤��f񑰄g�m.6�a�ó'd��	i����G�'���RS��]��C��;�z�z�|�3�ϫJr�u�X�^=�_��4ؒ�FE�Hm�d~�������{D/Msy���"jh�A�.�Bn]�_�F]\1�� �22�6:ڊ�,�: �����;+@Z�d;���]���0Rz%�A`*��t�����\�V\����vvAn���d�v�A<n�����k��`�JB ��TB���-rTV�#{�����`���<!�^R�v����K4:�Y�9�W�՚��A�i������4�Z��Y]�=�]� �p~���JT��!8�}��IO���ʎ�p�$�"�/ߊucqg��� �@�U4jŀ$��1ށ\�y��b�1۴1�l����rb�!�<�,��룯��zγ��}����\�\�����.Ο6͠�M��7��ı��(�34���D��IM�SL/��/�b�Sa}DK#�%�X$p]o ໂ��- GZ(��� �x2IVl��HhK#e�!��őڲ{pk1GX���]f�jz�[�VR������9|���� �˷�'c����4-W�x{KC�����\�����^�I��Y�=����w�������o�������x�/X�{�;����<T��g8g�� � ��颴�`}����E���� �k��q	ׅ��م����=�d-+��-�y ǍT0����i��1�S '�v��S`?�,?6�z���MF��{��B�m���c�|���2��Qn�|�_Faj�3��ɊH�9i꼣�zQ��<��ы�O�r-���"�Ew�t�D\S�F�ΨQO�=He�x=�����e)	+��9�"Rk� +�� �:uL����_x]�-bČώ���ҬA$(��ק�.CO�R�-�Am�4qB*�w�'�F!�2�"os�Fn]XQ��5j��?�������N��$�+#�mҚ����Uv
�psq0
�I�P�E�Z��l� �{�܄�+��k dd� ̥��B�~�.L�tߚG�ka�ѡ��q�Q,     �[^�����P�,��=�C���9(��c6N!������"'�R2��e�F���̉�,m�m^{7jl�bo��h����-��Z-l�6�v$�whSJ @��V���0k�̪�`S	��� {�{� ��t��:�L�W���[�]s#�����3�Z�� �3{�n��@X�4�*%c"!��6���[� ��D��jq�$|\F���|#,�>g�cA8��sB��qtl�iɡ�9��	��X��d�y�{"��b�|8���==�-�O��F��;��un�O�Y�v�����7�]�9�e�C��q��������I4/����7g���a�>:��h��G�R�`�F���3漼?�O��d���:d�v�oMUuu���2!;l��o)b��4�~)D.G��$���9�ߨ�,��G�3�A��Yt��,*|�C�p�,sd'�5^��]+}2��D�G��"
�%,�p`(����-��A_7h�����Nzb�i�#,yx�x.
��Ƥ"Խ��θd���Z��8#d��z�>��0,�-�O�}�2�%�CxM���緷����VJ��݋xӽ���W/���C~�GxU��!D>���v�u�7�����u��oίzC<W�Ow��F�<��*g)����۽赇��."� >r	b����+����$~���#Eq�f��G�ኬ�	����h�C�;�:z�/�)'�izĮ��Ұw}u�t�����`޳�nm)Y,�˸�rbwpUj6}6�la	>�ô<�(5� �ԭ������3�-�*D`h�]��V�:��~�q�X�z���4��~���>�D-Ild������(��$݁�ҙ�+96$颍�-��#���U���5��ܘ��fW�h㽼	�q`TS���D��e>��(GΓ���נD|�.x��q�x� �3M���_M�?��"�x�����K�lY��;�sK�R�?�5܏T�x[
��i�i���ӎ������p��|��E��
�[�^����#Qm
I�ܱLFn�#Њ�E d��hc'�ԸGJ1��p�>ʂBb�ꪖ?,��9E��%j�ǆ#�N�?�6��oߙ}�x�����:%඗w��?q,�ǩ��E?rN��ݻ���i]\cС�����o�bzJ��t:]�"|<��G^��\����t�"Q����Q£����0�0�x���M�;$��$���i���������^����M����wї��ß��G�?-��A�ݰwqqєTW7}}N�����ؚh�$��A�$9�ewPP�@����x���	>2�P�+���������7Mr�t�=�mu�UJ����f}���߼��y��6��ջWlJ�l���C`VwH�t�ɕi��DT]��.��ƢmHvv����@�]�IԑD��I�Čw����>��@�Y��
\i#*���[��Z�޳]w⎃�a�)"��3�nŅ��/�Z)��qB�1�b�R+�)�R��&n{}j�v娵�%;k/���������@��3"X>��-0��em��X�d�a�0'0�9i�j�q��O��2v^i/�3i���DF��~G�~���bxE��ӎ06f��s�o�L's�cSl�����Qy�4�(��a<\����ո���b.2�I���6�+;I5�Z�n砖�6F��/�:ÿ�l�z��V�����~c-@Կ��G2~��+xF�m�lY�C|����W���9I���Š!"�}�gzח,!�������qq-�l�a��r|n<����L�M��W����#�	}7���{����t������ڿ��_��R$�����D�Ip����b��
+�'ɥw�����F��z)���y�f�,�pQ�����Ȓ�cLZB���-Ia W�}$q-}bn���u֢�j�?�&��L��Y�t7ӫO޶(M�1{g'f��sd���o[�8�ř$hq��5׹�˧��e��]Y{���N����;�<m�	ܲa��F!".QI��A�Y+. [�"i�U��,9(Ө��x�o��6J�zزh9{ő)��ƪ|��$<V/�tX� �hRH�d�=c��NÐ�:���+*��L�|A*}Y"�q�$>���w�9���ħ.U_w���d�33���
�?�4hZ���.)Sd���0�q>�2tK���gq�גE�����[{��C8�wȃ�i��=o���ҫ�Xl�����l-5�BS�a�ש	+�4�Q�n{�5\��I*��7V��Bn�������m�u��Ѯ�K�ZU�3	�9	��ƗHz����<�xO����RO�e2q�;��%T����g�9��&�q��Sd!Z�烣�̻F��:4��j�G���^!,p}!�Q0w��bQ3���g�ox\�Xέ���Ɛ�V�Hؘ[h�M*��(�	1t�CXJ�Եԯwhkǃ��w7�J� f��p��]7##d��.��(/q�B�8�U���-�T:G���р����$���V{�qx7� �����X�$�~K�d.�Ė�T0�4��l�s��L��&b$���pO�.��$��I����EfRk������Ww]LܗS��Cذ�i��J���1![�11��X2�?�F'���ZJ�pO>wC��Uy=��p��ɮ�$�~��C,�~j�����Z|2��T<H��ndq��zx_eυ�i^ؙ��ЫG�8��Z�FX��z�Ij�c�D�M��_]�Gm��V�ӈ���@�+w:~���ld�㓢�[�<YZ��C�v�4c���L[�7�-Y�	Sy5͹s�&[u���������%�V�"�R��4�`����=���H�l*��vl�3o��L�N�*�|%!��`��b�a1'��wE�S�G�P��������yNF��C�Ka8�L7� $��\�#�I�����Gnz�2}@��O�v�V�cW� D�{z^����lps~�;;�6'��j��䱻��@�м}Q]n]"��~,�3�G��w���x�_o�_mZFLib�hj���Y����o$�+U�J�t]���y�OA��P>�c �W�5-a�iꓷJ{�Ӗ��Ѿ{|��D]��s�O�'#F�6b[ ���?}u^Hn��엹K�TǖR���\�QlY�[�:a��T��a��j�|�^"�5j�_��IJՐ*)˜�vnav�[�X�i�R��H7�"]`�3��5�@���/��C8Z�+�r��4n�<��ʹ�E��,͖m��4�O�oDY��u`LF����؉�z�o�xS�76��2]E���ų�}=,� 
:@�
��&��L&�����JI��p��}�~��/eB:��g��3�[�?�%��N]~V�Փ J�Q��9ۆ�_j�RR���a�Nb�ٰ�$nڕwXQ�7:B|�%�P�N�EO:=_n(�f�̝3A���g�3I��=S�
.c�������[��Y�y�i���끉`r��,�â�� �Ц�'E&�b�&�iT���Z`��8���8�Kd�������>;|�dD�o�l
0'��gb>a�([�	�!�F��iox���|��ؕ����B�j{Ï��TAaKnL�J_.��g$�IK��o�(�d���ŝv���2�M��%fj���q��c�R%��Ұ%���w^��U˖� ���b`P aO�T�E���x��Lk)�UXs�ӎO��m"�Ub~ޙlb�9���d�+�m	�7��(�AML��ꕭTBI��4-��c~:�J�#��&�8�v}��c�	wH+�2G[��p\�l@̗'I&��1 k�z�N��̬�2hjVb�tjy�V��� ?g���ra�4I���MRs�s<</�ʄ��fN�N������eo�o�M�n.����Lt_;7��gR�W(X�yT���u��V� ���a�������8�]��.��M�Xb1��* ml�*}���1|.�L
o�o�gAޥ��n��t����M�%�"���to�w�}Mz����M�X��V	����k
�γ������8|�<�+��Z⎃T4��l#g��8����G�AcO�]=���z�    �~A/�ޙW��3'*�3!��r!�~�=Y¿�����@W�8�h�縠�,}@i@䮑�3z���*������T�B��7��L݇��s���W'"Q��oi���,�w��Ċ�u)�f���t&̡����9�EҨ���h9Lj柺�0�K⇔�\�����K�Q�@܀9�t4��xzUY�Q[�F�s/P�-�X,�(����<�IU���k!~����}0��E����Lqpaŷ.��׽9�z�k�7������պK��N�h'gd�M!2Čm^$I�c��OB�r.�uխ����0"�="J�Qh'`L�u�v�p9��9�]�7�)��������ٞ�4��m6w�� �f�w�4P��5/�8��#�v��<6���u�ǳ�-T���
�]|ǁ@8���Є� C�`�=#gt�ޓ��>���'�a�H�e��`�.�[;�����![�,��NՊ�Q�z���љ���ݻ�Xw+^�w>ʂٞ�V۰2F��g�-�����O$o`P��ʚ��B1�e>{��R#��*������tλ��å�l/k��LkP���P����t��LG��M/�[�[��՝��Q�9���>X.��N�J�8���,sN'���+�;�5F�e��C�f{��=/r.F�B��
�7c��ε��n ����^�.H�O,��
�E�R�v�Ưa�!�������3��9?���6��pxs~ֻ��R�l`mR���	VGW���o"mM��Z�+�.P�O޼�y�\����J� [cO�������Wo�o��^~���o^E�}}������_�y�x�������՛[��*z�����^E��߿�>�~�&z�����b�B[xm-/����B�S2;����!Vr�ӺT��k�q;�f(�2Ɩ���M���i������t��M�ո�5�q-�댻�r$J�����X�O]��JV��]`3�d���F�*�e�	�*ۃ��x6'y�Z�I���9�'��<XmLH��)p���Y����\���S6ht�6;W�Q�}��,؎��qns���.�,^	���~�H� o$O�J z0�y�*s��ėȚE�4��#���e#��)�=F��s�՚!�D�8�p+��Yb��t���X�g�r�'Gz��%���׀�����U����{?�����S_֜�\��,��\�Ş,�Rۭ�r��xp~�7�!&��Z�g�U��Y����58��3Q��F�f���7��,�2�v�>�ԋIS�?Y
Z��rt�Q��+w��)�}4�]?4��!��'E�s#����m>�7HŒ�G�ݟo�X�3h�k�]�	����d����n��T�t�ɍ�j�=;I�����{�/�F{��Od��6~��<�o�u���x�]~�W��2���#}.�i�� ��ѧ��o/�Z�'hX.�I֠n�,;aq���]���`
��.-}��H��늚�!bx�35ȕ�{�\gW��l)�:fE�#KFb��������T�A-�U8�iѻ� �������/W����#g	�i^*قB���A3B9�#vj`�~�Ϭ@.����A�Q7���rV��Y�F�:�7�uG[X6�(�������C�ηa�Ѐ����%][�.�$�P�w٢}� �p�J{���4'��נ �������T.�iɃ��\{q��w%<�[�h�2����Ö�h�y�E�r���!�9���{�x4� �v��$H�ʴVG�Ft���Pm��.��Q��6�b��z\f/��+�I!��'�E���"�qHY9�_��C��voA;\���v�c/nΆ����]��h��P��ze����_<��
��i�9׾]|���8�*/BkA)�ؗQ��3!F+���eM]\n�~V`�e�%���G��/mE�R����C �z�#�zw�y4vy8����ɚ�~��tAG$R �BDqn4�6���#�k^ң�5����@D��-A��*`���e]9� q i�͋8b�ɺu�U��.c�� z����@�	����ií�ōk�Ң�C���9t�yB_���:~@�O�5�\�f���Wg_�9?�F�i~4G^�[�Y<��|������ླ�J��׿1Wd]@,���r�M/}��2	��!g����
 �$�[��T�6gJ�f��`�[x�� g<�����?�����t����#���,'L�Ե���r�ߎ4̝K/��{�J#!��'I�f��\H��p�� ��'q�X���12'��֌Le���yoAWq�a��CoP�c�rZza;N�i&Wge�q��}���{kk�X�$�Ѫ0ANB0�k�>�m;�t%��s��#�+�T�P��E�V�7Թ`%�ⵟڇ������2YOs��=���M��w=hFS/HF]�gr�!������9��#���Ջ���ObR)	��bf�2툝?��� <˚�_?pB��ˁ�g00�S�'�c\��TS�kO7W��Q�����g{���5Q�]�������/�_)%R!�&1��咑�#�����8NJ$�J> P�"����8���	�7���# ���]xէ�#���id+�-����a��b�F.L�q��d�g3�{��h�j����e�f��s�XR�0u��rA�2��"նk=�p�Һ�c�*���ٷ��g�8�J=�{F,v%���"�R��p9�P�SM��FN
ו�(-���
H�� �Rb��5��dU:,W�U!���/X:א1�p:�<)������a��˜�b4���'˭�e�g�K�1�5t����+m�7�ޑ���S3뎄5��z��W�Jy��7'��$(���}$�~@��"�c��Y��d�O����4y������E�pM��4P�u�k
u�\�~j�24�s��Ay��t����>��~��o~� �p��;p�-���w�znp�K�I!�:��=��L�<�F&�lO[��]a����ޮ4��������A�h�!�����*��M�sJO��������o~U�����Ѩ�d�"��j�"'z_�h�_NҲ̋��I��KH��9�F�P��+�(���zQ }�>M=��A����s��h�+
H\J�Z�;���&W�؈1LV�_ЂR8V�b��}��Ʈ)�8������v�A���p�����x��wv)y��#�jfvV��]����T�����A��q�7�4�;�ڸ��m��濈�$�R,#�dթ̻~'���N���b��Q��њ}8�g�Ǎ�OҼ�@rZO����G�x|��Dذ��Cgs<�>z�K{�^/��pp�,O:�������[���H=.�m�A�.Ք��h=F��ݗ|�K����S:[⹣��W�Q1�5����K�K%6��|V�-�\',�R\X��vY�����uB�ZG�A��^�\[z��;�P��Q�G��jt�c�t`�. z����Zp��u
Fq�<�h��QT��]Y1|���dܓzڜ�c���L&�E�0� �v�>�-���FSՐ�M�O��ś�++�'�,8*�����/�ruh�"����O��Kb��K�-�?���/��.?;��I\ɚ��R���f8 Cqؤ���y��s��Wl�X�r�=MN�=�gE�d)����Q����rK��ġ˪S��쾘��J��9�R�U�"������[��gљ�r�݊�Q�����(4Y+�����fY�
 ���7�L�M"�ܒ�5(�>����j*/�1�7'�����3��Z*^�L���+�^�$���ީO�h�!.�D�Be�+D'�Z��D�umlt�P�q:�����uW3���~ם=3zJf�F�c�"3�}h-�����xp;U����=�K�:tK�O�Xи®����JT�W�T��k�r�����ͻ�����G��I�H�_�J����w���"�_� ���6ZO=ċDHa���,w�� ���kЗ��棒�֍�z]�V�'�)�lf׈�4���c�pR����g����6��f�z^&n�̭�P��t�Q<����M��JT��5��W>@P$Ńhv��y��o�~����5�h� �	  �c�����x���������z��W�G{Z���k�o;\m�>���&D0�����aUR.X[W���YY�sT�����v�����k�%�Ҏ1�a+@�^]���N퍱kP�S`i�t<�ꫥ�_�u��w=ܑݗh+w���u�Ђ�5ݱk����UWBI(�{ш�	�=
���7��֦ѐr��\-(������#+��k�X���RQ�J����I>��H�JJBkRܸ[��H`7:֚[�RM,�>Q��C�����OE:B'(���Q�ݯ��/�o�1�``�E��暢'��	���ת���ِ����+��a�ex�4;W��ij��� �o�٭�F����I�Q�q�~�!���`��n4�X���=�F�����}i�_��Y��a	�PR�մ`�B-n�ݐ�4`�������!�:>=&�P�Ss���Q��fp�{z��I�W��%�_�����9�%yheN���.�m�C���E�������|��B(I~>gR�k�%���wr�D��T4a͚����!Phk�ɵ�CW�{����꺠g��|�~�q�rO��I:BP��4ʍn�bI�E�W5.F� �߷d\�Ӳ��/Yk�U�1�<yRo��o?���ޫ�Uf� ���'����\�	�\d45!G*T�R	
�t���菣�!U�3I�o%z��W�%W��P!c�ް����hr�i�;����@�nոI��rv��������̲(�G@��?3}w�]�=�������k���1t_Xt�߃��o�Ԓ��::�a �	}��_���E��m`36l9.�8%m��v�ζsФ��:a��K;�L� �'!�e����h�g=(N���۰�7�t�a��/�LR��j�3C��~��_3a$���
���:s�����7�Q��ݑ����_�|Z�Ut$UV����u^Z�"������d��c��St9{ڻ�ީ�%Ŷ��˭P�OT���R���ŧJte�*�3��޹*��i����h$Uw�-��>]����55j^j����Z�&�l�ܑ��t�w�/bx5]K�3��C2f�������k�IJe���p�M8�&3�����x%�^��t�\Ğ�X�HIu�P����������>�[�-���fX�?Q"��ٴ
x�q�o�GV(2=�Ӛ�ɩq�/�_���߰�6��ߗE2;���'�X���4'..W����>�<�e
7MF�a��8z^#��>v�ˣH�qn4��1Gi�-߉�۵��ʿ���\�W��rx@��ҳr�RU=i2����ìe	�K��-�?�:c�N��ɏ���|R�N���e8u��N�Y��x���1����z*�W<���=��4�ඊ'�h�3[�>����X�Y2va�ki��D<R{�z/G�Y��v����_���ЙrQ��&y�U�++|kBZi[��`w�E|�׀T�I�,q���zJڻ�N>�e2즤՗}%V�r�^aa��`"��`}�!�Hެ+���)�9��>�!�$��^}Oh�k9��^MP6��� J��R�˱9� �ȁ��q`�5�����ԸW	ǗG���Qp�o*�WB`�oR��TV.��� �J�l��י�AS�������=���]�mo�?(�D�Ɔn��*��)�����6���>^`-KK�s*9N@FǍ����d�Ț|T�k�����\<\��z��ce'���!m�2�Jf\YR1׵�dyk�a�sڹ^~�80��e�L��|O��������S��'U����'">�C{�fO�<�������m��fG����mmzW����7x:�Đ�=�2v:�K0�I�[�9���[y>O��O���mΜ2��[�a�[j��Kq�*�)M���~�ǩg�dw��(��O����{n�~t�s�+������-���FK�ۮ_&����� o8�X�ssЀ�-�=�@&6í��h��E^i
������+��A>�|E�]1~��(��-���{.��%�J����iR	0��u�@~|4�~���j����)�Z�6���/Aڝ2zj�g=u�7���mΑ(品/�]x���g��T�'����z�����c��7S���]E 5�����C�w�sq�"Y ��9**�a=���e�ɣ�+G�T�N�/�},� Xdnb˾e|��|��F~H�*I#��%�L)+C>	:�&	RȦH� �b�� %�4��(��\iwQ�e����
�-1<��;a���|�ߵ��.\�6���咦�hÇ��'rs�������0�6�Kpp�vJҮε�q^1��K��G�F�����\����Eb��d���wH��$��[�7��H�;��~�J��||�?��C�2������軾�ޜ{$r���mD���7��݇;�*�?�f@l{�Q�ܽ �����;�v��"�"���h��-�}[�Uk�}��][�����k�GG�{��.����ճ=��Y[ {���V���*a���������N      �   v  x���;nCQDk�b,~���4�e%�����J7t�8�e�5I�����z?^������|�����S.Y+I9�� wi
 -�S��/�\�r)$N��E[I�� �H�o�N2IwCs����&E�O͕�!7Csr�1����2�������q���>C�y��F�#C]OM-u(5W�zj�"ыBsF6	q1A3�I(�1?�TeDڥ�5�S�,E�)k������B�c�gL��3�1�n+[���U�P8�1�G��7��$�4	��5B�W�6;4��$䤱-W֕Ft�%�<��^s.A\{�ؕs�b«RyQ\��XC��-r)=={�q��Ϥ�}�Y����5N�	�* ��"q��$U���v]�����      �   c   x���CAB�PLf��W�%����� ����J��ϋ�jh�@�q�����-�tG&�����d9���9�*\���s���H�Z5�>��X|?$u��      �      x�34�4����� �X      �   �  x��V�n�6}V��ݗ$�MK���[/(�@��-�b��i���Ф RQݯ����$N�̜93�(��>IC�^V�xd�h���ׇU�
Ek����Z��]Ӭ��X�����!x~
�I���e��6Ei��0��GEco�a���eo��Z	��frǲ	�lW�QD]~�2_1��$��2�4/�Gkr�g��I��(�����6�K����Y%hǖt�J;Nw�]�:����|ʐ��:�|����y�4�
f���-��F[[���;�̠�2�!�v<:��E�${��C�f5z�q�TojjX��@�*^݁}�Q���� �i�$~�y�$��|o}�,�Iz�|R�'$��5+�yz�ka�C�9^�3�M/+W�ᒊ�
��J�T�$��|M36����v`��M�:&+���1�Z��#3�Ӿ�n�;]����K�$4\��6k��רf���f��Q:Fp)z�j�\�2����*�;�{�NR����e�WC!{.�M�<�f}U�>��������J��B8��T�*A<�f�c}4�VL�{���Y��p#�\��Yp�'��B@�۽ځ���^�D�̡1��>��U�q��UW[�_ĚH�@�oj�h�#�3�}��[V�[�-��q�i3C-�<8������ U~|�n�� ���l�e�h���7��#B0��-ܜ\�����$��}]���v;�0sI��ؤ=z��n�q;''x�	=�� �F	��Z����r]Z���JT������X���0	�^��� f�W��o�/���<��: =�e���G�l)c�C%Fc j�(��q�T�i��'��i3)i�ٗk��}�>�����#û��s4P�G�#�[Z1���q����hm{�6őv/�L�T�\�۠/��cZ]�V�0�!��A����K�W	���՘��M����(x�����V\��J�"�s�/�y\�k���k�4�YH����:�u��a�C�����V�2dM��(Jȼ����؍�p��>]����3+�ɠt�^��i�A����xhѸ�.��M�؎��Ko�@h��'v}��m$�o kz��9]�~�{3 ��[޹0 U��⠆�����i�Se�D�Z֙�_��fH�4}��p��]�	�
g	��s��t�_�����J�Rv      �      x�3�4�2�4����� 1�      �      x������ � �      �   n  x���An� E��)z��v����@6�:�,Rs�b�4�T�$��5�#�l&��sf�&�Ga�������Z)�vCKJ���/�b�e��j+��)��GH�VkC�0ca��F��_�νJn�ֽ�߯�;)��L���&��n6�C��_)*	*�Ұ����ٷ�z VW`���t�������Q�N!�\���
���^������݅�;i�$�uj���#ۆۜ���(;��C��}��'��=O��N��ے�q�ʗ���d�r�L�KU#1o�+��l����RL�:ZL���24��!2�Q�f0�<Cd(�8<��{�m����$u���콓�ޯ�Ӈ>�(�#�XD      �   C   x����0��x�!�]��B*�#�f�j��m��_��VK9�;Ne�X�3,��������      �   �   x�u�A
�0E��)�	�IZ$;��� ��:j ��&��E](��W���Cq�����!���BM�11��3��o�g-�� C��9@�����un���5�DW/);ښ���g��ܼ��̚���yC���k쵔rD�EL      �      x������ � �      �      x������ � �     