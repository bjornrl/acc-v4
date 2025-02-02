PGDMP                          z            acc-v4    12.10    14.1 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text,
    published_at timestamp(6) without time zone,
    internal_notes text
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
       public         heap    acc-v4    false                       1259    24953    syntax_entries_sublesson_links    TABLE     n   CREATE TABLE public.syntax_entries_sublesson_links (
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
    public          acc-v4    false    228   p      |          0    16467    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    215   @      z          0    16454    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    213   !      �          0    16558    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    229   �      �          0    16724    code_challenges 
   TABLE DATA           �   COPY public.code_challenges (id, starting_code, prompt, internal_label, internal_notes, get_starting_code_from_previous_challenge, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    234   �      �          0    16872    code_challenges_components 
   TABLE DATA           q   COPY public.code_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    260   37      �          0    16812 $   components_challenge_challenge_hints 
   TABLE DATA           i   COPY public.components_challenge_challenge_hints (id, text, recommended_time_before_viewing) FROM stdin;
    public          acc-v4    false    248   c:      �          0    16823 )   components_challenge_code_challenge_tests 
   TABLE DATA           r   COPY public.components_challenge_code_challenge_tests (id, label, internal_test, further_explanation) FROM stdin;
    public          acc-v4    false    250   �=      �          0    16834 ,   components_challenge_multiple_choice_options 
   TABLE DATA           z   COPY public.components_challenge_multiple_choice_options (id, text, is_correct, incorrect_choice_explanation) FROM stdin;
    public          acc-v4    false    252   �F      �          0    16845    components_content_challenges 
   TABLE DATA           ;   COPY public.components_content_challenges (id) FROM stdin;
    public          acc-v4    false    254   "O      �          0    16980 2   components_content_challenges_code_challenge_links 
   TABLE DATA           n   COPY public.components_content_challenges_code_challenge_links (challenges_id, code_challenge_id) FROM stdin;
    public          acc-v4    false    272   �O      �          0    17964 =   components_content_challenges_multiple_choice_challenge_links 
   TABLE DATA           �   COPY public.components_content_challenges_multiple_choice_challenge_links (challenges_id, multiple_choice_challenge_id) FROM stdin;
    public          acc-v4    false    276   P      �          0    16853 %   components_content_external_resources 
   TABLE DATA           U   COPY public.components_content_external_resources (id, name, link, type) FROM stdin;
    public          acc-v4    false    256   {P      �          0    16864    components_misc_module_lessons 
   TABLE DATA           <   COPY public.components_misc_module_lessons (id) FROM stdin;
    public          acc-v4    false    258   �S      �          0    16990 +   components_misc_module_lessons_lesson_links 
   TABLE DATA           b   COPY public.components_misc_module_lessons_lesson_links (module_lesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    273   +T      �          0    16737    courses 
   TABLE DATA           u   COPY public.courses (id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    236   tT      �          0    16885    courses_modules_links 
   TABLE DATA           E   COPY public.courses_modules_links (course_id, module_id) FROM stdin;
    public          acc-v4    false    261   �T      �          0    16493    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    219   U      �          0    16563    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          acc-v4    false    230   |V      �          0    16506    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    221   �V      �          0    16750    lessons 
   TABLE DATA           �   COPY public.lessons (id, slug, name, is_hard, internal_notes, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    238   �V      �          0    16892    lessons_components 
   TABLE DATA           i   COPY public.lessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    263   Z      �          0    16905    lessons_module_links 
   TABLE DATA           D   COPY public.lessons_module_links (lesson_id, module_id) FROM stdin;
    public          acc-v4    false    264   �Z      �          0    16910    lessons_syntax_entry_links 
   TABLE DATA           P   COPY public.lessons_syntax_entry_links (lesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    265   �Z      �          0    16763    modules 
   TABLE DATA           o   COPY public.modules (id, name, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    240   [      �          0    16917    modules_components 
   TABLE DATA           i   COPY public.modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    267   �[      �          0    16773    multiple_choice_challenges 
   TABLE DATA           �   COPY public.multiple_choice_challenges (id, prompt, internal_label, can_select_multiple_options, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    242   \      �          0    16932 %   multiple_choice_challenges_components 
   TABLE DATA           |   COPY public.multiple_choice_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    269   rc      ~          0    16480    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    217   �e      t          0    16419    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          acc-v4    false    207   �e      r          0    16408    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          acc-v4    false    205         p          0    16400    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          acc-v4    false    203   ��      v          0    16430    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          acc-v4    false    209         �          0    16786 
   sublessons 
   TABLE DATA           �   COPY public.sublessons (id, name, created_at, updated_at, created_by_id, updated_by_id, description, published_at, internal_notes) FROM stdin;
    public          acc-v4    false    244   ߈      �          0    16947    sublessons_components 
   TABLE DATA           l   COPY public.sublessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    271   ��      �          0    17845    sublessons_lesson_links 
   TABLE DATA           J   COPY public.sublessons_lesson_links (sublesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    274   `�      �          0    17850    sublessons_syntax_entry_links 
   TABLE DATA           V   COPY public.sublessons_syntax_entry_links (sublesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    275   ��      �          0    16799    syntax_entries 
   TABLE DATA           �   COPY public.syntax_entries (id, content, name, internal_notes, max_width, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    246   �      �          0    18078    syntax_entries_lesson_links 
   TABLE DATA           Q   COPY public.syntax_entries_lesson_links (syntax_entry_id, lesson_id) FROM stdin;
    public          acc-v4    false    277   ��      �          0    24953    syntax_entries_sublesson_links 
   TABLE DATA           W   COPY public.syntax_entries_sublesson_links (syntax_entry_id, sublesson_id) FROM stdin;
    public          acc-v4    false    278   ��      �          0    16519    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    223    �      �          0    16570    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    231   ~�      �          0    16529    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    225   ��      �          0    16542    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    227   i�      �          0    16575    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    232   ��      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 331, true);
          public          acc-v4    false    210            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          acc-v4    false    214            �           0    0    admin_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_users_id_seq', 36, true);
          public          acc-v4    false    212            �           0    0 !   code_challenges_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.code_challenges_components_id_seq', 300, true);
          public          acc-v4    false    259            �           0    0    code_challenges_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.code_challenges_id_seq', 36, true);
          public          acc-v4    false    233            �           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_challenge_challenge_hints_id_seq', 6, true);
          public          acc-v4    false    247            �           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_challenge_code_challenge_tests_id_seq', 78, true);
          public          acc-v4    false    249            �           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_challenge_multiple_choice_options_id_seq', 103, true);
          public          acc-v4    false    251            �           0    0 $   components_content_challenges_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_content_challenges_id_seq', 62, true);
          public          acc-v4    false    253            �           0    0 ,   components_content_external_resources_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_content_external_resources_id_seq', 18, true);
          public          acc-v4    false    255            �           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_misc_module_lessons_id_seq', 14, true);
          public          acc-v4    false    257            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 1, true);
          public          acc-v4    false    235            �           0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 1, true);
          public          acc-v4    false    218            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          acc-v4    false    220            �           0    0    lessons_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lessons_components_id_seq', 68, true);
          public          acc-v4    false    262            �           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 17, true);
          public          acc-v4    false    237            �           0    0    modules_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.modules_components_id_seq', 63, true);
          public          acc-v4    false    266            �           0    0    modules_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modules_id_seq', 2, true);
          public          acc-v4    false    239            �           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.multiple_choice_challenges_components_id_seq', 143, true);
          public          acc-v4    false    268            �           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.multiple_choice_challenges_id_seq', 24, true);
          public          acc-v4    false    241            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          acc-v4    false    216            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 41, true);
          public          acc-v4    false    206            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 79, true);
          public          acc-v4    false    204            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          acc-v4    false    202            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          acc-v4    false    208            �           0    0    sublessons_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.sublessons_components_id_seq', 289, true);
          public          acc-v4    false    270            �           0    0    sublessons_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sublessons_id_seq', 119, true);
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
       public            acc-v4    false    272            �           1259    24978 ?   components_content_challenges_multiple_choice_challenge_links_f    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_f ON public.components_content_challenges_multiple_choice_challenge_links USING btree (challenges_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_f;
       public            acc-v4    false    276            �           1259    24979 ?   components_content_challenges_multiple_choice_challenge_links_i    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_i ON public.components_content_challenges_multiple_choice_challenge_links USING btree (multiple_choice_challenge_id);
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
       public            acc-v4    false    277            �           1259    24956 !   syntax_entries_sublesson_links_fk    INDEX     w   CREATE INDEX syntax_entries_sublesson_links_fk ON public.syntax_entries_sublesson_links USING btree (syntax_entry_id);
 5   DROP INDEX public.syntax_entries_sublesson_links_fk;
       public            acc-v4    false    278            �           1259    24957 %   syntax_entries_sublesson_links_inv_fk    INDEX     x   CREATE INDEX syntax_entries_sublesson_links_inv_fk ON public.syntax_entries_sublesson_links USING btree (sublesson_id);
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
       public          acc-v4    false    4188    234    272            �           2606    24968 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_f    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f;
       public          acc-v4    false    4221    276    254            �           2606    24973 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_i    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
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
       public          acc-v4    false    277    238    4196            �           2606    24958 @   syntax_entries_sublesson_links syntax_entries_sublesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_sublesson_links
    ADD CONSTRAINT syntax_entries_sublesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.syntax_entries_sublesson_links DROP CONSTRAINT syntax_entries_sublesson_links_fk;
       public          acc-v4    false    4212    246    278            �           2606    24963 D   syntax_entries_sublesson_links syntax_entries_sublesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_sublesson_links
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
       public          acc-v4    false    213    227    4147            x   �  x��ZKo�F>ۿ�й�|.u����4��=$9���&�H����%wW\i��9�>���C�������f�k�:��-K����ξ�{��˙�z�!����xtC�u@!����w�ޡȴ�X߭�\tϖd' >J��&[��� >J �Y�P����C���(?�lS7ON�WwKv�|$����J�R|�w����]<$�'~��C��Q:E99>�_�%y�����n"�D3l�gU�i�ްv�9e��H�hM:�vN��2ﺼ��u9r�uu��"�V��O+�Ti�V�\�X��xӴ�}��vx�/�n3�e���K�c}�*�ru��L{Nq�����z{7�m낭��v �C����0d���=t$���i��m@�-pi�`�+�3Z�˱��!�E�W7s����B��p�k�s����jy�r#p���ۺ(�V��[��:�:J�沩+�L9�����K��f$p�J�X��9W���T��s��@��c�"��_��;���q93u�T{5��J�ѥ�0I�L�A�f�b �bK4��r扵y�iٖ#
�?գ�ѼwJ� �j��Uo��9�՚�ϴ`(�����QՋ����!5�C�G��1a��(p)<�
��~A�=d.O�L�=�[�go��Dd��	��).i�E�W �M��H��P`��D��XP��HU��!�
e@ t8D3TC?rzV6'B][�i��B�ƀ9cmN:C�f�i�e�sB����''Q���ګ����=��2m�Xύ�E��H�D%�6���
�5��ӢX",Q	xs$�
EC]{e��������;\e�����A	^�="T/D��x(.����P0�RR�>s
\
���!�q����]�R*5�"l &�	S&ʰ!��Ź�T�UC B��A�8@#���@�RV�-��6�M�(�R��T[50���
�Tҡή�ɝ^l���h���0��^�o���K�Rpl�1rЉ�Cj��tB������ŉ�<'?ʘ���%�U7��a|4�H�1���^�߈%��i�H�X���sζJ�����޵�-k�p�2b!Pe3�J��[%L�j.@ ��X=���jٶ.KVe,����Wv�/��=p%ůnX�a��o��}���z�]�K�o�<��V�$���Ox�& .��'{�v����4���u\�x-�l��x�摍n<M��*�{�A?N����5�8_��̻��q]x�*���u�B�������7�n�F����F}��Y�����7U�>��p�笸�!b�<�Ѩ�z|���H߷# ;�S�<������>o
��u���:��yUu���=�9�.떧�	V��d�~�V��m�!��s�8��$ q�[x�i�O������T-9E��ta�*��%�A��v��ٵ�X�m�F�Q-�ʋ Q��Mj_���TP��g�
W1�5_U�q_B	�!�ĕ��M#�g��`�⬸�6�5�k�n�*4��Y��x}�@B ���}��p�(��Κx��I��T'�֗��M���� N�t���p�@�*�)b�751��l�M\2#��)�Ay��#�!G��1�L��0��zC��(|{�����a@�R?D���gM�~
�QM�!&r=�0�ED�^x����#�ϡ��@��c�0vã+�nO+A��`��PR�y� �V��ثn����!���
g� �8���Ƹ�z���ִW�B4�^�|�O�":�����H�'Ȧ�zX�M*j���Y�������U+�tAtVC`�9� ��c�����ǢH��'D�1�en���l�p㻼�W��!�c,��p����et���-���5*�$����^�k���X�����V�?�Un��)H���(�?�u�vo��������� ��7      �   �   x�%��!C��P�j�����ױ|s�%��#��L��3���g��{f~���1��D��D���@"�D !�B!�B!�HD"��D$"�HD"
Q�B��(D!
�8�8��[\�9���Pq̩f�Y��\ޜo.���?������v5r7���v\O�[�;��b߶�s���~�1��oA8      |   �   x�u��n� @g���
q�*[��]�f��%Fr��J���"Gɀ��=$���y�{w�A�$\|���?z9f� �%f�����8�p!���r&�<(�at�MoFЛ���i3�[�䧟�:��KLkթ�Z���m����6� >�9� 2E&��2�Wd�Ԋ��6y�ڨ}.�=��N�E����a��BR�"r����U���%�~U      z   �  x�u�[o�@���_ᅷN�W��V���.�7á��\���MM�7�f��|y��`�M�a	�i��|������2��/20!|����<7�o"�ߢ�4��m�:P#4O�V�@[����J�L��ȥ�|^
AO1�6�T��(}ȯ�G�OmQ&�rg�~����јL���U��/W��Y��5��m�^�������˿U��s�@Uc�Й�("r�e(��*jt�=�yP�-�5������/��O������"1c��Ƶ�a"����:��J�cg�>E��~��0�~��)��XPU��p��2D�p��v,���2
�~��4�K��i��]+���Mڵ�q�砥/3H��f�����c�Zf���J��`���Ƅ*�]fM)��(T�3z���F� l��      �      x�3�4�2bc61z\\\ ��      �      x��[[�۶�~�~�_d�2+Q�-)��$Nܸ��>��̙� �S�B�[V:���[ /��������MbX�+�I�Û���PB�r�D�~�t�*/��C>��{#��<�}eU!N:�D"�=�VyRj��5-[��^'{a���RQʏJ�\��,�A���u�x�2ŀk��}l�[�Bi�]��d��C�	��&�ZS��C;��R���;�s[��s8V8�-����[�9�Y!����H|�'�x�S�%�&�>C���\�}[��wp6țwo_zf���{��6�_�qGLx��v%�'�}TgQaM�����8f���ڊM��Gz�3B��@�J�T9��Ml�@�8S: �'{�U�N9��d�
o���N
G%a�L�-��Fh(�Y��op�K֏���C.�s�蔐�F�H�T*�a�[��r/K�'v*W�J� G�
��Y��|P� W��n_2���DDN���Y�CP�^@J��<zT�\��Θ]Fۏ�.K�zWAZt)LU�Q�µ�]�� -7ۭ��*Y@s��z��_䃴I���;G���	=�E&Q�n�4t�m��'S|�l(����<�bs���2�{�&铧O�A����I�:��X9�~V:� �r����MѬ]�����A8�V�߶A�����w�^��RPM-�z�R��ݮoHI�Y I�.L��R��A؂ ���`�.�f�*��$��m,Ύ:��P �u���) j�o�L�=�2��]B�w޲�=�te����z��]���|O$8I+~� B�w��\������B���9�"x�To�pnyYCXB�t���`R��<�����%4�f�bl��|�ߘR���]>:	��)Y�8�\���mm�
7P�t�v�0YGc��'������	rH<%�e��j�A�[�ߨD���G�C�v���*���{io~�D~�`9S1��J�D&<]��U���K��������"<iub{�Y[]`��j��d�#�~������,�e�,A�>���@+��銒�������yC�,ɪT]nJ��˞�4W�������-sE���;[s`1�A�w�"(�AH�w�Hi7��0��M����ţx�|?��b�\�F��}�g�<~>����Nf�x�O��?��{�m5&{�y�T���M�r����/	���/{��'O�TTU�K����M��VIܷU/*
�r�&V��wnc�{U��9����i�C�I]��0dS��*)��j���V�2���"�W1�5��%5~�?�4�*U���@���t"TS�	\0�e�{���*K���E��������A�Қ_���:yɩ怱��"�l����l9�&�lœ���0�qܖ��;S�)$��N�
��dp}��ܭ�2���O
���$�ēKR�W�yt?�ܒ� ��{]�4P���ޟ���6�vg�{,�$�U?TY��-��FF��G�W��&��x�����jtM�6��_Ж����U,<�T��*�냲�O&��*Q��"���p}M��<��0�yr�s�s�+7q��~pP0
R^��r<p�>�n�b _7谇ⷷ�r��|za�cX��M�`��.	�H

�No�o��5S�<�.'~2��U�ߨ��1�&�˝������MJ1*�lU��"��������PIV�&�ܸ��X����pN�xr�d�qܥD�?{��/\�p�z�'��1�DT��.�8v6��i�n�3���q4�Ǘ�,W��hA�§���Ӗ.H�V��^��C|�Z(*��*�Ŵ�Vm�}T>;�na3����ؐ��[ܩa�K�2$o9��c��Q�(j�������P���WF8z�'�9��>N`�����aM��"��No�c��G�$�wG8�&:����ix�Y9�Ul��G��M�!xc(����(Z,o�� ӟ�~P��d��	~�5�~[?�#g�7?�,�h�3~�^����K��:��
���;Д���%��{�B�Sa8j>j���v$^�����O�s�²]&O���RZ����n��;G��\�)n)	�F{��Pq�&l�f�JR���="���~
�J>���ȃ&�����^�ӈ`>i����2�\]�2�P����o�~9���(�����'?�KT]��������d����m]U�]eT�Z�,�X��la�.���s�p�u�w�dAv��h6_\pc6]��Q<�ō���h���wG�h�l���r��f�+<��Ƃ��0�X�eXSʊ��7=��#� B'���j�չ�~ Ai	2x_���r$�w���x2GxJ�6�ωa-DA[�=]��,"���vOټ��P�!�P3��=�_i[6F^�`�ꫭ�����7ν`�=�zI�lr���D�i��ϻ,������7��;IUm{���#�&ȯ��h��iI�z<[�~�g�A��p+��1���M�1��BЕ��t:���c�iW)8e��g7R��?��e�!�>t�ڄ����5��\`���n����j#��]^��[a{�s���#����D�u;B�}Mۡ�B����$w��\9��7��a�}>�gvu\�{M��\\M>i�nQ�l4����|2%����o�����#����j�dӆ���$"rg/�P�ΐ�Qћlz�]I�A�`=�u ����� ��
P�H���ryKL?�8�oGQRs,�S:)j/dS�d�hn�r�\W>PI�2S��B]���D_�X8��Ɯ���=�I `��_�q$��E�uh�WWeo�_\i�'�#$�)&����h��iI��,B1�<C�A���O�\���:�.�K�D;�ꍫ�b�/���tn�5�����p��J���M��Z�r��]Shu����W3�{���WI�l5��ԅL�#��'�(���D��k�� WO�⠩����b@���-0�h������d�;E����	��� ���Ё+����r�`��iC����U�AY��3w�th�9^V˟�8P���1t~��ZEJ'j��E)Ci�����o_���G����w��&���é������p�0#6TԓN*ٟ֕���{}yw�^�;K;ˋu���1�������W�Y���ox��?�p����R|����{sTjPC�r��E�.�����)�'�b0��y�/���ٲ ���������2P�+�;5�Eӫ���J;� ���"Ep����	in�w5
M��Ъ7����yM���xƓɭ�$���{fX����wdD)A	��z?�&K�Ug�.�z�%ل��I�X�u9��s���%�P�#���)h��h��H9s�6�O�u~J*���p2��"oYLp�W���<�i�{{�'��2IKB;љ���'Xh��2����T	�r��H�?��(�P�p��{�k �!���?	/�J7�;����-��탬F_��f3��Z�
DA���O�U�W9�_�or$b�����	91���,����!��0�����a"�YVQ��@:�!j��
�⦏RQe<!$LJmX���dUy�����"�ʑ���	2��� ?�V;J�,���-�g����t�b�8QJL/����n�+�,�K�"J*t��0u}��_����a�TçT��.Aj2z��\o�A���уN��xrpCPj������JN4����T��� q~T��� (�;?T�8�g��欧x͸a��U�3R��d�#U�����3!O�[b-5[RzC7��j�eʐ[�9�i�V,��J/3$��z���d�&�KyY���S��jQ�T�ѡ�	�k�Q��E�om�%���UI�K�3��:I%=Z�{f6X@��mE�_�9s�ԵE�N��*�?�ԟ�=�
�o����B��չ5C؁z<��7EAu�� 0nؐV����������ބY��Сa,T��؉�'hТ�7���U-�F�a`ܾ�.ѯCGQ��[�_��v{����Z�K%=�%'�����~Ug��d!@|G��'�Sa��m(Tӌm�HS�� "  >9>ho�C� j,#N��d�{��Z�1j�s-�$|Z�
��qG��Y�ODx<5E��`\x��g@m�!��m~�0�P��L�&O6�#���[\iC�B0_:4t9t��d@&	�b3i��'���6�	����#�w����vO�Ѳ���"B�	AHhL��k���řcRq�,�A�#8�̩���T�r������tE6�t����__ҝ�n��S���l\�C��_?$� z9?ۖ���n�&�(�Δ�LM�C���*�E�qS��G��1����uK�ӏ��㊐4�F�K2�
�c��^�T�Z��=�'w՞�{�pqcǩ���,b�k�����5Ok�&��a'*��C��^> a%N�E�٘J��q�I2��4�/�{C-���)G�7J���*�g_^]�x��,�V�a��8~��8~I=�N6 }`Q�H�����Ġٙ�҂W04]@�׮�ԙ���Nb�H��w�o��i.	����95�Ԋ'&�
U��ɺ֟�az��KfQhs�2��|1e�WT��ÛP�q3�ͥ�^��+p��=�U����"qBݶՉ��q�~|���ԍZ�f!z���l�x5E�ˆz�/ڭ�+}��WJ�IE�n3�6E-�vC��F���E������C��������E=�>���G˵׽?���PZ���nʗJ?����-�ϦTJ�?��$����N��7�K͡����W�~a�5Eqn�F	�
gL�u�pxm��i���/M�x�)��?q��L� ���3��䜝�/ΦR��w�.��H�/�q������a3w5`h"���qP�ƛ���6uj��*ꌸ�=������4�1�ު��0�IkR�P��������?Q�H!��wz�&����޷��Wt��݉��j!<%�6"�+*�2���s�B��ܣg0{��CJ:	)썓���~T�h㋉H~�(�G���Ԣ��^7�M�ynxR��� �/�99B@�^���z�G[F����1��W����c��-�b̧_�xr6�L6��#�,��������<LU�
W�5�G�J���o7�����j�}ǈ��3~�ݸ1co��+�?���\)��Q9���ȃ�͜�k���x�=Y7j{�ɄHm+��{e]g�C�+[8>?��7�ζ���������A���p�=�W��l�����]�"&X]��L2u�G�X�ʡ<��' r�����j9h#7G5h���K�*��cX�p>��_klH���TK�a�Vu;��Oj5p#�ܧ��������Û��ME�����<�%���)�q�yb��y��g�䮢4�@u[���_����2P�~�����)��N.C��O��n��3�?����J:�9�!��I�_�!T%�����tMc��F]J�_?H�p���`e	�݈k�����P�����ō��<)2�/�3��q��O�V̯�[���c靐����z����
�#����S�������$ˮ��iR��_�3��;*C�\m5��Y�>U��14�l��Pk�b��Md�/�L�4�
��w��}��<CSa��*B؄`��ҳ5"K_G_߹���f���+������*Ϝ�b��%j��'�Vb���`���!�y��.������f����w���)X��=�t�kj�w1�m��-~�A_1\�?�3���<E�P6_z�4�d]pAz�\2�݂&���n�����'�gq��_�D��fgC˾v�T�.����I�C��B����h�G����w��{u�����!D��4U�O�,���h���)]�E�B�9�<"�#�$�<'���ݧ�𤶃�ڸ�1��Q\M�?�"����ٺMT�*�M^�m�;��	ָ���<��W?�#�/
�!��n��Ù�y9�Qt�%A\���ڎg�]���������P���~4�T���`� f<{�ݕ-D�۬0��liK�\��V��$[p<�lLY��S���~zc@�<��Ǻ~�r���w�`�O�4㪭!�v]���ܱh���#z��\���Z��8�bv���b5�1��޸_�L�\6XN��~��k�      �      x����jADϚ�����Ϲ���{��>��O�b<aٮeY��C�QK*��1-�j��燗���������������������}O�J|����/[Lįv��A>�z��Rf�hV�*}��*ݧ�S�?��y�b!�H���y�����!�J�!]� ����51�\��t�-���rJ$��B1U�O=5yM?���U=��}�Lv���˓}ŗ��KG��
����t�g���<;���l*�X\#N1a� ����p���4��1��X0Ӻ��L+6l,���Y��/��a澠�y�}��g`p����p̈&[Q����r���V��%�M������jN��0�HQ�g�(�Q����`�@|QDӉĢ���j��w��!Oq��&[���\��1MmϨ�,��D'îyn�t�C-t�Ss,���dbі�w2����b�S���}����������6	�^�:�mM^k�
�bч����
��E�S�Dg���xU��u�LN2�^Kw�y^8�a�u�W]�n���	�����J\������u�g�4y��y4n&Z|Ǡ,~��03X�-�[0fY9u�V+Ⴐ	��	Ώ8���;���V"H�Hk+r|z5x=~$�-(*�6x��ow���8A��p�V��֚�55p��hU�s��(�F��y��PݲmY6��	1+i�e)��?3!K�e���y�[dų�4\�k��f\k�S�}u�69�[��?�G�����G^�\T-v:�ZWHO�.O,���"3w���D�&^�5~�o���lB�      �   2  x�uT�n�0<+_��E- (����c)�� ��ZZI���@RV��ݥ�G��bwvvf�������|�� � ��^S�A�E%��� [�͘A��\�s%#��'��,����w�@�ã�4����;���0`�C(�҄e�8T���S)�ی�er�/g˙p���,A��>��>@��ǌmkF��Щ�q�¶]Хl�%�Ap#HShB�����F�܌��?���jMkz�S�	*A%k��B�D� 4�B����J_B��
E���YU4\����Z�p��@���UO���Xy-w���\ݷH!�{�@����Tiٶ�a�^�*��ļ��������*��z���6� �T�0p���{�|����܅�����H�e8���%c�/3��2�a!���GiX�Z1�C�H�[M!��-��t�r�(x	Z�{W ��K��Ӛ�s��<���d:ߛ��0rf]&j���0h��"�~@x�OD�;���4���:��؃G��d��U�6�<���įd۽lT_��XT4"+՘K���h𬉏�fq��t��ݠ��մ�QR:��+�&[K]Uo
�9,b�[�}V�'G�جNΎ���4�Ԁ �fDV^m����Lo7���u�8�ZրW�X^i�ySd�ߛ6��^�h��}Bz��+����l�d��/��t��R4V��h/�;I=��IƘ�<LV9&��5�|G�S�d��D]'��Eb!�I�)�/Y���vH�����A��I?̑'d�;��̋�~LV1�7Im����7���g���
f�j�|�t.�e$��������N�      �   4	  x��Y�o�������R�8����|��qy��jE�D�W�]IQz��;3KR$E�Np��AbG;;;��]��dH�����{w2q���ׯ�Vr'"-�2�P[�����Q��:�!��L#9�AL���LE(��"Y/!�|$Ǹ�٭@�s��3H]R4:�,�(�d�`%4�����C�R,ױ�^Ƹ&|�\BbH�Z��?}��I�dq%~�@��W���k�}��H`�?
�࢖K�'�2��J�����V+�
��B�F?�4�J~�x�>Ka�6�1����]2���.�KH�R?�ju�1������̿�*Ѧ�>{�yE��H���$��:Z$쁋\���Y���>�Ő�@�L��ȴ������<[��_�#1�^d'Σ5�0�R^��2e�`b��i"�5�[�f~$�z�q�MA
Zg@���T&�����9{�L[!ı[��A�S.V�h�ܢbp��s+�/���,g�-it;�O��L��S��z��$�E�F�SJ�{e9�[Kk�U�̿�sǗ��_���7��Y�:E���%c�)n�c_������\�3�߷ˊL(�{,{���Z��>J:R���$u��B��"�-�j�����L��S"H|�m�r|��dh�qE�_�qJ��]����!��@��U������9���o�R~%�Ha��vB/?�cR���0a�O�22���BOhδ���:�eV��d�Йg	&Jf�dV/Bb$���Z�WWX�K���u[d�s����25�b�,\��)�fkZ�52:;����l�7p�X�︉�FKз[��9�Z�����(������z��*�6����U><��q����:��_K�Fn0�:s�h�#���d���R>xݩc��u�p}6]�!`<�k��m�,~��\��*W��w��?��2A`��w�s���3p��	Ֆ�����F?8U�M�b�=�9�4�q�s�zfR���T:b�qV]����:��~�0��D�6]�G*��0�5�1��="crC6����	�^� �Gt����Ŭ�TbB�Uk��1r�'�T]O`��L�K^U����k`{���f{���-m�9�����*<��9S_movYV����hs��W.���^鍛�yR��	Z���%G�ÃG�35��;��I��%�i	�~9�=��Qd�|a;��Q�a�Ȑ��H�F��u3�C\n�F#<���|��J���)�{�b���X��e&XЛzéS�7�a��X�y��l8�kJ���J��g��~+�y{�(��"���Ue�,��<��D�^�-�q�p���EPD%xSY�8�Dor['��)���x+�lwZ�<�Bk����E�.k٨��e���VZ)v�h����1ՙ�2���f���Im���L/��b�J�h8o���1�+-�>&o}u�z��z�OF'�F@�/�D/JЩ���δZB��_��~�)��s�{?�3H��,�}{��c���*��-ŵ����P���S�YPg��8���Dm�':w�Qd΂nkn�u)�����+g4*��t�Z���`��p������}�	����Q�9�r�J��1y��28�HS��7{�Ԫ��D9��n���9��4���W��V�s.�I)����� ��`�ƃ���X���0ղ�)3�߆pl����~Μ�
����З�2��I���c��9g�R�3�?t"�>��"��._e�q��t��Q+�+��,��9z\X�krln�e>�G^?(��y�����-�HU�&q8O��ځE��s��Y�r�vS����\�$��m��g�p��r��9�c�����-�t���4�xY*��<��e����L��,��qPC�)j��XZ"W�ϱ����z�~�Q����`rpjH���A�hr��mu���:B�C�܀e%�����j�oZ@�7��'n����W �Q�`��ӭ��S*�3��Υ&�]�����v?�pk�1�߇�N	Y�U:ѧ�g�[�@n��@lC��F�'j+xRe�h��0�JQ�@6���2��i�'<_D�Ioi�Q����4��d���ݱk����w���Lt�"�}�R�2i����W�m+���y���}ɿk��g~J����i��Ꭶsr��cQz/��i��	�o��9����I3�;��6z3ZZ@���-�qK�A.w|k��w  �w3�l���1�|�o��!N���C���������������Cz^r���U��x�$�debրg0�J.ڏ�xdO^�o�x��������b����И���8��}XE�I>�����1#ݩ�SXK��ZFթ���W)^~�f}ș*f�Qwg'''�1L�      �   )  x��Xmo�6�L�
.(�vs=�������l]$݊bZ�-.�T\���ݑ�����@�H��xw��#�l~<�q*�[�Ւ���.Uze�($���"�B'|~r�Z��0��DVJ�=J,2ɖ��<1�|���S�Pao�b�e�eȊR��KAO�pĎ^�,3�WSH���2_��2��ܔn]:'ZۥR�T�eQ��{���^u��̬V2�Eߧ��T��<0��[�?�d���D��a-�β��T�ur�;�e��Z68����ݏ�G�ڟ��v���x�e��(x�e��!`xX�#�Q�.��3�����<{�+ä��ǒ��g��f2`�L:^��&?/�,�1t_̃�����Kfɮ��%ٵc ��)�Us�t ��\j��ʡ�Ī'(�X�(W�:)n��=6�������?�KUX0����Q�}k�ђ/*������@��Ӯ�moӬ��ߥ���Joӹ�%)�D�jע�G��������.K;1		^�%��cX�謢�ci-� �D��zz'��N��Kc��|�H�����%����l4n������`ƴ��ހ�&4@�.˫�X��;*���&F�{���ɛ���_/�^�^��{{y�s_�]�'Wg�8<�~���9?��^\�^������������l)��|.��E���o�B,���h�)�#�x����G�����cօ�0@>��]q��[��-�s�u*+�Y5��l>�_k�ߘ"K��~$�2&YT�NE)�Z�����0�����Y�kZ���{3�]�<��sXHn�0w�E���{�{ 
U	�R�wY�K���<�Bni:mD�S�k�/�w����Aίe��FW��:�7��4{��ҷ�m���ʥ�ki�Y���� �aJ��b��W���� $�[L&H80dU�/J`��R����Z.�;�pԛ�!\�&(��FƇy�F;�g뀌��&cH�ѐ��o���4�@n/Ei=�3�C�úP�7��^��g�VR�D$A�Z}�(~	��O.�@��-�X��a�A|�W��:Sv#��͆|b'Ū�8�3F�N`����RU�P"����a[�E����k��;D]k��c!!������z�D�ib���w&�6����9���	�>���q��]��̮����]f#�h<�!hL�M�	���f�!���W��mo7��O�@(c,��A˔���I����^���
�0�-�@QK�VK���@����7@��R���
է�!e4
X�a^�ѳ�Ҳ�:�[�B�����x�v��FD��,�9�P;�M��ҕ��JU�"��R��)c۰|1�K��{�����b�Oæ�6�[�_z1
����K\��C	��M�66(uS��t��y��P�����u&P��Kw�SH/\D|	H��.d�����ɱٲ�P1�X����{
�QBch��	r��\�!ءo��?ނ��(D$]?A���-R�;NQ"�&��*���堪��]��4���f��	ʏs�sغ��W� �m�߰���� _|yT��w�*b=�[J�f�^�����XC�Ꞃ�g�S0O�B�,�d�6���t#��������^�D�Q��,�����hi���D�!Bإ��;�I��1�tv��κ-v�����b7�?�<�2�� �2d�Yf#��̑��Uak=u"� ��^��*����zք�4��SQ$��t���g<�)l��0�JA��'�Y�)S�z�{&��3��Q�hR��l��m�ޖgO�`�: FJ�uaV��Hp�iT8ϫ~4���K|Y��0�2�8ԍ� ٺ�n!�K%B�t{�����Mp�|�44)_Y_'4�T4�]�<���~�ɧ���C@̓O�1��X.���?@T��u�_c{J$��fJ�|N�
n}�
���^R����mzϝ�h:�߮>����ܬ���h�A����M)��,Xz�4�W}��_�R{�}�
� ����N��?����O�Oά$�M��Ca�iQ]�\���f�Z��`�_���U�YA�˷B�u'��� _�K�      �   b   x���D1Cﯘ�$�L�uK���C�"	S"�4��#�����Z]�%�L�P��������7.<��o8�&�v��2<4����AF�������?�(      �   v   x���1�jb��EI�{��?G��؀@��,9�-_�HB��h]�b�ȋ�z����r�T}��\r��I�LZ�n�%����8Ԝ75�5���ԑ���^�-�-4���4����� p[�      �   Q   x����0�0L���t�9�|����/�ԁ����6��d4L�0ͽ 漒\T�S�O�!3
#*���?�k      �   j  x��U]o�6}��]�C�n�+P[��-���uy-��I�R�_�KIIl��x`��L�{xι�Ϫ��(��m�6��H̮�G��9@�}k"� 5|��J�Խ�|�.	�3�XK_�	>tLz��1ϝ�BE�t�Z�嚟�@l3�_M�εU�x^]]T
j$�kgZ��hj�C�Ƅ�ըrA;��c�:�#3�Z����*d�ۜ�w�I�X�,#�o�ƀ���X���b!��������_D/��KuQ�K��D0ѻ��jYN�#�ajR*妈��HR��_��g'���{ϫ�(�ժ:�*��wD��a��myZ����V�>�������?a����ȍ�-]�I�3T�g;a��03}Z]�����7�Nm�����۟��	1}&/���E��C���&c�'Qj��(L��4��]kR�ȻFDC�� d2�`�f]Ĭ|���'duL��
�[�s\JDy�bJ�RP%� ^����,�[:E(��M?A���V�I�4�d04cT�� �e����j���Ϟ�e�02���i�
���E���p����2��u�q�[���#�1����,�X�sq���
:�L\O�מ�ҥ,lQ.P�H����p���;�O�~ׇx��i�s��Յؕ��M�-RB������$7�.�SC��Zv�q��Ƽ�����W��$���۝}dru�X�Vo(���6�r�J�����mJ���^� j�/h��0���3�~F�7���9��Ce�pJT���N�|��]3��5��f��g���#��rP��2��ө��'�D����k)�eB�0^��F��7�'�����?W�g��C��%?~�o���3� �р����$�U�X,�8Sq      �   &   x��I   �?a��.��!d�aږ4G�ĕ�|Y��      �   9   x����0�ww0�^�B�q��J3�,�M;yL���p��0�M�p|�f���$��      �   f   x�3��J,K,N.�,(Qp�/�KI,���+��*�MC���Y*Z[��Z��čtuL-�Lͭ�,�,M-1�虚rqr��qqq G�w      �      x�3�4����� ]      �   a  x����n�0���S�g�_�����&M��4
�2㻯7�K�+8��wN�4�h�=Z[ūb_ǌ06!l��؄
�s/�P�ORNb<E�ěcn�y|N�G�	��8i��is�{�;M۠����BCM�f�6��"�\��B�Ff�m����T m �+a�ĕ&��oje��]j���σ�a���>T'�	�Lb�C��v�WJ�٭�PCS~�ti��Xkl��X�:��Xǘ��Q�Uڝk�G�]�c���*�Îp6cX��3%�W �.�rS��A��Ǫ���<B e�{昐]B^.�ӣ�R�͍��~�� �_��o����.���l.)���N��8��/���L      �      x������ � �      �   <   x�3�t�K��,�P�H���L��4202�54�52Q04�2��24�325�)�D\1z\\\ ��A      �     x�uUK��6]ӧ�Wd�).g0�b��4d1�D���bG�����aN��$�ղ6],�zUT��RD��#��Lp���q\P�M��8a��	ᘥ��ɝ��j���ھZ�iͥN]��Ŋ	~\�w(�0bC ���F���r��ʖ��#��J~���W���q��K�#�}�����+�@���d��eB��N$�D�D�*�З����9uF����qF�����\��r�й������apǸ�J�7pW.�&��_pZs9%:C�zO89vCՓ�T��Z�>�|��5@�1��~�w�T��?�]�a�(�t�">w�)���0�lp
����
�9&���r�D@���鄦%�sV8z��҄:4=�-�r#�<�;$阦Eiw�-Ub���O2�D���yh�*�,t?���~}��p�W�=*��.WTq���`T�Yej}J�� |L�!t�D~�Ʈz�}D��m�<o㼍�mѶ��cլX舉�q�e�J������ lc/���w/`�d�8�0Kh��ŝ,���b���x�я��N�I��
�"����9�߻��jÚh��a$�:�v���w-Zϱ,��ޜ�	���ei��ƞSʨ)3u�1L�!h�>��5��$r�~I�4o�F��5�f+`������۬�����5l�no^O`�fU ^~ V9�گ�����p�,η���͸�@����F�� 9��H����R�]�}X����t��&sה�w@�����M��[Xʬ������ ���[      �   �   x���1
�0��Y�K�%�Jr��]J�Vp\��+�� o5|��--��J��Fmc��Q{{�n��ǻ��'���I�j�)kt6��:���6����B	��F2Ӌ�h�DJ���DFE��ԑA(���-��8_���ha]z[I	ݩ���_��+1      �   6   x�˹  �� ���ׁ.�K,gQ��l۱kjD��$Ň��=�W#�xm	�      �      x������ � �      �   Y   x�3��J,K,N.�,(Qp�/�KI,���+�4202�54�56T02�26�21г4	��*X�ZZ�Y�Xpq������� ��=      �   �   x���1�0D��s"��Y;w�� RB
�����ˑ^5�)HH�|��r^�ϱߎ������=�Mf_&��,�� MҗT��K��d����d�eW�2qS��A�OW�*�G��NP��P2QJ����\      �   K  x��Xێ�6}����X�s�D�f�a� �H� �$/�`٦mad��v�`�}�HQ�$z��i��MU�u9Uu�x��1�����ٶ�5�iߑ�"��h�sq%ͥ"e{��Z���7G^�ȧcU	N�� �1kHvYw�S���M��\�G̚�}��ɧ����i���Ξ<�D#\ᓸ	�f�:]�/�[8�𢺐m��nK�&��pnQ�9�V��
�"/�K�^�_ʂ7 ���/�_edI����j=�q�=��=y)�=yg�|��@�=���$�(x�p��bG�UK��'�:�-G�!�g�c��v��ϛ��rI�Y!�[�9�Ly�����4�d?񲑉3�����U[��]��p�l�%��E���n,nI��神���P'Ѧ���J����ِjO2�o�-�v�#�����׼�b������C�Ƌ$;?�s'�f�u��c &��S�*�r����4r�x����nB$�� ��K��v�Gf�U��˃�-8	�]�ϼ��fTeiX���N炿� a~���LH͛�.	e��D�PU�͕�D�a��*Z�AC{��*:HC��1� ����V�Z�Y���O�z�\�<×�z���s��͊���c�\rhK5?�EVO��C�\�$c;�.\�ff��Й��ꬢ�rUs�
��Ȧ� gP.�v_�8�y-2�(�4�R/r�II��ԋ� �'�:Nеx��!̴�h���kt��\��y-�_�%V��ɾpA�0��kG�Y}�h����&@�~�1��Q�!��4����H=��+3G٥�\.G ��'�E8IE��/��-MZ�	M]�zg`H\˪��$��.�s�����_cF-s.a�o)���b�l�v�F �7�Dv���-�Zǁ꾃<HDց^C{�jft��@ޮ=E�7Z$�u��$�*Nb4�#@2��-�	�jڏEv���w�?Üy$E��u=�k�k)G��w/��в_ך
�����Ừ�yx$߷��榠��g���C?I�6"��xj/F�1�l�dR��chE�ㆎC�{�xE:���P�1S��/��xg�~�dA�O ��M�.*d��!��(� K	 ��	6��Ώ���vɮ8�w|[`�f�䗡kH����M$"? �����Ի���'i���C�`Oy������1�7:�v(7��G��+H�=��0�Ť4=O�ҷ�@Km�:���ޑ���o)�
;�d��~�q�!��ղE��,�dy۶���7r��w'�_�D#x�y�Nz~�]����o�� �$r�8����Ȓ�^�at� 7n
�g�=��IL$Z{s��OXd�vs������L�}��b�ZX��S�o������r���>Ԝ7�׃+i=cI:*�V������y֭i}X�>�9�|��*�xr�1��&����r�2��O�&S�}�z�pZ�����}ϧ#`5������O�N����ջ�7�3Mc����#$j^2m����i�Pd�����QV�pS-os^U�~�W����b�e�ɶ_`������J5���4����Yd~��kV��o�盁�x�mͣ.=�@>F��f	�VqX`���}ٱ7�v���\�޽S�ԧW�\Q�b�7>����l|s�\n3�[-u���F��ء�-�&EB��e5�Ⱔ��[��Li�����p�RD#�Yʥ���:܀��g3l`�_��[dK��m���ƃE�x���-�l��qh0�>���H�Q�W�a��m��n����3��_h�O�QN�Ю0��|�(�U�<��0IZ@eJ�%��Ut�+��a��Д��nȢ��Vө8/��8��i_�      �     x���Kn1D��]l4EI��K6�1��xĹ�r���l��$��Ѱn��?�������?����������^�_����o���m�����C�����H�D���dHl����a��+��b�#��n~��(��],�Hh,�Q�h��u ���m2��Y��
�b�� b���Qq�l������j�H�$���b'Dt�6��N戥B�v2�//�T���"Ջ�"�M�7����L�3��N�(��<�9"�*�e��bc\
%�渼�kBɚk­�w�����Q1lo[%�!K�ҧ�?�y"��L���Uh��lo��٤���(
^�(��P?fQD�!Jg�fj�qE�*��E��ʼ��Hg)/�ޞkc�T���\�б�Ơ�RL����V��	�ZWaн�İ��Z!a$��m�Ѽ�e���RIAj�&E�X��L�8w����VK��G�bǅ�zz,�q_r��]��L��%\���OH�Hv�����1{�̈́��t��2�Jy�MIme4#5���t����z]��#_��.@a50I�������hv      ~      x������ � �      t      x��]�r�8���y
���?[��$;뚝;Ǔ��6��䦮����`k�Ԑ�oJU��z�$�����#'���X�hݿn �ࣽy����8-���x���*��s|�(��������0��p~x��P��e������x6�V��q~Q���er���a].���g5*�'J�tj>�&N�������/0�h?縬�<�!���'��>-���M��u9!L�N��KB��$�����MpM�%���_�,9Ci�r2���Y�{��7����cUZ�9WRB̳$E�"�L�W��F_��їϣI=��,	s�*�Q�x�T�B|��e]�i���� &���.8��c؛'Uu]���7��&�1|����l�D9��[�V���Ľ�!�q��%�Jݼ��K�+��(���w/eYģ���P/+h͡mx @�,:39>O��b�=�<�eEz�@]|&��YM;
1Jt�J4y��b�A�p�t� ~'1��%Jj49�!ƏU�Z�)]ɲI>���'a^߫�Nx5ɯ�y7Ţf:�i}�Ծ�xe��+��3�e�*ڐk�(!>|�*f�qs�.�U�A_~�׍����"i6��s�Zy�S��"��c��-"gZ[E�n���ǧ�r�8�'J뽏'�{?�q�稜�"\'_�t��'iͻp�|��V�|�1��G��m��"�a�`��x*���Qӎ�/�����.�Ʀ��6�B�`Pti�Z������n�-���n�k���R[&2!3ZiM�3o�,hh-���Ȫ�Z"�jx��q�F_�5l�ڮLZ`��+�Y�6WN��X9��TI�	��1}��Nby�:�Y��(�S�~�Nh�޳�-������-��4aW�(��Kx���H�7q�k���>Z@Fn!��7������Mlm�՞�1f��t��Z4UЛ��0kw�tP9�8}G�w�� �OQU���+rY�͢\S��8�k l�e����> ���B����)5AK�t#K��.�Y�LF���(���N؃�s����w�3�qGN�N���#
Ԓ�!;N�3b�v��xRO!g]0()ǰ7E�b
������Ȗ��%5��z!�:�jQ��XӤ��W���A䄣"D`�~ޑ6?������7�4
�QG̴ ��y'��p��T�?��n�}8�ȣ�+������ѥ�k�AW�u��$�u�K��a]�K��^�=�]^��.���ڮD|��j$Mܵ��p-= 
a����\[g�g*l��ds�oY	X�X��dn|�����R��9�_Z-����QV�	�`3���N,�v�\�G��zʠ��-���	�<ܣAfslcʸJ�h����i�e�k��Ak���y��ZYp����"h�ȒRг����I数�"��$ޜx]��.�2�f�/`�z4�{  �>�g�G�:tH�8����K]��lQ�8$�����d����*)�������n�\��X���
�3�Z��oe�L	����PǐP(NG֋ijE��'#�l+ȗB���Ob����]�:GL��PY�	�>���Iy���႞航w���4@�h���(�-r$�t�iO��_����xE�W��wV�y��_J��k�6���K�O�I��9cN�qE=}�P~�'����]�z�J �%�r$�@��~C 6�PYH\d�Y������#[�MHk���pt�}o�8Z(���?I��<F�����tUc��?Zn6�3Ӳ�f��
��U.� '3&��F�f@�={ff%������XL8��&��O
H�ۈ��['�>#��y�<�d���Q�����΂���c�X��fc����}�ΫCyjQ���}�E��m���f�6��Y����mV������K	��X�����P����i��h�[�U���!���F��Ž<��>e'T9BH�F�ɦ�o�ʳd>�,�tC�^���3W��vn��{�qw�l�7�p��ѝ���.�r�V�Zޛ])�^B���	��c� u<�まY�RA3���CU�+�I�Q�;��[Q���q��ˆI&	�X���R�6��2�Q29(����"�x6=,_�OMj�dmc�z��;lnn�{(��+CI{{l�a�QvĶ�2y���������䨍�,�4F6������ԓ8� 2��|T#�*���h�1y݋/���F������μ�l��+���YW2�D�l��Y�E7I��m'fĽ���i�@�B̜2�o�{VIE9���J@�{jg��ܟꑿG��{�G��� �F���@9������g����kC^>�s*�B:��犺Ȇ�W�P'er^�7��SeS��H�t14K>�<�\`Sx�6p�<����C�;;�;��W�W ۹�
��chn��n��ˇ?��	67&�I΁q�2Z�ܴ�7��o;�`G2ܐ�� "7"��,
O�81j��M���������oCۛ��4�(�7�}�����b��VH���@�H�U�Ȯ�.�(�X	�(~�9Zk��bD�\Dh�%}~�ƊX�mr"�>��ޔ���Li;=��ع����~Φ^����(j i�U2���2�̫:��+}�a�_S�����rn-]g�}��rx:L�a��n��#(m���l��r����ϳ�lJѼ`kbt`=��Ʉ�դ!N��vW�=��@����������ԋT��s|xHu�iB�#�@#�'�Ly�D��Uӆ����R��%��F���ݤ�;kH�����cq�4���iM�G�#����0��H��j��91�9�����Md}����q`�(Ce�y�? �4F��v���V�D&���p�'��0M��KaJH@�,_�WV��!V���'	��r�6�w�XTǦ
��0�~[��\�C5VzV|x����ݦ����1���S�����6O˚aV�W�	7\8WA��x����&���,�c� �����#G�4��遌l�j������~�-�s�m�?�d,2�~�5���Lp
#��6nj�M�γc�{-�P˶�bDc@��Z��#�e��(N~VE>�����I�|	�n�j�Ĺ������M�Xz�p�kR��BA���H-Y�+�*2�)���N�X?�r����dw�$�d�*�y�\����kh���gJ[7ۆ���z��B_�&�������ً1"�R�?��{�[�A{�tsm�}��[�}�>��}�G����0���y�K��A�Pga�nf��o��W����;Y�v�2���5�k#�W��ԃ���6��ۻ���-���Ֆ�5��ҨG��Q�ciH_x�����q�d={$��9��3�pϮ�*
!���zK{K
a�h�WR�ċN���:#��@h�6�I~���ʷ2��������عz<�Ρh�XD���exj��8 gQ�Zׯc|�ͅ�r�;�2Y�m!>5�|e�m�spW��]=�n����oa2�'�Wለ��B�A=������蝁�z|�Y|jb���7�a>5�S�c܉�H��T��c�7y��Pۺ��0����%�3�����i�|�=xa��?y`��uP�l)�Ƕm���a�����������F��lKT�Un��l�����@/�
�}���'�{?�q����F�Jo))UJ��:<��4c��z�JU���L6�٥	��^�l>�PRΌ�'l����>���el�S!&b�O��f��.Y^�����ͷ�ϗ��Y4��Zm��4��X×�!�YE����GR��	b�đf�Iq&���i�ou�f�^(%��;E:�C�����<�z����0`X�îe�]��U�Z���r\M�1�Z����{U�	�&�ռR�M��i3����Zu�e1j>q6�
H��dh%Q@~P����2����'�>��/�K����ZQS:����_�DY�U�
�Bܵ\\�˒E]�&Ɯ &o3�ӿn�@>SwP��(��.�84/N��dkېh��S]��2�\�Ű}%���[\�ȲN`ŠŨq��Ǩ�Ub��i�2���I�ku2�`?Q���3�^�n�%���@�9V�] ?	  �I=�U���g��65�޿�������ȋ��
��������
%m������B~��TJV��j|��A����-{yt"��R�}W^^���J�]ȳ;�ʫ;���33��_��.8���0���|N�&��Y���:�.Vϳ��ߦ��H��:5�B@�~,��p��"[�]�c`}�wo$o�H�R�����//�B̠����Lf-�5���H�<�Aa
ća�����G��j��5c�2�kb���8����pʦ�W(+���W�\���b�DmYcxI���vDD�k�7a3;K�K����d��'�zz_4��JI��v�&��n|~��O��s"BgEq����rP��HJ�C�1ȑf�(.�3!*��7o��g\OgM=�
���ڀ=��-�ϡ�b�Ӳ��󺁑k�O��j=N� 3#�%j�D}��Zl��,�k� i�\U'Dmf��:ku���x</��>��WM�u�^�W�䜎E:]1¤���N��{H'ؐ��d=��.T�����@N�q�k$G�,�ǌ�d2)�����E�뢁�$,���lRPo���݌��QẐ�&��d���8SjJ4�:���b�V��!�8� �o'��F���,��.����G��2s�R��
p�L�ZBF�501b�,���s�<��'����"b(��G5���wLGNU���M�����`0(<�#4B|+���Ir���%>QqP�yv���p1\�c4��h��b�t`^RL4.�9eß�?��S��M�4�ĽdE��(U�р��˛ArF�?V�O?ݟ���cN�#4����"����w=��5�4�B(M�L� ΋,+�	�P��ŀ���ϡ�JH���޿}5����A�J�����?���'V��I~Y�賡:��;���TWs�NQj�=�9gGiZ,�z�0f�{s6c�EI��p���jO��ir��r|�Y������%d�����t��\��Bq=�hZ��9d�t����͓�jޓ��%��$Oфn&�K)�h�#L*Tc��j�	��\�"W��E�A�H�	.e�
�%W
|ߘ�/��.��Λ=��WQ��ᡟ��6Ҁ��.7���:snu�,���1O�9t�J��v�
��+=�-���m�5��W�t�W�԰��X�r���>�ײ�x���[S��H>�P�oK.eޞ'���m�CJ�1�K2֑ݙp��,�Y���A=_�T��I�yڒ~�����nbޣI�mP���{Z�K�"��:�Й57ĒG?lt>�G�*Q�	 <���|+A��.W�O%;�bA��R��< �%�@�$������
]B��!*���͋��*u��g6�k�<ݲRo#���1���c.��˅�a]��fvƠ7�VD�팼�eV��'���#>�k

��� [���{N�BG����+|(}#TeK�F � ��f�ի�3`�X�>IС�e�ml%��o�s>Q��YމWfwg"�'R��V�I䋠Ǡ����%��3K�q<z��ܴ��n߰w��7�+?4�}6%�8q������c�u�z���g�|7�����1��rC������b����Jh�rlT��� *�J̓
�m߈T���܍�{iQ�1˶���� 6�4���:#�-�zώv<�Q�t�kW���=���(��ك���n|A8������|�&��=C�D��#ztq���~o���V��Ɨ�I\� �z#�U:�'����O�վ�zɽ���M��۾�z����k>�]w?�U��߬
]���CA�sN�A�7���P�J�w�LL�� w�<�*_�ǻQN�=�esߋÓZ����������^4@����r����/�����JoSg�B#)���_υ��z��}G�w4ٮT�UNߋ[e�a������N2��8��e��nz���y�(�:q�4�S�
�����z��ZK����vwg���w����M[���晡S�����cb-�J�?�� �[ŀ����!��tL8x9e�gƻe�w�,���O]�%��6ƺ6�32�Gz��~ڋ���>����6�<����t��s�ao^A5�^F�;`��o���8�X��K�q�F_l�p_o�cʌQW��wǶ��v���c�����لP�N�r��޸��q�b����E��5t-��4�y�9E�IC7�O2�7��7~/R��CO.ʒ]� �y��nR�4�������3+V_�kwc��k����s|h�jҕpq���M�Ţ�h��M�0�:��~,:+m�slyFC@Э�(��������.)8�n�S�Y����p�0 �GwP�D:/ȫ����<u�7?�[��y'ךp�w��爽J���ݸq�*F]v��s�qt�޽����      r   �	  x��]�n�6]�_h��$H��4]���83�%q@Jv� �^�eI�7�K�U.�y�ṗ�y���w/�ې����^�#��z"��H��8A"��$IB��.=�[^�륷��>��<���0��4�Z��1�{�s�8�$a�/
9�0�n��RJ@v8�/̻��0��b��.��YZ����XH�$�nw8����;�Xk��H�km��sic��q��ZAB�%�x/d�>�'}E�@GH|O9���T��y�_
J�>�큱����������D��Z�?��[� �/{LA�l�������,Fq�	����m�C�8!�>"�ݝ�į���*D�1���*%u�)/=Nv���'����J��(�T�TK)����$��ǯ_^����Ϟ9�͛v&l��D�$߈t��A�ȑ3ٳ	%�l�8�I9@���#7�+bB�����/�>�;r������iHLG���jD��"!{�u�<8]o�u��b�A��h�{!�,�+�O�
����w��:1����u��4*a! up"�ߨ҄vG@�9'{�M��8��
��'�K�k-ې�w i~3C�%@!��)ރ"�%�O"8�h��L"
f����GW�D@�]���"|N���ZG�k&�r�8�/�r��SL�p��LѮ����鴣��H�]*��D���~�D���yt�I�ЋڦH\�H�VpΑ�*˅I��-��r���0xPx�Ar0:��;�tH@U�Qaн��n RDa���6�2�E8�\_]n���ص$��< p5�9��u��$X�>.[s>F�ob2��?+kP�͚2Leh�vA�iʎ�l�LW7�������A�ve<c�u��dBwWK����]���F����:evZ�"`Zr{�n�ñ�c�&'���갪���j��;��Ӵ6�1Wxb�g�f�VN�ڀO��8��b�cl�L��C�&0'��#�S�W�>�����jðH0ϞJ@�5b�+�2dF�Ć�l��#D�M�4�j��p��e�nu��vE��-KE�s��qL�!��6c�Q1�b8�5�`Q�\�S�6�)8��h=�a
�x�#\G�	7$Bn���	��o�p��$\%WK�ЄM�T�氋:�g.��0F"�����G�0R�7F��#J�6���t���eez�Nb��W��˫��HcLj�jPr5����5.��8FB������gǓ��"��-/1�ٴc�6�w��@j�^Q�
��E7W�������V[\ XQ x��I.�thB�.��b��@����
>���������H�	��v\رp8':�8#�z��-h������ؗ�b�t&����mI�({t� 6��c���u8I"|!�f�lg�&6�Kyr �o��v^4	�ӥ�z����akLS���o���9�RK�ϊ�"��8/HL� ����r��}���4���s!y��#*|Tl���������_F�.磬wf�*[]�3c�����G����#*�<1�ױmt�<4�n?]ӘS��ǧ���:�{ls=V2�z��Ϩ~��p
Q9:yh�VR���$�;��+0�D?��u�@��%xTKDs0��7Kp���@-^�$̧�������풝n�
MAl����Y�/=�'+M�=Y�jG�k(;JB�+������m2�,� ������V-S�W��i[���F�ߓ��gWf����䢯�X�۰�2��� �ZR���OS�~T����
���Y��Z�7Gm��K�,+�䱃���1-l!��/l�G�����M@���lK��,�R����+ #1��h��D^j��{�nї�f3��϶e�ح�_J~-����4�?j��Y풍+ѫ*��:jt�U%P+J��U����J.*�YT�P_������QRz�UU=$-���x���B@�_O@j�|���n��H��׳�b3Q��6`���Ь�1�3��6n�OfYU9�,��F7˪jeY�X�J�e�,�J�5v{z�����c��bX�}��]�(c��8�93�i^�� �FQE�S�K�Z$�H��L�y#ۑ�#��%�r�42](ܝ�U�Fh	�C6%��L2=��=��D�j���d JsW{F�(�`�G�H+�>�% [H��
tr���q�uf�t��~���5̈́@�A��d��`�!۠_�xSp7���Xg�疻��%d�ޡ<��=z�g���Y��|�l�b�}X9)8y�ȴG�O�_o�:w�f9�t�~��3���\�8!��X���{�`����t����F}�k�y�y[�����q����:��K�g�f�W����gB����vZ��_��\m6?]m~�ܼ�~w���훛��?�usMț`�v���mv�fw��ۛ`�a�%$����/..���7      p      x������ � �      v      x������ � �      �      x��}�r#Ǖ�o�)�iǠ	� 6���R�[-�3�n�ز���( �D�
�*�gᗘ7�ޗ���%3���'b&n��"j��<y�-��Ӄ��rR���2z�WE�%�hg���69�uz��N�ۋ:��A��i�].�=�u�/��t�}1t��q䇍�2���I׆��G��W����ϣyYt[ċE\��uE7��!)��*)�y;zO?�<��*��p�4Z��t%�X5O�iR��c���)�8=%Y����fyAӘ�tgYр1M��v�\�E��Ҋ?u����h�I�,�	>��/'?-�Ie�Twiv[F�"�n�O���_u;g_���^����ȧ+8�"�2��!M�n��y�=���vox^�N@�����g�3�uF�H�?U��N�2�hVI����{4�*�'w���._�ª�]�P�_��"�ݠw�ч�C���c�0�D�`����sZO�V�x����8��:��.VA�ޢ��y�(��4�Ut�р:h����2���˄C�i�d�����x��vNݧ��lG��j,h4��:~d4�'y#�fN���Nc�������2�ɔ��1*	B �?M�INc0t嚦������-�MH-ә�Iϣ��'��x�!�d��|U�~�1}f,�5ɧ
���>��hW1#ٗhV䋨J�
��ƞ�A�0����6�x�Cu����	}j��K"ʒ9K�)>E3���c�t�ܦY���w1SLI[�U��ԩ�c&E<�x tD�&�)�|�J��q\��	��x���1����s�x�.K0I8}+���q�&���=�*ޝEz{G�W�u"Z>!���+���0i,��P���tb+X3�bA_�e�U\���O̏�� � 9x�8���1�fq�?�ٵ�5�J���=�� �Ў�f��|�b&�����	�*V��dQ���)���0]�P�+��E�l�W���K��o��.z�$����x�K���#�u/���y�Y���q���)�ȳ�+W�i��[��j\1����!-�/���j^��y:��P�Y��}d��Wsc����h�!D�D���$:����忻�ތ��w?N�~��-A&�4�~̋��E,�|)Թ *���O�jIxP82���b��j4	k�+�hL<:�ey��z�[��^�<q���qE�M�x�G%0D���;N�����bY��$�%���4�te�L�&�+ֹ^:���]����1�{��v��SYNZ5�h�}����B�~���lJ_#�d�B�x��%�F�E^��׹<\v��g����z�w9�hw:CF�"٘�+�&_�.UƷ'wD8IvB�,�!1��U䫌(�@g�yQhF�g�X�wɌ�Oy����O�w�G�^2�0�֖T��������Z�|k��`�@z����:!�=1"� Ȅ���ǂN��O�,�I�3�+,�`i�f��	E�	��H�"霴���s}�wqq4f��K"}�	�YJ��`�#�����2���Neފ�VLSbfQ@�Meh�0a�&ϳ�(*4W7Q�	���F� ���5���~�67�On{'Yk�3Q�^��O̶��(�I�>$ᖮ�I2��0&Nϳ�}��-yfsw�G/�� a#8ںR���.�11/���,h��M������*H/�B�B H���H���8ϋd9�'F^��t<yě�����I:3M�L?�d�@ýx5�ڻƧ�=(�8�uM�l�~$ǚ:�V��YS���z�<�~7S�P�Y&˘�,��~���!�I/�V�{U���!��$n��M$�c=��&���-tn,���`Y;/'1��k�UL��n-y��]����b��Wţ���#`��vt��I�(["҈9�mf�7d�<���j.������J����nu���OH�)��,�ƨ1-p�Fm+x�?	��CR5!z��%�{֚V��sИ"Z�֞PP��$@;� �0}��3�*�����S��<�L���C��~���Y�d�5x+˥�������M����E��;��2�e^�)��)P���u�~{0�8;�[g,�..���iJd�}Y$\�xia�ҙ��,��|x��|�[�F9���L�Y�6k�'���I�b��]km����&��%�l�}M��d�4�	���d.kT�x��y��z}�e�c�>�{�j�W"��|�]�I�a�)h����t��e�y6I���|�VF��i4�i{��'e( ��4�d�t�iG/���EW��⧏���<��S�8�Uͽ@ج���k�w��˘П���4��m>��/�.�מ<�y��	�_�M�<�Im�F�Ցi�Ѱ�$�ȧ�mz2m��q�6�"�`p���?E ����x��#�>����݋�
��/��v��t���Ŵ�p	�|�ٴL\�^���Ċx�D;z��?h��eiA��$�R�m/I���?����ʨGVu:^�����p<�z�p�y2#�N���։�Ზ��32��;���b��[�*z�<�W��;��%SF�c�xDl�$6�Eǟ�ʗt�-~��%�D�G��7z�Rgȁx5�ՠJa��y=�=�=z�O^�A��`��)t��mxz�j6��,��ٙ�<�t��e�=�
�u"���X�=���K�I�������:z�Ji	0����җ4.bFGN-N���?2��v ����g
dv}��m�}��뫷_���}}���뫗߼�^����ѻ������������߽�n�߿�~�����wW7_k��\�'�w&�Ϩ:n::9��*�O
�C���T�N�`�m��G	�o{݈J���Do�=�KM�%�<1gsiY�C�8�2v
�6)]�l}��ьZ���m�R75�D2}�8���V"p(��t��Udl�H	�d�c� �?]jb��m����E�g�A
A3m�d�O�2p4��w���=ڒ�$�@5��"���@{D6����f�8:�`�&�EU揱|nGos�o�6�FRyR��l��|L����o�𮴈�u��p�9��N�%3�"�j0�R�ȅ���X�@���Uj��m����N@��`�����`a+ �9���M�)��@��jn��
pS��,�͚�P�YKj�XpӰ�y�S{�!zÃo�d5���]�7��^�/z]��F�.�-��v�{��ӽ���U2��R�d�
X�b��\�nUu��� 6ϗ���+�H������'o$b"�3X�Հۗ��K�|�l-���#�B_3v���X��H˻!�~r^@��4���N\�i�TVc\�e)J8�N�J ����hiGo�H0�M�|�CoL�}���#��Z��h��N7�?�fo�I�� �g��P���gG"MQm�;���X�V"\X-����F�w�h���+자��jl#�$S�ү\�#(s����=�Ӵ�Y���U��߀e��^�4n�Y]�E�V���Db�񫂋���kx2`f����8��ﱳ�xK\��͛Ǎe@b|�gC�\UY���/���yk A�^�`��dU;�M(nDR�Ӛ��6w�Ѕ���nʄ����u�T=��21����C'����,�Pe��^ﻜ�*X����M�9~�}�,q2c�p��w	HE����������Ö���+����١l�,��⮛+D�4PSҼ���K��E`��,��+�Xg�G��"�VE��Ow���2�e���y�l>8]�m�`! !<�@@en�Ob��Xi���p,�_(8�/t�mM@`���yyݖ,�w�&N��g�;���Q��Q�g^z��o��ގ�7����������A$��Zaq�� ��m	�q���T�O5�R"����wTL�'M�.�e�"��C3�c��ѳ����	A�a4>���:]���;�wz�xl�z�T�4�1ؼ��;-��t�^�UE8���`_
��a��߈a.���]N���"2�8�O��ni����Y�X,��33�i8l�/1�j^�����׆",�k�Ak�	    kԤ����H"���$���R���P`yq����"�mR�;���o�6�{�yp>���~o����]U-�˓�����O�>"]$����0�h
-g�L� v��|ؕ�Bɲ[)�]A��$&JU�Q0 ��'�#��x�Χ!#W�����|݅l��$i�h��L�%;*ɖ͇�$�#g�����w)�6�{4r�%�2������d�_����w�7F"�N,)cb,f��Tb]�g���U�0<��ͤ��~s�WQ��4P�=�h�Ϣoߴ�m��j9��iy"�|�+���N�c��cL�>.>��>~��c�l�&���o�cO��I�sBL�<�!�`�7<��;�j�����w��h"ד*�~I���!��Lތ)�q2�%��W�S�K�zW���zBѲH�@K(��/��m&v�d��[�e�Х�BL����͍��]K�iGߗ>��S�Ӏ���\Y��5{x%�*MZ�83F�g�>��܌>���u���b�@�(���"�m,hT�W�̚yU.�)��W~��I��>�P#v�$�^l?Ĵ_�"�rD{kS3v�X�ܣ����\���A<r��4��Xr�:Y���l���R��t,����k3����7�9�-d�T@���?҇��hX�Ż��v�v�v}��k/6�������p#�wJ����SΙ��,:�Q�Y�z����$-T�SkG_��2:\��C�����#��c��O���*]��'�Y��,:�~��n��I~��!��7�0���;<l��N��7�����!��6��lh�B�L�F�iv��։f=�C"ߴ �%�vN�YO?.���ɝ��� z��,mn��1���,�H6����4��d���X�e��߻f�������k<)�A2�di�=�)7���C��G�ΛX��`�t���u�ֶ|ăyf��Z@7�@Ze��*��*�xI|��g/?�m�Rʼ��f��0zm��H�ljq˺}�QHwd�4e��f	�cҊ�Ʃ1*�	��qh(7���4YR,,�Y��[�%�gӷ�scĥKd�2c�gJ�H���o{
e�P�A��i�C�씧�&�ƛ�}��3<i<&`/x?�|C? �q���l�
����θOvo��P��C� ��!�!�!�BԄW�s�@��)U�L�N�F�=������~�� 0L�l����:2H������
Ey��s�1V��wRcx%�s��K��(�u�K��,� �j4��@�8I(���8rh�(>�F�7�pn^�:7zK9����ʤ�� ̒����9�O��>Y�ˣ�Bh�D�Kq��d:k
�Ԗ$	�+�ܮH��$E(����,��9��MW�������`N'�Z��J+�^5������f���W�C��R�^NŴ���W�We`�3gki��Tp. �U0Q���)d�I�����@C=Tw��^���wƉ�.��u`��6��_\l Ò���aGu�R�R��9�^H$p3��E0y��s�Μ�5H6�,�9����2yb�.E��Gݗq��P��k�!��ZM���Z�/9�i��w	++�P�R]���魉�&�i�����x[8�H�bǉK����H�@ӝ<N4�ӭ�#�Ws���n�H@��h鈒���,�:��MV���'��5���W+�v��$�(�����a�d4/!��2���U`�[��Y/�S�ɨ�8�\��)β�a�J" �ZIj,\J�Js��XmG\�KȚL�v48������ ,ҟ�Q���ߧ�#[Cj̗�@�ƒ�û�_�B��*	�b@�jn�@��m���9��b���/�\�X��DpH�[�L�Z4H:���)�eE�q���9'Og�fP���N�l���-�y��Q��:�Cꤦ
fN��>.�bߦ����8��ܸk��9�I- G�(�Z	Ў'��&b���m��M�	Y9q�ǖ���e�����U!���>�f� �ܳ��C��	C�@Z	]�p�?MK�74�+���0W:�oen���7=�R�au��?�x�TWa�O��͎��O�����s���,޳8�������ю5w�[Ves:���vDƱ��mO:r�S��]ɀ��V^�;�1hj��Ӷ����؏|��%���7|�dė��0�U�-���d�1N>��~3��Q�.�BޟG1k�Ʒ����<4u�!��|�	Z�)��^_��$�W��?q]�(�dɊ�E$�92�nU�鳜�26��Oڀ��� bŹ�D G*\�pq�?I��#j��}��׳rMY����if�A#����6rڍF��s�ŹC�BC�'0�N�L6G����Y��|�v���w����k9���,F���S���M��"!���#t����	)#�>@�������[�/D����ܕ�ٻ摄��Zؖ��q�Q, Ə<{�eGr����`jb�:�sP�3��l�"���@�y<N��%����R�{3'�>Xڠ<�V�0����ƾ���1[p3Ե�Z�[��޾E) 5-R��^+#�}���]�3������[θ!^�=eݢJZ*�]�_/�3�!>�����r��%� ��4�*%�r�z*����В}C�jq�$|\F��_��an�[��fq��J(�al<���77G��4��u+&�L�]񞸼6�+��������O��x���n��m�O�Y�v���0�ͦ��7�����G��3�%��,��9��k����A��E�\�<��}���,��_�ϕ���,pq�'VFo%�R�.^�̲���A���������4����+݌��W�<n��/����ߢ7)�(���dӝ}����q��8�;oESקd��#�L%2�$�������uJ�Ǎqsܗ���!1M)�oi"/��>5ͪh���rU�`Z�-5l�u�E&��2�-�i�?5W���*�L�Ur���RU��`c�#�Q�kΡ��$S]0�	4Y���f�=t�`,��8sJ����k��зD$�z
�n C��M ��3
��Go��zU�,Y�}��b�W�u�jJ�5��`��lPN�R	��:���lzq^ǜs��+��s+�h�Z� ��J��n�O.�,�K^��Ȇ&0�6��F+}bξΑE����L5�S�6���ǜ=oq�kW/��" ��.1�X�uP�0�S/�$�yp��-��Mޡǥc��*�b���:���u\�#+=u�vP�B��N{X)��x��Wlp�p
<s���~����9E	�h˚}�ژ�4��(�x�Ćm���no"⇄a����������E�U@�iR:+��щ��g8�T�W͎u�M�D�k�S�bZ��o;�I��n���O��=���qǧ~��s�>�����b�Z�.�l�\�N��~�s�ӈO�wY~e�#��2�=�sE�;�Ur�� F�9��I�ZԦ������ˮ����5���MS>��-����oj���2yƒ �d�c��{��!�>!�\<�H�(3	Jj��%b�N�����l�R.ܤ�kJ�.���xP��G|%m��[��~7-� ǡ�<�����ށvŁbx�r�n�j�8_��o8pv���G�\���n(1f\��$߀ ޒz��K���Z��!8���Vέ�m,��,�Ǥ�Q&�F�Fd��Cx����OU{�Ҡ؞>U�ٻ�<=o�:ݍ!�C�\I}��v�k�B��zoX��=m�����Ͱ��eW�ӿZl@�p�ߐt�G�rF<�J��Ŋ�\lWn#�1^�АD��-	m����� t�����9E�ۤY�C�%BЃ����`gܛ��^G_�{}}���׬�It�v�3��d8R���Ȇ,��]|��R?d��`��W6����0��M:�Y���^���O�= l_l\i#*�k�./Y{��~5���f�)B��k�DΌ��~�^���c(/R���-���v��Mc�2ks�z���ܼms��_'��nM^ڜ=#���;� �KtsC.�v�d�F�xm����|3&���E�V�N=�8���0��38����|���IHqO3��=��q�N~��
�f,���f꨼yy{    <h���Sˤ5�%����B���JO�_ƈc�dĺ	>][9�巄�ѿ����:�{)\�:�����0h�_#Q����Ö�$�w;lv���ٴ�{�>'����]iΖ��݋�N]�:�~����-�ǁ/��h�/^��PZ'aJ���͸�o�&�hB����ӕ�����-h�����}����LEhH1`X�7�h�(ГP/z�":Ea�;.����܁ϐn��/�{]�[�+���H4��UVءNx��fI� �����M���·ɡl�����k� �y�(�qm�����d�W�y����h��ԭ�ղΕ؀��ߡW�2,:�ԥ+v8�;p
И8�nn��z{�%����A<�|���W�t���t	���{
m�
�d���=o]{�'o)��#F�gh�ˁs�l>�:g�i
z�O#l�M��+w=����d;��g��؂���o�?��#i��> 1��P�2�"cA��8;tN��E��3�I�:$�+�Z��B���l7J���g_��Hή
H�.�^Cw��Ɖw7tJ�������V�4�����B�kdH�c|WLMٓ2(	�q�����%]�ֶƚq(�L|o�X4$�`D�=Qf��L��*�/ՙ�?��$�.ɥ��5��떦��Rˆ��O�y�iTs�Q��uת�ӮZB
��l����ܪu�J+��7�@
=��r9O�.ꈫJ�b��;����{�R�Z}<g����֚=ECz���+�Ec�֡ip������)��C�j�,#����-)����,��MbN+u��Z�U}W�iF9q۽p�2�{f"������Mw�[������[���(<p�!��s-'",I��-� ���C�@j*�y�D&{7#�k�S�eԍ�z.k�U�M�����&�����Q �qe6;<���2�p��Υ9�Ĵ���v^��mcGI_{`_9Fn��2�2��C��njp��ç5<��^0�}j׿���ht���_�m�}��݋b��7�h�aZs�s���-�Sފ`�mR�E��U�6�̧k�z�R�T�p�Wy[��,K���_6��մ˵[���ؓO�qb͖�OQ����W�9U�}��d��_�烳������3�/݆cҤr�ؒc�s�Y��(q"h�A���3�p�tJ��`�O�~��|��j.��)d6��^�N3W��$�w�� ��`�b��&s`���~j��ݜ�SȇSqWך�m6��v.;g�����F���z�����P�F����k�|haNђ�|qPK��䧴�bˍ`z�lN��ui��Q�hY6RC�z�U&<I��YY��l,���A0 �إU�d�pn5�#�R0�/��6����'©9��"j�����Rp?eC����%�O�L̯�+�E��'����2	��f���5��U�t�!���ڜ%��R9MK��"�Q��o���J>40Wi�Z'\��V�[��F_X�C��3:N2I+R��[��jPS|�H�C���!�	��9��m)��e��3���E��^ū�۸�ُ�d�����O���:��^{��n�אn�;Z��-Dk�<L�5�	+;���ւ!;uEvT;���1�gdL���^��4 zQ�U��mZ��2��ʓ��布	ׯi���t ��jy$g`z��!�oų���:)h�NE���C*����_����lWP���ͦ"�.�3���!�n��2Z(b�� �{��L*�v��N8ZR(6��mb/�Z�
�4�o���l�����=MT/�·O�:�|_jE�8���X���A�p��媵Ô �J��;���ߩk�"�X)�%ݪ�����i��4��5L�h5X-�C� �v��#\�vk��{�$�{��Y=!��|�}�T����׌�?���F Z� �W���-���]\,�P�rڦ\L^+�T'd^IW���Ɩ�r|����9�����W�G}�)T >�����9vqR{�-&���0s��I����r���֊��ɳV\˛��*���W[I�,49��]C���~�A�"�w7���OF�.�����X���M�Y���\��/�r~�YM�U����G�F|��(�v����xr`�hu�ީ��K��8�@^��a��*�"T�O�G�;�@H���Y�/f���ǞH�R߹��S*v&qa=i�����V�$$�i� �r�.�ub�e��A�y��6RY_�#n{k�ե=v�=]��w/�g���܀Z�.	,<?v/��G-m����~�}vqʒ�}�ֲ�$�S�(��~��b��w[M�I���ek�9'zW=��������)�놺E����~>_ęݙi�txK�����N�����^�)D�C��o�~���4��1�hQo�� �&|���Q߻fa-��Yτ �*�6/�)t�F��˰c����*-!]wk�,=ʂ٠�4���03���W!p��q����ٹ�}�n��e�sf��C�>�O����x�7�r+��%���zL��GZ`���d����z�o/��4Gj���`3m�$3ǸtL*�jkcn@-YѠ��jv�!r{�m��T��!k4�����F�����kל��`��JP�q�:��$���Վ��EZ��
��"w�5�gcо!H���0'�\��"�N-�V��'hD��OE�\,��ƴ�hI��p�p��[` Y�&"�z����76�T�)!���ţ�?k碴}�罳���M��d�~G�K�`�!qǻ�g�����o��p��Jk=pI*j��Ar[���֎0T��Q	�v�B	st�Frh�G�9u�s��,
�0G���Vz���cr�Hl�|EQ�f��9��Sz�3!��??�¸���q�q��HG�j�����<��,6��揞����4��mWv�6j�x0}^�X y||l �d�]+�'F�v6lS��0DX�)�c|�b��� v�A�ᖮ�����t�ؚ��E�ڲ�	ta��E�<��XX��|�<=��"75������/�].�S������+K�p����g=�t�>����ݡꑜ� -����V��QY>R�P�n��M�w/�Ժ/��9h3�5��?h�6��\��%h�OC�6��U�_{�y�x� �>��@1�/q��
�gGm�#�
U]7��,����M���usޝ�*�`�rx�: �T������xE^��W����+_���Վ���"I��@iM����_�4��7��[��f����p�V�
#S�n|�&���?�r��HNC�e!=R�x��h?9\��S{��M�Җ��c���p���=��V��$e�?	�z������zBx�}^P���k!`��x�ڧ"Y �V����UA뭝����CY��{����a��� �ZD��^��(:��[9�I�i=�����fMÖ�^�CSN����h\V��t���q�R�Ӫ�Q�9^m�!�j/�m2�еf�ө�᎔]I�Q���b�bk��c�J��.��X��>��v� =��߳�$ظ��%��o��䛤]I]�3�9uI�E��f���E^��`��^�s@����ϕ�]���ZFv~yz��N� ������Ԑڟ�H����W=����K\���Q��:�4��O�;��H���b�ju)��֩�SK<-V��\��*9���(z.�D�p�<�J$v^��l<7f۾U ��tp`Lbׇ;�]9�������d�<����}��V�U\-�(�]�cjCL"����P�q!�Ɖu��oF=��ҍ��]?�����J��L�q��b!��i=�r�^$$�i�hk���7�}~`g^�.e"m�3�<�{���g��PRI��q��+�8F���p�`y	rla���!\��X�NZRø��n�f��jrae��V��R���l��^����ku;,�X�a�_ R�O��@��"�}���i����	�:۰:��{������و�eKo�{Í݄G���;=35�~j��D)˫�iv�*l�G�D�1�_qP��%̱�Ӧ�I�ܭ�K�Yu���Ժ)����0�e5�r�2�JP���AH���'wḁM �(�V��o��yt��*������x �  v�E����fS�J�/;��Hs������\�����`��Ac���.����@�hUV�]�_Q�=R{Vs �*3H�'-J�#xЇ��HI��~s������oC2>��	���ivVe5ㄐw6�C�Ǐ�_�Uƥ���и�d.y!�m?�^����%Z���9v�UPZ{C� 'TD78Q�J��ٸ�Π_��;8zop�>�XYjӄvt\��	v�7MR���:.D��8SŪ�$J��r�$�j�U�aW7)���]�K�����RMW���b4ag�襽�=��1�g��o�֜�����{W�4��h�ɻ��z&L<���#����tQ��'���A9�O�j�z��R��ޫ;zne��?��tIU�2�uRL�0�RK0�OI���r͚k�����j��$<
`�*ߍǎ>~o��ie��`��Ҙ�U�g�S��wꪴ'��w�N0!�������ҧ?��F�Bv��F�qZ���פ�C<O�{J酲@�/�P�TY,{��|�Z���)u�ڧ��c�D��vW
�#��>C�N�����
��Ι�Pm�L�Ż�G���}����8Fm���6����ҋ�f��	I/��=��Ɍwy!
ӯ�/b�ʽ&b����HNG�3����"�9@N�㲤�
�8G"��dՑ�
N�.�9*{Lڦ�q���4��S���t"T�92��:���Y0�k�8�+�s�bi�� ��t�U�d�iK�
ŀ~mg������$FL& ��G����v�!S�f�e� ����Btٸ� "��^��ɱ4RM�=^nsyiF�����"wz�hs�nw��������fԅ�6�����B:ه`d�F�e������ )����?��U��7U<�G4oFxA�\#W�+���R׹�������}n|9G�����B)y��9�PUn!|>d�qI�zgr���8M+�X����S=:@��.��u��Z��iF(l2�!ö�Q�
���J^�@-aa���C��h=��)��>���%�HX��!��Kk����Dp�-��Њl�>��,�	���S7�#��s󤖭�1�
B�>�w�ΐf�a��"����LL�E��c�=s�a�w��%ݶT.����R�3x��ޔէ����q-��E;���8cC7Yr�W���Zaw���`-KK�E	�0Z8n�V�G=P�M[�D(Jt��n���h����>�2������j�1�ʒ���Yc��N�pN}kr;cC�Gb��4Yb��=��{g�������ʏٻr,��X�q�{1�W���Ro	X�<��u:�wk����p4�N�ݡ�5or�;]]�qg�&����s�F�C�fI��K9��V3���hˬ�{�szqM�\�ZZ�� �7�@i~�����Kk�����3�3���⎟�>�9�%mּ��-��CR|$3���@�Г�揖�%�����`H�r��h`��@��k�p\�X�*��>�D����[���U����c��0�g綣�U�ƲQ~���K\X��U�hg�lM��4�kJ�����y�y��M����/��#������/�z|����(����ZI�,���}��t�ۦ��J-H`�s�#K���,�
!�����n��J�5�o������`(�`�2��qtC��w55�	��i���9ĝC��X��>1E#\���l*�P_+�)7f����FA�	�#rL	OĮ>�5��"9��3�i`�V�����H�ޖ�5;�	6Z� �]����[Rc�﹀�/�*�3���/j��E�5�
��'A� �Si�I��S���so��yo�9��������΋%쥂��m�։���b	�(';F���͌=2>�����7����E���y�\��w�S����ם;o�mn���#M�����fg>IgfO~�}�=t�O�BA�鐾��\-�>�y�'w�F�����Ʈ#	�O���`��a�=�j*3x��V'd�*
o,Jb=�z\l�=�����L��JԢq՟�� T�`�GI��|�me�̛��V�[�V�dϫA���@42`���#uEm<���ی�����9�����k��>��� ��ad��?�Oa#p����|�(�l;�^�z�݈k��%��[ˌN��|RRs�z���Z���;P��.����(������gh���Ѷ�ˤx�;���b�)�.H8]��Od�To�Hi��ٳ��o6���V��!t��~�����h��|A��1gw&|�9L^�NO�A�r�J��K�gڔQ��)�6��ǌ�dц��R�kG��f�:��y������5 +��8��Q�4cU�B��A?�v��ӦΩQۯ����&[I<�����F���=\��%[%���9�n�	��	�1z��cxƁ��_4���o���V����S�9r�t;d��5Ƿ����#�<W���%5��U�#�p�x�X~XPC��J��������@@�n-��� Z	'�>�~�n�;fW�'�i?!u����N7��4�ќ\|s��SN�U��߱f������	tG��y��_����$���a���Ғjz4��l5�T:�H
��A-��� ���O
"`���8;QO��v����铷��U&�?Nu�Λ�Z��I(蹨���ʻi��A�	���뽳C��S��15�{��
���^l��i(����H^��G��x�A!ת��Iǟ����[��}^kF�G]�n��T_lm��m�?���m)��2X#�����F���(:��$�ś�Ϫ�y��%d)�֏ ���Ԏ�tr[� �1���-	�i���t;
�À���Ҽ�=ײ�v�w�v_�sTxXa�%M��\��v)F>�K
a�]q�Ӝs3�i ���V�l��$h�^�jzn:�����*<4c�v6i���w2=�tK��#y.�S ]�m���zg���t �C\�ޑM���v����55�1�Ce��%�mvJ���������U��m����<e�Q���N�[���yc^���'�KZM��߁i%-��сA���U�#���D
��gBp>���n	t>�8��
����dо8��E�����u����ʖ˖(��d~ۗ��cp:e���K��K�R��\-X�U/�#���H��U��Hb�J:�,�d���E�P�dgL�G0)�zΒ+Eg�c�շ��Q�y��߉��T�tAb!��Kz��Ab�Q70�Q���]n�b����6,]��=}��i�B`W+#�.7��Քp4 ���o��@}��1��s+S�_���6�Ev[Q��#�׊�{(��v��^�fVֈ�)90��ȂD4G�/�v�ۀ�&d�/�N�w�)�b��{�w�WO;�:����:�<����.�U�0IK�JK��R���Ւ�-E��O6�f�w�H+���vB�*�2d��6���-���I�;�9`5�?!x�����D�{v�}�K��V���V���%�n��|�HfY:yr!��xǊ\!�{���F;�g�*���_�Ƨ�=��gi��,_~vX�rrG��өY�&����IX���,��ԇ�I��;ʶ��e3��6�uJ�j�`<�)�&?R�.�!֍�Z�Iz�G� �m������ް�n5���ڲ�i��pkl=�2ﵤ��4+�n#�4q���y�u����q�P���%$>M�3�Bl�S�뇀J �&�
`�1G�0�b�q�yT\� 6�wkXvȎf�p���PG��O�ػ��T���'�ח���s\٪���ΝӖ򳑎2Ҿ�u��̼��2'K7Iim�۩z��-W[$���n��5�y��r��oܖ��vR�v�x}�m�]k�B!�ǻ&6���5�bߗvz�UL�h�YvZZ{>����+�ߧ�rJg;�7,�:t�Bؘo96�b���v�� W��y�{�A@�OJ�M ?)96�/� O)/��|h��W���"�      �   �  x���AjC1D���	�e�[w馄�.BZH�OG����x��!}͌d=��I-r�y�n�����y��_�������g��� Ǭ��4�1�J�v�(�4B�Q��q�]A�"�6Ș���+�	��ͣJ�!U�s�j�YT��@ω:����Y�SC+�.�E
��Pho�a��I��dM�$3!��_H�L��r��8۰~�{���C��2�0��eCa�qN���������cQo'ZT��E�]�E�&����Ġ����қ$��X�$���5�n�� ��I�cC��ì�S$F�C�$�N��6I��~�3O�n�"3�A�$������ɉ�#1��cT1�L�\��0�4�B7L�[TLچ�1ʏ�F,�͏5����3WK�)�x��O�m�1`����(��hi'�$7��� Ɏ��q4]��      �      x�NɑEA:K0S��r���1���Ed�ͮb�
&�����X(E�;����+��׹/�ޚ��:�tW�����M'W8�m}W�8x�tj��oFz����n�LwlZ!��e�V ��9 �      �      x�34�4����� �X      �   �  x��V�n�6}V��ݗ$�MK���[/(�@��-�b��i���Ф RQݯ����$N�̜93�(��>IC�^V�xd�h���ׇU�
Ek����Z��]Ӭ��X�����!x~
�I���e��6Ei��0��GEco�a���eo��Z	��frǲ	�lW�QD]~�2_1��$��2�4/�Gkr�g��I��(�����6�K����Y%hǖt�J;Nw�]�:����|ʐ��:�|����y�4�
f���-��F[[���;�̠�2�!�v<:��E�${��C�f5z�q�TojjX��@�*^݁}�Q���� �i�$~�y�$��|o}�,�Iz�|R�'$��5+�yz�ka�C�9^�3�M/+W�ᒊ�
��J�T�$��|M36����v`��M�:&+���1�Z��#3�Ӿ�n�;]����K�$4\��6k��רf���f��Q:Fp)z�j�\�2����*�;�{�NR����e�WC!{.�M�<�f}U�>��������J��B8��T�*A<�f�c}4�VL�{���Y��p#�\��Yp�'��B@�۽ځ���^�D�̡1��>��U�q��UW[�_ĚH�@�oj�h�#�3�}��[V�[�-��q�i3C-�<8������ U~|�n�� ���l�e�h���7��#B0��-ܜ\�����$��}]���v;�0sI��ؤ=z��n�q;''x�	=�� �F	��Z����r]Z���JT������X���0	�^��� f�W��o�/���<��: =�e���G�l)c�C%Fc j�(��q�T�i��'��i3)i�ٗk��}�>�����#û��s4P�G�#�[Z1���q����hm{�6őv/�L�T�\�۠/��cZ]�V�0�!��A����K�W	���՘��M����(x�����V\��J�"�s�/�y\�k���k�4�YH����:�u��a�C�����V�2dM��(Jȼ����؍�p��>]����3+�ɠt�^��i�A����xhѸ�.��M�؎��Ko�@h��'v}��m$�o kz��9]�~�{3 ��[޹0 U��⠆�����i�Se�D�Z֙�_��fH�4}��p��]�	�
g	��s��t�_�����J�Rv      �      x�3�4�2�4����� 1�      �      x������ � �      �   n  x���An� E��)z��v����@6�:�,Rs�b�4�T�$��5�#�l&��sf�&�Ga�������Z)�vCKJ���/�b�e��j+��)��GH�VkC�0ca��F��_�νJn�ֽ�߯�;)��L���&��n6�C��_)*	*�Ұ����ٷ�z VW`���t�������Q�N!�\���
���^������݅�;i�$�uj���#ۆۜ���(;��C��}��'��=O��N��ے�q�ʗ���d�r�L�KU#1o�+��l����RL�:ZL���24��!2�Q�f0�<Cd(�8<��{�m����$u���콓�ޯ�Ӈ>�(�#�XD      �   C   x����0��x�!�]��B*�#�f�j��m��_��VK9�;Ne�X�3,��������      �   �   x�u�A
�0E��)�	�IZ$;��� ��:j ��&��E](��W���Cq�����!���BM�11��3��o�g-�� C��9@�����un���5�DW/);ښ���g��ܼ��̚���yC���k쵔rD�EL      �      x������ � �      �      x������ � �     