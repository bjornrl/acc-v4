PGDMP     3                    z            acc-v4    12.10    14.1 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public         heap    acc-v4    false                       1259    24720    code_challenges_category_links    TABLE     p   CREATE TABLE public.code_challenges_category_links (
    code_challenge_id integer,
    sublesson_id integer
);
 2   DROP TABLE public.code_challenges_category_links;
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
       public         heap    acc-v4    false                       1259    24877 .   components_content_challenges_playground_links    TABLE     }   CREATE TABLE public.components_content_challenges_playground_links (
    challenges_id integer,
    playground_id integer
);
 B   DROP TABLE public.components_content_challenges_playground_links;
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
       public         heap    acc-v4    false                       1259    24910    lessons_sublesson_links    TABLE     a   CREATE TABLE public.lessons_sublesson_links (
    lesson_id integer,
    sublesson_id integer
);
 +   DROP TABLE public.lessons_sublesson_links;
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
       public         heap    acc-v4    false                       1259    24749 )   multiple_choice_challenges_category_links    TABLE     �   CREATE TABLE public.multiple_choice_challenges_category_links (
    multiple_choice_challenge_id integer,
    sublesson_id integer
);
 =   DROP TABLE public.multiple_choice_challenges_category_links;
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
       public          acc-v4    false    242                        0    0 !   multiple_choice_challenges_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.multiple_choice_challenges_id_seq OWNED BY public.multiple_choice_challenges.id;
          public          acc-v4    false    241                       1259    24798    playgrounds    TABLE     o  CREATE TABLE public.playgrounds (
    id integer NOT NULL,
    starting_code text,
    prompt text,
    internal_label character varying(255),
    internal_notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.playgrounds;
       public         heap    acc-v4    false                       1259    24796    playgrounds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.playgrounds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.playgrounds_id_seq;
       public          acc-v4    false    281                       0    0    playgrounds_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.playgrounds_id_seq OWNED BY public.playgrounds.id;
          public          acc-v4    false    280            �            1259    16480    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
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
       public          acc-v4    false    217                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
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
       public          acc-v4    false    207                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
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
       public          acc-v4    false    205                       0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
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
       public          acc-v4    false    203                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
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
       public          acc-v4    false    209                       0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
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
    internal_label text
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
       public          acc-v4    false    271                       0    0    sublessons_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.sublessons_components_id_seq OWNED BY public.sublessons_components.id;
          public          acc-v4    false    270            �            1259    16784    sublessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sublessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sublessons_id_seq;
       public          acc-v4    false    244                       0    0    sublessons_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sublessons_id_seq OWNED BY public.sublessons.id;
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
       public          acc-v4    false    246            	           0    0    syntax_entries_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.syntax_entries_id_seq OWNED BY public.syntax_entries.id;
          public          acc-v4    false    245                       1259    18078    syntax_entries_lesson_links    TABLE     h   CREATE TABLE public.syntax_entries_lesson_links (
    syntax_entry_id integer,
    lesson_id integer
);
 /   DROP TABLE public.syntax_entries_lesson_links;
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
       public          acc-v4    false    223            
           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
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
       public          acc-v4    false    225                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
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
       public          acc-v4    false    227                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          acc-v4    false    226            �            1259    16575    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    acc-v4    false                       2604    16444    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    211    210    211                       2604    16470    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    214    215    215                       2604    16457    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    212    213    213            !           2604    16727    code_challenges id    DEFAULT     x   ALTER TABLE ONLY public.code_challenges ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_id_seq'::regclass);
 A   ALTER TABLE public.code_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    234    233    234            .           2604    16875    code_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.code_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_components_id_seq'::regclass);
 L   ALTER TABLE public.code_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    259    260    260            (           2604    16815 '   components_challenge_challenge_hints id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_challenge_hints_id_seq'::regclass);
 V   ALTER TABLE public.components_challenge_challenge_hints ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    247    248    248            )           2604    16826 ,   components_challenge_code_challenge_tests id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_code_challenge_tests_id_seq'::regclass);
 [   ALTER TABLE public.components_challenge_code_challenge_tests ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    250    249    250            *           2604    16837 /   components_challenge_multiple_choice_options id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_multiple_choice_options_id_seq'::regclass);
 ^   ALTER TABLE public.components_challenge_multiple_choice_options ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    251    252    252            +           2604    16848     components_content_challenges id    DEFAULT     �   ALTER TABLE ONLY public.components_content_challenges ALTER COLUMN id SET DEFAULT nextval('public.components_content_challenges_id_seq'::regclass);
 O   ALTER TABLE public.components_content_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    254    253    254            ,           2604    16856 (   components_content_external_resources id    DEFAULT     �   ALTER TABLE ONLY public.components_content_external_resources ALTER COLUMN id SET DEFAULT nextval('public.components_content_external_resources_id_seq'::regclass);
 W   ALTER TABLE public.components_content_external_resources ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    256    255    256            -           2604    16867 !   components_misc_module_lessons id    DEFAULT     �   ALTER TABLE ONLY public.components_misc_module_lessons ALTER COLUMN id SET DEFAULT nextval('public.components_misc_module_lessons_id_seq'::regclass);
 P   ALTER TABLE public.components_misc_module_lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    257    258    258            "           2604    16740 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    235    236    236                       2604    16496    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    219    218    219                       2604    16509    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    221    220    221            #           2604    16753 
   lessons id    DEFAULT     h   ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);
 9   ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    237    238    238            0           2604    16895    lessons_components id    DEFAULT     ~   ALTER TABLE ONLY public.lessons_components ALTER COLUMN id SET DEFAULT nextval('public.lessons_components_id_seq'::regclass);
 D   ALTER TABLE public.lessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    262    263    263            $           2604    16766 
   modules id    DEFAULT     h   ALTER TABLE ONLY public.modules ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);
 9   ALTER TABLE public.modules ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    240    239    240            2           2604    16920    modules_components id    DEFAULT     ~   ALTER TABLE ONLY public.modules_components ALTER COLUMN id SET DEFAULT nextval('public.modules_components_id_seq'::regclass);
 D   ALTER TABLE public.modules_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    267    266    267            %           2604    16776    multiple_choice_challenges id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_id_seq'::regclass);
 L   ALTER TABLE public.multiple_choice_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    242    241    242            4           2604    16935 (   multiple_choice_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_components_id_seq'::regclass);
 W   ALTER TABLE public.multiple_choice_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    268    269    269            8           2604    24801    playgrounds id    DEFAULT     p   ALTER TABLE ONLY public.playgrounds ALTER COLUMN id SET DEFAULT nextval('public.playgrounds_id_seq'::regclass);
 =   ALTER TABLE public.playgrounds ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    280    281    281                       2604    16483    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    216    217    217                       2604    16422    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    206    207    207                       2604    16411    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    205    204    205                       2604    16403    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    203    202    203                       2604    16433    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    208    209    209            &           2604    16789    sublessons id    DEFAULT     n   ALTER TABLE ONLY public.sublessons ALTER COLUMN id SET DEFAULT nextval('public.sublessons_id_seq'::regclass);
 <   ALTER TABLE public.sublessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    244    243    244            6           2604    16950    sublessons_components id    DEFAULT     �   ALTER TABLE ONLY public.sublessons_components ALTER COLUMN id SET DEFAULT nextval('public.sublessons_components_id_seq'::regclass);
 G   ALTER TABLE public.sublessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    270    271    271            '           2604    16802    syntax_entries id    DEFAULT     v   ALTER TABLE ONLY public.syntax_entries ALTER COLUMN id SET DEFAULT nextval('public.syntax_entries_id_seq'::regclass);
 @   ALTER TABLE public.syntax_entries ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    245    246    246                       2604    16522    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    222    223    223                       2604    16532    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    224    225    225                        2604    16545    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    226    227    227            �          0    16441    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    211   2?      �          0    16553    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    228   ]G      �          0    16467    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    215   7H      �          0    16454    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    213   I      �          0    16558    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    229   �J      �          0    16724    code_challenges 
   TABLE DATA           �   COPY public.code_challenges (id, starting_code, prompt, internal_label, internal_notes, get_starting_code_from_previous_challenge, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    234   �J      �          0    24720    code_challenges_category_links 
   TABLE DATA           Y   COPY public.code_challenges_category_links (code_challenge_id, sublesson_id) FROM stdin;
    public          acc-v4    false    278   *c      �          0    16872    code_challenges_components 
   TABLE DATA           q   COPY public.code_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    260   �c      �          0    16812 $   components_challenge_challenge_hints 
   TABLE DATA           i   COPY public.components_challenge_challenge_hints (id, text, recommended_time_before_viewing) FROM stdin;
    public          acc-v4    false    248   �f      �          0    16823 )   components_challenge_code_challenge_tests 
   TABLE DATA           r   COPY public.components_challenge_code_challenge_tests (id, label, internal_test, further_explanation) FROM stdin;
    public          acc-v4    false    250   j      �          0    16834 ,   components_challenge_multiple_choice_options 
   TABLE DATA           z   COPY public.components_challenge_multiple_choice_options (id, text, is_correct, incorrect_choice_explanation) FROM stdin;
    public          acc-v4    false    252   Ys      �          0    16845    components_content_challenges 
   TABLE DATA           ;   COPY public.components_content_challenges (id) FROM stdin;
    public          acc-v4    false    254   �{      �          0    16980 2   components_content_challenges_code_challenge_links 
   TABLE DATA           n   COPY public.components_content_challenges_code_challenge_links (challenges_id, code_challenge_id) FROM stdin;
    public          acc-v4    false    272   |      �          0    17964 =   components_content_challenges_multiple_choice_challenge_links 
   TABLE DATA           �   COPY public.components_content_challenges_multiple_choice_challenge_links (challenges_id, multiple_choice_challenge_id) FROM stdin;
    public          acc-v4    false    276   �|      �          0    24877 .   components_content_challenges_playground_links 
   TABLE DATA           f   COPY public.components_content_challenges_playground_links (challenges_id, playground_id) FROM stdin;
    public          acc-v4    false    282   �|      �          0    16853 %   components_content_external_resources 
   TABLE DATA           U   COPY public.components_content_external_resources (id, name, link, type) FROM stdin;
    public          acc-v4    false    256   }      �          0    16864    components_misc_module_lessons 
   TABLE DATA           <   COPY public.components_misc_module_lessons (id) FROM stdin;
    public          acc-v4    false    258   ��      �          0    16990 +   components_misc_module_lessons_lesson_links 
   TABLE DATA           b   COPY public.components_misc_module_lessons_lesson_links (module_lesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    273   ��      �          0    16737    courses 
   TABLE DATA           u   COPY public.courses (id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    236   
�      �          0    16885    courses_modules_links 
   TABLE DATA           E   COPY public.courses_modules_links (course_id, module_id) FROM stdin;
    public          acc-v4    false    261   ��      �          0    16493    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    219   ��      �          0    16563    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          acc-v4    false    230   ��      �          0    16506    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    221   ہ      �          0    16750    lessons 
   TABLE DATA           �   COPY public.lessons (id, slug, name, is_hard, internal_notes, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    238   '�      �          0    16892    lessons_components 
   TABLE DATA           i   COPY public.lessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    263   �      �          0    16905    lessons_module_links 
   TABLE DATA           D   COPY public.lessons_module_links (lesson_id, module_id) FROM stdin;
    public          acc-v4    false    264   ��      �          0    24910    lessons_sublesson_links 
   TABLE DATA           J   COPY public.lessons_sublesson_links (lesson_id, sublesson_id) FROM stdin;
    public          acc-v4    false    283   ��      �          0    16910    lessons_syntax_entry_links 
   TABLE DATA           P   COPY public.lessons_syntax_entry_links (lesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    265   �      �          0    16763    modules 
   TABLE DATA           o   COPY public.modules (id, name, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    240   1�      �          0    16917    modules_components 
   TABLE DATA           i   COPY public.modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    267   ��      �          0    16773    multiple_choice_challenges 
   TABLE DATA           �   COPY public.multiple_choice_challenges (id, prompt, internal_label, can_select_multiple_options, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    242   ,�      �          0    24749 )   multiple_choice_challenges_category_links 
   TABLE DATA           o   COPY public.multiple_choice_challenges_category_links (multiple_choice_challenge_id, sublesson_id) FROM stdin;
    public          acc-v4    false    279   ��      �          0    16932 %   multiple_choice_challenges_components 
   TABLE DATA           |   COPY public.multiple_choice_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    269   Ԏ      �          0    24798    playgrounds 
   TABLE DATA           �   COPY public.playgrounds (id, starting_code, prompt, internal_label, internal_notes, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    281   ��      �          0    16480    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    217   �      �          0    16419    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          acc-v4    false    207   �      �          0    16408    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          acc-v4    false    205   O�      �          0    16400    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          acc-v4    false    203   ��      �          0    16430    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          acc-v4    false    209   ��      �          0    16786 
   sublessons 
   TABLE DATA           �   COPY public.sublessons (id, name, created_at, updated_at, created_by_id, updated_by_id, description, published_at, internal_label) FROM stdin;
    public          acc-v4    false    244   ɶ      �          0    16947    sublessons_components 
   TABLE DATA           l   COPY public.sublessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    271   ��      �          0    17845    sublessons_lesson_links 
   TABLE DATA           J   COPY public.sublessons_lesson_links (sublesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    274   L�      �          0    17850    sublessons_syntax_entry_links 
   TABLE DATA           V   COPY public.sublessons_syntax_entry_links (sublesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    275   ��      �          0    16799    syntax_entries 
   TABLE DATA           �   COPY public.syntax_entries (id, content, name, internal_notes, max_width, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    246   ��      �          0    18078    syntax_entries_lesson_links 
   TABLE DATA           Q   COPY public.syntax_entries_lesson_links (syntax_entry_id, lesson_id) FROM stdin;
    public          acc-v4    false    277   ��      �          0    16519    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    223   ��      �          0    16570    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    231   B�      �          0    16529    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    225   ��      �          0    16542    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    227   -�      �          0    16575    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    232   J�                 0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 319, true);
          public          acc-v4    false    210                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          acc-v4    false    214                       0    0    admin_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_users_id_seq', 36, true);
          public          acc-v4    false    212                       0    0 !   code_challenges_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.code_challenges_components_id_seq', 300, true);
          public          acc-v4    false    259                       0    0    code_challenges_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.code_challenges_id_seq', 36, true);
          public          acc-v4    false    233                       0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_challenge_challenge_hints_id_seq', 6, true);
          public          acc-v4    false    247                       0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_challenge_code_challenge_tests_id_seq', 78, true);
          public          acc-v4    false    249                       0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_challenge_multiple_choice_options_id_seq', 103, true);
          public          acc-v4    false    251                       0    0 $   components_content_challenges_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_content_challenges_id_seq', 62, true);
          public          acc-v4    false    253                       0    0 ,   components_content_external_resources_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_content_external_resources_id_seq', 18, true);
          public          acc-v4    false    255                       0    0 %   components_misc_module_lessons_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_misc_module_lessons_id_seq', 14, true);
          public          acc-v4    false    257                       0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 1, true);
          public          acc-v4    false    235                       0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          acc-v4    false    218                       0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          acc-v4    false    220                       0    0    lessons_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lessons_components_id_seq', 66, true);
          public          acc-v4    false    262                       0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 15, true);
          public          acc-v4    false    237                       0    0    modules_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.modules_components_id_seq', 63, true);
          public          acc-v4    false    266                       0    0    modules_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modules_id_seq', 2, true);
          public          acc-v4    false    239                       0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.multiple_choice_challenges_components_id_seq', 143, true);
          public          acc-v4    false    268                        0    0 !   multiple_choice_challenges_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.multiple_choice_challenges_id_seq', 24, true);
          public          acc-v4    false    241            !           0    0    playgrounds_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.playgrounds_id_seq', 1, true);
          public          acc-v4    false    280            "           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          acc-v4    false    216            #           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 41, true);
          public          acc-v4    false    206            $           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 78, true);
          public          acc-v4    false    204            %           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          acc-v4    false    202            &           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          acc-v4    false    208            '           0    0    sublessons_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.sublessons_components_id_seq', 289, true);
          public          acc-v4    false    270            (           0    0    sublessons_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sublessons_id_seq', 106, true);
          public          acc-v4    false    243            )           0    0    syntax_entries_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.syntax_entries_id_seq', 6, true);
          public          acc-v4    false    245            *           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 31, true);
          public          acc-v4    false    222            +           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          acc-v4    false    224            ,           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          acc-v4    false    226            C           2606    16449 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            acc-v4    false    211            K           2606    16475    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            acc-v4    false    215            G           2606    16462    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            acc-v4    false    213            �           2606    16881 :   code_challenges_components code_challenges_components_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_components_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_components_pkey;
       public            acc-v4    false    260            p           2606    16732 $   code_challenges code_challenges_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_pkey;
       public            acc-v4    false    234            �           2606    16820 N   components_challenge_challenge_hints components_challenge_challenge_hints_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints
    ADD CONSTRAINT components_challenge_challenge_hints_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_challenge_challenge_hints DROP CONSTRAINT components_challenge_challenge_hints_pkey;
       public            acc-v4    false    248            �           2606    16831 X   components_challenge_code_challenge_tests components_challenge_code_challenge_tests_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests
    ADD CONSTRAINT components_challenge_code_challenge_tests_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests DROP CONSTRAINT components_challenge_code_challenge_tests_pkey;
       public            acc-v4    false    250            �           2606    16842 ^   components_challenge_multiple_choice_options components_challenge_multiple_choice_options_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options
    ADD CONSTRAINT components_challenge_multiple_choice_options_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options DROP CONSTRAINT components_challenge_multiple_choice_options_pkey;
       public            acc-v4    false    252            �           2606    16850 @   components_content_challenges components_content_challenges_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_content_challenges
    ADD CONSTRAINT components_content_challenges_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_content_challenges DROP CONSTRAINT components_content_challenges_pkey;
       public            acc-v4    false    254            �           2606    16861 P   components_content_external_resources components_content_external_resources_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_content_external_resources
    ADD CONSTRAINT components_content_external_resources_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_content_external_resources DROP CONSTRAINT components_content_external_resources_pkey;
       public            acc-v4    false    256            �           2606    16869 B   components_misc_module_lessons components_misc_module_lessons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons
    ADD CONSTRAINT components_misc_module_lessons_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_misc_module_lessons DROP CONSTRAINT components_misc_module_lessons_pkey;
       public            acc-v4    false    258            t           2606    16745    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            acc-v4    false    236            S           2606    16501    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            acc-v4    false    219            W           2606    16514    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            acc-v4    false    221            �           2606    16901 *   lessons_components lessons_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_components_pkey;
       public            acc-v4    false    263            x           2606    16758    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            acc-v4    false    238            �           2606    16926 *   modules_components modules_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_components_pkey;
       public            acc-v4    false    267            |           2606    16768    modules modules_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_pkey;
       public            acc-v4    false    240            �           2606    16941 P   multiple_choice_challenges_components multiple_choice_challenges_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_components_pkey;
       public            acc-v4    false    269            �           2606    16781 :   multiple_choice_challenges multiple_choice_challenges_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_pkey;
       public            acc-v4    false    242            �           2606    24806    playgrounds playgrounds_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.playgrounds
    ADD CONSTRAINT playgrounds_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.playgrounds DROP CONSTRAINT playgrounds_pkey;
       public            acc-v4    false    281            O           2606    16488 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            acc-v4    false    217            >           2606    16427 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            acc-v4    false    207            <           2606    16416 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            acc-v4    false    205            :           2606    16405 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            acc-v4    false    203            @           2606    16438 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            acc-v4    false    209            �           2606    16956 0   sublessons_components sublessons_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_components_pkey;
       public            acc-v4    false    271            �           2606    16794    sublessons sublessons_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_pkey;
       public            acc-v4    false    244            �           2606    16807 "   syntax_entries syntax_entries_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_pkey;
       public            acc-v4    false    246            [           2606    16524 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            acc-v4    false    223            _           2606    16537    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            acc-v4    false    225            c           2606    16550    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            acc-v4    false    227            A           1259    16450 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            acc-v4    false    211            e           1259    16556    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            acc-v4    false    228            f           1259    16557 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            acc-v4    false    228            D           1259    16451 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            acc-v4    false    211            I           1259    16476    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            acc-v4    false    215            L           1259    16477    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            acc-v4    false    215            E           1259    16463    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            acc-v4    false    213            g           1259    16561    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            acc-v4    false    229            h           1259    16562    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            acc-v4    false    229            H           1259    16464    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            acc-v4    false    213            �           1259    24723 !   code_challenges_category_links_fk    INDEX     y   CREATE INDEX code_challenges_category_links_fk ON public.code_challenges_category_links USING btree (code_challenge_id);
 5   DROP INDEX public.code_challenges_category_links_fk;
       public            acc-v4    false    278            �           1259    24724 %   code_challenges_category_links_inv_fk    INDEX     x   CREATE INDEX code_challenges_category_links_inv_fk ON public.code_challenges_category_links USING btree (sublesson_id);
 9   DROP INDEX public.code_challenges_category_links_inv_fk;
       public            acc-v4    false    278            �           1259    16883 $   code_challenges_component_type_index    INDEX     u   CREATE INDEX code_challenges_component_type_index ON public.code_challenges_components USING btree (component_type);
 8   DROP INDEX public.code_challenges_component_type_index;
       public            acc-v4    false    260            n           1259    16733     code_challenges_created_by_id_fk    INDEX     e   CREATE INDEX code_challenges_created_by_id_fk ON public.code_challenges USING btree (created_by_id);
 4   DROP INDEX public.code_challenges_created_by_id_fk;
       public            acc-v4    false    234            �           1259    16884    code_challenges_entity_fk    INDEX     e   CREATE INDEX code_challenges_entity_fk ON public.code_challenges_components USING btree (entity_id);
 -   DROP INDEX public.code_challenges_entity_fk;
       public            acc-v4    false    260            �           1259    16882    code_challenges_field_index    INDEX     c   CREATE INDEX code_challenges_field_index ON public.code_challenges_components USING btree (field);
 /   DROP INDEX public.code_challenges_field_index;
       public            acc-v4    false    260            q           1259    16734     code_challenges_updated_by_id_fk    INDEX     e   CREATE INDEX code_challenges_updated_by_id_fk ON public.code_challenges USING btree (updated_by_id);
 4   DROP INDEX public.code_challenges_updated_by_id_fk;
       public            acc-v4    false    234            �           1259    16983 5   components_content_challenges_code_challenge_links_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_fk ON public.components_content_challenges_code_challenge_links USING btree (challenges_id);
 I   DROP INDEX public.components_content_challenges_code_challenge_links_fk;
       public            acc-v4    false    272            �           1259    16984 9   components_content_challenges_code_challenge_links_inv_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_inv_fk ON public.components_content_challenges_code_challenge_links USING btree (code_challenge_id);
 M   DROP INDEX public.components_content_challenges_code_challenge_links_inv_fk;
       public            acc-v4    false    272            �           1259    24949 ?   components_content_challenges_multiple_choice_challenge_links_f    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_f ON public.components_content_challenges_multiple_choice_challenge_links USING btree (challenges_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_f;
       public            acc-v4    false    276            �           1259    24950 ?   components_content_challenges_multiple_choice_challenge_links_i    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_i ON public.components_content_challenges_multiple_choice_challenge_links USING btree (multiple_choice_challenge_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_i;
       public            acc-v4    false    276            �           1259    24880 1   components_content_challenges_playground_links_fk    INDEX     �   CREATE INDEX components_content_challenges_playground_links_fk ON public.components_content_challenges_playground_links USING btree (challenges_id);
 E   DROP INDEX public.components_content_challenges_playground_links_fk;
       public            acc-v4    false    282            �           1259    24881 5   components_content_challenges_playground_links_inv_fk    INDEX     �   CREATE INDEX components_content_challenges_playground_links_inv_fk ON public.components_content_challenges_playground_links USING btree (playground_id);
 I   DROP INDEX public.components_content_challenges_playground_links_inv_fk;
       public            acc-v4    false    282            �           1259    16993 .   components_misc_module_lessons_lesson_links_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_fk ON public.components_misc_module_lessons_lesson_links USING btree (module_lesson_id);
 B   DROP INDEX public.components_misc_module_lessons_lesson_links_fk;
       public            acc-v4    false    273            �           1259    16994 2   components_misc_module_lessons_lesson_links_inv_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_inv_fk ON public.components_misc_module_lessons_lesson_links USING btree (lesson_id);
 F   DROP INDEX public.components_misc_module_lessons_lesson_links_inv_fk;
       public            acc-v4    false    273            r           1259    16746    courses_created_by_id_fk    INDEX     U   CREATE INDEX courses_created_by_id_fk ON public.courses USING btree (created_by_id);
 ,   DROP INDEX public.courses_created_by_id_fk;
       public            acc-v4    false    236            �           1259    16888    courses_modules_links_fk    INDEX     _   CREATE INDEX courses_modules_links_fk ON public.courses_modules_links USING btree (course_id);
 ,   DROP INDEX public.courses_modules_links_fk;
       public            acc-v4    false    261            �           1259    16889    courses_modules_links_inv_fk    INDEX     c   CREATE INDEX courses_modules_links_inv_fk ON public.courses_modules_links USING btree (module_id);
 0   DROP INDEX public.courses_modules_links_inv_fk;
       public            acc-v4    false    261            u           1259    16747    courses_updated_by_id_fk    INDEX     U   CREATE INDEX courses_updated_by_id_fk ON public.courses USING btree (updated_by_id);
 ,   DROP INDEX public.courses_updated_by_id_fk;
       public            acc-v4    false    236            Q           1259    16502    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            acc-v4    false    219            i           1259    16569    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            acc-v4    false    230            T           1259    16503    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            acc-v4    false    219            U           1259    16515    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            acc-v4    false    221            X           1259    16516    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            acc-v4    false    221            �           1259    16903    lessons_component_type_index    INDEX     e   CREATE INDEX lessons_component_type_index ON public.lessons_components USING btree (component_type);
 0   DROP INDEX public.lessons_component_type_index;
       public            acc-v4    false    263            v           1259    16759    lessons_created_by_id_fk    INDEX     U   CREATE INDEX lessons_created_by_id_fk ON public.lessons USING btree (created_by_id);
 ,   DROP INDEX public.lessons_created_by_id_fk;
       public            acc-v4    false    238            �           1259    16904    lessons_entity_fk    INDEX     U   CREATE INDEX lessons_entity_fk ON public.lessons_components USING btree (entity_id);
 %   DROP INDEX public.lessons_entity_fk;
       public            acc-v4    false    263            �           1259    16902    lessons_field_index    INDEX     S   CREATE INDEX lessons_field_index ON public.lessons_components USING btree (field);
 '   DROP INDEX public.lessons_field_index;
       public            acc-v4    false    263            �           1259    16908    lessons_module_links_fk    INDEX     ]   CREATE INDEX lessons_module_links_fk ON public.lessons_module_links USING btree (lesson_id);
 +   DROP INDEX public.lessons_module_links_fk;
       public            acc-v4    false    264            �           1259    16909    lessons_module_links_inv_fk    INDEX     a   CREATE INDEX lessons_module_links_inv_fk ON public.lessons_module_links USING btree (module_id);
 /   DROP INDEX public.lessons_module_links_inv_fk;
       public            acc-v4    false    264            �           1259    24913    lessons_sublesson_links_fk    INDEX     c   CREATE INDEX lessons_sublesson_links_fk ON public.lessons_sublesson_links USING btree (lesson_id);
 .   DROP INDEX public.lessons_sublesson_links_fk;
       public            acc-v4    false    283            �           1259    24914    lessons_sublesson_links_inv_fk    INDEX     j   CREATE INDEX lessons_sublesson_links_inv_fk ON public.lessons_sublesson_links USING btree (sublesson_id);
 2   DROP INDEX public.lessons_sublesson_links_inv_fk;
       public            acc-v4    false    283            �           1259    16913    lessons_syntax_entry_links_fk    INDEX     i   CREATE INDEX lessons_syntax_entry_links_fk ON public.lessons_syntax_entry_links USING btree (lesson_id);
 1   DROP INDEX public.lessons_syntax_entry_links_fk;
       public            acc-v4    false    265            �           1259    16914 !   lessons_syntax_entry_links_inv_fk    INDEX     s   CREATE INDEX lessons_syntax_entry_links_inv_fk ON public.lessons_syntax_entry_links USING btree (syntax_entry_id);
 5   DROP INDEX public.lessons_syntax_entry_links_inv_fk;
       public            acc-v4    false    265            y           1259    16760    lessons_updated_by_id_fk    INDEX     U   CREATE INDEX lessons_updated_by_id_fk ON public.lessons USING btree (updated_by_id);
 ,   DROP INDEX public.lessons_updated_by_id_fk;
       public            acc-v4    false    238            �           1259    16928    modules_component_type_index    INDEX     e   CREATE INDEX modules_component_type_index ON public.modules_components USING btree (component_type);
 0   DROP INDEX public.modules_component_type_index;
       public            acc-v4    false    267            z           1259    16769    modules_created_by_id_fk    INDEX     U   CREATE INDEX modules_created_by_id_fk ON public.modules USING btree (created_by_id);
 ,   DROP INDEX public.modules_created_by_id_fk;
       public            acc-v4    false    240            �           1259    16929    modules_entity_fk    INDEX     U   CREATE INDEX modules_entity_fk ON public.modules_components USING btree (entity_id);
 %   DROP INDEX public.modules_entity_fk;
       public            acc-v4    false    267            �           1259    16927    modules_field_index    INDEX     S   CREATE INDEX modules_field_index ON public.modules_components USING btree (field);
 '   DROP INDEX public.modules_field_index;
       public            acc-v4    false    267            }           1259    16770    modules_updated_by_id_fk    INDEX     U   CREATE INDEX modules_updated_by_id_fk ON public.modules USING btree (updated_by_id);
 ,   DROP INDEX public.modules_updated_by_id_fk;
       public            acc-v4    false    240            �           1259    24752 ,   multiple_choice_challenges_category_links_fk    INDEX     �   CREATE INDEX multiple_choice_challenges_category_links_fk ON public.multiple_choice_challenges_category_links USING btree (multiple_choice_challenge_id);
 @   DROP INDEX public.multiple_choice_challenges_category_links_fk;
       public            acc-v4    false    279            �           1259    24753 0   multiple_choice_challenges_category_links_inv_fk    INDEX     �   CREATE INDEX multiple_choice_challenges_category_links_inv_fk ON public.multiple_choice_challenges_category_links USING btree (sublesson_id);
 D   DROP INDEX public.multiple_choice_challenges_category_links_inv_fk;
       public            acc-v4    false    279            �           1259    16943 /   multiple_choice_challenges_component_type_index    INDEX     �   CREATE INDEX multiple_choice_challenges_component_type_index ON public.multiple_choice_challenges_components USING btree (component_type);
 C   DROP INDEX public.multiple_choice_challenges_component_type_index;
       public            acc-v4    false    269            ~           1259    16782 +   multiple_choice_challenges_created_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_created_by_id_fk ON public.multiple_choice_challenges USING btree (created_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_created_by_id_fk;
       public            acc-v4    false    242            �           1259    16944 $   multiple_choice_challenges_entity_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_entity_fk ON public.multiple_choice_challenges_components USING btree (entity_id);
 8   DROP INDEX public.multiple_choice_challenges_entity_fk;
       public            acc-v4    false    269            �           1259    16942 &   multiple_choice_challenges_field_index    INDEX     y   CREATE INDEX multiple_choice_challenges_field_index ON public.multiple_choice_challenges_components USING btree (field);
 :   DROP INDEX public.multiple_choice_challenges_field_index;
       public            acc-v4    false    269            �           1259    16783 +   multiple_choice_challenges_updated_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_updated_by_id_fk ON public.multiple_choice_challenges USING btree (updated_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_updated_by_id_fk;
       public            acc-v4    false    242            �           1259    24807    playgrounds_created_by_id_fk    INDEX     ]   CREATE INDEX playgrounds_created_by_id_fk ON public.playgrounds USING btree (created_by_id);
 0   DROP INDEX public.playgrounds_created_by_id_fk;
       public            acc-v4    false    281            �           1259    24808    playgrounds_updated_by_id_fk    INDEX     ]   CREATE INDEX playgrounds_updated_by_id_fk ON public.playgrounds USING btree (updated_by_id);
 0   DROP INDEX public.playgrounds_updated_by_id_fk;
       public            acc-v4    false    281            M           1259    16489 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            acc-v4    false    217            P           1259    16490 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            acc-v4    false    217            �           1259    16958    sublessons_component_type_index    INDEX     k   CREATE INDEX sublessons_component_type_index ON public.sublessons_components USING btree (component_type);
 3   DROP INDEX public.sublessons_component_type_index;
       public            acc-v4    false    271            �           1259    16795    sublessons_created_by_id_fk    INDEX     [   CREATE INDEX sublessons_created_by_id_fk ON public.sublessons USING btree (created_by_id);
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
       public            acc-v4    false    275            �           1259    16796    sublessons_updated_by_id_fk    INDEX     [   CREATE INDEX sublessons_updated_by_id_fk ON public.sublessons USING btree (updated_by_id);
 /   DROP INDEX public.sublessons_updated_by_id_fk;
       public            acc-v4    false    244            �           1259    16808    syntax_entries_created_by_id_fk    INDEX     c   CREATE INDEX syntax_entries_created_by_id_fk ON public.syntax_entries USING btree (created_by_id);
 3   DROP INDEX public.syntax_entries_created_by_id_fk;
       public            acc-v4    false    246            �           1259    18081    syntax_entries_lesson_links_fk    INDEX     q   CREATE INDEX syntax_entries_lesson_links_fk ON public.syntax_entries_lesson_links USING btree (syntax_entry_id);
 2   DROP INDEX public.syntax_entries_lesson_links_fk;
       public            acc-v4    false    277            �           1259    18082 "   syntax_entries_lesson_links_inv_fk    INDEX     o   CREATE INDEX syntax_entries_lesson_links_inv_fk ON public.syntax_entries_lesson_links USING btree (lesson_id);
 6   DROP INDEX public.syntax_entries_lesson_links_inv_fk;
       public            acc-v4    false    277            �           1259    16809    syntax_entries_updated_by_id_fk    INDEX     c   CREATE INDEX syntax_entries_updated_by_id_fk ON public.syntax_entries USING btree (updated_by_id);
 3   DROP INDEX public.syntax_entries_updated_by_id_fk;
       public            acc-v4    false    246            Y           1259    16525    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            acc-v4    false    223            j           1259    16573    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            acc-v4    false    231            k           1259    16574     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            acc-v4    false    231            \           1259    16526    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            acc-v4    false    223            ]           1259    16538    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            acc-v4    false    225            `           1259    16539    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            acc-v4    false    225            a           1259    16551    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            acc-v4    false    227            l           1259    16578    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            acc-v4    false    232            m           1259    16579    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            acc-v4    false    232            d           1259    16552    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            acc-v4    false    227            �           2606    16580 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          acc-v4    false    4167    213    211            �           2606    16670 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          acc-v4    false    4163    211    228            �           2606    16675 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          acc-v4    false    4171    228    215            �           2606    16585 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          acc-v4    false    213    211    4167            �           2606    16600 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          acc-v4    false    213    215    4167            �           2606    16605 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          acc-v4    false    213    4167    215            �           2606    16590 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          acc-v4    false    213    4167    213            �           2606    16680 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          acc-v4    false    213    229    4167            �           2606    16685 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          acc-v4    false    4171    229    215            �           2606    16595 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          acc-v4    false    4167    213    213                       2606    24725 @   code_challenges_category_links code_challenges_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_category_links
    ADD CONSTRAINT code_challenges_category_links_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.code_challenges_category_links DROP CONSTRAINT code_challenges_category_links_fk;
       public          acc-v4    false    234    4208    278                       2606    24730 D   code_challenges_category_links code_challenges_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_category_links
    ADD CONSTRAINT code_challenges_category_links_inv_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.code_challenges_category_links DROP CONSTRAINT code_challenges_category_links_inv_fk;
       public          acc-v4    false    4228    244    278            �           2606    16995 0   code_challenges code_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_created_by_id_fk;
       public          acc-v4    false    213    4167    234            �           2606    17065 4   code_challenges_components code_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_entity_fk;
       public          acc-v4    false    260    4208    234            �           2606    17000 0   code_challenges code_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_updated_by_id_fk;
       public          acc-v4    false    234    4167    213                       2606    17160 h   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_fk FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_fk;
       public          acc-v4    false    4241    272    254                       2606    17165 l   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_inv_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_inv_fk;
       public          acc-v4    false    4208    234    272            	           2606    24939 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_f    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f;
       public          acc-v4    false    276    4241    254            
           2606    24944 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_i    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i FOREIGN KEY (multiple_choice_challenge_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i;
       public          acc-v4    false    242    4224    276                       2606    24882 `   components_content_challenges_playground_links components_content_challenges_playground_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_playground_links
    ADD CONSTRAINT components_content_challenges_playground_links_fk FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_playground_links DROP CONSTRAINT components_content_challenges_playground_links_fk;
       public          acc-v4    false    4241    254    282                       2606    24887 d   components_content_challenges_playground_links components_content_challenges_playground_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_playground_links
    ADD CONSTRAINT components_content_challenges_playground_links_inv_fk FOREIGN KEY (playground_id) REFERENCES public.playgrounds(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_playground_links DROP CONSTRAINT components_content_challenges_playground_links_inv_fk;
       public          acc-v4    false    282    4295    281                       2606    17180 Z   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_fk FOREIGN KEY (module_lesson_id) REFERENCES public.components_misc_module_lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_fk;
       public          acc-v4    false    258    4245    273                       2606    17185 ^   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk;
       public          acc-v4    false    238    273    4216            �           2606    17005     courses courses_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_created_by_id_fk;
       public          acc-v4    false    236    213    4167            �           2606    17070 .   courses_modules_links courses_modules_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_fk FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_fk;
       public          acc-v4    false    261    236    4212            �           2606    17075 2   courses_modules_links courses_modules_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_inv_fk;
       public          acc-v4    false    4220    240    261            �           2606    17010     courses courses_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_updated_by_id_fk;
       public          acc-v4    false    236    213    4167            �           2606    16620    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          acc-v4    false    219    213    4167            �           2606    16690 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          acc-v4    false    230    219    4179            �           2606    16625    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          acc-v4    false    219    4167    213            �           2606    16630 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          acc-v4    false    221    4167    213            �           2606    16635 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          acc-v4    false    213    221    4167            �           2606    17015     lessons lessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_created_by_id_fk;
       public          acc-v4    false    4167    238    213            �           2606    17080 $   lessons_components lessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_entity_fk;
       public          acc-v4    false    238    4216    263            �           2606    17085 ,   lessons_module_links lessons_module_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_fk;
       public          acc-v4    false    264    4216    238            �           2606    17090 0   lessons_module_links lessons_module_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_inv_fk;
       public          acc-v4    false    240    264    4220                       2606    24915 2   lessons_sublesson_links lessons_sublesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_sublesson_links
    ADD CONSTRAINT lessons_sublesson_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.lessons_sublesson_links DROP CONSTRAINT lessons_sublesson_links_fk;
       public          acc-v4    false    238    283    4216                       2606    24920 6   lessons_sublesson_links lessons_sublesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_sublesson_links
    ADD CONSTRAINT lessons_sublesson_links_inv_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.lessons_sublesson_links DROP CONSTRAINT lessons_sublesson_links_inv_fk;
       public          acc-v4    false    283    244    4228            �           2606    17095 8   lessons_syntax_entry_links lessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_fk;
       public          acc-v4    false    4216    238    265            �           2606    17100 <   lessons_syntax_entry_links lessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    246    265    4232            �           2606    17020     lessons lessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_updated_by_id_fk;
       public          acc-v4    false    238    4167    213            �           2606    17025     modules modules_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_created_by_id_fk;
       public          acc-v4    false    4167    240    213            �           2606    17105 $   modules_components modules_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_entity_fk;
       public          acc-v4    false    4220    240    267            �           2606    17030     modules modules_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_updated_by_id_fk;
       public          acc-v4    false    240    4167    213                       2606    24754 V   multiple_choice_challenges_category_links multiple_choice_challenges_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_category_links
    ADD CONSTRAINT multiple_choice_challenges_category_links_fk FOREIGN KEY (multiple_choice_challenge_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.multiple_choice_challenges_category_links DROP CONSTRAINT multiple_choice_challenges_category_links_fk;
       public          acc-v4    false    242    4224    279                       2606    24759 Z   multiple_choice_challenges_category_links multiple_choice_challenges_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_category_links
    ADD CONSTRAINT multiple_choice_challenges_category_links_inv_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.multiple_choice_challenges_category_links DROP CONSTRAINT multiple_choice_challenges_category_links_inv_fk;
       public          acc-v4    false    4228    279    244            �           2606    17035 F   multiple_choice_challenges multiple_choice_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_created_by_id_fk;
       public          acc-v4    false    242    4167    213            �           2606    17110 J   multiple_choice_challenges_components multiple_choice_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_entity_fk;
       public          acc-v4    false    4224    242    269            �           2606    17040 F   multiple_choice_challenges multiple_choice_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_updated_by_id_fk;
       public          acc-v4    false    4167    242    213                       2606    24809 (   playgrounds playgrounds_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.playgrounds
    ADD CONSTRAINT playgrounds_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.playgrounds DROP CONSTRAINT playgrounds_created_by_id_fk;
       public          acc-v4    false    281    4167    213                       2606    24814 (   playgrounds playgrounds_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.playgrounds
    ADD CONSTRAINT playgrounds_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.playgrounds DROP CONSTRAINT playgrounds_updated_by_id_fk;
       public          acc-v4    false    4167    281    213            �           2606    16610 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          acc-v4    false    4167    213    217            �           2606    16615 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          acc-v4    false    213    217    4167            �           2606    17045 &   sublessons sublessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_created_by_id_fk;
       public          acc-v4    false    4167    244    213                        2606    17115 *   sublessons_components sublessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_entity_fk;
       public          acc-v4    false    4228    244    271                       2606    17860 2   sublessons_lesson_links sublessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_fk;
       public          acc-v4    false    4228    274    244                       2606    17865 6   sublessons_lesson_links sublessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_inv_fk;
       public          acc-v4    false    274    238    4216                       2606    17870 >   sublessons_syntax_entry_links sublessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_fk;
       public          acc-v4    false    275    244    4228                       2606    17875 B   sublessons_syntax_entry_links sublessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    246    4232    275            �           2606    17050 &   sublessons sublessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_updated_by_id_fk;
       public          acc-v4    false    213    4167    244            �           2606    17055 .   syntax_entries syntax_entries_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_created_by_id_fk;
       public          acc-v4    false    213    246    4167                       2606    18093 :   syntax_entries_lesson_links syntax_entries_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_fk;
       public          acc-v4    false    246    4232    277                       2606    18098 >   syntax_entries_lesson_links syntax_entries_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_inv_fk;
       public          acc-v4    false    277    4216    238            �           2606    17060 .   syntax_entries syntax_entries_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_updated_by_id_fk;
       public          acc-v4    false    213    4167    246            �           2606    16640 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          acc-v4    false    223    213    4167            �           2606    16695 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          acc-v4    false    231    223    4187            �           2606    16700 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          acc-v4    false    4191    231    225            �           2606    16645 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          acc-v4    false    223    213    4167            �           2606    16650 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          acc-v4    false    225    4167    213            �           2606    16655 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          acc-v4    false    213    4167    225            �           2606    16660 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          acc-v4    false    227    4167    213            �           2606    16705 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          acc-v4    false    4195    227    232            �           2606    16710 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          acc-v4    false    4191    232    225            �           2606    16665 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          acc-v4    false    213    227    4167            �     x��ZK��6>���Ş+A�^��R���A��$��x��%C�������DҢ͑ƻ	��C��ggf�q^�?�V�uYg�n[5y�,/�޿>���ٻg�#����~����)�����99�w�;w�E�lIv
�� �������G�! �h�j�</?�|�G7������fI��{��
���̋����a3����' >�I���	@|�NQ��_N �K��%}ھ�<J��'n{����k���Y�;���׬u�=W��rk�%k;g��M�ueSsv9r���cɪ���.�]
��7��K���J|ض�mY�v��r״���2��7x�ܰZ�ܜ�e��{��d���������m*v�����>Y�a����/hO��a�=s��#Z���p���U�Ì�t,piEZѕ��bN��e"pֻ�9�%���1���K�1�u�T[�-x�f ��:��Ɍ�Ͷ�92�Y�ͮ_�j/F�Z�V�8�jWV���y��3�Ա/�����{��FzD@\�LG#՞.��O��qP+J��az�8|)Q�D�VW���'��@��,��[�~����Xw�d�Ok��ϼb��M�V5ѭ*I��N�&5�M*�V��I|{�(p)<�
��~A��e.O�L�5[	�q�KE��"�N�J!p��,�A�JxS��)�v(���KE�"հ�ȋ O���J�@��;�3��z��l���"��bH�V������3�t��yq��+V8'$�� �� Az�J�:�=k\��3yp����9�+T^M� KU��h�HWع�_�WՒ �R`!�S��Qj�g�L�j��]]7�.�R�`@�� �/sO����(�Ÿ�y��y~�?�ɔ4�����%x�}����\J��T�!@A�)HM�(b#�"=��L�(V#�"���A|;@c��X1S*�U �R�o����b��R�jhJE�
4�T7ґ��|[:�� ��h���(��^�7���%p)8�Ɛ�t��ZDc�N};�doyn"��ŏvm���sf��E�'�n�b�]�x�C�,�2�>@\���M�u���yܤ������F���1���(W'���Ĭ���>��fW���i7/���G^4�S�Ͷ�J�����U~Ū)�駼�#�O/���4�|7'�V\-$]^�5_s�|ʊ��!½e�~Յ� ����ˌ0�؄���2���UUv׏��A�{���╟5W������0_6OE1��q��i����j]��nu��U[n����xqp͏�^C邽P��mvU_n+�}S��_��k�Շ���_�}�0<�lkQ2�3����ծsz�GY�g^�&A �}D����3�x�CV�#�tZ��?����K�;�)��7�ĥy�5�ռ/��/q�����v��:��x|��kKBmɉ�����ӷ�K͈�d�YƲ
dXsl?�\jFܻO58�94�s<��t��e����>q�9��=�.�����YS�~
�R?"��C�t�Ț��aΊ�L=6��f���o^07C16&BߞB}[�"b�P��͛�)�.I�w�<*1��Ƶ����$�c5Զ���/� i�X��J3��75?%MX�A\�7#��-s�bl;������[� �^�@�q��uZ��,Q�U`D7���[���è�L�D�1�?��!/	��u�t�&Vz1���O��hݿ�u��
��L�	�r��1��ݰ^H�{>��w�$v?��W�?J�������ؿ�]�LZ]ہDsg;F��En@RW�!��޿t���]{\񅨈�����V\�&D5oEf[���1g���9����|˟���]�_��%���F��3�K�>f�i�?�l�l6�.X�ܰ_�G��JvǍ�Z���ͿquoZv[6�ΜJp6�߆�cq���OݔD ��]�t���;���H� W�#��9�yf�|
��S�8ӨO����{R�sٽhZ΍	֫���X���L�{�����Q�qqr�R~P  ��;��IhXۓv��g�-���������      �   �   x�%��!���ZL�8�b/鿎���C�c磡[q+oխ��ط�ֹ5��|�"�H��El��sC_!�B!�B�@"�D �@$"�HD"��D$"�(D!
Q�B��X^��G�����><xx���z�M��Cc�6�o�4�}׈��w=ޏ?��Mn/��rK���T�%7��D�}�r�ǰ:��3����E�      �   �   x�u��n� @g���
q�*[��]�f��%Fr��J���"Gɀ��=$���y�{w�A�$\|���?z9f� �%f�����8�p!���r&�<(�at�MoFЛ���i3�[�䧟�:��KLkթ�Z���m����6� >�9� 2E&��2�Wd�Ԋ��6y�ڨ}.�=��N�E����a��BR�"r����U���%�~U      �   �  x�u�[o�@���_ᅷN�W��V���.�7á��\���MM�7�f��|y��`�M�a	�i��|������2��/20!|����<7�o"�ߢ�4��m�:P#4O�V�@[����J�L��ȥ�|^
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
�!��n��Ù�y9�Qt�%A\���ڎg�]���������P���~4�T���`� f<{�ݕ-D�۬0��liK�\��V��$[p<�lLY��S���~zc@�<��Ǻ~�r���w�`�O�4㪭!�v]���ܱh���#z��\���Z��8�bv���b5�1��޸_�L�\6XN��~��k�      �   i   x�%��1�R0[F�"��?�����l�?�i��5��q"�.ġ.�RQܙ�g��V���q-�������\9r�mɡ�ԜE�O.ܬ��U<�u���#���      �      x����jADϚ�����Ϲ���{��>��O�b<aٮeY��C�QK*��1-�j��燗���������������������}O�J|����/[Lįv��A>�z��Rf�hV�*}��*ݧ�S�?��y�b!�H���y�����!�J�!]� ����51�\��t�-���rJ$��B1U�O=5yM?���U=��}�Lv���˓}ŗ��KG��
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
#*���?�k      �      x�3��4�231z\\\ �      �   k  x��U�n7}^}�4��R�EIA�N����iw9Z2��/����C�ڑ���P@��{Ι3gf����0�7�������q��b����u�vܠ�7�����q��	:�"��[�y�+݂���с���w.y��B �V���^c�2#��Fav����|�Y�l�c�z��x�Z�嚟 �)@�W݇��ݤ�Yu}�WǍ՝�F4�u>�CDok�)����	_��Lێm�'V�,8��%��²Y����c
=Fձ�X���(|D�'�3����N&���@F�˫e����S15XEl���śp~��\�3��D�X��'�I\O}��?�J���z��1�v��hه���#6�-i�m�=n�(�"����턶�����q�ό�Jt�8�>�Oԋ>��Lszؼ�Ǡo�1�'�U��bLp�8
�m�-R��w���z/ڨ[d�����t���!!�
�VP�ݣ�R"�#S�-�E����5|DP�%sG�H�UR��/�ʻ�)��ёƓ�8������/��Y��={�AB�!ߧ�������eQa�L���iv{�8�KV�@aL>����wʝ�`ی�&���ꕣ��1	���¶H�a(ܢ1�L�S��>�wo���uu)v���)�E��*R��P�2�-��hC�Aͳ�u��#�<�gyU9'��Iޗ��3�U���buV�� �|]"ݹ�s���4�mJ��a�AP���C��C1��Rj�A�A�NZ�1�-д,,N�����<�3�>��F�6ӌ�����$��%#��#Pe8h��ا�֗�"T�ƕRm zzS�)˄<a<���Z���'����?W������+K�|��b����q      �   &   x��I   �?a��.��!d�aږ4G�ĕ�|Y��      �   9   x����0�ww0�^�B�q��J3�,�M;yL���p��0�M�p|�f���$��      �   f   x�3��J,K,N.�,(Qp�/�KI,���+��*�MC���Y*Z[��Z��čtuL-�Lͭ�,�,M-1�虚rqr��qqq G�w      �      x�3�4����� ]      �      x������ � �      �      x������ � �      �   <   x�3�t�K��,�P�H���L��4202�54�52Q04�2��24�325�)�D\1z\\\ ��A      �   �  x�mUMo�0=+�B������d7lC�v�ŵǘcu���?�N��1`�E�=�O�$�1��&V?OUߥ����K�K�?{���3�B�P)<X��ݒ	`���P�h���h�p�H"w���xC�ȻgcB"���
CJ/��Q�����Ē6ƶuCcs�S��쥌�^�7h�5�rE �����u����ڕ3G�=�R���^�ړۡ�OM�h�0׻ۿ�티@闬/�h�\��$a&S�c��S~mdj\.��n}�� x��u����A���L!�O��x(��0���Us�^K;9b��������Y}��>m ��������_b���UOa��u7Mq�H"��M�ص�D�͸��)қ�e��Z��ɥ�_�圉������K�Ka�� y�©�ul�{5�j��:�+$��E�6��r�(�1�&`mBC�MQEC���k�����E�@��E%�r�"҃��*�Rpm��)�+��c
�ݥ�U�]�؇�|\����L�2����'�+m�(�ř���X�E&��E�[�<���NiD��ܟ�[	����ÞSS%/�d��gC��a ��bm�0���E&�����9���p]r��%C.gK�=���#޻�\α,黋���3 H��Qei!�ʟK*�-3uȘyJ��>��6��F�_r��멖�S�q͕]��ߒ���v� _��      �   �   x���=
�0��Y�K�%�Jr��]J�Vp\��+�� ����B�k?ڨmL�3jo�׭��x������8IX-���-R��lhiu$	Mm�*r
%`+K�hL/6��)��^��#t@SG�̖�c>�|1�\>����?&f�c+&      �   2   x�˹  �� ��B�up
�")��c`ba��B͑����P~�cb      �      x������ � �      �      x������ � �      �   Y   x�3��J,K,N.�,(Qp�/�KI,���+�4202�54�56T02�26�21г4	��*X�ZZ�Y�Xpq������� ��=      �   �   x���1�0D��s"��Y;w�� RB
�����ˑ^5�)HH�|��r^�ϱߎ������=�Mf_&��,�� MҗT��K��d����d�eW�2qS��A�OW�*�G��NP��P2QJ����\      �   K  x��Xێ�6}����X�s�D�f�a� �H� �$/�`٦mad��v�`�}�HQ�$z��i��MU�u9Uu�x��1�����ٶ�5�iߑ�"��h�sq%ͥ"e{��Z���7G^�ȧcU	N�� �1kHvYw�S���M��\�G̚�}��ɧ����i���Ξ<�D#\ᓸ	�f�:]�/�[8�𢺐m��nK�&��pnQ�9�V��
�"/�K�^�_ʂ7 ���/�_edI����j=�q�=��=y)�=yg�|��@�=���$�(x�p��bG�UK��'�:�-G�!�g�c��v��ϛ��rI�Y!�[�9�Ly�����4�d?񲑉3�����U[��]��p�l�%��E���n,nI��神���P'Ѧ���J����ِjO2�o�-�v�#�����׼�b������C�Ƌ$;?�s'�f�u��c &��S�*�r����4r�x����nB$�� ��K��v�Gf�U��˃�-8	�]�ϼ��fTeiX���N炿� a~���LH͛�.	e��D�PU�͕�D�a��*Z�AC{��*:HC��1� ����V�Z�Y���O�z�\�<×�z���s��͊���c�\rhK5?�EVO��C�\�$c;�.\�ff��Й��ꬢ�rUs�
��Ȧ� gP.�v_�8�y-2�(�4�R/r�II��ԋ� �'�:Nеx��!̴�h���kt��\��y-�_�%V��ɾpA�0��kG�Y}�h����&@�~�1��Q�!��4����H=��+3G٥�\.G ��'�E8IE��/��-MZ�	M]�zg`H\˪��$��.�s�����_cF-s.a�o)���b�l�v�F �7�Dv���-�Zǁ꾃<HDց^C{�jft��@ޮ=E�7Z$�u��$�*Nb4�#@2��-�	�jڏEv���w�?Üy$E��u=�k�k)G��w/��в_ך
�����Ừ�yx$߷��榠��g���C?I�6"��xj/F�1�l�dR��chE�ㆎC�{�xE:���P�1S��/��xg�~�dA�O ��M�.*d��!��(� K	 ��	6��Ώ���vɮ8�w|[`�f�䗡kH����M$"? �����Ի���'i���C�`Oy������1�7:�v(7��G��+H�=��0�Ť4=O�ҷ�@Km�:���ޑ���o)�
;�d��~�q�!��ղE��,�dy۶���7r��w'�_�D#x�y�Nz~�]����o�� �$r�8����Ȓ�^�at� 7n
�g�=��IL$Z{s��OXd�vs������L�}��b�ZX��S�o������r���>Ԝ7�׃+i=cI:*�V������y֭i}X�>�9�|��*�xr�1��&����r�2��O�&S�}�z�pZ�����}ϧ#`5������O�N����ջ�7�3Mc����#$j^2m����i�Pd�����QV�pS-os^U�~�W����b�e�ɶ_`������J5���4����Yd~��kV��o�盁�x�mͣ.=�@>F��f	�VqX`���}ٱ7�v���\�޽S�ԧW�\Q�b�7>����l|s�\n3�[-u���F��ء�-�&EB��e5�Ⱔ��[��Li�����p�RD#�Yʥ���:܀��g3l`�_��[dK��m���ƃE�x���-�l��qh0�>���H�Q�W�a��m��n����3��_h�O�QN�Ю0��|�(�U�<��0IZ@eJ�%��Ut�+��a��Д��nȢ��Vө8/��8��i_�      �   =   x�ȱ�0���9L����%���!�{�x���6�Bj��ø4�[��#�VV5}>��v-
      �     x���Kn1D��]l4EI��K6�1��xĹ�r���l��$��Ѱn��?�������?����������^�_����o���m�����C�����H�D���dHl����a��+��b�#��n~��(��],�Hh,�Q�h��u ���m2��Y��
�b�� b���Qq�l������j�H�$���b'Dt�6��N戥B�v2�//�T���"Ջ�"�M�7����L�3��N�(��<�9"�*�e��bc\
%�渼�kBɚk­�w�����Q1lo[%�!K�ҧ�?�y"��L���Uh��lo��٤���(
^�(��P?fQD�!Jg�fj�qE�*��E��ʼ��Hg)/�ޞkc�T���\�б�Ơ�RL����V��	�ZWaн�İ��Z!a$��m�Ѽ�e���RIAj�&E�X��L�8w����VK��G�bǅ�zz,�q_r��]��L��%\���OH�Hv�����1{�̈́��t��2�Jy�MIme4#5���t����z]��#_��.@a50I�������hv      �   �   x�uP;O�0��_�1��(�D;3tbb#nsI��3���9E� �ϒ�{�Y5�c�.�D���$\|��0&�b�
�E�
S3ļ,���#���/H������_�9�d�!��)͖��w�9
�󵜕��$2�o3��-0}��T'z�|��c��T�g�-j��䶨೸�����Dr�9Ɇ�Q/i����u7�N�C����a���/ըv�۶�o�w�      �      x������ � �      �      x��]�r�6��[y�٩����GoN�͝���:�˲/u���(�A�!'$G�֥�{�{�{�@|p��`4�Q�]k����h4���|5��4-��t��T��%������(mn��>>N�,��W5�>�W0��g��q��z|�y|�ʯ�����jǗ0o@%?�AR�s��1q��~?zx8^$�xA����U���^2p���漬�g7��U��:����o5�$Y�$�9���1�`��E�9��_�<� 9j�2���Y����P�[��T^(��i�x\Q	z�̓�˼e=��5���Ĥ�Le�>�扛�WI@F%�>|bYr������S"��'@�ۘ|N
Bp�(���L��cYe6߰�LJ�}�� B��]y
�o�Z!x�v��3D��͎��+�y��W��I��k�޽de!��{u���:��`0���!�`eڙ��e��
����"/�+`��g�(��
�^�Q�KP��UR�V�[�C�A�N|�O+�4 ;il����^�)]˲L���-37��ya^e��y%��M�j�ε�~�ԡ�x���s��e�-�	ոa���=��s�b�W'���!/������J��F[�̦��R�VFC�m�S1��FJ@G
�(D.���R���M������ m~?C�}���~	��kTAw�EIPW?I���Ϸ��ɧ[4�D��m�}8�Wd�m,�Ӣ<
�~��D"�@��~#J������F�����e1(�4�
y?~1����]�E�\粒��Ys�%"�2�V+-��M��ZE[���H��5��d�y�/���	m(��\�Q��\9X9���ef��?���/oJ�&�?I�!8U��FҬ��=)زI��#��oɄ�iw��-��7��t��AD�[G55��f�VT(eq��<��c3w���ε�wC�Y��G^n��D��f�ޙ,g6N���!X�����)�������Y��q���@E_"����.A~CE�h��R�O7�m����2/�l� ],o,e��=H�0	���w�U	gF^��8�iΈ	�>L~�Y3���+)� �������:�?�%!䤽2[�j�4���Z$����[b͓�:�?��A�%�!b��灴���/�������� �Ų�����h	{�H�5��}&ݧ��u���v�ވ�@�����F�5$�Y��ڲ@�@�x>��A�bXT
ɹ�K�A��Dw��4t%bR��F�D_�
��b�B�s'�Rx)��mgNm����dsoYSX�p��rk��D�=(��Ŋ�����6h�}_L�2M,6�,.��b����R��t�A�P`׷�yt��̖PŔi���"A(b&j!��2���:��ך.��,X\��2�䍜�eLE��h�'���!���(!�EX�I�93�@C].Y���!����ј��X�H��6[���Crt��yf���/MS��U��!��6�=FC��o�WI�+P�p��߂�,s�s+��KeNJ�D����3EI�Q���!�Q����4��o��#k[J���0>"ß7��� �w�d���B�$�4c5WC=�V���
�X�i�g7R��Ѳ �O�z����+�(t�B�����;�Ҳ�׈/.O�5��M��,2�`k�~Δ��t�(BїEN��~22����k*T/H�MhQ�P9�/xؑ��J(+Dfyy��/q��H�n��2#4]|_�3�R�Q�QT5�ܵ�)g6u�X�ϕ���4E>i��|Br}O��,#%�NLH�=��� ]{j�L>�H��N`���a1��	�a��6IY�mDI>[G	\�>�8C����Sp�k{��/��u�c:k�C;��4���*g߶��sj^�b�}�"��͡^d�Y�fE�m֗m��/7��]hP�^b0H����=:��똚�t"�fU�~KCEw��w���*��-��~��)k��Bz+�4�t�MUy�,�T�ٜZݐ[�H����c����RYEG�q��7F8�pt��h�K����.���n��I�q ɦ��	��#�,�x��#q�����a'Ey���29M�nEu�/�$ߗ;$�`�j*&��9I��,r,ח�<?jOC���}
R��)�mW������6=BI��;����XC���m�eF�ڊ+H���M�p��I��Гe�ư&����6�z/��O3,'��|T��_~��V��ug.���y6�N��ݍ�'o6�^c�Ϋl�;Q�l6H�"ɽ��C�����{[�xĦ�Z.��)��J�ӱJ*��/W���ass*"D��������KA����m��������'�I��|�����a�ڧ�ز�(�T|�u�8�����ެ.r���K�>�#^W���"�4>���A�a��<����Cԝ=Н������ճ���c����S^]B痏�?�,&�NΑ��2Ys�i��>N���q�=9A��<9� ���E�a�{��QGb}4�����Ǩ�_�>7+��\��_v��z�ߏ���[m��(�L;�F�PI#�⻰��o}%x��m7���AK��ι��E���5�(���/є���Li��;�vv�������KPU�9EuFZ�:��6����y�$�e-�0��:����&��[;��?N~��3<��Jx=�C)m~p�v�ї.Z�FD�g��d�9#kbt�z4�Y�������	J�0�+y��w�ýH��k]�M�H~2r	����Q:O�{30Q�v��L��7�����РH-5A	_Bx*5���t\[Cp����\��=/K&�0�78?B���f��3��r�DF� �Kd�[A����^E��1mG��qe�e�ɿ
q�B��U{[ag�8�Mi��t��4)[:�9"ae��?��1ݶT�ʹ$'/�h�{��U}*���]�G2�0+�}(��5zP�e1�m���%W��.[;�f�&����m�x��#XG��w��h��}tg�GH�Fq���5��u���K�ޤ��+��]!�{������M:Q��4Ћ5�!��W�e��*�(����+�V2V�r#f�@;���¤�'��g�Z^˶�tD}@^�Z��#�Y��(N�5a}P�m�!_����˛i���v �s3��K��N*����i�=�[r؅��5��Xܳ�Z_M��Z9���*F�\��ms��L�N�X�R%�(phQV-X�^��M�$��� g�9��D�a�X��hOכF� ��#fG̾/�=�����0U?P�0�#�����a�����d>����(h%����}�+��Z�O���"���Jtf>���g�N�Qܭ�^F������-����F7����G����ciP_p�� w	S9*�,�g�(�iK�kC�ݳ.�����UOI��v2�F�MY�L����M��֪w�� O8{+��B����N-jD��<�m3�K =܄���LtԒ��D{8X gU�*�����K!�uh�D[?��4�ά�V�w,Y:!5�#�E�E�mgT��*6�H(��*�W�}��o����f� �~wJ�V�Ni��ܹ��"�қ��#qp�]�(�vi�1(�ם����Iwi�v���,)�,e]�*��ir��dqm�{��hw�ý<Y��;y�Mr���O%OVX�9���<�p�®h�&3*�2h	��K�%�3�	&�8�n=�H>�꼈���|��W�E���*�����վ��]�<6 �-�cU�<,r��#�e�@6���������1s�����Zq�җ��[�\k1)^����Q���|�wUh�#�y�ʯd���C�$�ݤ'K��9��ģ�X�`����pJń�yY5d�m�+r�������7�Fa�����mM�4o����Y�Ȋ��?�w�Rb�ĉ`I��aN
�e{S~���S�z1��}8d�����>�ۏ;u~�Y�}���X{��S^؋qjs֎�LއW���y}���*�_�+&�ܔ���rK�7��Bu��|>�l���\���J� ������ɴ��yz�჎P�1�j?2e@q�t�E�}�
�h�W�k�r�
z�c[����52�0�&�k�v�o[�E +
  ����
��S&ڋv��eX�B�lm%�>|�k�t&������!��Þ|S���VV$�^�J����¶?�q/#h�w�0�f� �l���8��<3��Q)���t���UfNya�����*]�3���`SЎ�]���w�7�.�*��œ(1'�2���;�;#͆�������Bh+5=ˇ[���xxy��P^��û#���ٝ�����=:m�Og�'�8�*}��ؗ�)Bm�EJ�˭S��7<;��?۴0ti���N巠�*^�_f��巭E��;�G��ğ�h$wl$-�R��6�^H�
��`:��ڏ�d6TY�����䑏�QS@?�w0F��A����˃/��Ϊ�h������t�)�2P\��l���S��c���ڬ���
ܴ�[$�M�7b3�H�+����d	$�f��6z�KQ�wI&
�nxy����K$Bey���rT��J*Џ!��ʑ`cV�3�ۙ�z�ݶY�3l櫋���
�z&m�=����Xp��iU��e���GXd�Ǻ'����	«�0�|�MC�&vX�^,�F��W7	R�EGg�N��x3�O�UI>��_��K�����}�N��X��5#�*��t�|�c<����@�Xtp���⃵�rRMs� 6�h�=%%YV��&��嬀M��W��zu��؛@?7�s��'ǴǎI��ؠ 6N��
d�R;8�\�6R&����@�77�\�a#~�u��u	��e�+ґ�>Bl��J�5��;bzz	���Ĉ�y�<`"c�!x�6������T���1�OO�X�o�O�����"+��UI`�z.'8e�V�{�&)@���D�Q����K8����o�)��� o7��ґ��	�q	>�>�a��`4G�_6j�I3B��(/k�G��LFh�\݌�����������/���3�4+�����mFqͿ��J�b�5 ��2�Kd�f#���R�9�T��������F����m�ǿ߽���3�D���<)��	~6�[S9��9O��|��9H%�g�sv���hFc�̑7'3vYVh8g��]Vur�L̓k�ǜ�kG��;�<��A�&+�az5Bo�g��Z+�'
Mev�d�N_���{�t��έyIv�)�p0�\��F�nab���W�L��%)���X幭����%����J����p���fc��{��h>n}|lޚ�i�5B�`f	���8s��EΓ�Dv�7,A.����J���2}ۚW�+_��+hlXa}*��I��Vy���뼊��a���!%��S(-�w%��ԃ!���m�!e���t$�+�p�R.��ցߠ^�*���O��"q��_��B�������B۪�lr-1-��e�"��:���kn�%���h��6�bMD�&p<��	��l��Fu�>g�l[�)���I%.N5��-	a�t���.�m+��\փW>��Y#�˨$��ҋ��P��5tK9����G�WW��컮&�:����c���+��y�K�w��q8Eg���}����~'��%5K��0)���M�94\@���&��� �m���7
~q�4�R�<��;�޲�z���X>�#���|7�vu��WrywR��϶�ۄ,)ٸ$H�3#�ǣq���}���{����h�-�"��e�&#Sk`�E,��u�UӪ�s#��26��e����G�%agA�h�#Oo�n
�$	��u��7;������[�}ŀ�h�BX<�!Y#G�IR���I�&y�̿ʫ��>ǻ}6e?q��Z���?|څx=ώ��%��e�]be;
QH��Wo�D_o#_�����f�l�s���B/u?��6Y�\mdWS�T�s*I�:<�����=v�[��u�k�_K�����7}
�P�~�U �����x.Ѣ� ��m6��v��6k:��|y[���d��Nb�Z��m�t�u�PWs�}U��jJٕ���nl_W��d��%S��ILw�Q7Ƚ�΢�#�����S',My����}G׶{J�Ե�(�qÛ�� s-�O3��W �mw��Ց��*L�NwBw��Wn�Q*�g��x&~/����H������"�aw�� _c{�_�h�q;�S��-�	�5�m>U*l�T�nS7�w�c�R��t6���4c��t��uG��=c1'g���ިIN(���5��`��G'dƑݤ����:=�����ۦU��R�ŝ��b7Ѯ-
t� ��������=a�:|��� �� ���p���qQq���]{�μ�S�(N*�3�#D[�Z�?:��3��� Cn~CC3�֏lL��/��fqo����vXQ��g9���T�^����p�s�f�-.�a�R�s�} G��.�c�{�[m7���f
d�S樨�
�w�n���<�l���c%��5=q�n�Y�5�� �~'��ZU���l7)��0�)�~!�����\	��];�����+b�Yw��a�,㺒�:�tͪ�+�d�Y�UU�O��l�T�E]�yݶϷشۢ�;�Dt��}��LplޖV��Ef����s[���pT����y����s7߭j]���A.l	�x,��ה�>᧩����$6s�~�|��7��n�      �   0
  x��]Ks�6>'��ó۱��M}�=��K�S��@$$�&	H:Q;��)Q|?�XXfq��1�} �owp���W�zކ$���׋qD�/�8N(�'(�ʟ$�h�O����R��t���C��!��|�QܢF�+;&���ID⬠����0�4���=d<'_���pf���ax��,�M�RHzju��q*8��{��0%_o.ɱ�(t���f��Ԧ�?�0'5��|�j�^��}�'}F%@EH�D9���d��y�����l�=�-����6L�@p@xZ��;e�֨�>�g�A\4l������ج�� �1J�h�R��t���3��� ����z���$C�'���SA��pL�x�q�#��>	>���L2OO�T?�PS9ue�O$$Y����?~�����SڼhW�6���h@�M�o�&>�I83�Q�>���(�����*1��S�X�����\�%����j��~�$�=����U�664EF���y�p��1�#o�� _6Є���� <�+(�Z0�Q�f��c��y� ̓D���^	��g�H���U�P�	�3�dO�������h����a�B��6d�#H�ߌPJD	P��}����킈���d2�(h'f����EWD@�]������&�i��5��y��WF9#P�k��}J�`WSFH��T�A�uC$�)�}���P����~GG���2��z�qY �[A9֪(f�fX���ǵpX����gd�k��L����X�={>�� 9��Q�E�����"�6�7w�oJ@�Z�'J>#p6�����@ɰ�}�2\<��x�n��(d>�pT�h��5i��Д傌Ӕu�ڕ�n:�[3����E�ve�1�:�A"����C���VW���S�2{�&0,��gw��Pաj&�WOuP���`5��Q�]^�mZۘ+���xG��
+7v�܀o�ڸ��|�}l�M��C���N#e�ۥc��j���^�N3̋R	��G�
�p�Q���T,Qb�Ht �a�����|�N��p׭�C;1��<�eyZ۹sGV�H�mH��s��N���t��5�੿9� ��SPp��:�L��x�\�7$i:z�{~��US��$$�*)�Z��Dh@�):`��c?{pnĹp7� =�??Tv#USnDIH7���j��I��Qt�Iq���?��?�^6�ICRCR����aX-ޮq���1Jň���?K:��&��-/ѷ$!>�9��`ę4({�&S�BY.H����j�;&v=��8�3X�J�ԑA�\�UM�X*E�@KO)��Z��,�^�w5�8��1��$��ӱͬvuG�&c�hH�4�]�S���Jn ~�l=#��9�W�rnǹC���������C��q�v=��/L�EB�@�Oa}hK��@E���A�.���֋H ��7{FŘذ�]γ�|IBcؼh�0��t�i��ۆ�5M�⻧��-3�;jg.�\<�������2���8')˹պ��C?B҇)�12�M}t�Ѕ�vJ�k����Y�A��,�"hݣ���ͺy�$?�H��g�|�&��D�]6��S���?�����@�j�$ZU"iH�a�k`
Q)�<4��w*v4kԽ���bؒ�}��XB%󨶈�ج�n�̵���ꩪ='a�VG�'��O�[���h4gbr�$�����8A��YW;\�+q�(	A��0ުy_tt6�m.s��P�je�$�T�B�4l+**/��=ȸ��Z`�݆����~ƺ\y[XQH+d�(�J�J�\R�a��/�
*vc���|��/�[¶t�C��-hv����ϒu��I�^���r���S�	h��4���?��n�!B�{ƏS�k�O��D��g�,Y�ؐ/�ܚ�.M&-(Ȓ7���|����Ѩ?0������BC�z�v���P�j��P���ܞ���Z,��W���WA/IY�w�e����Jk�l�f��ܪv�[��n�VԊЖ��*t��ȬDd��W��Ni�eo�4#�i&.IV��UO+	0�y6�Ը�<�+�������q��B����vU����W��̜���1�K�Ģۍe͹�[+�U	ڊ�ճ��ڱ]k쥊�LzP�SLzltӃ��Vz������XI��-͡�xWU`X �6V��Ѓ���2U	́��2�w�'�c=%
ۙ<A��?`�N�>9r�ۛ�Hf|v����b��4�|�;��|��V|l���7�F�9�Yn����5��dzkkh��ֱt7�lz��� �]���8@GH+f}�G�,���@�&����@1��m� LɈ�6`��#��+��2���d������{�礉���-ԩ;v�5���7]�`�jԘY��@Ф�z�r���P^�3$���9>�7q�7�TW���W�X���]X[�v�����Ƽ�J��0�t{��̪�Hkq�jqE�Qe�$�o��
X[=[+j��΂TL���%���깚Y����pA��Iw�,$w��z��ݧ���n���v��7�wo6���m޾yuwwG�����������w���`�ͻ����m_����ׯ�	���      �      x������ � �      �      x������ � �      �      x��}�r#Gv�o�Sds6�&���i)�[-�m�[nR�p�7�PK��ٜ�D�K��F��<ɞ�\2�p��^�vl�D��KV��s�e�{����}RM�lY_��bU�<}p�$���Y�����G��Q�ﺃ�a����]/N������/'t�s1<�����\�e��gw�KC̏�?������n�&e�fe�X$%�F����^��2�w�5���u6���[d�l�R{���n��I6��sz�>Nϻ4/V�[wS�4�IAw�5�дo�eQ֫<��S�����EQ�nY&|��_N?-�Im�ԷY>��CY��S@���7��WIE��>�o��%-�Ί��[=z�h�u���~�r0���u����Gp>����h�^N��n��ո�	��W�}V�_����y�-�ل?��D��P�w�x��ӏ�ܖ�1���F����}���؝�Oܑ�������}�8v}���[��9��@������X��YU�+ދeZ,	����6f��j骺�f�|��e�q���%z��ƫڍ���zY�r�t��*���L��t���Ӫ�S' �U�ɭK�e&}�Pr��&�)^�V�$xҰ�#�v���:z�f��U�&S�X�z�!H�#� �xZ��VP��V
�q�Nd9Y}P�a�3�zݽ7��J��WYRQ6�����.O���p��I�!����I״M��T�Hm7z��p�ԎЋ�?:��x�خVRݵ�i%�dZ��VҐ��ٌ͋��徣M�=�B�i�H��� �č��8AΛA���CZv�w)�1/�;G�����S� ĉ`�w/^���&�W).|��"�k]�R<;��,_�R����˅d�ߣz���>�F���}��qAx1)��{HJ
��6@,b4p����(eZY���w��w�S^#�����,O���.�5��T&G��)�����tU6���>�eEY�LrF+�ޡWx�y��,Ҽ����)0c�~yu���wW
PL��ē���߾y�wW.��G�U��	����)�YMi��'�&���,���Q��˓�e�s6��逮w��ËN�{�tpUж�3��",�1<�0�%�O�YZ��].�G�L"�'�*')E�@�˟����pA���O���^�O&�t֣�c��L�
��!= �3+��������8�#?+�Z�T����W���iw�|Za�8��	͕�.����8�i$�
��D�	!A 	�'��q?1��o�_s�#��2!4s#���t��������<�j Py�Y<�u�Ѭ ��(�6�ҵ^�7��S�GU��J��	+UJ�Meha�%�|4�*�ߴ�����~�|���4'*+���T�k���ar�;ɊEB�@ɋ�)�O̶���_��4�O�-}�'ɢ��|x_"�׹{�;�#��g�����򃚞�����p�^��!���M�����*H/���Mih��0L]EJ���y^��y21�M�3�>x�7�q+/��ѕ��i��g@���^�p�)��1�(�-��&�65N(��9V*�3��Y��3�GR�js�>�iv��Q	��eB\���)
�-�z5�s7e����u�\n+�$H�W��h���h~��_ػ���j%k��$!���x�{�~�����-!��rZ��G�08f��V�]��l�Ǻ1'H3]�!�Ap_ެ�Z�MM�/�A�D���YJ�! =��Nh��ǛL�����U�!u2%z�ܦ�;<��1E�Z{ZB^��%@;t Fa�0�gQ״%�2�����H�L�$yMhL��/Ř�/>$�k�V�K�9Amۛ.:;%	���އT+�O�,���C����Agxzqv2��Xp]\���32����$�MtJॅ��3��V>ʹO�+޺��l&1#0.0��f {!�(�?�u@�?�x��E��[m�+�%�l�}K��d�4�	����d.T�P�������?�V{�����v�"��B�4�L-ʊ�FZ�,���1	��&U,�ڨ��@�M��;��8)3@��E6n˯��^����2��O=���.��2��/��Y��$�n��BS������~�p=\o<y�+�l]����t9z�� �>���#�Ӟv#�kl٦��VG�k#��~0 }��]4R�N����	��?}6�]��QPop�v��=����a,̎�QBO���Pf$�@\�^���Ċx�Dǽ�~��y����2�� m�$�R�m�,I�̳?����ʨ7N�l*�T'.w�p�aAF	7Lo��fS�k0*�1@e-;8��yV��
y�������V���X�-/�2��u��tk䎾�����;��'KT������^�u�@�V�ј*����p������w��>�2�FO�,�S���,�+�
k6�Z�N��,�r�]�x�?����z�JK"ʞ�W�%��&�o*�v�Y�#-�&�z�X���E��Ы��3�C������O�������@V�W��\�����7o���o���_~x���woܫ7߽�ɽ���|w�{oܛw�o?�qWo�߸��~��{���շ��%op���~o�@���Sণ��j�B���0;�@�x�<%^�`�m��G��ZY��QI�5W��,/`q�S��Ԃ]��YI�D�[U�"�a��7�I�*e�`��f�V���h��9|H<}�8pdݮD�,P���T����z�.R������� t����l�����ءA
A��D�@�������&�ц\&	���G��n��#�i�涰'?��4�с;7��,�2��sǽ+t��ۘI�Im�����1]�N�Ӱ=»���W�e���-.�	�Kf0:�j0�R�ȅ���X�@���Uj��m����N@��`�����#�0���pE�&��H!H5�xw��Gi�fCi Df��t,xeX��������ӽ�t5-��5]�zٻ�\�{��s��-'�N�w��ӿ����|&�yF��_�X��S2|r��*�+'������X�=�����~%���R<8p���-�@LB$��,x�:���%2��^5�)[���� ��O���׌��1���n�
�w��e�\Ђ-$���3�%f�WY�qU��%�ɦb� �K��C�t��X$��:�5�oL��5&7��ì���h��V7�?�a77�I�� �֓䏬P���g#�$MQm�[���XV"\Xm���)ڡ�ē�G��Њ^a��5���jl#d$S�ү\�#(�����zD�$�Uۘ�M6[���XV��N���յ��~sY���B;~Up�c.�M�0��P����/(��-Icr<�`,#;�gx6��U�U�����cq<{�7�9���kBS'&��!lBq#���5|���;�b�k�*sw�O�a~R��f���.���8�uՄ8e��*�	V�T���<o�o�����U�L��`��ťK2�C`⃟3���<y��{�@�l�����
�4���پl�,��⮛+D�G4�P҂���K��;���&��+�Xg�G��2�We���}u��u��R��4��.����!<�@@en�O¹�Xi�5��p,�_(8�/�t�M@`�O��yy��,��������y��z���Cѹ?�����+�������We�`|���P%��$��GI8����$#���՘�J��
@{�S1ٞ���G�r�"#��E�0��ԧG�sbBL$��������צ�t	ڒ���ꕫ���c�S�_҄2b흢�5��H@D_�;U�{��o�bƌ�k�$��롦S��{�����	���O8V$�^E�LT�>��ݼ מ�`�,�-J�q_������:�ؾl�=����ͦ
�:��6��$������3o���GQ~����h�-������"�A�;<l�q �'��T�MvND��7�$d����p�iD�w/o��@��f��/A�J��T]�^�������HZI����p����EFW��L�J���3ރOg��I�o�ˢ�2عl{�Z>#([pC��LJz�D�,-�4Ԙz�    T���p��X�n�_Dlk���s�����pdG)����126�0��X�kxx�gFQN�,�0�%��|�y]B�Q�o�d��{Ҝ�t_q�G5��ߜ҄�e\{��Hs����n���Kls]�1A1e�28�0��;i�9�cx#��,|��.��\x��5F�'�NyJYZ���-�wI5���c"��gA�s�c����/h��d�W�׷�y��dc���:d��i�#���BTt�	�R�u$B�D�����h�������Ôζ�O�x$-�*Y���+Ws�1V��z%� �4�VC��Q'����d8����H��'�	��&���xsύG��rZKi�ELwi�� ���e�,�E׋�uD����AĽ�Ȟ��}�{jKj��d��ي��(B	�d�0Mo��W�m�jxWK��C�Ho~�:�{CR��&�L̫�Vld�V�w ��0L�{�^�ʜ��e)=�����-��x�>V�D�lTM�X���*Y̉� YV5fϗ�
���x;��E�)�������A�贫F�f͜�o�H2x!� !��{���n�D@Xc}5���w��0/�蘗,E�$�QȾ,�kԄ�$|��A�
h
�%-�Ԛb�~]�\>���0TcJur�+朇(�M_�`i6�8�)��+I�4���D�]���0Rz5s��P8.duĖ���$��[�R?�ɝ�*:�x|�4V��7�׶���E�4���}��&�y	��٨K�b�H���
��zI�:8>��r̹D�S�e��z�x>X!��� ������X����<vՓE�q�b���NUTCk��g�}�Q����g���R��5K#��º��4yW�� �H�U4jŀ$��6ނ\�YW�9�\��8����U�B,`A"8��/ᵝ�{_Y	0��:e�y�sNX8���͠�e��?�D�~[m�L#i���3^j�`�Yp���*�,�G��^to�>@���y���G�(�Z	�N&�S�I�"<F��}2!�� �ؖ�u���`e��̪ap�O<�B@�d���ջ)Q�t��M?�4�����~-#?7�����<��=��X���ͯ=;�U���ip/�?��+�<�C|`N�c�Cp��}�ds����Jۍ���w���C��vDƱ�M�Mr�2��}��\s�g�7f�!L����43ܞ�a��Z O�����&#��ć�{hK�"o$��q����eF'��\����t�)l��we������;D�6o|ǽ���S~K�k���ªZ�q��M��C�>z��KV�X~]��!��ӆ8�76�HVA�J�[�Xq!��A��'\\��'�by$p���!B��BS]w>�Xy}�[\��N��.j#�5���m��6t����R��u3Pbf�����������?��ʈj��s�??�NA-�h�N�M_+t�=k��������k���`�qz���SK�r�r6�����y$�|���;�����b�ȳ��|V�v��GS���K���9e?g}��)S���Zϓq:�$��\�o�Fݙ9�����Ͻ��rA��`�h��1[p3ֵ��Z�_��ޮE) 5-D��A+#�}��mY����'��ٌ#�ī{�Ϡ�[R���F$A����-D�c��?�l�dy	?�O��J��R�O��#۸`�onhɆ�!��x��R>.���_��Yg�3� ��/(�2����x���y��	m��X1�t������a�|��D�{Z��>}��͑�S�o�}��2�ӕ��!|�*3(�x_��_�i� R4�{�o�ĭ�U��t�w/�-����yg��Z\�m��F�B�*O�X-�~�i��	��c(p���ْ���j�S�S�'C���i���I�3���r�����Y(�63�丌q3S���\o@�$��38����ޅ�/�d�v;g�n���}������2d�p��8g�Խ�Oa�+;`_����^}���Ѝ�v�O`O����t�RĿ&Pf��?������q�g�Y}H��n��W�NH*��H��ƶ�9����P��
Y����R��7���+�?�U�Z���"����f��-M�\����D%�J-e2UC�[�VPP����V�$H�O�\d��{���t�����(�p	�:�pr5_�$@3�D񾬕��#��.Ɇ.҂�?]�[6�7�_	 ���7��^*џ(gW1���	�2D�����V��H��,�
5Q�X�0֭��9�5�n����V�0 L�;J�|��~^G��Z��:5U��`G�Y�����z�(�j�(O���V��L�t.���8-����Y!y3�^�R���2�����Ls��ms~��v����s�C�9���~̕=�VG��i ]ޯa��n�;�����XE�27�9���5}���Gg�M�4ԊUu�hLq���R�'�V�����#�AxA3I�����Pces�_a=T[��6�tŊ���\������MDW����..ޕtCRj�U�@����l��y�D��p2�H��@���AV��¤\AAY�bw�Sb�������r2���a���_����`pٽ�h���C�J�G�Ɣ�����B��)�f���NM�X}�[}&�8��}D�˺�Ġ�tS"�+�V�G��*�5YV�NZ<�^[��P��2E�ے(�����V�X��'���9~�?��x>$N"c�V���!AIM��5v�E&0��,[հ �k*�.���P��GB�V�$X۶~?M�ǡ�<���������>[�Ȃ��}���A�>=�p�����O�\W�R@�1G�Ir;�m�ɶ:R��v���M�Ӫ��J�����t�i"zR�ĭi,��#-���2��ΥA�=y�������N��[�w*�+if��|_��¹�DÐA���d�@9���u�_#�O�oH���]��O�2�~��"��z�8'��^[�| GC��S}����-�>�����BЃ�ïu����_~��}��͕��͇7��I$s�
�\�v��^��&�d��|���<�Μn���j�!(�evO:�yT����_�r(nF�"��q���D�Ua�dY�%PDyö��fV���.k�D�er���Q*��#��D(�8�[��J8�V��ilUfmX�1�j�����6&��Ϟy���]��5:��M���F���s�"�M���J�Ȃ���Ac���ɪ�Jos8���|���IH�8K��6��ܓ��*�"��b�'����z*o��b�у���P�:�^X�}�R��"�1b����X7��=~堖�6��gs!v��R�����.&w�U����5�D�ꝶ�%��e�c�\�Ȧ����Q���ܨ�[��#1~��k�bpIq���3Iwȶ9;4fD�8�S=DK\���F�5}%#��-�b��֜����K�jS��i��p������ԧx��3�Q:���a�sp�T`���_�n�jZ�"(Xu|��y�ͥ�$���Bo�����P�W&����=<�U?-%(��TQZI)2�a��:X�`�|I��fk�Ri�(}�B�R>*����}s����'vc�Q �F��J�O8m�(��K�$�0W���m"�B֒�Z�|����-�v����FAXt�ӟV�y�7qs��G �c{ߣ�RZ�=�%����z��E��y���4_��k�!E6/��U>0���΃�A�@���$@	 �~&�H�q6�����m]/���㇇���.b1� E��{�L������z*���&n^SU�xF�2�h�<�����4��A�t���Oj9q:��$��L����s�.	!Yu����~�Z��� (ܦ�}�MQ�eU"c�� �\��2�H��h������K$0G��l8�|��a��m5��A4;z\���>y���+MP��o�j,@�fy��wD�~n��$ ��4i��x�ͧ�}�'���p"�TŒn�\��a���0�n�5�qh�h)�wRI�s��w[�עE�7Q.    �M��%�2 �|^!뱺˖�!�ЮA��2z,��t��Œ#��K$n�r�y�涟rmB#GX���'��+[�wc"�ڲfQ�	�d�68_V
�O'�b>��jK������Ȕ��C]��\�z���Z��N�7�{u�F(��z�7�CD�M�F%)-�:ZΓ�ש~��:7�k�lM]���Q1�e}Z�%��� T�/ciç`CFF�S�4(�#n;�
����=V�6�i)F��E*0�G�oI�tآ�oʢ�	����#b��>���RY�cO��?�{��tRs�s��[;���[`t��.�մ��i{�sC��F�A�y��)��U��w��d�����.������3��^�o@�R��?=�]���[��f0�:g',�������lOâL��U��1�G7zՐZ��.bHǥ�����x2ֿS���<#q}��O�aw~��Inwn��	��_:yp�Y�����}��o�^��o�IZ��d�� yK�$Tua�k�����PU����j�6/�)�[?�e�Pqd~"U�����Y�)ǎ�̀��3�f�L�x�9�1�)�X<�_6f�����,�`F-p��>[L]�Ww��;n���5����M��GZ`��!��}��B�ȅ�i��mv�a��HP��A�J� ����(�CRզ��C���':���gM֨���?�B�ۮyCi�8��kp�&��$j����q?r�Vz�ce!��L�Yt�F�JVn�)>��/��Ԣ�RS&����B��r�D�16�m9p��r�*�V��� 6��_"�f�Qg��|�󔐀\9�Cʛ�?k碴}�㽳��5Mtp�xɠ+¥Y�q��.�q�JU�� �TZk�RI�hd&G��( ��Z૿�A����TVA��/ݽi��G��K�זn\��r2����k_iɗXG�ET��9w��^�x&D3���.nu+�rR����X�
C��v��%kF���D��@��M����+[�7ZrM�W5H@5�mE�������=� �Y ��z���q�X�Y�yv'Dr��JrS�;=����}��o�����`M�yP#vҔ�5"�<=hC�Κf��x�h��>\��"���{m��>1���a pku�O{��n�{��G��oS:CY1�F���QY�L>���9���,}޻8T�r����xv�o�B��Y�M�|�%h���/�ث��\C�x� �>��D��y9P�� ��aǗ��Q,�7UR},thP��4�᪤n�{��F�}����I�BT�I*Ӟ��rC�aY���d���*dxy�%�~V�i�(��L����ESn�?��[E�J�mC�s<eKu��)c���%��d���l$M��P�����<�!�� =�=����>2+����߆{�q�*��!da��KRu_mia��e3�lRQ:��f�;��Z�_�g�ŀ��U��OE &�@�����=�Q%�Vx\���j^yƥhzP���K�H�%��?$��3��$+i����% ���а�V\Z�p. �����4���`\����.d��W��|zi8̈k֠�N?�䵸�	'3��Gq2��ŅC�5��S3MU��#�%��S�}w� s��,�*�6��v	3x꽽|�ػ��>�S�wP־����
��y�2�9 ;;t����~濖)w18��5S����s�?�>пD}���g�!uh�N���$$vG�$�M\��D��m\��=\a��]E�Hk�7=�l3[��P���h��i���
q�G�xѭ��{�j9��{���~̎}�
�����0��9	�*4y���Qެd��<6���C�v�\G\m�(�]�cj"����P�q!�Ʃ5��Gތf��aPMn��]�T���i�iy�N;I��b!��i�煏A/Rôa�5�O�N�9߳�q۳�H��/O��~3/!��Y�{:d�is��̾�c4�xMq�T�(����>E�N\n��L3i�t -����UB3N��R��~m�=H�6Q��p�,g�y��|	�����;���cI���HI1����K�B/>}���i����	�s۰:��{��������֢�d������n£z�韜��l~i,Q2�ED��%���[:�Y�T����s̽�����#题�uz�p ��k~�F���0�ǿ,-[,�H	�[�:
	����#��TBp�D9�<|C�F)ʨX+j�Qh��/%{7`B	GKYf�%y�͗�݃Y���w�!HsN8�}�[4��%�^�[�F�]�@¿iU��^�_Q�=T{Vs $�4J0s�����>�D��|�����ߐ$��q��'���VMՖOYr����2~����2�D�ǽ�w�	�䅰��,����9�����n�c9������Y�Ę��)���w���:��.��Ω�_}�:t+w�R�����ZuV2��ϾY/y�Zma���� �L�]��t�z��əB���!]QBHU[5]�`�p���j�8K�.����l96�11�I����@\�5;�Z����)�;��[Ž$��ښ��g��(��9|k��4��gz�E�6O"���^����=��*K}��;'�x��pV�BG�u�v�Ys{�Cз�n��ɜY���ƚ=���l�X��{��:�]�'�r�qd''�E���9٤��ni��E)��sD��e���d��������r>��y��܏y8�0��艍�뎏y:���u%��������W��'��5�b��d�
)<j�W^��5y|7b��3$y��ɵ��E��MS2`��0��Y/��@�p�8���~��F�U�����!6�����[�h��\N���ڎFZ�#�t�($k��AJ@/7��%�Z���q��獆`���v������s��U��=�X`�/�M/B��9�HP�^���V��M4�/�&oD4���X3V%���J�mxǂK�NE�X�}��7!��r����k��18[Z�i*�8PM㉱� �83�,���kx�Ҽ"�{��{��Pî?����GI�N�&#�y>u���q���D$-�I�k����0��ɮ�W�:�6Aӥ4�*n�#9��xɸ�M�4QĪ�h����]�K� �����̞�a_�+m|�C�!>�o��͚Y���5����׬�wħA�G��t��|v���X���b� ?m��lt'U~U�e�{n�`\x�us"���������=��4�dv>�x0�s���d��E���	0�uh`']W�j��v�:.�8�����X���=ɡ��)&d�z���$
2��Eq�g���6�(�6N����YN�'���ʂ$�{�g*djq4I8��Y�'C$H�\���m�:=���߆����߆@M3a��\w�Z~�u덾g5v]O���!�)�^����%��fX��%Β�?X5���̯o��2���o�u�x�"�D��)3<YT��Mx�AoI[oj�"lI�3 Dqڻ�{ӛ�]JPS��4Q�����pXӞQЧi�8,ړ�.����{�p��������s��_��ԭ�d�֟-�@��k���o��1��_���03�۟��?��6��z'�t9����0�q|z���LK���,���Q�Ї��g��tC*�t�����u�Ҽ�[;3�ҁ��g�f��g�Uۧ��B�`�PD�eɵ�
IhRgQ�������4?���xZL�c��c��+F�c
��7�b��~?F}u|��>�+���߼l�4��N&w(��!&͛_�3[�c�ES|L�o��VN)]�0-��^��7�D	X� 8BH������'a(O�M��l��d���c�b�{Zi9U�BG�E;xӶN���1s��aS�hN�
��D�˟�!,��}HK����9�R5�Piqe$l~�MK���V����-Ua�f����H늸�87��؅9�Ǟ[�j7���(u.���#�8ڗ����_q��0Ss���Ʒ�\j��� lK#�0Y|Km9����-Y}V��otMo�y� ډdj�crl�&K�2#gO�n6��]�y6s��,-�%� �  �h�QV{U]#GVSõWVh`B�G�1B�"BQ/��y�F2���ёm�eƕ�5s]�Jo=�-�9����c��Q��d����x0�/NO�	;��∽8G">���e�Q�;��(�NV���S��'��^�sG���I�wz���B���r�!37�%�$Á��y�V7��	�[>S�	�+'Υ�ͣj��!(���	�-�,�Tl��k-*4�SRA�3к�1�4N�P�-��+����ؾآE�#692!��RFQLVU�~�1�G��������ŝ7*!X�ѡ �$��F��O�V�>DF�
�8�-�l��h�H��{�����k���O��F;�#�P��Ac�ֆĎd�8�D��5�5#U�t�	'����YJoh�or��~����$�������7zK߇�t�<���̒��mSCO#�6�fd��o�%��-�FJ}r
��9Х�����a��*z����-�BG�*��N��wՍ�	#9������;�|��.Z}b4r#\���,�P�(\��f�F�:Z@�	�#ҭ�'bW�P�7�"���3�i`��Y�܉�����Yc;Ĉ�݄�X�X���g������z�`#^�@�.�k�3��tȵ�7E�?P՟�EN��M�[-����}��յE� �֦�7;6(��줂�۾�3/9\R$���,P4�g�����E�͛����<��p�EM��CՆ'���}n�m|���/���p��F������r8萔^K'�_/:.���͘f�Q��'�re �k�t��_>)i�Q���gX��<q_H��F|e�;?���g��w�f�6�/^lN��xYK[��No�~��`�b��]��^G3��Y�n}�;1���F�p�4�B�u����j:N$�u�zg��铷��L���VK0�P{��[2s���yB�϶��3�n�/xp�v'Q��3U���l��2������Ĳ��yf�c�^��Q�|0P����~^�l	^\��%�6n�H�i�^J���ޞWC�.�S�72`��šzT��=
�_�9���Wm��Y�u\ �!�F㸆����;Oa#pw�eNĵx�X��b�{���p;��-9��5
��Cn���s$9i�!߂��Ϸ���m&�ٳ�C�6�f��gh<���^?Vi��0NE0�N0�����~>"��Y�J�ӌZB�B�o7��%���uB'Lc;�^˛x쀦-�
di��Q�:ۀ9L^bN;Q�(h�&��ߒQ[љ�6��ǌZ��M|\iW�5^��@=t���<M �6��� V�3�qFQ+�-Un�,��8��w<�ǎQ��������5z~8��d���̳��}��j�Y/bqm�3���">M˒ky��aل����wl�9�QC���"������ %wU��q;1{�\���j��V<�Y[��f��� ���<y��[i���ǵ���DxH��׷����� ���JT�w
��3�2;��%��2*��:��uk���R2;�$ߜ��aU���w��^�,�w����{�����-��$�[�E\=$C���=���Z�$I	HE_������!����O
"`�����=�7�]xvv��-���\R)���S��D�u�e�4_N�嶬F��,X���K�?�cJ��f���0`�U���T����?��_\B������� �4�9��:m�q��j.v�K�I��a�C0�7��oN����櫛N��@����#�w[��J0*i�o489=t�!	H����I�Y��lVS�,��f���L�N�@A/��D�Ɓh�&i'�%!4�4!����h�e�&�YQڞkׇN�w�v_��_xXi�%m��|΢�E�K
a)�]q���Kar)�%��m�j���h6��jz
4:��ǲ:nK�N;�4cu�;����Y��^8��mX�~��*�6����!6pq�F���8��[=�ʚ8�ÎDCe���U4[ZNS�����8Z
�����&r�����x�V�H���@N"�oÑjA�I(*�SJ�����J�<���h�k�O�l�'F�a�@ G��sZ���v	t>�8	��.9W�sq.'��%iA�o��xF��-�mQ2�2)<�/K*st�^��_��ù:@��j�`�V���{�!Yܾ/#�D�rV� q�����/jh$"�h"�x���'��J��q�3���Ps��~��>P%Y�R�-�%���;�\ћ�R����*F���psk�ܯ4�Gc��'q�m�4�'ْ8=\?�P�� TV@Lv����i{�:��J6�0XV;��k��!<WC��o�!�>�ߧv���".심q�s~I�d��T���v�к+�+b_��w� �ST�z]o���'_>�T�z�g�h��u�n�����2r�d��9C�NVV��
�:6mo���!L%>FV7��e��BSk7ޤ
y��%p�M��1r����?ǖN��=�ǣ�����p�({��7o_A`�]�=���)�|I�Ho��[�>�Y�M�\��k�eE��?��g�-˳�+��<�Rì���_7Y��,_~����r�Rt�V�S��M�iݻ�����{��Ek��w�m[�V���L��2ݩm�񈧀{LJ?$9ڭiL6���7:D0��t��� ����us�2OG+�
�Jk�M�ï���ʼӒf3��������ĵ�7�;���hb��D��	ů�8B���^�2/�{E��f?R�6�NT�-�9j�1C��KN�&����[Ò�����/.�&�?�k_<c�㾦��/���\����-re�����N[��t����n���W�a�yY�NJv�����ز*�Q����G���Z[�xy���������fo��oD|Eך�P����z'�E��K6
�y4_�UV��G��r���5�S�l�ƀ%V����~�[�D�����	<���A�����X�Ǎ'%�:�����'I����{>v~���_�{      �   �  x����j1D�ڏ	�e�ֿ�R��BZH����K�C`�Ҍ���$��$����|�o�����|~�/�����{��	Y@�3RA�$!�G���@f�UJ��f2\��3�!�Dwb�$�v�����nd�:^��Yq5K螲h�@�D�+_B��ڨ��{�"?���(�W��C}S�$��"�N�	��`���%�����1b6uC��쩉��je}B��-���G�h����>Wˊi}Q��aQ�H�~�bPpZ���$�oLe�l��p�lZ�py�*��2��9Odݘ]�[���0%ċ�3� ��,z��d��%h�Y�"w����&�4o�(�8����00���B7��&��X(�p�}���q��������$s=|o�����8m^CN�In��AV6Iz|܎��kG݇      �   t   x���1B�R��d7�����1�78"�8`F����ǣx@J��X626J���Z�_O�!��}��.5�S��,h9MԠ�=~nE��Y�=�~L���v�,������?�U      �      x�34�4����� �X      �   �  x��V�n�6}V��ݗ$�MK���[/(�@��-�b��i���Ф RQݯ����$N�̜93�(��>IC�^V�xd�h���ׇU�
Ek����Z��]Ӭ��X�����!x~
�I���e��6Ei��0��GEco�a���eo��Z	��frǲ	�lW�QD]~�2_1��$��2�4/�Gkr�g��I��(�����6�K����Y%hǖt�J;Nw�]�:����|ʐ��:�|����y�4�
f���-��F[[���;�̠�2�!�v<:��E�${��C�f5z�q�TojjX��@�*^݁}�Q���� �i�$~�y�$��|o}�,�Iz�|R�'$��5+�yz�ka�C�9^�3�M/+W�ᒊ�
��J�T�$��|M36����v`��M�:&+���1�Z��#3�Ӿ�n�;]����K�$4\��6k��רf���f��Q:Fp)z�j�\�2����*�;�{�NR����e�WC!{.�M�<�f}U�>��������J��B8��T�*A<�f�c}4�VL�{���Y��p#�\��Yp�'��B@�۽ځ���^�D�̡1��>��U�q��UW[�_ĚH�@�oj�h�#�3�}��[V�[�-��q�i3C-�<8������ U~|�n�� ���l�e�h���7��#B0��-ܜ\�����$��}]���v;�0sI��ؤ=z��n�q;''x�	=�� �F	��Z����r]Z���JT������X���0	�^��� f�W��o�/���<��: =�e���G�l)c�C%Fc j�(��q�T�i��'��i3)i�ٗk��}�>�����#û��s4P�G�#�[Z1���q����hm{�6őv/�L�T�\�۠/��cZ]�V�0�!��A����K�W	���՘��M����(x�����V\��J�"�s�/�y\�k���k�4�YH����:�u��a�C�����V�2dM��(Jȼ����؍�p��>]����3+�ɠt�^��i�A����xhѸ�.��M�؎��Ko�@h��'v}��m$�o kz��9]�~�{3 ��[޹0 U��⠆�����i�Se�D�Z֙�_��fH�4}��p��]�	�
g	��s��t�_�����J�Rv      �      x�3�4�2�4����� 1�      �   n  x���An� E��)z��v����@6�:�,Rs�b�4�T�$��5�#�l&��sf�&�Ga�������Z)�vCKJ���/�b�e��j+��)��GH�VkC�0ca��F��_�νJn�ֽ�߯�;)��L���&��n6�C��_)*	*�Ұ����ٷ�z VW`���t�������Q�N!�\���
���^������݅�;i�$�uj���#ۆۜ���(;��C��}��'��=O��N��ے�q�ʗ���d�r�L�KU#1o�+��l����RL�:ZL���24��!2�Q�f0�<Cd(�8<��{�m����$u���콓�ޯ�Ӈ>�(�#�XD      �   C   x����0��x�!�]��B*�#�f�j��m��_��VK9�;Ne�X�3,��������      �   �   x�u�A
�0E��)�	�IZ$;��� ��:j ��&��E](��W���Cq�����!���BM�11��3��o�g-�� C��9@�����un���5�DW/);ښ���g��ܼ��̚���yC���k쵔rD�EL      �      x������ � �      �      x������ � �     