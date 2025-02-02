PGDMP         "    
            z            acc-v4    12.10    14.1 �   T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    16396    acc-v4    DATABASE     ]   CREATE DATABASE "acc-v4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
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
       public          acc-v4    false    211            X           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
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
       public          acc-v4    false    215            Y           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
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
       public          acc-v4    false    213            Z           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
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
       public         heap    acc-v4    false                        1259    25048    code_challenges_category_links    TABLE     p   CREATE TABLE public.code_challenges_category_links (
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
       public          acc-v4    false    260            [           0    0 !   code_challenges_components_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.code_challenges_components_id_seq OWNED BY public.code_challenges_components.id;
          public          acc-v4    false    259            �            1259    16722    code_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.code_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.code_challenges_id_seq;
       public          acc-v4    false    234            \           0    0    code_challenges_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.code_challenges_id_seq OWNED BY public.code_challenges.id;
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
       public          acc-v4    false    248            ]           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_challenge_challenge_hints_id_seq OWNED BY public.components_challenge_challenge_hints.id;
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
       public          acc-v4    false    250            ^           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_challenge_code_challenge_tests_id_seq OWNED BY public.components_challenge_code_challenge_tests.id;
          public          acc-v4    false    249                       1259    24985    components_challenge_meta_tests    TABLE     �   CREATE TABLE public.components_challenge_meta_tests (
    id integer NOT NULL,
    case_code text,
    label character varying(255),
    passes boolean
);
 3   DROP TABLE public.components_challenge_meta_tests;
       public         heap    acc-v4    false                       1259    24983 &   components_challenge_meta_tests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_challenge_meta_tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_challenge_meta_tests_id_seq;
       public          acc-v4    false    279            _           0    0 &   components_challenge_meta_tests_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_challenge_meta_tests_id_seq OWNED BY public.components_challenge_meta_tests.id;
          public          acc-v4    false    278            �            1259    16834 ,   components_challenge_multiple_choice_options    TABLE     �   CREATE TABLE public.components_challenge_multiple_choice_options (
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
       public          acc-v4    false    252            `           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_challenge_multiple_choice_options_id_seq OWNED BY public.components_challenge_multiple_choice_options.id;
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
       public          acc-v4    false    254            a           0    0 $   components_content_challenges_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_content_challenges_id_seq OWNED BY public.components_content_challenges.id;
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
       public          acc-v4    false    256            b           0    0 ,   components_content_external_resources_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_content_external_resources_id_seq OWNED BY public.components_content_external_resources.id;
          public          acc-v4    false    255            &           1259    25129    components_content_steps    TABLE     J   CREATE TABLE public.components_content_steps (
    id integer NOT NULL
);
 ,   DROP TABLE public.components_content_steps;
       public         heap    acc-v4    false            '           1259    25135 -   components_content_steps_code_challenge_links    TABLE     {   CREATE TABLE public.components_content_steps_code_challenge_links (
    steps_id integer,
    code_challenge_id integer
);
 A   DROP TABLE public.components_content_steps_code_challenge_links;
       public         heap    acc-v4    false            %           1259    25127    components_content_steps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_content_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_content_steps_id_seq;
       public          acc-v4    false    294            c           0    0    components_content_steps_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_content_steps_id_seq OWNED BY public.components_content_steps.id;
          public          acc-v4    false    293            (           1259    25140 8   components_content_steps_multiple_choice_challenge_links    TABLE     �   CREATE TABLE public.components_content_steps_multiple_choice_challenge_links (
    steps_id integer,
    multiple_choice_challenge_id integer
);
 L   DROP TABLE public.components_content_steps_multiple_choice_challenge_links;
       public         heap    acc-v4    false            +           1259    25193 )   components_content_steps_playground_links    TABLE     s   CREATE TABLE public.components_content_steps_playground_links (
    steps_id integer,
    playground_id integer
);
 =   DROP TABLE public.components_content_steps_playground_links;
       public         heap    acc-v4    false                       1259    16864    components_misc_module_lessons    TABLE     P   CREATE TABLE public.components_misc_module_lessons (
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
       public          acc-v4    false    258            d           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_misc_module_lessons_id_seq OWNED BY public.components_misc_module_lessons.id;
          public          acc-v4    false    257                       1259    16990 +   components_misc_module_lessons_lesson_links    TABLE     y   CREATE TABLE public.components_misc_module_lessons_lesson_links (
    module_lesson_id integer,
    lesson_id integer
);
 ?   DROP TABLE public.components_misc_module_lessons_lesson_links;
       public         heap    acc-v4    false                       1259    25020 #   components_translations_about_pages    TABLE     e   CREATE TABLE public.components_translations_about_pages (
    id integer NOT NULL,
    title text
);
 7   DROP TABLE public.components_translations_about_pages;
       public         heap    acc-v4    false                       1259    25018 *   components_translations_about_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_translations_about_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_translations_about_pages_id_seq;
       public          acc-v4    false    283            e           0    0 *   components_translations_about_pages_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_translations_about_pages_id_seq OWNED BY public.components_translations_about_pages.id;
          public          acc-v4    false    282                       1259    25031 '   components_translations_core_components    TABLE     �   CREATE TABLE public.components_translations_core_components (
    id integer NOT NULL,
    back_button character varying(255),
    next_button character varying(255)
);
 ;   DROP TABLE public.components_translations_core_components;
       public         heap    acc-v4    false            $           1259    25070 2   components_translations_core_components_components    TABLE       CREATE TABLE public.components_translations_core_components_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 F   DROP TABLE public.components_translations_core_components_components;
       public         heap    acc-v4    false            #           1259    25068 9   components_translations_core_components_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_translations_core_components_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.components_translations_core_components_components_id_seq;
       public          acc-v4    false    292            f           0    0 9   components_translations_core_components_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_translations_core_components_components_id_seq OWNED BY public.components_translations_core_components_components.id;
          public          acc-v4    false    291                       1259    25029 .   components_translations_core_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_translations_core_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_translations_core_components_id_seq;
       public          acc-v4    false    285            g           0    0 .   components_translations_core_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_translations_core_components_id_seq OWNED BY public.components_translations_core_components.id;
          public          acc-v4    false    284                       1259    25042 )   components_translations_within_components    TABLE     [   CREATE TABLE public.components_translations_within_components (
    id integer NOT NULL
);
 =   DROP TABLE public.components_translations_within_components;
       public         heap    acc-v4    false                       1259    25040 0   components_translations_within_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_translations_within_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_translations_within_components_id_seq;
       public          acc-v4    false    287            h           0    0 0   components_translations_within_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_translations_within_components_id_seq OWNED BY public.components_translations_within_components.id;
          public          acc-v4    false    286            �            1259    16737    courses    TABLE     @  CREATE TABLE public.courses (
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
       public          acc-v4    false    236            i           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
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
       public          acc-v4    false    219            j           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
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
       public          acc-v4    false    221            k           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
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
       public          acc-v4    false    263            l           0    0    lessons_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lessons_components_id_seq OWNED BY public.lessons_components.id;
          public          acc-v4    false    262            �            1259    16748    lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.lessons_id_seq;
       public          acc-v4    false    238            m           0    0    lessons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;
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
       public          acc-v4    false    267            n           0    0    modules_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.modules_components_id_seq OWNED BY public.modules_components.id;
          public          acc-v4    false    266            �            1259    16761    modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.modules_id_seq;
       public          acc-v4    false    240            o           0    0    modules_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.modules_id_seq OWNED BY public.modules.id;
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
       public          acc-v4    false    269            p           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.multiple_choice_challenges_components_id_seq OWNED BY public.multiple_choice_challenges_components.id;
          public          acc-v4    false    268            �            1259    16771 !   multiple_choice_challenges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multiple_choice_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.multiple_choice_challenges_id_seq;
       public          acc-v4    false    242            q           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.multiple_choice_challenges_id_seq OWNED BY public.multiple_choice_challenges.id;
          public          acc-v4    false    241            *           1259    25182    playgrounds    TABLE     W  CREATE TABLE public.playgrounds (
    id integer NOT NULL,
    internal_label character varying(255),
    internal_notes text,
    prompt text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.playgrounds;
       public         heap    acc-v4    false            )           1259    25180    playgrounds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.playgrounds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.playgrounds_id_seq;
       public          acc-v4    false    298            r           0    0    playgrounds_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.playgrounds_id_seq OWNED BY public.playgrounds.id;
          public          acc-v4    false    297            �            1259    16480    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
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
       public          acc-v4    false    217            s           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
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
       public          acc-v4    false    207            t           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
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
       public          acc-v4    false    205            u           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
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
       public          acc-v4    false    203            v           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
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
       public          acc-v4    false    209            w           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
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
       public          acc-v4    false    271            x           0    0    sublessons_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.sublessons_components_id_seq OWNED BY public.sublessons_components.id;
          public          acc-v4    false    270            �            1259    16784    sublessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sublessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sublessons_id_seq;
       public          acc-v4    false    244            y           0    0    sublessons_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sublessons_id_seq OWNED BY public.sublessons.id;
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
       public          acc-v4    false    246            z           0    0    syntax_entries_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.syntax_entries_id_seq OWNED BY public.syntax_entries.id;
          public          acc-v4    false    245                       1259    18078    syntax_entries_lesson_links    TABLE     h   CREATE TABLE public.syntax_entries_lesson_links (
    syntax_entry_id integer,
    lesson_id integer
);
 /   DROP TABLE public.syntax_entries_lesson_links;
       public         heap    acc-v4    false                       1259    25010    translation_groups    TABLE     	  CREATE TABLE public.translation_groups (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 &   DROP TABLE public.translation_groups;
       public         heap    acc-v4    false            "           1259    25055    translation_groups_components    TABLE     �   CREATE TABLE public.translation_groups_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 1   DROP TABLE public.translation_groups_components;
       public         heap    acc-v4    false            !           1259    25053 $   translation_groups_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translation_groups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.translation_groups_components_id_seq;
       public          acc-v4    false    290            {           0    0 $   translation_groups_components_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.translation_groups_components_id_seq OWNED BY public.translation_groups_components.id;
          public          acc-v4    false    289                       1259    25008    translation_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translation_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.translation_groups_id_seq;
       public          acc-v4    false    281            |           0    0    translation_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.translation_groups_id_seq OWNED BY public.translation_groups.id;
          public          acc-v4    false    280            �            1259    16519    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
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
       public          acc-v4    false    223            }           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
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
       public          acc-v4    false    225            ~           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
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
       public          acc-v4    false    227                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          acc-v4    false    226            �            1259    16575    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    acc-v4    false            M           2604    16444    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    211    210    211            O           2604    16470    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    215    214    215            N           2604    16457    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    213    212    213            V           2604    16727    code_challenges id    DEFAULT     x   ALTER TABLE ONLY public.code_challenges ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_id_seq'::regclass);
 A   ALTER TABLE public.code_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    234    233    234            c           2604    16875    code_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.code_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.code_challenges_components_id_seq'::regclass);
 L   ALTER TABLE public.code_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    259    260    260            ]           2604    16815 '   components_challenge_challenge_hints id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_challenge_hints ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_challenge_hints_id_seq'::regclass);
 V   ALTER TABLE public.components_challenge_challenge_hints ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    247    248    248            ^           2604    16826 ,   components_challenge_code_challenge_tests id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_code_challenge_tests ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_code_challenge_tests_id_seq'::regclass);
 [   ALTER TABLE public.components_challenge_code_challenge_tests ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    250    249    250            m           2604    24988 "   components_challenge_meta_tests id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_meta_tests ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_meta_tests_id_seq'::regclass);
 Q   ALTER TABLE public.components_challenge_meta_tests ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    279    278    279            _           2604    16837 /   components_challenge_multiple_choice_options id    DEFAULT     �   ALTER TABLE ONLY public.components_challenge_multiple_choice_options ALTER COLUMN id SET DEFAULT nextval('public.components_challenge_multiple_choice_options_id_seq'::regclass);
 ^   ALTER TABLE public.components_challenge_multiple_choice_options ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    252    251    252            `           2604    16848     components_content_challenges id    DEFAULT     �   ALTER TABLE ONLY public.components_content_challenges ALTER COLUMN id SET DEFAULT nextval('public.components_content_challenges_id_seq'::regclass);
 O   ALTER TABLE public.components_content_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    253    254    254            a           2604    16856 (   components_content_external_resources id    DEFAULT     �   ALTER TABLE ONLY public.components_content_external_resources ALTER COLUMN id SET DEFAULT nextval('public.components_content_external_resources_id_seq'::regclass);
 W   ALTER TABLE public.components_content_external_resources ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    256    255    256            v           2604    25132    components_content_steps id    DEFAULT     �   ALTER TABLE ONLY public.components_content_steps ALTER COLUMN id SET DEFAULT nextval('public.components_content_steps_id_seq'::regclass);
 J   ALTER TABLE public.components_content_steps ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    293    294    294            b           2604    16867 !   components_misc_module_lessons id    DEFAULT     �   ALTER TABLE ONLY public.components_misc_module_lessons ALTER COLUMN id SET DEFAULT nextval('public.components_misc_module_lessons_id_seq'::regclass);
 P   ALTER TABLE public.components_misc_module_lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    257    258    258            o           2604    25023 &   components_translations_about_pages id    DEFAULT     �   ALTER TABLE ONLY public.components_translations_about_pages ALTER COLUMN id SET DEFAULT nextval('public.components_translations_about_pages_id_seq'::regclass);
 U   ALTER TABLE public.components_translations_about_pages ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    283    282    283            p           2604    25034 *   components_translations_core_components id    DEFAULT     �   ALTER TABLE ONLY public.components_translations_core_components ALTER COLUMN id SET DEFAULT nextval('public.components_translations_core_components_id_seq'::regclass);
 Y   ALTER TABLE public.components_translations_core_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    285    284    285            t           2604    25073 5   components_translations_core_components_components id    DEFAULT     �   ALTER TABLE ONLY public.components_translations_core_components_components ALTER COLUMN id SET DEFAULT nextval('public.components_translations_core_components_components_id_seq'::regclass);
 d   ALTER TABLE public.components_translations_core_components_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    291    292    292            q           2604    25045 ,   components_translations_within_components id    DEFAULT     �   ALTER TABLE ONLY public.components_translations_within_components ALTER COLUMN id SET DEFAULT nextval('public.components_translations_within_components_id_seq'::regclass);
 [   ALTER TABLE public.components_translations_within_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    287    286    287            W           2604    16740 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    236    235    236            Q           2604    16496    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    219    218    219            R           2604    16509    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    220    221    221            X           2604    16753 
   lessons id    DEFAULT     h   ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);
 9   ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    237    238    238            e           2604    16895    lessons_components id    DEFAULT     ~   ALTER TABLE ONLY public.lessons_components ALTER COLUMN id SET DEFAULT nextval('public.lessons_components_id_seq'::regclass);
 D   ALTER TABLE public.lessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    262    263    263            Y           2604    16766 
   modules id    DEFAULT     h   ALTER TABLE ONLY public.modules ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);
 9   ALTER TABLE public.modules ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    239    240    240            g           2604    16920    modules_components id    DEFAULT     ~   ALTER TABLE ONLY public.modules_components ALTER COLUMN id SET DEFAULT nextval('public.modules_components_id_seq'::regclass);
 D   ALTER TABLE public.modules_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    267    266    267            Z           2604    16776    multiple_choice_challenges id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_id_seq'::regclass);
 L   ALTER TABLE public.multiple_choice_challenges ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    242    241    242            i           2604    16935 (   multiple_choice_challenges_components id    DEFAULT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components ALTER COLUMN id SET DEFAULT nextval('public.multiple_choice_challenges_components_id_seq'::regclass);
 W   ALTER TABLE public.multiple_choice_challenges_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    269    268    269            w           2604    25185    playgrounds id    DEFAULT     p   ALTER TABLE ONLY public.playgrounds ALTER COLUMN id SET DEFAULT nextval('public.playgrounds_id_seq'::regclass);
 =   ALTER TABLE public.playgrounds ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    297    298    298            P           2604    16483    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    217    216    217            K           2604    16422    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    207    206    207            J           2604    16411    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    205    204    205            I           2604    16403    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    203    202    203            L           2604    16433    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    208    209    209            [           2604    16789    sublessons id    DEFAULT     n   ALTER TABLE ONLY public.sublessons ALTER COLUMN id SET DEFAULT nextval('public.sublessons_id_seq'::regclass);
 <   ALTER TABLE public.sublessons ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    244    243    244            k           2604    16950    sublessons_components id    DEFAULT     �   ALTER TABLE ONLY public.sublessons_components ALTER COLUMN id SET DEFAULT nextval('public.sublessons_components_id_seq'::regclass);
 G   ALTER TABLE public.sublessons_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    270    271    271            \           2604    16802    syntax_entries id    DEFAULT     v   ALTER TABLE ONLY public.syntax_entries ALTER COLUMN id SET DEFAULT nextval('public.syntax_entries_id_seq'::regclass);
 @   ALTER TABLE public.syntax_entries ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    245    246    246            n           2604    25013    translation_groups id    DEFAULT     ~   ALTER TABLE ONLY public.translation_groups ALTER COLUMN id SET DEFAULT nextval('public.translation_groups_id_seq'::regclass);
 D   ALTER TABLE public.translation_groups ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    280    281    281            r           2604    25058     translation_groups_components id    DEFAULT     �   ALTER TABLE ONLY public.translation_groups_components ALTER COLUMN id SET DEFAULT nextval('public.translation_groups_components_id_seq'::regclass);
 O   ALTER TABLE public.translation_groups_components ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    290    289    290            S           2604    16522    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    222    223    223            T           2604    16532    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    224    225    225            U           2604    16545    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          acc-v4    false    227    226    227            �          0    16441    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    211   P�      
          0    16553    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    228   �      �          0    16467    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    215   �      �          0    16454    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    213   Ҭ                0    16558    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    229   ��                0    16724    code_challenges 
   TABLE DATA           �   COPY public.code_challenges (id, starting_code, prompt, internal_label, internal_notes, get_starting_code_from_previous_challenge, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    234   ��      F          0    25048    code_challenges_category_links 
   TABLE DATA           Y   COPY public.code_challenges_category_links (code_challenge_id, sublesson_id) FROM stdin;
    public          acc-v4    false    288   ��      *          0    16872    code_challenges_components 
   TABLE DATA           q   COPY public.code_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    260   �                0    16812 $   components_challenge_challenge_hints 
   TABLE DATA           i   COPY public.components_challenge_challenge_hints (id, text, recommended_time_before_viewing) FROM stdin;
    public          acc-v4    false    248   1�                 0    16823 )   components_challenge_code_challenge_tests 
   TABLE DATA           r   COPY public.components_challenge_code_challenge_tests (id, label, internal_test, further_explanation) FROM stdin;
    public          acc-v4    false    250   s�      =          0    24985    components_challenge_meta_tests 
   TABLE DATA           W   COPY public.components_challenge_meta_tests (id, case_code, label, passes) FROM stdin;
    public          acc-v4    false    279   ��      "          0    16834 ,   components_challenge_multiple_choice_options 
   TABLE DATA           z   COPY public.components_challenge_multiple_choice_options (id, text, is_correct, incorrect_choice_explanation) FROM stdin;
    public          acc-v4    false    252   ��      $          0    16845    components_content_challenges 
   TABLE DATA           ;   COPY public.components_content_challenges (id) FROM stdin;
    public          acc-v4    false    254   �      6          0    16980 2   components_content_challenges_code_challenge_links 
   TABLE DATA           n   COPY public.components_content_challenges_code_challenge_links (challenges_id, code_challenge_id) FROM stdin;
    public          acc-v4    false    272   �      :          0    17964 =   components_content_challenges_multiple_choice_challenge_links 
   TABLE DATA           �   COPY public.components_content_challenges_multiple_choice_challenge_links (challenges_id, multiple_choice_challenge_id) FROM stdin;
    public          acc-v4    false    276   �      &          0    16853 %   components_content_external_resources 
   TABLE DATA           U   COPY public.components_content_external_resources (id, name, link, type) FROM stdin;
    public          acc-v4    false    256   f�      L          0    25129    components_content_steps 
   TABLE DATA           6   COPY public.components_content_steps (id) FROM stdin;
    public          acc-v4    false    294   ��      M          0    25135 -   components_content_steps_code_challenge_links 
   TABLE DATA           d   COPY public.components_content_steps_code_challenge_links (steps_id, code_challenge_id) FROM stdin;
    public          acc-v4    false    295   ��      N          0    25140 8   components_content_steps_multiple_choice_challenge_links 
   TABLE DATA           z   COPY public.components_content_steps_multiple_choice_challenge_links (steps_id, multiple_choice_challenge_id) FROM stdin;
    public          acc-v4    false    296   �      Q          0    25193 )   components_content_steps_playground_links 
   TABLE DATA           \   COPY public.components_content_steps_playground_links (steps_id, playground_id) FROM stdin;
    public          acc-v4    false    299   7�      (          0    16864    components_misc_module_lessons 
   TABLE DATA           <   COPY public.components_misc_module_lessons (id) FROM stdin;
    public          acc-v4    false    258   T�      7          0    16990 +   components_misc_module_lessons_lesson_links 
   TABLE DATA           b   COPY public.components_misc_module_lessons_lesson_links (module_lesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    273   ��      A          0    25020 #   components_translations_about_pages 
   TABLE DATA           H   COPY public.components_translations_about_pages (id, title) FROM stdin;
    public          acc-v4    false    283   ��      C          0    25031 '   components_translations_core_components 
   TABLE DATA           _   COPY public.components_translations_core_components (id, back_button, next_button) FROM stdin;
    public          acc-v4    false    285   ��      J          0    25070 2   components_translations_core_components_components 
   TABLE DATA           �   COPY public.components_translations_core_components_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    292   �      E          0    25042 )   components_translations_within_components 
   TABLE DATA           G   COPY public.components_translations_within_components (id) FROM stdin;
    public          acc-v4    false    287   3�                0    16737    courses 
   TABLE DATA           u   COPY public.courses (id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    236   P�      +          0    16885    courses_modules_links 
   TABLE DATA           E   COPY public.courses_modules_links (course_id, module_id) FROM stdin;
    public          acc-v4    false    261   ��                0    16493    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    219   ��                0    16563    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          acc-v4    false    230   X�                0    16506    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    221   u�                0    16750    lessons 
   TABLE DATA           �   COPY public.lessons (id, slug, name, is_hard, internal_notes, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    238   ��      -          0    16892    lessons_components 
   TABLE DATA           i   COPY public.lessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    263   i�      .          0    16905    lessons_module_links 
   TABLE DATA           D   COPY public.lessons_module_links (lesson_id, module_id) FROM stdin;
    public          acc-v4    false    264   �      /          0    16910    lessons_syntax_entry_links 
   TABLE DATA           P   COPY public.lessons_syntax_entry_links (lesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    265   Y�                0    16763    modules 
   TABLE DATA           o   COPY public.modules (id, name, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    240   v�      1          0    16917    modules_components 
   TABLE DATA           i   COPY public.modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    267   ��                0    16773    multiple_choice_challenges 
   TABLE DATA           �   COPY public.multiple_choice_challenges (id, prompt, internal_label, can_select_multiple_options, created_at, updated_at, created_by_id, updated_by_id, published_at) FROM stdin;
    public          acc-v4    false    242   �      3          0    16932 %   multiple_choice_challenges_components 
   TABLE DATA           |   COPY public.multiple_choice_challenges_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    269   ��      P          0    25182    playgrounds 
   TABLE DATA           �   COPY public.playgrounds (id, internal_label, internal_notes, prompt, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    298   �      �          0    16480    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    217   ��      �          0    16419    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          acc-v4    false    207   ��      �          0    16408    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          acc-v4    false    205         �          0    16400    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          acc-v4    false    203   $!      �          0    16430    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          acc-v4    false    209   A!                0    16786 
   sublessons 
   TABLE DATA           �   COPY public.sublessons (id, name, created_at, updated_at, created_by_id, updated_by_id, description, published_at, internal_notes) FROM stdin;
    public          acc-v4    false    244   ^!      5          0    16947    sublessons_components 
   TABLE DATA           l   COPY public.sublessons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    271   ea      8          0    17845    sublessons_lesson_links 
   TABLE DATA           J   COPY public.sublessons_lesson_links (sublesson_id, lesson_id) FROM stdin;
    public          acc-v4    false    274   c      9          0    17850    sublessons_syntax_entry_links 
   TABLE DATA           V   COPY public.sublessons_syntax_entry_links (sublesson_id, syntax_entry_id) FROM stdin;
    public          acc-v4    false    275   �c                0    16799    syntax_entries 
   TABLE DATA           �   COPY public.syntax_entries (id, content, name, internal_notes, max_width, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    246   �c      ;          0    18078    syntax_entries_lesson_links 
   TABLE DATA           Q   COPY public.syntax_entries_lesson_links (syntax_entry_id, lesson_id) FROM stdin;
    public          acc-v4    false    277   �h      ?          0    25010    translation_groups 
   TABLE DATA           t   COPY public.translation_groups (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    281   �h      H          0    25055    translation_groups_components 
   TABLE DATA           t   COPY public.translation_groups_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          acc-v4    false    290   �h                0    16519    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    223   �h                0    16570    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          acc-v4    false    231   _j                0    16529    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    225   �j      	          0    16542    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          acc-v4    false    227   Jk                0    16575    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          acc-v4    false    232   gk      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 353, true);
          public          acc-v4    false    210            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          acc-v4    false    214            �           0    0    admin_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_users_id_seq', 36, true);
          public          acc-v4    false    212            �           0    0 !   code_challenges_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.code_challenges_components_id_seq', 300, true);
          public          acc-v4    false    259            �           0    0    code_challenges_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.code_challenges_id_seq', 36, true);
          public          acc-v4    false    233            �           0    0 +   components_challenge_challenge_hints_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_challenge_challenge_hints_id_seq', 6, true);
          public          acc-v4    false    247            �           0    0 0   components_challenge_code_challenge_tests_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_challenge_code_challenge_tests_id_seq', 78, true);
          public          acc-v4    false    249            �           0    0 &   components_challenge_meta_tests_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_challenge_meta_tests_id_seq', 1, false);
          public          acc-v4    false    278            �           0    0 3   components_challenge_multiple_choice_options_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_challenge_multiple_choice_options_id_seq', 103, true);
          public          acc-v4    false    251            �           0    0 $   components_content_challenges_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_content_challenges_id_seq', 62, true);
          public          acc-v4    false    253            �           0    0 ,   components_content_external_resources_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_content_external_resources_id_seq', 18, true);
          public          acc-v4    false    255            �           0    0    components_content_steps_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_content_steps_id_seq', 1, false);
          public          acc-v4    false    293            �           0    0 %   components_misc_module_lessons_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_misc_module_lessons_id_seq', 16, true);
          public          acc-v4    false    257            �           0    0 *   components_translations_about_pages_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_translations_about_pages_id_seq', 1, false);
          public          acc-v4    false    282            �           0    0 9   components_translations_core_components_components_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.components_translations_core_components_components_id_seq', 1, false);
          public          acc-v4    false    291            �           0    0 .   components_translations_core_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_translations_core_components_id_seq', 1, false);
          public          acc-v4    false    284            �           0    0 0   components_translations_within_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_translations_within_components_id_seq', 1, false);
          public          acc-v4    false    286            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 1, true);
          public          acc-v4    false    235            �           0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 1, true);
          public          acc-v4    false    218            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          acc-v4    false    220            �           0    0    lessons_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lessons_components_id_seq', 68, true);
          public          acc-v4    false    262            �           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 19, true);
          public          acc-v4    false    237            �           0    0    modules_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.modules_components_id_seq', 102, true);
          public          acc-v4    false    266            �           0    0    modules_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modules_id_seq', 2, true);
          public          acc-v4    false    239            �           0    0 ,   multiple_choice_challenges_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.multiple_choice_challenges_components_id_seq', 143, true);
          public          acc-v4    false    268            �           0    0 !   multiple_choice_challenges_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.multiple_choice_challenges_id_seq', 24, true);
          public          acc-v4    false    241            �           0    0    playgrounds_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.playgrounds_id_seq', 1, true);
          public          acc-v4    false    297            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          acc-v4    false    216            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 48, true);
          public          acc-v4    false    206            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 83, true);
          public          acc-v4    false    204            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          acc-v4    false    202            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          acc-v4    false    208            �           0    0    sublessons_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.sublessons_components_id_seq', 289, true);
          public          acc-v4    false    270            �           0    0    sublessons_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sublessons_id_seq', 124, true);
          public          acc-v4    false    243            �           0    0    syntax_entries_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.syntax_entries_id_seq', 6, true);
          public          acc-v4    false    245            �           0    0 $   translation_groups_components_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.translation_groups_components_id_seq', 1, false);
          public          acc-v4    false    289            �           0    0    translation_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.translation_groups_id_seq', 1, false);
          public          acc-v4    false    280            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 31, true);
          public          acc-v4    false    222            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          acc-v4    false    224            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          acc-v4    false    226            �           2606    16449 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            acc-v4    false    211            �           2606    16475    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            acc-v4    false    215            �           2606    16462    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            acc-v4    false    213            �           2606    16881 :   code_challenges_components code_challenges_components_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_components_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_components_pkey;
       public            acc-v4    false    260            �           2606    16732 $   code_challenges code_challenges_pkey 
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
       public            acc-v4    false    250                       2606    24993 D   components_challenge_meta_tests components_challenge_meta_tests_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_challenge_meta_tests
    ADD CONSTRAINT components_challenge_meta_tests_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_challenge_meta_tests DROP CONSTRAINT components_challenge_meta_tests_pkey;
       public            acc-v4    false    279            �           2606    16842 ^   components_challenge_multiple_choice_options components_challenge_multiple_choice_options_pkey 
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
       public            acc-v4    false    256                       2606    25134 6   components_content_steps components_content_steps_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_content_steps
    ADD CONSTRAINT components_content_steps_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_content_steps DROP CONSTRAINT components_content_steps_pkey;
       public            acc-v4    false    294            �           2606    16869 B   components_misc_module_lessons components_misc_module_lessons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons
    ADD CONSTRAINT components_misc_module_lessons_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_misc_module_lessons DROP CONSTRAINT components_misc_module_lessons_pkey;
       public            acc-v4    false    258                       2606    25028 L   components_translations_about_pages components_translations_about_pages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_translations_about_pages
    ADD CONSTRAINT components_translations_about_pages_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_translations_about_pages DROP CONSTRAINT components_translations_about_pages_pkey;
       public            acc-v4    false    283                       2606    25079 j   components_translations_core_components_components components_translations_core_components_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_translations_core_components_components
    ADD CONSTRAINT components_translations_core_components_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_translations_core_components_components DROP CONSTRAINT components_translations_core_components_components_pkey;
       public            acc-v4    false    292            	           2606    25039 T   components_translations_core_components components_translations_core_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_translations_core_components
    ADD CONSTRAINT components_translations_core_components_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_translations_core_components DROP CONSTRAINT components_translations_core_components_pkey;
       public            acc-v4    false    285                       2606    25047 X   components_translations_within_components components_translations_within_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_translations_within_components
    ADD CONSTRAINT components_translations_within_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_translations_within_components DROP CONSTRAINT components_translations_within_components_pkey;
       public            acc-v4    false    287            �           2606    16745    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            acc-v4    false    236            �           2606    16501    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            acc-v4    false    219            �           2606    16514    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            acc-v4    false    221            �           2606    16901 *   lessons_components lessons_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_components_pkey;
       public            acc-v4    false    263            �           2606    16758    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            acc-v4    false    238            �           2606    16926 *   modules_components modules_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_components_pkey;
       public            acc-v4    false    267            �           2606    16768    modules modules_pkey 
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
       public            acc-v4    false    242                        2606    25190    playgrounds playgrounds_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.playgrounds
    ADD CONSTRAINT playgrounds_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.playgrounds DROP CONSTRAINT playgrounds_pkey;
       public            acc-v4    false    298            �           2606    16488 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            acc-v4    false    217            }           2606    16427 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            acc-v4    false    207            {           2606    16416 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            acc-v4    false    205            y           2606    16405 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            acc-v4    false    203                       2606    16438 $   strapi_webhooks strapi_webhooks_pkey 
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
       public            acc-v4    false    246                       2606    25064 @   translation_groups_components translation_groups_components_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.translation_groups_components
    ADD CONSTRAINT translation_groups_components_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.translation_groups_components DROP CONSTRAINT translation_groups_components_pkey;
       public            acc-v4    false    290                       2606    25015 *   translation_groups translation_groups_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.translation_groups
    ADD CONSTRAINT translation_groups_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.translation_groups DROP CONSTRAINT translation_groups_pkey;
       public            acc-v4    false    281            �           2606    16524 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            acc-v4    false    223            �           2606    16537    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            acc-v4    false    225            �           2606    16550    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            acc-v4    false    227            �           1259    16450 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            acc-v4    false    211            �           1259    16556    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            acc-v4    false    228            �           1259    16557 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            acc-v4    false    228            �           1259    16451 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            acc-v4    false    211            �           1259    16476    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            acc-v4    false    215            �           1259    16477    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            acc-v4    false    215            �           1259    16463    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            acc-v4    false    213            �           1259    16561    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            acc-v4    false    229            �           1259    16562    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            acc-v4    false    229            �           1259    16464    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            acc-v4    false    213                       1259    25051 !   code_challenges_category_links_fk    INDEX     y   CREATE INDEX code_challenges_category_links_fk ON public.code_challenges_category_links USING btree (code_challenge_id);
 5   DROP INDEX public.code_challenges_category_links_fk;
       public            acc-v4    false    288                       1259    25052 %   code_challenges_category_links_inv_fk    INDEX     x   CREATE INDEX code_challenges_category_links_inv_fk ON public.code_challenges_category_links USING btree (sublesson_id);
 9   DROP INDEX public.code_challenges_category_links_inv_fk;
       public            acc-v4    false    288            �           1259    16883 $   code_challenges_component_type_index    INDEX     u   CREATE INDEX code_challenges_component_type_index ON public.code_challenges_components USING btree (component_type);
 8   DROP INDEX public.code_challenges_component_type_index;
       public            acc-v4    false    260            �           1259    16733     code_challenges_created_by_id_fk    INDEX     e   CREATE INDEX code_challenges_created_by_id_fk ON public.code_challenges USING btree (created_by_id);
 4   DROP INDEX public.code_challenges_created_by_id_fk;
       public            acc-v4    false    234            �           1259    16884    code_challenges_entity_fk    INDEX     e   CREATE INDEX code_challenges_entity_fk ON public.code_challenges_components USING btree (entity_id);
 -   DROP INDEX public.code_challenges_entity_fk;
       public            acc-v4    false    260            �           1259    16882    code_challenges_field_index    INDEX     c   CREATE INDEX code_challenges_field_index ON public.code_challenges_components USING btree (field);
 /   DROP INDEX public.code_challenges_field_index;
       public            acc-v4    false    260            �           1259    16734     code_challenges_updated_by_id_fk    INDEX     e   CREATE INDEX code_challenges_updated_by_id_fk ON public.code_challenges USING btree (updated_by_id);
 4   DROP INDEX public.code_challenges_updated_by_id_fk;
       public            acc-v4    false    234            �           1259    16983 5   components_content_challenges_code_challenge_links_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_fk ON public.components_content_challenges_code_challenge_links USING btree (challenges_id);
 I   DROP INDEX public.components_content_challenges_code_challenge_links_fk;
       public            acc-v4    false    272            �           1259    16984 9   components_content_challenges_code_challenge_links_inv_fk    INDEX     �   CREATE INDEX components_content_challenges_code_challenge_links_inv_fk ON public.components_content_challenges_code_challenge_links USING btree (code_challenge_id);
 M   DROP INDEX public.components_content_challenges_code_challenge_links_inv_fk;
       public            acc-v4    false    272            �           1259    25228 ?   components_content_challenges_multiple_choice_challenge_links_f    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_f ON public.components_content_challenges_multiple_choice_challenge_links USING btree (challenges_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_f;
       public            acc-v4    false    276            �           1259    25229 ?   components_content_challenges_multiple_choice_challenge_links_i    INDEX     �   CREATE INDEX components_content_challenges_multiple_choice_challenge_links_i ON public.components_content_challenges_multiple_choice_challenge_links USING btree (multiple_choice_challenge_id);
 S   DROP INDEX public.components_content_challenges_multiple_choice_challenge_links_i;
       public            acc-v4    false    276                       1259    25138 0   components_content_steps_code_challenge_links_fk    INDEX     �   CREATE INDEX components_content_steps_code_challenge_links_fk ON public.components_content_steps_code_challenge_links USING btree (steps_id);
 D   DROP INDEX public.components_content_steps_code_challenge_links_fk;
       public            acc-v4    false    295                       1259    25139 4   components_content_steps_code_challenge_links_inv_fk    INDEX     �   CREATE INDEX components_content_steps_code_challenge_links_inv_fk ON public.components_content_steps_code_challenge_links USING btree (code_challenge_id);
 H   DROP INDEX public.components_content_steps_code_challenge_links_inv_fk;
       public            acc-v4    false    295                       1259    25143 ;   components_content_steps_multiple_choice_challenge_links_fk    INDEX     �   CREATE INDEX components_content_steps_multiple_choice_challenge_links_fk ON public.components_content_steps_multiple_choice_challenge_links USING btree (steps_id);
 O   DROP INDEX public.components_content_steps_multiple_choice_challenge_links_fk;
       public            acc-v4    false    296                       1259    25144 ?   components_content_steps_multiple_choice_challenge_links_inv_fk    INDEX     �   CREATE INDEX components_content_steps_multiple_choice_challenge_links_inv_fk ON public.components_content_steps_multiple_choice_challenge_links USING btree (multiple_choice_challenge_id);
 S   DROP INDEX public.components_content_steps_multiple_choice_challenge_links_inv_fk;
       public            acc-v4    false    296            "           1259    25196 ,   components_content_steps_playground_links_fk    INDEX     �   CREATE INDEX components_content_steps_playground_links_fk ON public.components_content_steps_playground_links USING btree (steps_id);
 @   DROP INDEX public.components_content_steps_playground_links_fk;
       public            acc-v4    false    299            #           1259    25197 0   components_content_steps_playground_links_inv_fk    INDEX     �   CREATE INDEX components_content_steps_playground_links_inv_fk ON public.components_content_steps_playground_links USING btree (playground_id);
 D   DROP INDEX public.components_content_steps_playground_links_inv_fk;
       public            acc-v4    false    299            �           1259    16993 .   components_misc_module_lessons_lesson_links_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_fk ON public.components_misc_module_lessons_lesson_links USING btree (module_lesson_id);
 B   DROP INDEX public.components_misc_module_lessons_lesson_links_fk;
       public            acc-v4    false    273            �           1259    16994 2   components_misc_module_lessons_lesson_links_inv_fk    INDEX     �   CREATE INDEX components_misc_module_lessons_lesson_links_inv_fk ON public.components_misc_module_lessons_lesson_links USING btree (lesson_id);
 F   DROP INDEX public.components_misc_module_lessons_lesson_links_inv_fk;
       public            acc-v4    false    273                       1259    25081 <   components_translations_core_components_component_type_index    INDEX     �   CREATE INDEX components_translations_core_components_component_type_index ON public.components_translations_core_components_components USING btree (component_type);
 P   DROP INDEX public.components_translations_core_components_component_type_index;
       public            acc-v4    false    292                       1259    25082 1   components_translations_core_components_entity_fk    INDEX     �   CREATE INDEX components_translations_core_components_entity_fk ON public.components_translations_core_components_components USING btree (entity_id);
 E   DROP INDEX public.components_translations_core_components_entity_fk;
       public            acc-v4    false    292                       1259    25080 3   components_translations_core_components_field_index    INDEX     �   CREATE INDEX components_translations_core_components_field_index ON public.components_translations_core_components_components USING btree (field);
 G   DROP INDEX public.components_translations_core_components_field_index;
       public            acc-v4    false    292            �           1259    16746    courses_created_by_id_fk    INDEX     U   CREATE INDEX courses_created_by_id_fk ON public.courses USING btree (created_by_id);
 ,   DROP INDEX public.courses_created_by_id_fk;
       public            acc-v4    false    236            �           1259    16888    courses_modules_links_fk    INDEX     _   CREATE INDEX courses_modules_links_fk ON public.courses_modules_links USING btree (course_id);
 ,   DROP INDEX public.courses_modules_links_fk;
       public            acc-v4    false    261            �           1259    16889    courses_modules_links_inv_fk    INDEX     c   CREATE INDEX courses_modules_links_inv_fk ON public.courses_modules_links USING btree (module_id);
 0   DROP INDEX public.courses_modules_links_inv_fk;
       public            acc-v4    false    261            �           1259    16747    courses_updated_by_id_fk    INDEX     U   CREATE INDEX courses_updated_by_id_fk ON public.courses USING btree (updated_by_id);
 ,   DROP INDEX public.courses_updated_by_id_fk;
       public            acc-v4    false    236            �           1259    16502    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            acc-v4    false    219            �           1259    16569    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            acc-v4    false    230            �           1259    16503    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            acc-v4    false    219            �           1259    16515    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            acc-v4    false    221            �           1259    16516    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            acc-v4    false    221            �           1259    16903    lessons_component_type_index    INDEX     e   CREATE INDEX lessons_component_type_index ON public.lessons_components USING btree (component_type);
 0   DROP INDEX public.lessons_component_type_index;
       public            acc-v4    false    263            �           1259    16759    lessons_created_by_id_fk    INDEX     U   CREATE INDEX lessons_created_by_id_fk ON public.lessons USING btree (created_by_id);
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
       public            acc-v4    false    265            �           1259    16760    lessons_updated_by_id_fk    INDEX     U   CREATE INDEX lessons_updated_by_id_fk ON public.lessons USING btree (updated_by_id);
 ,   DROP INDEX public.lessons_updated_by_id_fk;
       public            acc-v4    false    238            �           1259    16928    modules_component_type_index    INDEX     e   CREATE INDEX modules_component_type_index ON public.modules_components USING btree (component_type);
 0   DROP INDEX public.modules_component_type_index;
       public            acc-v4    false    267            �           1259    16769    modules_created_by_id_fk    INDEX     U   CREATE INDEX modules_created_by_id_fk ON public.modules USING btree (created_by_id);
 ,   DROP INDEX public.modules_created_by_id_fk;
       public            acc-v4    false    240            �           1259    16929    modules_entity_fk    INDEX     U   CREATE INDEX modules_entity_fk ON public.modules_components USING btree (entity_id);
 %   DROP INDEX public.modules_entity_fk;
       public            acc-v4    false    267            �           1259    16927    modules_field_index    INDEX     S   CREATE INDEX modules_field_index ON public.modules_components USING btree (field);
 '   DROP INDEX public.modules_field_index;
       public            acc-v4    false    267            �           1259    16770    modules_updated_by_id_fk    INDEX     U   CREATE INDEX modules_updated_by_id_fk ON public.modules USING btree (updated_by_id);
 ,   DROP INDEX public.modules_updated_by_id_fk;
       public            acc-v4    false    240            �           1259    16943 /   multiple_choice_challenges_component_type_index    INDEX     �   CREATE INDEX multiple_choice_challenges_component_type_index ON public.multiple_choice_challenges_components USING btree (component_type);
 C   DROP INDEX public.multiple_choice_challenges_component_type_index;
       public            acc-v4    false    269            �           1259    16782 +   multiple_choice_challenges_created_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_created_by_id_fk ON public.multiple_choice_challenges USING btree (created_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_created_by_id_fk;
       public            acc-v4    false    242            �           1259    16944 $   multiple_choice_challenges_entity_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_entity_fk ON public.multiple_choice_challenges_components USING btree (entity_id);
 8   DROP INDEX public.multiple_choice_challenges_entity_fk;
       public            acc-v4    false    269            �           1259    16942 &   multiple_choice_challenges_field_index    INDEX     y   CREATE INDEX multiple_choice_challenges_field_index ON public.multiple_choice_challenges_components USING btree (field);
 :   DROP INDEX public.multiple_choice_challenges_field_index;
       public            acc-v4    false    269            �           1259    16783 +   multiple_choice_challenges_updated_by_id_fk    INDEX     {   CREATE INDEX multiple_choice_challenges_updated_by_id_fk ON public.multiple_choice_challenges USING btree (updated_by_id);
 ?   DROP INDEX public.multiple_choice_challenges_updated_by_id_fk;
       public            acc-v4    false    242                       1259    25191    playgrounds_created_by_id_fk    INDEX     ]   CREATE INDEX playgrounds_created_by_id_fk ON public.playgrounds USING btree (created_by_id);
 0   DROP INDEX public.playgrounds_created_by_id_fk;
       public            acc-v4    false    298            !           1259    25192    playgrounds_updated_by_id_fk    INDEX     ]   CREATE INDEX playgrounds_updated_by_id_fk ON public.playgrounds USING btree (updated_by_id);
 0   DROP INDEX public.playgrounds_updated_by_id_fk;
       public            acc-v4    false    298            �           1259    16489 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            acc-v4    false    217            �           1259    16490 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
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
       public            acc-v4    false    246                       1259    25066 '   translation_groups_component_type_index    INDEX     {   CREATE INDEX translation_groups_component_type_index ON public.translation_groups_components USING btree (component_type);
 ;   DROP INDEX public.translation_groups_component_type_index;
       public            acc-v4    false    290                       1259    25016 #   translation_groups_created_by_id_fk    INDEX     k   CREATE INDEX translation_groups_created_by_id_fk ON public.translation_groups USING btree (created_by_id);
 7   DROP INDEX public.translation_groups_created_by_id_fk;
       public            acc-v4    false    281                       1259    25067    translation_groups_entity_fk    INDEX     k   CREATE INDEX translation_groups_entity_fk ON public.translation_groups_components USING btree (entity_id);
 0   DROP INDEX public.translation_groups_entity_fk;
       public            acc-v4    false    290                       1259    25065    translation_groups_field_index    INDEX     i   CREATE INDEX translation_groups_field_index ON public.translation_groups_components USING btree (field);
 2   DROP INDEX public.translation_groups_field_index;
       public            acc-v4    false    290                       1259    25017 #   translation_groups_updated_by_id_fk    INDEX     k   CREATE INDEX translation_groups_updated_by_id_fk ON public.translation_groups USING btree (updated_by_id);
 7   DROP INDEX public.translation_groups_updated_by_id_fk;
       public            acc-v4    false    281            �           1259    16525    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            acc-v4    false    223            �           1259    16573    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            acc-v4    false    231            �           1259    16574     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            acc-v4    false    231            �           1259    16526    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            acc-v4    false    223            �           1259    16538    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            acc-v4    false    225            �           1259    16539    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            acc-v4    false    225            �           1259    16551    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            acc-v4    false    227            �           1259    16578    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            acc-v4    false    232            �           1259    16579    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            acc-v4    false    232            �           1259    16552    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            acc-v4    false    227            $           2606    16580 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          acc-v4    false    211    213    4230            6           2606    16670 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          acc-v4    false    211    4226    228            7           2606    16675 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          acc-v4    false    228    4234    215            %           2606    16585 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          acc-v4    false    4230    213    211            (           2606    16600 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          acc-v4    false    213    4230    215            )           2606    16605 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          acc-v4    false    4230    213    215            &           2606    16590 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          acc-v4    false    213    213    4230            8           2606    16680 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          acc-v4    false    4230    229    213            9           2606    16685 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          acc-v4    false    229    4234    215            '           2606    16595 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          acc-v4    false    213    213    4230            f           2606    25093 @   code_challenges_category_links code_challenges_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_category_links
    ADD CONSTRAINT code_challenges_category_links_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.code_challenges_category_links DROP CONSTRAINT code_challenges_category_links_fk;
       public          acc-v4    false    4271    234    288            g           2606    25098 D   code_challenges_category_links code_challenges_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_category_links
    ADD CONSTRAINT code_challenges_category_links_inv_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.code_challenges_category_links DROP CONSTRAINT code_challenges_category_links_inv_fk;
       public          acc-v4    false    4291    288    244            ?           2606    16995 0   code_challenges code_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_created_by_id_fk;
       public          acc-v4    false    234    4230    213            M           2606    17065 4   code_challenges_components code_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges_components
    ADD CONSTRAINT code_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.code_challenges_components DROP CONSTRAINT code_challenges_entity_fk;
       public          acc-v4    false    260    234    4271            @           2606    17000 0   code_challenges code_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.code_challenges
    ADD CONSTRAINT code_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.code_challenges DROP CONSTRAINT code_challenges_updated_by_id_fk;
       public          acc-v4    false    213    4230    234            X           2606    17160 h   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_fk FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_fk;
       public          acc-v4    false    272    254    4304            Y           2606    17165 l   components_content_challenges_code_challenge_links components_content_challenges_code_challenge_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links
    ADD CONSTRAINT components_content_challenges_code_challenge_links_inv_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_code_challenge_links DROP CONSTRAINT components_content_challenges_code_challenge_links_inv_fk;
       public          acc-v4    false    4271    234    272            `           2606    25218 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_f    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f FOREIGN KEY (challenges_id) REFERENCES public.components_content_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_f;
       public          acc-v4    false    254    4304    276            a           2606    25223 }   components_content_challenges_multiple_choice_challenge_links components_content_challenges_multiple_choice_challenge_links_i    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i FOREIGN KEY (multiple_choice_challenge_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_challenges_multiple_choice_challenge_links DROP CONSTRAINT components_content_challenges_multiple_choice_challenge_links_i;
       public          acc-v4    false    276    242    4287            j           2606    25145 ^   components_content_steps_code_challenge_links components_content_steps_code_challenge_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_steps_code_challenge_links
    ADD CONSTRAINT components_content_steps_code_challenge_links_fk FOREIGN KEY (steps_id) REFERENCES public.components_content_steps(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_steps_code_challenge_links DROP CONSTRAINT components_content_steps_code_challenge_links_fk;
       public          acc-v4    false    294    295    4377            k           2606    25150 b   components_content_steps_code_challenge_links components_content_steps_code_challenge_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_steps_code_challenge_links
    ADD CONSTRAINT components_content_steps_code_challenge_links_inv_fk FOREIGN KEY (code_challenge_id) REFERENCES public.code_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_steps_code_challenge_links DROP CONSTRAINT components_content_steps_code_challenge_links_inv_fk;
       public          acc-v4    false    295    4271    234            l           2606    25155 t   components_content_steps_multiple_choice_challenge_links components_content_steps_multiple_choice_challenge_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_steps_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_steps_multiple_choice_challenge_links_fk FOREIGN KEY (steps_id) REFERENCES public.components_content_steps(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_steps_multiple_choice_challenge_links DROP CONSTRAINT components_content_steps_multiple_choice_challenge_links_fk;
       public          acc-v4    false    4377    294    296            m           2606    25160 x   components_content_steps_multiple_choice_challenge_links components_content_steps_multiple_choice_challenge_links_inv_fk    FK CONSTRAINT       ALTER TABLE ONLY public.components_content_steps_multiple_choice_challenge_links
    ADD CONSTRAINT components_content_steps_multiple_choice_challenge_links_inv_fk FOREIGN KEY (multiple_choice_challenge_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_steps_multiple_choice_challenge_links DROP CONSTRAINT components_content_steps_multiple_choice_challenge_links_inv_fk;
       public          acc-v4    false    296    4287    242            p           2606    25208 V   components_content_steps_playground_links components_content_steps_playground_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_steps_playground_links
    ADD CONSTRAINT components_content_steps_playground_links_fk FOREIGN KEY (steps_id) REFERENCES public.components_content_steps(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_steps_playground_links DROP CONSTRAINT components_content_steps_playground_links_fk;
       public          acc-v4    false    294    299    4377            q           2606    25213 Z   components_content_steps_playground_links components_content_steps_playground_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_content_steps_playground_links
    ADD CONSTRAINT components_content_steps_playground_links_inv_fk FOREIGN KEY (playground_id) REFERENCES public.playgrounds(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_content_steps_playground_links DROP CONSTRAINT components_content_steps_playground_links_inv_fk;
       public          acc-v4    false    4384    299    298            Z           2606    17180 Z   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_fk FOREIGN KEY (module_lesson_id) REFERENCES public.components_misc_module_lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_fk;
       public          acc-v4    false    273    258    4308            [           2606    17185 ^   components_misc_module_lessons_lesson_links components_misc_module_lessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links
    ADD CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_misc_module_lessons_lesson_links DROP CONSTRAINT components_misc_module_lessons_lesson_links_inv_fk;
       public          acc-v4    false    238    4279    273            i           2606    25108 d   components_translations_core_components_components components_translations_core_components_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_translations_core_components_components
    ADD CONSTRAINT components_translations_core_components_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_translations_core_components(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_translations_core_components_components DROP CONSTRAINT components_translations_core_components_entity_fk;
       public          acc-v4    false    4361    285    292            A           2606    17005     courses courses_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_created_by_id_fk;
       public          acc-v4    false    236    4230    213            N           2606    17070 .   courses_modules_links courses_modules_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_fk FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_fk;
       public          acc-v4    false    261    236    4275            O           2606    17075 2   courses_modules_links courses_modules_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_modules_links
    ADD CONSTRAINT courses_modules_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.courses_modules_links DROP CONSTRAINT courses_modules_links_inv_fk;
       public          acc-v4    false    261    240    4283            B           2606    17010     courses courses_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_updated_by_id_fk;
       public          acc-v4    false    236    213    4230            ,           2606    16620    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          acc-v4    false    219    213    4230            :           2606    16690 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          acc-v4    false    219    4242    230            -           2606    16625    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          acc-v4    false    4230    213    219            .           2606    16630 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          acc-v4    false    4230    221    213            /           2606    16635 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          acc-v4    false    221    213    4230            C           2606    17015     lessons lessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_created_by_id_fk;
       public          acc-v4    false    213    238    4230            P           2606    17080 $   lessons_components lessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_components
    ADD CONSTRAINT lessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.lessons_components DROP CONSTRAINT lessons_entity_fk;
       public          acc-v4    false    263    238    4279            Q           2606    17085 ,   lessons_module_links lessons_module_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_fk;
       public          acc-v4    false    264    238    4279            R           2606    17090 0   lessons_module_links lessons_module_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_module_links
    ADD CONSTRAINT lessons_module_links_inv_fk FOREIGN KEY (module_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.lessons_module_links DROP CONSTRAINT lessons_module_links_inv_fk;
       public          acc-v4    false    264    240    4283            S           2606    17095 8   lessons_syntax_entry_links lessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_fk;
       public          acc-v4    false    265    238    4279            T           2606    17100 <   lessons_syntax_entry_links lessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons_syntax_entry_links
    ADD CONSTRAINT lessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.lessons_syntax_entry_links DROP CONSTRAINT lessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    265    246    4295            D           2606    17020     lessons lessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_updated_by_id_fk;
       public          acc-v4    false    238    4230    213            E           2606    17025     modules modules_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_created_by_id_fk;
       public          acc-v4    false    4230    213    240            U           2606    17105 $   modules_components modules_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules_components
    ADD CONSTRAINT modules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.modules(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.modules_components DROP CONSTRAINT modules_entity_fk;
       public          acc-v4    false    267    240    4283            F           2606    17030     modules modules_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.modules DROP CONSTRAINT modules_updated_by_id_fk;
       public          acc-v4    false    4230    213    240            G           2606    17035 F   multiple_choice_challenges multiple_choice_challenges_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_created_by_id_fk;
       public          acc-v4    false    4230    213    242            V           2606    17110 J   multiple_choice_challenges_components multiple_choice_challenges_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges_components
    ADD CONSTRAINT multiple_choice_challenges_entity_fk FOREIGN KEY (entity_id) REFERENCES public.multiple_choice_challenges(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.multiple_choice_challenges_components DROP CONSTRAINT multiple_choice_challenges_entity_fk;
       public          acc-v4    false    269    242    4287            H           2606    17040 F   multiple_choice_challenges multiple_choice_challenges_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.multiple_choice_challenges
    ADD CONSTRAINT multiple_choice_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.multiple_choice_challenges DROP CONSTRAINT multiple_choice_challenges_updated_by_id_fk;
       public          acc-v4    false    4230    213    242            n           2606    25198 (   playgrounds playgrounds_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.playgrounds
    ADD CONSTRAINT playgrounds_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.playgrounds DROP CONSTRAINT playgrounds_created_by_id_fk;
       public          acc-v4    false    4230    298    213            o           2606    25203 (   playgrounds playgrounds_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.playgrounds
    ADD CONSTRAINT playgrounds_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.playgrounds DROP CONSTRAINT playgrounds_updated_by_id_fk;
       public          acc-v4    false    298    4230    213            *           2606    16610 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          acc-v4    false    217    4230    213            +           2606    16615 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          acc-v4    false    217    4230    213            I           2606    17045 &   sublessons sublessons_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_created_by_id_fk;
       public          acc-v4    false    4230    213    244            W           2606    17115 *   sublessons_components sublessons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_components
    ADD CONSTRAINT sublessons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.sublessons_components DROP CONSTRAINT sublessons_entity_fk;
       public          acc-v4    false    271    244    4291            \           2606    17860 2   sublessons_lesson_links sublessons_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_fk;
       public          acc-v4    false    274    4291    244            ]           2606    17865 6   sublessons_lesson_links sublessons_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_lesson_links
    ADD CONSTRAINT sublessons_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.sublessons_lesson_links DROP CONSTRAINT sublessons_lesson_links_inv_fk;
       public          acc-v4    false    238    4279    274            ^           2606    17870 >   sublessons_syntax_entry_links sublessons_syntax_entry_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_fk FOREIGN KEY (sublesson_id) REFERENCES public.sublessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_fk;
       public          acc-v4    false    4291    244    275            _           2606    17875 B   sublessons_syntax_entry_links sublessons_syntax_entry_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons_syntax_entry_links
    ADD CONSTRAINT sublessons_syntax_entry_links_inv_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.sublessons_syntax_entry_links DROP CONSTRAINT sublessons_syntax_entry_links_inv_fk;
       public          acc-v4    false    4295    275    246            J           2606    17050 &   sublessons sublessons_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sublessons
    ADD CONSTRAINT sublessons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.sublessons DROP CONSTRAINT sublessons_updated_by_id_fk;
       public          acc-v4    false    244    213    4230            K           2606    17055 .   syntax_entries syntax_entries_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_created_by_id_fk;
       public          acc-v4    false    246    213    4230            b           2606    18093 :   syntax_entries_lesson_links syntax_entries_lesson_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_fk FOREIGN KEY (syntax_entry_id) REFERENCES public.syntax_entries(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_fk;
       public          acc-v4    false    246    277    4295            c           2606    18098 >   syntax_entries_lesson_links syntax_entries_lesson_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries_lesson_links
    ADD CONSTRAINT syntax_entries_lesson_links_inv_fk FOREIGN KEY (lesson_id) REFERENCES public.lessons(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.syntax_entries_lesson_links DROP CONSTRAINT syntax_entries_lesson_links_inv_fk;
       public          acc-v4    false    238    277    4279            L           2606    17060 .   syntax_entries syntax_entries_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.syntax_entries
    ADD CONSTRAINT syntax_entries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.syntax_entries DROP CONSTRAINT syntax_entries_updated_by_id_fk;
       public          acc-v4    false    246    213    4230            d           2606    25083 6   translation_groups translation_groups_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.translation_groups
    ADD CONSTRAINT translation_groups_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.translation_groups DROP CONSTRAINT translation_groups_created_by_id_fk;
       public          acc-v4    false    281    4230    213            h           2606    25103 :   translation_groups_components translation_groups_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.translation_groups_components
    ADD CONSTRAINT translation_groups_entity_fk FOREIGN KEY (entity_id) REFERENCES public.translation_groups(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.translation_groups_components DROP CONSTRAINT translation_groups_entity_fk;
       public          acc-v4    false    4356    281    290            e           2606    25088 6   translation_groups translation_groups_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.translation_groups
    ADD CONSTRAINT translation_groups_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.translation_groups DROP CONSTRAINT translation_groups_updated_by_id_fk;
       public          acc-v4    false    281    213    4230            0           2606    16640 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          acc-v4    false    4230    213    223            ;           2606    16695 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          acc-v4    false    4250    231    223            <           2606    16700 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          acc-v4    false    4254    231    225            1           2606    16645 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          acc-v4    false    4230    213    223            2           2606    16650 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          acc-v4    false    225    4230    213            3           2606    16655 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          acc-v4    false    213    225    4230            4           2606    16660 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          acc-v4    false    4230    213    227            =           2606    16705 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          acc-v4    false    227    4258    232            >           2606    16710 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          acc-v4    false    4254    225    232            5           2606    16665 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          acc-v4    false    4230    227    213            �   �  x��[�o�6>'���,H$%Q>.ذ��[���I�Ȓ �I�a��H��E�O��eX�
۟�������jpє�����MY��ײ4����⯿/��@>
��"�	��]�<B!��ه7��Td�u�，���9�	���1 ����'!���	 =��*�yY~� >�!n��y[��9v�>*���y��{�U�mg���'�A|����!� >J�NNv_���_����@�(=�_�v���hY]�����J�X�O\e��H�hK:�vۆ���늺��r�⯫ۂ�yw�ۼ�H����w�+�O�R�i����Y;��y��\�o_�[	��X%Pn�m��Ӟ�8��w7e�=�oۺdWa������<��`�	�<2��d{F\�@�󐳒9�`��\Z�VtEuW�m��0Q8w��m��\"d/7�Z#PkV�%˄>G3PG#]G�xA�+�Lu��s}��i�oF�Z�L�X���P����e��\�8nC�{<�{���Ez�@\�L��E��
\J^�KG@I�(AP��ҋE1K��%�zn�r�Ě��sܖ#
�?խ��[5@��n�h����ɻ1ЪƺUE�U�y�c�I�u���U�K�ā�w��X��ZF�=d.O��n!�,�܊�}�T�U��	l�).ՠ�j��B�h"*�0>���Cľ\*"�T��D^DZ�"�N���A�C��j؏�=�7%W䴶ҧ�+:�0�5�tAe�?�U���;@�w ��R�Nj���3�B\�i��zNb�TW ��d<�,��v�קeyN	�`�J0���*'5ԷW&�K5X�yb7�u��VY)p0��`@�L�y�)0�z ��S�.�B�f��f���O�TJ��=����X	bߍ^l��.�RS����h
S��!�����T'VC B��A�v�F �b D�TV�zKu��)ӉU
�J5�Ĕ��*�HS�H�:�Ҧ��bz�H-�DS�D��E�y~ߞ_��c�`���NtR�h���N��� �??7��s��G���g��Ŝ�yQ���}�xH��:(��p��P�au�t�q�]�OËi��K�Yt?�� ����*-�Լ�F^�F�7��f<��0l��88ڿC�����hOw�e���>��Cշ�G����d�M�H��	ϊĥ��S�F����Ù�?��$v���<i���Z{e_4%�f�u���p��/��\U��C��s�%��Ew]�-�L��F�z����'��3�}�O������,�~gb������Q�o��|��dqk����P���I���Y��UN��ƍ�v!�&�O@\����,��;{l��ڢQ�/CTxD������Z}<�NE��p�W�{�Xd���G,1;���Lwb���/�f�:��i��^����;M�+���	qi�C�O�{U6�������݇��_�>��ĝ�"�N����doi.�phKe,s3�d~�7���%@\�ԡ5-1���<Z����&M5���9�w���.���OJ�94�C*u���������,pi�C���gmj�S��*��(][&j�7��dED��	���̊������%����u�/Ů9A{ ǫ �{��;ʶ�5�ءnM�׻Ǎ�IV\>��Pe�`��d6t���c� -�F��i+nR��o�<�{�������tDom�Zw������?q���=�r��+��{v˗�G�����Ww��}b�\�ۖ=��3�s��>�zY�1�:�jD<,5Z�q��,��`��#/문��ʙ@ߦUW4n���f����>�o�@�/��D���K���ܤ������m�ˊ�~��n����Ǚ�W�_y����x�-���c��c_T����͊�կl�E�kG,�`5�\��|YK(����<�:�6(�oyX��P�Ц�9�&\'o��&�mQ�"���W�8l��-��x�#�`��a�35��|l1$q��C�M��	y螃`�;?�a���W��l���i�JYƱ����Oyo�&W�|���	x��1��u����/VE���3�C�i���۽E��D�uy��
aW�j���kD��2{]��D�#��ì+;��( B�^Y��::�&F���1�l|dv��	�I�9�LX;[mCР����]^^�u}�      
   �   x�%��!�G1Q����%��fyx%�c10�qJ��T�Z��>է�S�K�g���$�X�&�xOė���������� !AB�� "!"!"!"!"!
� 
� 
� 
� 
bѼ�[�-l������7�ͺ�dl�ٌmڛ�mO����%��������^_�Ʋ��,[ʚ�g,O�n,��:,!����=͏�ø_g��g��_�J      �   �   x�u��n� @g���
q�*[��]�f��%Fr��J���"Gɀ��=$���y�{w�A�$\|���?z9f� �%f�����8�p!���r&�<(�at�MoFЛ���i3�[�䧟�:��KLkթ�Z���m����6� >�9� 2E&��2�Wd�Ԋ��6y�ڨ}.�=��N�E����a��BR�"r����U���%�~U      �   �  x�u�[o�@���_ᅷN�W��V���.�7á��\���MM�7�f��|y��`�M�a	�i��|������2��/20!|����<7�o"�ߢ�4��m�:P#4O�V�@[����J�L��ȥ�|^
AO1�6�T��(}ȯ�G�OmQ&�rg�~����јL���U��/W��Y��5��m�^�������˿U��s�@Uc�Й�("r�e(��*jt�=�yP�-�5������/��O������"1c��Ƶ�a"����:��J�cg�>E��~��0�~��)��XPU��p��2D�p��v,���2
�~��4�K��i��]+���Mڵ�q�砥/3H��f�����c�Zf���J��`���Ƅ*�]fM)��(T�3z���F� l��            x�3�4�2bc61z\\\ ��            x��[[�۶�~�~�_d�2+Q�-)��$Nܸ��>��̙� �S�B�[V:���[ /��������MbX�+�I�Û���PB�r�D�~�t�*/��C>��{#��<�}eU!N:�D"�=�VyRj��5-[��^'{a���RQʏJ�\��,�A���u�x�2ŀk��}l�[�Bi�]��d��C�	��&�ZS��C;��R���;�s[��s8V8�-����[�9�Y!����H|�'�x�S�%�&�>C���\�}[��wp6țwo_zf���{��6�_�qGLx��v%�'�}TgQaM�����8f���ڊM��Gz�3B��@�J�T9��Ml�@�8S: �'{�U�N9��d�
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
�!��n��Ù�y9�Qt�%A\���ڎg�]���������P���~4�T���`� f<{�ݕ-D�۬0��liK�\��V��$[p<�lLY��S���~zc@�<��Ǻ~�r���w�`�O�4㪭!�v]���ܱh���#z��\���Z��8�bv���b5�1��޸_�L�\6XN��~��k�      F      x������ � �      *      x����jADϚ�����Ϲ���{��>��O�b<aٮeY��C�QK*��1-�j��燗���������������������}O�J|����/[Lįv��A>�z��Rf�hV�*}��*ݧ�S�?��y�b!�H���y�����!�J�!]� ����51�\��t�-���rJ$��B1U�O=5yM?���U=��}�Lv���˓}ŗ��KG��
����t�g���<;���l*�X\#N1a� ����p���4��1��X0Ӻ��L+6l,���Y��/��a澠�y�}��g`p����p̈&[Q����r���V��%�M������jN��0�HQ�g�(�Q����`�@|QDӉĢ���j��w��!Oq��&[���\��1MmϨ�,��D'îyn�t�C-t�Ss,���dbі�w2����b�S���}����������6	�^�:�mM^k�
�bч����
��E�S�Dg���xU��u�LN2�^Kw�y^8�a�u�W]�n���	�����J\������u�g�4y��y4n&Z|Ǡ,~��03X�-�[0fY9u�V+Ⴐ	��	Ώ8���;���V"H�Hk+r|z5x=~$�-(*�6x��ow���8A��p�V��֚�55p��hU�s��(�F��y��PݲmY6��	1+i�e)��?3!K�e���y�[dų�4\�k��f\k�S�}u�69�[��?�G�����G^�\T-v:�ZWHO�.O,���"3w���D�&^�5~�o���lB�         2  x�uT�n�0<+_��E- (����c)�� ��ZZI���@RV��ݥ�G��bwvvf�������|�� � ��^S�A�E%��� [�͘A��\�s%#��'��,����w�@�ã�4����;���0`�C(�҄e�8T���S)�ی�er�/g˙p���,A��>��>@��ǌmkF��Щ�q�¶]Хl�%�Ap#HShB�����F�܌��?���jMkz�S�	*A%k��B�D� 4�B����J_B��
E���YU4\����Z�p��@���UO���Xy-w���\ݷH!�{�@����Tiٶ�a�^�*��ļ��������*��z���6� �T�0p���{�|����܅�����H�e8���%c�/3��2�a!���GiX�Z1�C�H�[M!��-��t�r�(x	Z�{W ��K��Ӛ�s��<���d:ߛ��0rf]&j���0h��"�~@x�OD�;���4���:��؃G��d��U�6�<���įd۽lT_��XT4"+՘K���h𬉏�fq��t��ݠ��մ�QR:��+�&[K]Uo
�9,b�[�}V�'G�جNΎ���4�Ԁ �fDV^m����Lo7���u�8�ZրW�X^i�ySd�ߛ6��^�h��}Bz��+����l�d��/��t��R4V��h/�;I=��IƘ�<LV9&��5�|G�S�d��D]'��Eb!�I�)�/Y���vH�����A��I?̑'d�;��̋�~LV1�7Im����7���g���
f�j�|�t.�e$��������N�          4	  x��Y�o�������R�8����|��qy��jE�D�W�]IQz��;3KR$E�Np��AbG;;;��]��dH�����{w2q���ׯ�Vr'"-�2�P[�����Q��:�!��L#9�AL���LE(��"Y/!�|$Ǹ�٭@�s��3H]R4:�,�(�d�`%4�����C�R,ױ�^Ƹ&|�\BbH�Z��?}��I�dq%~�@��W���k�}��H`�?
�࢖K�'�2��J�����V+�
��B�F?�4�J~�x�>Ka�6�1����]2���.�KH�R?�ju�1������̿�*Ѧ�>{�yE��H���$��:Z$쁋\���Y���>�Ő�@�L��ȴ������<[��_�#1�^d'Σ5�0�R^��2e�`b��i"�5�[�f~$�z�q�MA
Zg@���T&�����9{�L[!ı[��A�S.V�h�ܢbp��s+�/���,g�-it;�O��L��S��z��$�E�F�SJ�{e9�[Kk�U�̿�sǗ��_���7��Y�:E���%c�)n�c_������\�3�߷ˊL(�{,{���Z��>J:R���$u��B��"�-�j�����L��S"H|�m�r|��dh�qE�_�qJ��]����!��@��U������9���o�R~%�Ha��vB/?�cR���0a�O�22���BOhδ���:�eV��d�Йg	&Jf�dV/Bb$���Z�WWX�K���u[d�s����25�b�,\��)�fkZ�52:;����l�7p�X�︉�FKз[��9�Z�����(������z��*�6����U><��q����:��_K�Fn0�:s�h�#���d���R>xݩc��u�p}6]�!`<�k��m�,~��\��*W��w��?��2A`��w�s���3p��	Ֆ�����F?8U�M�b�=�9�4�q�s�zfR���T:b�qV]����:��~�0��D�6]�G*��0�5�1��="crC6����	�^� �Gt����Ŭ�TbB�Uk��1r�'�T]O`��L�K^U����k`{���f{���-m�9�����*<��9S_movYV����hs��W.���^鍛�yR��	Z���%G�ÃG�35��;��I��%�i	�~9�=��Qd�|a;��Q�a�Ȑ��H�F��u3�C\n�F#<���|��J���)�{�b���X��e&XЛzéS�7�a��X�y��l8�kJ���J��g��~+�y{�(��"���Ue�,��<��D�^�-�q�p���EPD%xSY�8�Dor['��)���x+�lwZ�<�Bk����E�.k٨��e���VZ)v�h����1ՙ�2���f���Im���L/��b�J�h8o���1�+-�>&o}u�z��z�OF'�F@�/�D/JЩ���δZB��_��~�)��s�{?�3H��,�}{��c���*��-ŵ����P���S�YPg��8���Dm�':w�Qd΂nkn�u)�����+g4*��t�Z���`��p������}�	����Q�9�r�J��1y��28�HS��7{�Ԫ��D9��n���9��4���W��V�s.�I)����� ��`�ƃ���X���0ղ�)3�߆pl����~Μ�
����З�2��I���c��9g�R�3�?t"�>��"��._e�q��t��Q+�+��,��9z\X�krln�e>�G^?(��y�����-�HU�&q8O��ځE��s��Y�r�vS����\�$��m��g�p��r��9�c�����-�t���4�xY*��<��e����L��,��qPC�)j��XZ"W�ϱ����z�~�Q����`rpjH���A�hr��mu���:B�C�܀e%�����j�oZ@�7��'n����W �Q�`��ӭ��S*�3��Υ&�]�����v?�pk�1�߇�N	Y�U:ѧ�g�[�@n��@lC��F�'j+xRe�h��0�JQ�@6���2��i�'<_D�Ioi�Q����4��d���ݱk����w���Lt�"�}�R�2i����W�m+���y���}ɿk��g~J����i��Ꭶsr��cQz/��i��	�o��9����I3�;��6z3ZZ@���-�qK�A.w|k��w  �w3�l���1�|�o��!N���C���������������Cz^r���U��x�$�debրg0�J.ڏ�xdO^�o�x��������b����И���8��}XE�I>�����1#ݩ�SXK��ZFթ���W)^~�f}ș*f�Qwg'''�1L�      =      x������ � �      "   )  x��Xmo�6�L�
.(�vs=�������l]$݊bZ�-.�T\���ݑ�����@�H��xw��#�l~<�q*�[�Ւ���.Uze�($���"�B'|~r�Z��0��DVJ�=J,2ɖ��<1�|���S�Pao�b�e�eȊR��KAO�pĎ^�,3�WSH���2_��2��ܔn]:'ZۥR�T�eQ��{���^u��̬V2�Eߧ��T��<0��[�?�d���D��a-�β��T�ur�;�e��Z68����ݏ�G�ڟ��v���x�e��(x�e��!`xX�#�Q�.��3�����<{�+ä��ǒ��g��f2`�L:^��&?/�,�1t_̃�����Kfɮ��%ٵc ��)�Us�t ��\j��ʡ�Ī'(�X�(W�:)n��=6�������?�KUX0����Q�}k�ђ/*������@��Ӯ�moӬ��ߥ���Joӹ�%)�D�jע�G��������.K;1		^�%��cX�謢�ci-� �D��zz'��N��Kc��|�H�����%����l4n������`ƴ��ހ�&4@�.˫�X��;*���&F�{���ɛ���_/�^�^��{{y�s_�]�'Wg�8<�~���9?��^\�^������������l)��|.��E���o�B,���h�)�#�x����G�����cօ�0@>��]q��[��-�s�u*+�Y5��l>�_k�ߘ"K��~$�2&YT�NE)�Z�����0�����Y�kZ���{3�]�<��sXHn�0w�E���{�{ 
U	�R�wY�K���<�Bni:mD�S�k�/�w����Aίe��FW��:�7��4{��ҷ�m���ʥ�ki�Y���� �aJ��b��W���� $�[L&H80dU�/J`��R����Z.�;�pԛ�!\�&(��FƇy�F;�g뀌��&cH�ѐ��o���4�@n/Ei=�3�C�úP�7��^��g�VR�D$A�Z}�(~	��O.�@��-�X��a�A|�W��:Sv#��͆|b'Ū�8�3F�N`����RU�P"����a[�E����k��;D]k��c!!������z�D�ib���w&�6����9���	�>���q��]��̮����]f#�h<�!hL�M�	���f�!���W��mo7��O�@(c,��A˔���I����^���
�0�-�@QK�VK���@����7@��R���
է�!e4
X�a^�ѳ�Ҳ�:�[�B�����x�v��FD��,�9�P;�M��ҕ��JU�"��R��)c۰|1�K��{�����b�Oæ�6�[�_z1
����K\��C	��M�66(uS��t��y��P�����u&P��Kw�SH/\D|	H��.d�����ɱٲ�P1�X����{
�QBch��	r��\�!ءo��?ނ��(D$]?A���-R�;NQ"�&��*���堪��]��4���f��	ʏs�sغ��W� �m�߰���� _|yT��w�*b=�[J�f�^�����XC�Ꞃ�g�S0O�B�,�d�6���t#��������^�D�Q��,�����hi���D�!Bإ��;�I��1�tv��κ-v�����b7�?�<�2�� �2d�Yf#��̑��Uak=u"� ��^��*����zք�4��SQ$��t���g<�)l��0�JA��'�Y�)S�z�{&��3��Q�hR��l��m�ޖgO�`�: FJ�uaV��Hp�iT8ϫ~4���K|Y��0�2�8ԍ� ٺ�n!�K%B�t{�����Mp�|�44)_Y_'4�T4�]�<���~�ɧ���C@̓O�1��X.���?@T��u�_c{J$��fJ�|N�
n}�
���^R����mzϝ�h:�߮>����ܬ���h�A����M)��,Xz�4�W}��_�R{�}�
� ����N��?����O�Oά$�M��Ca�iQ]�\���f�Z��`�_���U�YA�˷B�u'��� _�K�      $   b   x���D1Cﯘ�$�L�uK���C�"	S"�4��#�����Z]�%�L�P��������7.<��o8�&�v��2<4����AF�������?�(      6   v   x���1�jb��EI�{��?G��؀@��,9�-_�HB��h]�b�ȋ�z����r�T}��\r��I�LZ�n�%����8Ԝ75�5���ԑ���^�-�-4���4����� p[�      :   Q   x����0�0L���t�9�|����/�ԁ����6��d4L�0ͽ 漒\T�S�O�!3
#*���?�k      &   j  x��U]o�6}��]�C�n�+P[��-���uy-��I�R�_�KIIl��x`��L�{xι�Ϫ��(��m�6��H̮�G��9@�}k"� 5|��J�Խ�|�.	�3�XK_�	>tLz��1ϝ�BE�t�Z�嚟�@l3�_M�εU�x^]]T
j$�kgZ��hj�C�Ƅ�ըrA;��c�:�#3�Z����*d�ۜ�w�I�X�,#�o�ƀ���X���b!��������_D/��KuQ�K��D0ѻ��jYN�#�ajR*妈��HR��_��g'���{ϫ�(�ժ:�*��wD��a��myZ����V�>�������?a����ȍ�-]�I�3T�g;a��03}Z]�����7�Nm�����۟��	1}&/���E��C���&c�'Qj��(L��4��]kR�ȻFDC�� d2�`�f]Ĭ|���'duL��
�[�s\JDy�bJ�RP%� ^����,�[:E(��M?A���V�I�4�d04cT�� �e����j���Ϟ�e�02���i�
���E���p����2��u�q�[���#�1����,�X�sq���
:�L\O�מ�ҥ,lQ.P�H����p���;�O�~ׇx��i�s��Յؕ��M�-RB������$7�.�SC��Zv�q��Ƽ�����W��$���۝}dru�X�Vo(���6�r�J�����mJ���^� j�/h��0���3�~F�7���9��Ce�pJT���N�|��]3��5��f��g���#��rP��2��ө��'�D����k)�eB�0^��F��7�'�����?W�g��C��%?~�o���3� �р����$�U�X,�8Sq      L      x������ � �      M      x������ � �      N      x������ � �      Q      x������ � �      (   )   x��I   �?a��.��!d��5۰LG�4�+S�W�{L�      7   ?   x�̹�0��[�ǼG:����Rp)�)�E��rr�hF�_����p�q��{���
n      A      x������ � �      C      x������ � �      J      x������ � �      E      x������ � �         f   x�3��J,K,N.�,(Qp�/�KI,���+��*�MC���Y*Z[��Z��čtuL-�Lͭ�,�,M-1�虚rqr��qqq G�w      +      x�3�4����� ]         a  x����n�0���S�g�_�����&M��4
�2㻯7�K�+8��wN�4�h�=Z[ūb_ǌ06!l��؄
�s/�P�ORNb<E�ěcn�y|N�G�	��8i��is�{�;M۠����BCM�f�6��"�\��B�Ff�m����T m �+a�ĕ&��oje��]j���σ�a���>T'�	�Lb�C��v�WJ�٭�PCS~�ti��Xkl��X�:��Xǘ��Q�Uڝk�G�]�c���*�Îp6cX��3%�W �.�rS��A��Ǫ���<B e�{昐]B^.�ӣ�R�͍��~�� �_��o����.���l.)���N��8��/���L            x������ � �         <   x�3�t�K��,�P�H���L��4202�54�52Q04�2��24�325�)�D\1z\\\ ��A         �  x�mU͒�6>�O�۞��)ޚ�6��tv�m��\�m+�%W����w��IJ�֑4���A���# ������6^���}�9��<O_*=}I.�ǛٓO�)�dB1!)d^;�A��d$ҭ�U�3� ������ʢ)/M�~�<��>���c���^j$a�$$�@����<7j$�IٝN�@o�0�L��K�"2`���^8n'�;^9�f�ȝ%��;4u{`u������Z��j��>��7h�5�rA ����ȥ��p��#����a��iO�~��S[6�*44C�E[�z�ø�s[ �~N�LF{Ȱ�f�;���LNNE<���F�ƥ��Y<��(6��Il��k����r�T��"�p��0��`�r����R���x�M�T䄥j��ۢa�h��y<��˹�*S��~��/��8�����0t�@"��z���p��5P<�'+;�P���^H.���q>F"1�e�����\�)+@�C�T]�U�<�-�r��<�����,w��k9����]dU�܄���V�G�Uz�{́�<PL:қ����݂H�k�o�K���T��C�1=9�c��_u<��E_�M��i��L�4m����=Y>i�EƍȮt�H�z-Im`)z<��!U ��$C�o /��V�ƫ�qxð��R�\��-Ϯ��/��@���xaJ�����HE!	�x�[���M�r��X�R�>��	�݁���$�绽)�# H��Qyi&�R*���qR�.�>��;��<�7�(��+e�n��:�k��R�����û�v`(Y��M�!�ֱ9�t�n$�=�Kw}�
�Q������f������Gn�zkX�`6e M�����iTy�C��m�Χlߍ�>ݥ/�sy�Ug��F���n�a4��ܶ;3b���n!@      -   �   x���1
�0��Y�K�%�Jr��]J�Vp\��+�� o5|��--��J��Fmc��Q{{�n��ǻ��'���I�j�)kt6��:���6����B	��F2Ӌ�h�DJ���DFE��ԑA(���-��8_���ha]z[I	ݩ���_��+1      .   9   x�˻� �К7'"`��#Vq]ɣQw<��3V��rp�c�1֘c�|�^U?��      /      x������ � �         Y   x�3��J,K,N.�,(Qp�/�KI,���+�4202�54�56T02�26�21г4	��)�Y��X�����rq������� ��?      1   �   x��ұ�0�Z�%�(ɶ�CFp��`ǅ���Jx��y�C
�=��z~��v�]��O�_h�P4�}� �\}��d���@����*&_.�l��r���>���)}*�v:R~��N8�c�J6��cq�Yf�}/<�	����Z         K  x��Xێ�6}����X�s�D�f�a� �H� �$/�`٦mad��v�`�}�HQ�$z��i��MU�u9Uu�x��1�����ٶ�5�iߑ�"��h�sq%ͥ"e{��Z���7G^�ȧcU	N�� �1kHvYw�S���M��\�G̚�}��ɧ����i���Ξ<�D#\ᓸ	�f�:]�/�[8�𢺐m��nK�&��pnQ�9�V��
�"/�K�^�_ʂ7 ���/�_edI����j=�q�=��=y)�=yg�|��@�=���$�(x�p��bG�UK��'�:�-G�!�g�c��v��ϛ��rI�Y!�[�9�Ly�����4�d?񲑉3�����U[��]��p�l�%��E���n,nI��神���P'Ѧ���J����ِjO2�o�-�v�#�����׼�b������C�Ƌ$;?�s'�f�u��c &��S�*�r����4r�x����nB$�� ��K��v�Gf�U��˃�-8	�]�ϼ��fTeiX���N炿� a~���LH͛�.	e��D�PU�͕�D�a��*Z�AC{��*:HC��1� ����V�Z�Y���O�z�\�<×�z���s��͊���c�\rhK5?�EVO��C�\�$c;�.\�ff��Й��ꬢ�rUs�
��Ȧ� gP.�v_�8�y-2�(�4�R/r�II��ԋ� �'�:Nеx��!̴�h���kt��\��y-�_�%V��ɾpA�0��kG�Y}�h����&@�~�1��Q�!��4����H=��+3G٥�\.G ��'�E8IE��/��-MZ�	M]�zg`H\˪��$��.�s�����_cF-s.a�o)���b�l�v�F �7�Dv���-�Zǁ꾃<HDց^C{�jft��@ޮ=E�7Z$�u��$�*Nb4�#@2��-�	�jڏEv���w�?Üy$E��u=�k�k)G��w/��в_ך
�����Ừ�yx$߷��榠��g���C?I�6"��xj/F�1�l�dR��chE�ㆎC�{�xE:���P�1S��/��xg�~�dA�O ��M�.*d��!��(� K	 ��	6��Ώ���vɮ8�w|[`�f�䗡kH����M$"? �����Ի���'i���C�`Oy������1�7:�v(7��G��+H�=��0�Ť4=O�ҷ�@Km�:���ޑ���o)�
;�d��~�q�!��ղE��,�dy۶���7r��w'�_�D#x�y�Nz~�]����o�� �$r�8����Ȓ�^�at� 7n
�g�=��IL$Z{s��OXd�vs������L�}��b�ZX��S�o������r���>Ԝ7�׃+i=cI:*�V������y֭i}X�>�9�|��*�xr�1��&����r�2��O�&S�}�z�pZ�����}ϧ#`5������O�N����ջ�7�3Mc����#$j^2m����i�Pd�����QV�pS-os^U�~�W����b�e�ɶ_`������J5���4����Yd~��kV��o�盁�x�mͣ.=�@>F��f	�VqX`���}ٱ7�v���\�޽S�ԧW�\Q�b�7>����l|s�\n3�[-u���F��ء�-�&EB��e5�Ⱔ��[��Li�����p�RD#�Yʥ���:܀��g3l`�_��[dK��m���ƃE�x���-�l��qh0�>���H�Q�W�a��m��n����3��_h�O�QN�Ю0��|�(�U�<��0IZ@eJ�%��Ut�+��a��Д��nȢ��Vө8/��8��i_�      3     x���Kn1D��]l4EI��K6�1��xĹ�r���l��$��Ѱn��?�������?����������^�_����o���m�����C�����H�D���dHl����a��+��b�#��n~��(��],�Hh,�Q�h��u ���m2��Y��
�b�� b���Qq�l������j�H�$���b'Dt�6��N戥B�v2�//�T���"Ջ�"�M�7����L�3��N�(��<�9"�*�e��bc\
%�渼�kBɚk­�w�����Q1lo[%�!K�ҧ�?�y"��L���Uh��lo��٤���(
^�(��P?fQD�!Jg�fj�qE�*��E��ʼ��Hg)/�ޞkc�T���\�б�Ơ�RL����V��	�ZWaн�İ��Z!a$��m�Ѽ�e���RIAj�&E�X��L�8w����VK��G�bǅ�zz,�q_r��]��L��%\���OH�Hv�����1{�̈́��t��2�Jy�MIme4#5���t����z]��#_��.@a50I�������hv      P   �  x�uT�k�0~N����Jj���[�����
c�����V#KF�����w�ە�AH�Yw��R�ͽ���G�f��y7�fs~@�b���=si�gꜶEGդMC����Q;9�"�l�@���V����L��i��>�C�&�E=t�g�C��uE�c	��FY�/l㤌Y�㘚Q�=���3�V�:��鈢���_U���͊�R��	��07Er��f[Уp g)tN����1Ƶ�ƻ�� ̹!mӻ�A�&p�"�!8�O�/��bp�Y]du���0P�� n������*h�"���� Qz��kgLR=ќEM1b�$�uXѢ`S�IC��O�p �lZ��uY���ٞ�.A�a�
�D_�vv�c���;��C�8���3�͠:���kc�G�����v*��<������B�Sr��Q#g��_�
�_@oO�C�)��:�S���|>+��)dڃ�BF���� 7Fy��1K6�%5���t��e����%V�U^~��t}/f���n_�(��^$]p?�򺠟yr����"���Zb�qҺ��s�Մ���ƭꅘ���6������� �Ț<��Zq�"KNLp�k�+߀��Y����b��wޞ���%}�B|;�6p=��+�b����U�9�Ǜ�->Tޞ���,>�����*7��\l��ߵ���      �      x������ � �      �      x��]{s7��[�\V����ͩ���{�[GVY�k4�ĉ�3��P�֥���������4eOUv-�F��u7�O����*+�iY4�hƳ�H�PE~_fW�*i�R�6wsT&�YV.jT�}.���p�}�k�4YqU?/�ur���aS-���2�T�_j�T�T�2�L�e�¿�<�Β�x����s�UuS$3�k���d�7geռ�󧽫&��������SCM2I��2Gx�4D������<��_�<�@9.�f2���1Y���~_�[ѓT^��i��I���a�')��9c���L����ryԩ���'~N�&Ո��Id�����O�x��g1��&��PPao���mYM OEZ&5�!|V��(s^^�����+�`5a��¤n�4���n-!M�ꣴ�n@�{#�b0���2G5ؽ4�3��ᡀ �2�L��2�k�e���|���5u�%O�ѳ�vbT�Uh�6)����a牂 n%!��J49j Əe�J�!]ʲN>���'~^?��(����J=��r�P�c�~%Ծ�x���K��1���jR�i/O�~��T�t�j���ߗ�}��q_^h��)���
�5k�lLŅ�\�M|f�P��SUQG75>>�����������ͷ]��9�fY]����R���Iڰ*l?J؊��+4�H��i��C8�t�!�xR�0�Rbj2�z���86E#f��~`�� ��Rc�k��@��/ڦ[ԛ��4�?k��Td|f�Ҋ�c�Y��
Ȑ���#5D^�p�۳.�4�6l��X&�3q���|�+'�&VN�'U�r�vL����I(oF�.�?j�185�Τ���MذIP��gn-ܒ)Ov��7���@�z��ۮ�㈚�h�J]� ��,y=������՞w1f�<;hH�i[4�Л��0k�t9�8='�c��	���)���;8"�q�rE��qv� ��K�0 +a��5�o�;E]j����Z���9<\��2��0���H���N؃�ts����s�'�qGV�(p��j�א'񌘢��m6i���Є
�!�MQv5��'��AI:hgKY͒��^�(�Z$��k���0�D�G�DF8h��ٯ"i�`�e04��E�FN8h)��`�|�����H���Cg���t���0�*5�r�"�t����e �iH_�ϱpP�V�br����A�rb�x�o�����h$M�XEQ��
�a*� �RYghg�m�����,��p��r��� "xJ�K��d�u��u
ز'���L `����m'�]^�����2���
��r��8O��&�yfbʸN�h�`q7ja��2�]�:����ύ����,If�ɩ������"O*N���!�Jr'��Y���ĩwu9m��9������`�'s��n��t���"�'`F2��4Uv�h�>$����yq��I�T�E��FxB�3P�e�B,��l��2�m��DN���3�I�^Ӯ!!Q�������_?j{����|��a���Ć?)���w��w��M��1��I�+�ͽ6��z7[�6�H��_�i�0�e��63�����*k�6^���YfŹ�i^e7�/)O���&��:+&�����1�񸇢��D(�
?�A��Y�\(�^�Hhq�q9��oو�$T$�Wyy��oH�#�ɔn�)vFX����'f,-�xc蟠hj%�m53�lڪ�(�?Jn����e��	�%�)ʳ���81���"w<���~*�ץ��X�:�ń����vI��֢����.J�v��}���)�幃��g��6�	��o����bc��q�m3M�Ω��+���;lv�"{��۬�f�6�˶Y����K��!��D���@]��P���Y@�� jA���|����>�3�D���^�Gl���U9@Hﵓ&��\�g�|�Y�)��;gDV���:p�@�s#�����a�����QG����9Z�(yow	��;� E�N�����<��5�;z(\e��Y*� Tt#��z������!!����h�_�$9J&e���\��;A�W�S���Nm��z��;l�o�{(��3CIw{��a�Q�Ķ�2cye�*�<!iI�5�R~���Q�T���U爛�ip�+�G�NQ��'�x�7�������ډ��������z��R_��*�U%N����l���������6f��V?�n�����1��ߘ��DIe5��p�#�?�3l��O���#��=�#w���J���m �_���~?�o�4�W?k���9y�@:���*Ʉ���P'Ur����E�e���H�
͒?���{q�3)�t�wv��`�םН��+�+�ͳ���ghl���̮��'ߝ��'&�J΁��2Zr�i1o?N0��q�9A`oy�x|�F���E��+F-�{��l�?���e�cw�~�%�ug��g��$Y���oGydڳi���idW|��m����ZZ)r�6b��C��=K��l����<��tw��dJ{��a���v��-�s��L���GQ=���#-������n�ټVK����1up���;���<����D<�C3����Ni��+����l1h��<�Φ�+���4�L�_mb��1�H��q�@�y�Ȼ{�!�����z��d�<;<$�:�4��(����I:�S0��cY�e�U�Ef�J��c��j�nBǭҁ+�e���y�f�!�G�'���^?��8�P�N����>|��ؼ3A㧾�ZU\�3l��!��ټ	��B�G�v���V�F�;����4OJ��~��-����zY4�'���.�����1��ir��6�w�\�Ǻ
�[�C?��g�$TVص�f�칑��n�*�5�25V$T�e1�m����/�R7���;���˛���x���@o �F��!v ����rϕ��>�sl�	[烔g�(�K�1��e^�0a��Y�E&EZ���tQ�a����p��Ҍ)��'�#{&�ܸ�s�:����!��kY|-���ykMP�0ٖ�8�b܄���H�|q���bY��A,rGrd��0�t�e�OI2�9���wO�������"��{ee	u�W���HTwP	b���j1n�+�3+�*��J��'��֤�h
i�]�$�*�N� %r�������н���G�A�G��ޗ��ޗ�#�ޗ��y_R�/��W�?��9pv�b���,rfﾻ�؃�i�
��_oUePoȁ\	fY��A=�m~o�{�}�z����]nil��,���Y9�!�ו�s2\f�>c�MY�q*cF%h�_�-����B��4���ސB�4Z���"�#�6��Y�Z��iR�!2��U�1���xo�z;��A���%�&&u�gޖ\�-��Y�q&rsU��b2R�d~U���h�g����mUjCJ�� .����o�z{�+H��th�ۖ#2�v:��5�=5�/�Uh�tT�&m�2���"c6%�L+�w�4n�� �����ל��'��`��	�*?п-n=/���k5l}���j\7h��}��@F��������� �{E�^,w��]��_5�HW�����+�E������s��4�A�e��͙&XB>R�J��<�Y��/�K��\ɳ��M�i����ٮ����YW�R�.E=x�0Ǧ<X��D��f�n�5���sS%E�:��r�G��Luɑ�Dk%Ǵd����X��dpUN��N"�_�\����|���������Y�(��y�ҲB�"k���A�(�����n�n*�k�q��i��	|��@���9wǹ�����c�~;��}���1o��#9��BV�����\���>�vyp�r����"�֡�2#O��_j�T��8ʌ�>���<yL���x����zʡ��YY5�׀�U������1�j[����h�5�k��-��L�g5&�~S�/o���$�#Œu�V�MKvw'� Q��B(i���I�!���l�|�p�Ɲ9>�o�u��kXX��c���L��� %  N>�W��ۼ~��Qx��/�H�0"S�g�~%Z��TG\	*;�#c�=7�5}'�d�	�����6I�=����G��<Ş���DK�4���} ֐
��������_�ҒES��$v�Y����ۆa�|	 D�ăBy��p�V�P��Q��MC�F<�Oyў��+~���9�C����9<iQ`E�Ĩve�è�;p�2��M��ItsE�d�� �݂�I'Sc	T�B(3�21����CXծy�}ɓb��h��]��u��4o@\'�Tp%O�$��}�(hK�o_�n�u��R��gF��"��,o��#}��UB�cyy�3yw>��$�Ww��Y�@lԒcpj�a�M����٩ͳ�	�u��gg��I��H��3*�[�!U5C\�/u@���y���O���䖍$�r�,�yE52�`z��Yd2���ɔ����g?�)����;�ǖ�E�o��m��WUR4�ܩ�� �&���R:d��Ayɦ�'Y���Od��s���kt�ƷFX��7f3�H�k��ѣd�=J��/�H��B)��6���td>b>.�]��u#"�A��"��j�� G������n8�ϰRݬ̲��f��h��eX�fZ��Ol��,�ʺ�lZ�͊Iy[�Ɖ$�ef��jB�hn���&0"�J,�B���n�6���T����ż-ϫ�>�N}�&�7׫�}�L�I_��%=�3�������C2����Y�ぬh�BfY�Q
��Y�D��{L9J&�
�5e,-���)[�J��_/.&%�&����H�����1��e���0*��ӥ�Bn�=��>f�^�c�h��rB2?na$��pX����޾����]��T�b(w���$d�^.���@������S�{�E��>i�w����A3��A#+�lq}W�Cc��eUR��٦�}+rN��o�OTTh����1�FY9���<h,��*h�|�t�?E�5��R~?��4�b�o2h�I3��� /k�G%ˌ8F��tS����������i��_'e����������1�4)�3q4�,��&�j@`bД�Cf=��*&��_�>�����?�;���������:�_��ϧIq]�ȷ�\��3���d�c�NQ��=���4-E3�3F�����eY��� Ⲛ�CFb�� ���uZ�#�hp��V�g�� ���++��#��1:�C:J��~|�>H��=�k^2�I�M�d� O�_�$B5M�A& "$�I��<��ጓ��XX.)�yc���ɕꓡղ���jb#��{��H��9y�M��3��F'����ik�Ⱦ[��E���ߪn�.��@1�W��41�Y}�6w�-�
^�W��������&bJ$W(��ےKqB�K�Ҧ�!��%��^< as�FO���UAX�^.*�ի?q�E⛒~������v��?���\`N+�����S#�uz�5���k��g$���6	�<w������ q��-�g��M1'���ԥ����(&H���@�qY���+j������r2E���f6�+��2N�ocW�QcX�E�6���N�.kB3�����9����Qe��fW���K|�WZ�@OIB6���8Q��..�����)y
��{�Θ��i�����8Ѣ)�˩>B�U�;�茄M���Nq����Y��}-3�H2�߄����߄�Bx<g����y6C/�%�����qw7��њ%v��C��ϭ�T+1}ݚ��z*�?uh�V�^E�j�����O�N�e=���+zz�`̬ ~���.��MO\PcPݰ�� )Q�1�a<:�J���x�wv_pP)����n�͟�K"������#�\��V28���N�)�b�A#��S{�؉�DږK��U���&���5��׎��LAޡM�=C�ȹ4M��Y[> ���J���l��q]=[C^ՅN���]\�ӥ�߆�O�|�	���ַq&[��W�i}���g#CKh�Пm�9���mPS��7<�	��s�:��laP����6��\_���ܛm��9=2-���6e����U{���<�@�}�e�����IoS��|=)�]�u}Ժo�z��MT�w6��T�Վ_�[��h
ܢа+բܡ�i�A�.{t^J�T��D���Să&��m���5��W�#��g��w���-m�)�] 3M���T�m�l�m)���8��V2�΃��0���}�l�Z��Et�w|UP;�c�z�r�&A��W�>�*[�#�'o��_Yo�væ��Y����3�����R5d-K+�{d��t�;���V�
>�q�nũ� ��Qˍ��Yf4e�������[Ms:;� ���]>�nkc�����(��W�⎄o����۶l?�P6x���0\|O ������].�O�6���2w����q��ZL���dե�����A�� ��6����lmi�1�7��q����:�VcFCz7�Kۦ��.]�,_�{����G�2-*��99���������8s-��q��v�OYJ��#�4�Ǜ .�k��� ��=s�b��<�:L��eN��=��%�>�6�Z�E�H&Fy=J����~���q`䈳�����v%\3�-i�V��	zEJ�M0Ps�����Y�/ʭi{dPbY�K�1�\�r�4%��/qK.�V= �/M�6�d�N>hV;�~nOTj�j�|������Є<
�C"C(�N�����<��k�<ϭ`�s<��#p�f�4+*��a���\���E�ĺ����7�h-<bڣ�_�X����A�9�	Q��8�Nn���F����Y�ct6�9� 瘿
��/<����;���*u��2���1�3�ɞM���w�M�
fm(FF�Os���v|���d�@��<�m��L�g���\��vNv����/^p7,G��-\��&Wj��[�������Q��t��Zf��[���]���lwl�.&\Bp�=TV�z�����d�h]ܧzP�U��������<�K^ �7��Qv70�!�����9g���H�T^0����b��F�|���W���      �     x��]�s۶?'E�g��ȉ��[&��uzi��5��HHBM� ��v�$E��,$�8���~ ��.���ݛ�=��!������"�'ޣ��	E~��"�I��і{7��-o����ȇt�����0�Gj4���!��|F�$%̶EÄ�=f�Q��|�T��i(���c�����7�K&i���K#.9��{�����7��ȡ�(u��W�F��Ԇ�?�0%A������6��>���"$z�,���d#��<��5Gs}!�]?]����z�B&�#8 �W���q�6j��Ǚ cek���Ȭ��`O#�����8jZi3$m��� m����z��� C�&� ��SI��pL�x�1�!�D>	��w$����+*E�8���Dd}~�������_=sJ��B��B�$��t�'�A�H�b9��H4��(��@��W��Wf���N��
��}��^O3����Mb�Cm��B4���(��3���ikĨ��%b�|�@�f�]A.xHWPt�`�����1��<�y��A����^	s�� �#r��JNH�Oԙ3��٦*���(GY|�\�c!x�e��H�_�PrD	P��m����킈�,�`�7�"
f����ED@�]?@����&��Z�K�c�8��G9=P�j��mJ�`WSFH��T�A�eC$�)�}�9>�s@�d����8:��EoS � $p+(��Z�B�%ò4:��aw
/4;�k�}�L�;�B��=={�a���`C�S�E��_5��ts{V��ެߔ�8�$ϔ� p6�3r���D`	�pe�xl��}�1Ba��tGe�ʱY���MY.�8MYQ�]hvӡߒ�/M�/6�(c�	S0�#$꨻X0�����j�p5p]>Ձ(�'�jÒ;{vU��1a��p�TU�^V�Uݵ�ݦ���\��]?�64;��rc���6�����.��fi:��p�h۷�9i��qO�r�Z�A�_-�놹�,+���9b�W����'��l��#D�^9�n��=�t�Jwݘ:������8啝;wdE�$]����-�2�b�x�7�jx���9� ��SPp��z����x�\�7$���*n���*�	�J
.p��)G;�`�:�w΍87�F�q���*����)7�$�QRp�n���D���(;�$�����?���o���$�!�!�A���0,o����q��q_������ډ.I�|�5��$ć-��(�q&��ޣNÔ�P��?(+�X���T{�ι�
�Dɡ��W���BU$��R�
������gy����%ޝX�8DC��-5ۨ;�&c�@C:P����b��K����৽��^�|�)�v��w;�ሇ�+=Y�$�q=�v��)�+%��U{�����9����$�2K��k��ha��M�f�N�G�T���r~2�Ck����D���)k��d�w%�f/���٤L�C�[���F#+yE��cN���n{�;��@~|�O.�Tw.�lA9��W�Y�˙ 7��\ʹ8+0����Z�e#:��)���̿h]��}B=A҇)�42�\�䒧�G�=�>*n?��s̫P��C���4+�r��Q�V*B�`bʐ����zxö��Z�B��q��؃��27/T�=�u����"�(���_��z�rlU��,� =�H�G�:����R����,��O����/�ߵ����he��.��ͯ9 �y�R1ЌT���E��Q�n5n�e�nKn��3��(�G�Ԟb�3u�d����n���	�\�>f�n�3W͖�i����<B3��N���,9A��QW;\`�6u�!!h�Ø5�7��;z�ψ9�i�b��T3�T�kð���|���A�k��	�{�pRp��O�X��0��E��a�K	%Ze&�����s��򆧱@�p���g�Ma�;�.z��	�TZ�r������f�^�R�t�����4�j�m���E^��!�m�C�k�O��W�A��� �._�����2��Y���)_㵧�h����P�F�LT��4������+����5���Q��)�l#.k����^3e��#ͱ�Rs@+�T�Qfp4r+�)Fl-6��ZIP+B�Nd�U�`���\Df%"+��<��wJ]-[��)3�pIs%1�^����� Ù�9��[~�{���3-��@gx\o6�j��l��z��	���za�|���*��QV�N1�j�э�J�ZQ�t"��EY.ʲeU`C�����0Am���:t�"�PqP2d.d���F@��TD���F��H̢c'��@���m8���=�ǎ�F�u�!����dzkkh!E{ru�*�X#qr�g����}t��b֗��e�V�@'��&�u�	:��n�HaJF���Fgɻ�4��G:�(�K����O:hk�S���4��`n���-�o��pZh���\:��LU��ݪ�ĻL�šX�5�}Ck���ؽ-�1�xA�9���~�q�A�&���Ickq�O�5��>Z+TS�Z���<'2�V��v^|Fϓ��h����kv�$��TRA��f/?���&_Gl���Ҕs�DMsy����x����gc�^�ӫ>��8O�k���.�5R]o3�>�S��B7��xYk����E�Q�o�9�}7����V?�0+����.�8y�莐����h]�����JL��\a�����1�:.1�D}Վ��t+�`�"V�~��]�~����v�����Ç�ջ��?�yw����x�=�������=ƛ��������㧷o��h�.�      �      x������ � �      �      x������ � �            x��}{s#�u�����e\��x�!�T��Zb"�*��*���b ��xf@�N\�/�?nս_Ο��yt��A)����n��"���}��_����!~��i�����1_Q�l�E�ݮ������N;��n/��/��N�}v1����~�=���n�b0:�ҿ���e�H�(��!;�~�������XD�$.�趈�˸���n��CR<��URċv��~Ty��U:��Y�L��4J�j�D�����x��S�qz>J�|}{��1��Ϊ�c�V��|�ʋj���6��g�2/�hU�S|��_N~Z%�ʞ���춌6E�ݶ�ڇ���vΎ�����]gU���4p�E4e��C�l���{�!��vot^�N@�����g�3�uF�H�?U��N�2�hVI����{4�*��w���.��º�]�P�_��"�ݠw�ч�C���c�0�D�`����sZO�V�d�m��8��&��.�A�ޢ��E�,��,�Ut�р:h�/��2��W��C�i�d�˼��x��v�ܧ��lG��j,h4͗K�&~d4�'y#�fN���Nc�������2�ɔ��1*	B �?K�iNc0t冦������-�MH-ә�i/���'��x�!�d��|]�~�	}f"�5�g
���>��hW1#ٗh^�˨J��
��ƞ@�0����6�x�Cu���'	}j�LJ"ʒ9O�>E3���c�t�ܦY���w1SLI[�Um�ԩ�c�E<�x tD�&�)�|�Ng�q\��	�S�x���1����x�.K0I8}+��Vq�&��%�=�*ޝez{G�W�u"Z>!���k���0i,��P���tb+X3�bI_�e�U\���O̏�� � 9x�$���1��q�?�ٵ��J���=�� �Ў����b�b&����̗	�*��	�dQ���)��5�0]�P�+��E�� �W���K�����]�nE�K+�F��i�F��^���1�.K��n��!�ȳ#�+GW�Y��[��zR1����!-�/����JW�t��d�ɋ���w��ư����C6�>�ы���lH�����z3���=�x��o	2�9��`^�%�F(b��+��%P)ef�L��+i���fW��XX�\iE�����X/�[����:e����3,��k�l�>*�� B���Ir?$x�\�"e&A,�,��g�+�eJ0�gX����A�fG0�<$Ǎv�	���ve9i�(�A���~3�����}�(��
��YBԖ�QRyQC�^�r8�잷�!b��N�rp��tF�X7D�1AWM��]��oO�p����YCbX���Q�&���Ќ��h?���9�'��w/��L��Y���da���/�s��Y��2�����@�u24uB�{bD�8@�)͕я�0.e-��Y|�`g�WX�O1��f�8#����
,)�
E�9i/��������d�bɗD��H�f- �������Q�U2��1<ʼѭ���������Ђa�@L*��MQTh�n�|2 WU��A�X�|)��oo����N��g�2,��f���m�#�'$P$�$}H�-݄�d
f�aB��g��q[����Џ2^��A�Fp�u���9] cb^�D�Y�>*:5�6#?=2��U�^����>@�-DW���q��jO��h�+�<x�7�q+#��tf�L�$~����{�2j�%�w�O?dP�q����2�H(�5u����d<��>y$�n���"�LV11Y�	�ns�C��^X����j�; CltI�f��$H��z �7K&��[��X����0�&v^NcRW7ī��+��Z���M!��jZ��G���G��00����fQ�D�s"���oȆy�W��BP+'M#c���#����6!����Sr'4Y��QcZ�p��V�� X�9��jB�>�K���5�G�1E��=)��II,�v�Fa� �g^U������gy�:'�/����O������k�V�K�$Aeۛ,�%	����wD�ez˼�!.R(�S�:#��:��`tq6�[g,�..���iJd���H��&:%���`�3�mXl��Z�Ś�.v�r�s��.h�fm��IO"JwO��ź%���ڤ���M��K>��-��HC�Hi(����\֨z�xE�~��D����S}��*��دD&&Q�H���"(��&R�lSu��2�%��l���{	r�2���	�hL�"���1N�P@F+ifɦ��ӎ^�����������y.�%2�hq«�{��YY�4.﮳W1�?���ix��|zO?^F]\�=9�y��	�_�M�<�Im���ձi�Ѩ�$�ȧ�mz2k��q�6�"�`0�����	�R��u�L}��i��g����u���A�w�e
��av̎b�x�h>��lZ&.G���)�BbE<�)O��~��y����*�� mk�r��6�W$i�X�`te�#�:�	/UƉ�����m�=_��"��Mg��`T�D�pYK��7���@�f1X��T�E�߫n������)P<"�N�n����p�t�-~��%�D�G���z�Rgȁx5�ՠJa��y=�=�5=z�O^�A��`��)t��mtz�j6��,��ٙ�<�t��e�=�
�u"���X�=���K�I�������:z�Ji	0����җ4.bF'N-N����<2��v ����g
dv}��m�}�����_���u}����W_��^����ѻ�7_��ޛ�����߽�n�߿�~������wW7_	k��\�'�w&�Ϩ:n:~�b�Z�P�>)�Nq�S!;���.�!b%�b��u#*i��J��rX\�T�/5a���ĜM̥Ed)����)�ۤt���7KD3j��NJ��J��p�������[/��Y���5��#V���"Y&0����,b� t�y�E~�I�{>�I��)ʹ�2�e?���ь��Yr��hG.��,�S�L[7U��4lsKؓ��g�������KU�?����u��ۘI�ie�����1]��g3�=»�"�7�S�e��pV:�ϖ�`8�Ī�p+Q#��Kb%2 �G�V��n���;�fG���gFz��y����+Z6)��FA��Ż+�MJ��7kJCg-��c�M�BD��O�p荎�-��,�'�t���{Ѿ�u}��u����n���{���dz���ɺ���:���ݪ���Al��p?�W��-f���O�H�$DR7��q��/1�	|�����Z���%2F\��f윍�}7�0't+��wC
���伀l!i������ҩ�Ƹ�K�R�p&���@.��	�Ҏ��"�D�7���A�	il���w����jA/��-��;�@�\��} &Y
 XO�=�B�K&>'��4E�I�?Sc�[�pa���������I_h��{BBb�����LqJ�r9���̑��2�,N�2f1Oo�Eb~��b{�Ӹ�fuM�[��37A�aǯ
.�c̯�Ȁ�-��g�ԇ����-qmr<7o7V�5���sUe�f"#�tX�^歁�fx!���U�6��I�Ok����9�B�k�)*sw�O�a~P�`���`��\�̺rJ��TC�y{��rV�`�b�w�7����v�E�J��`�y��v|�I$ 1��F��.�G����ώ[�JO�@x�O�gǲi��
��n�i�@MI����.�C�M����;��c�ᇊ�ZYT�?�������He��@�t��9�� �� 1��	>���r`�9h�\��x~�ి �qX �4 ��?0F<��u[���I�Ϙ8A@oD���D��Frp(Fџy������{{^�z�"���?�$^�zE��1��,p����iJ6SQ6<՘�J��
@{w�Q1ٞ4�G��Vy��f ̈́�ͧG��bBL$=�����'�צ�t	����땫��c�S�_ЄR�`���,�@�54zqP�Ԋ�C)#X��N+�9���2u9�B�[�2�Ȱ�>Q����"��f9c�h3\��@���U�¨�EU�N�#^��<�%
	��&�    Q�*R#�� Z���KÑ����)]�e�'ڤ�w��7_�=��9L���`k�!��ހ�����Z��/^��=��	�"����YDSh9�f���+��î�J�m�J�P�
�v'1Q�����F0?!���&�t1����,�8��.d$&I#D}f��Q�H�l>%y�9�w^�~޸Ky��<�ؓ�.1�7����"���l�߿��1qEpbIc1#���>3��
��`��n��������ͥ�z��E�}�M{����X�y<+_�+��G�����;�ӯ��������~�s6�d0��'�ؓ��"�N��yAL�|�C2y����L_��݋/�$^||7���&�p}Q�߯h��1����1E6�C&�b����b�t�Q��XWO(Z	h	���E����n�.�p빬�4GR��b8�����k	4���ҧ}�z�yp6;��+�sA�f��[�Ikg�h�lۧ�����RԳ���R\����V䱍���ʾ�Y3���2�����r8��݇j�>�D܋퇘�YD@[��`omj�n��{Կ�ޑ�+�SỞ=�G.x��fA�Kn�P'TQ����#�PJ�������7�}e��"�� ��2�"��l�	��v�G�r�vx�2�.��ݮ�0|�e��!1�;m%��t��?r΄g�f�	�j� x��˂g'i�G�Z;�-္/��eN�=�ʇP^���X��|��׉��>!��:�g�q���Lt{F�L��9D����8`����a��wJ�����u�.���fCXbd�4�H��4�I4������-�P�s:|�z�q��'H�l��K�gis���O��e)l@�QLǧ��%3@�_��*/����`�=E����\�iA�)&K�aM�I��2��8��t���f���˶��#�3����A�:��W	U�P����+⣤=;x�o��R潤5���k��G2gS�[���B�� �)#4K���V��5N�Q)Mn��CC�Y�'�ɒbaQϪ��.9>۾�#.]"��s>W��`E�H�x�S(��X:vO�dg<�4)�5��d��I�1{������s���ȏ;h��d�Wp<����x��xg�ǪH�2`���I!�&��r�cr�L�"`�wR7���e4������aJg{���]בAR�}코U(ʓ�^�������+A`��^UF���\�D��AT�a�R�IBᄬ(őC�G�	5B�i�s��Թ�[�i-o_U&�'� a��'/\f�}����z]5@+'�^��О/$�YS�f�$I�]kX�vM�'1(B	�d�0K�M�9�l��&�W��s:���EUZ)���P�x�"7cu'�bĐ�Zr�(���p/zeA[pU�?s��8I� ^����B�dP��M�z�	$1�Cug���59�yg����X�~ms����0,��9uT�/�!�(��#��D�3�[��;����yZ�d�ϣ�����,�!o��R4]0{�}YרI��F�̯�0Kz�5��㛦�|����P5(�Xșޚ�lr���.m��G����4+v������+ɍ�4���T�>���0Rz5���N�ƈ$^���(9y��Rm���d��x�x�p��}��m�9HR�Ri*	[&!MF�9*���J���\&��	���:up����C�%��,�֫$�
��������4�Z��v�彄��TkG��/���a��ď���>uY�R�`�DX7����2�xMV�H��Ts�xr�oc��X�-��_��X?}Q�*�$�CbޒfrТA����N	(+z��ȵ��9q�=�m�A=.���z�oZ��N5�$�u"��IM̜�)�}\X�2�M��-q4ٹq7�-s�Z �4Q � �O�Mľ��ۀ!�>�S�8r�@�-1�5�˂�<3�B�=z}b�
AZ�gi	���������?~��0�oh��2�s�a�t���ܾ�nzx�>�������Щ��>�̼���g�Xɧ�?�;����'Y0��q�(m;X_iE�=k���.t��혌c���t�f�d-��A?ĭ�w�c��.��mO=��)���l%Kh`Ao6��Ɉ/=�a$�lZ�����c�|/(�fF'�\���?�4b�
�oW[�yh�C4n_=�&(�,S6z9��,�I��<O���Q�'Ɋ%�H�sd ݪ��g9�eb~�����( Ċs�?� �T�v��"\�R�GԲ1>�L�g���p7�����FKEm���;�|�s�j�*��O`����l�fY+1�F����(��8���D�{�r.��y��)e� w���EBؿ�1G����9xSRF.|�j��c��ɷ�+^��×Ӆ+�w�#	僵��=�9�P�X@Ly�6�ˎ�'����$� u�;��g���8Eb(���֋x�,J�K`;�����fN��`i�^h��[Q�`+{�Fk��l��P�:�Rh!nE�{�� ԴlH�z����)���U��R�3Ioo9�xu���u�*i�H@tQ~����B��0��s�ʉW����� ��(˕��6�l`@K6�����g���qU��~p���n���
+�L�5`��4����ъӄ��Y��d2�w�{���`�|�S�{Z��>}��抻�뷽�>ag�����T6�*3(�xs,˗�;��͐��γ���~��?���݋�;��y�i�����Y�׿��+���Y��0�O���J���]�z�e��ك�A-����hD��n׺�?��E���_�/�A�˿Fߤ�|W�Lw��b�ƥ��� �}L]��ţ�X2-��(��^�c^0����)=�
��q_J����4�t����\G��X�4��U�/�#�U]h�]h�԰�����˼��]� X�B]bR�3MV�m�K�UMІ��M��V�9���Lu��&\�d/�5���	�����(��w#�lB���)�!7��bp�(Ć#�[���Uu�d!����9^5�ɪ)y�v�lrr �I�A9�K%����R���y]s�;�4�/���ka��G�*PO�z�U?���d!y�V�"�4���\r��9�&Gi���2�|Ny�r�O�p��ō�]��P2��hc��A=¼N�蓨���r4�4��7y�W���� �qΟC���w`�7q�x���ԙ+�M@�A��:�a����2^��-���(�̥�r�5L����%@�-k�Ykk.ҤG�����@8���J�El����U�����
�
N�	W�k�I�8��V'�J��DS)^5;֥6����N}�i&��s$�/���'�?]�Kr���������E{��c��ń�%\�٠�B�*4O�.�43��n���jO&Qe�3{�>wv��VIA�. r�X�
��M�;�U�����$��3��+k���c��|�w[�;���=��*C+�e�%A2����z}���CR}*B0t�x���Qf���K�B��� gف�\�I�הr]������J���[��~7-� ǡ�<�����ޑvŁbx�v�n�j�8_��o4
pv���G�\���n(1f\��$߀ ޒz��K���Z��!8���Vέ�m,��,�Ǥ�Q&�F�Fd��Cx����OU��Ҡ�����]\�۽Nwk��H(WR�>�=���?�>V��DO�~{8n��/�z���b����<��3�IW"�/��b�rQO���$z�mIh�4|�;���=�)R�&�Zh�/�L��;㾹��M��77�Wo�{���D�n�>è�J�#����l���ŷ�.�CxF�|`���
#�ۤ���_�u�˾�����ƕ6��V��g��GP�a;�x of�"t��FO����Q��e:N�<�A�"���r�n/L�4�*�6w�'	���۶�^.!�u����u���3"�>��K 0�nnȅ��@������v~�o�䠒>��(]��ĩG��g��k��u'UZ�[��0<	�"��iFV�Ǳ<���o3B�ҌE������L�7_D��    x8��2i�|	u�	<�P�h�ғE�1f�+�n�O�Vj�ac�/�bn��^	���n�|z��Z��Xl����/������2�6��A�ω�ã7��+��򢖹{q�颋^g�����E�8pc��:���˱ J�4L�0s���M����M(S�Ѹ���R��r�%�C���ޱ�����)�KB�ZÓ-z�E/_FC�1��)I������X���u����~�D�[]e���g8i��P,�{�_��]�|�ʦ�.��Qǌ"<�&PzNJ?�K�z���a�Z����F�^K�J_-�\y����z�)âK]�b���� �������˷7
Q�L��ē���_�y��7��K��
��Ж� N��=��Ũ7z��A�;b4~�a�V�0���Ө�wpv����dq0�&�ٔ���r�S���O�l��.�-��L�]��a�3�q<�V�C���/�*2�����Ag��-�w��N�ֱ �]��b�6�$�f�Q�L�>�rlErvU@�u!��+�4N���S��t^Lf����m��2_#C��bjʞ�AI �C8D�,��R��5֌Cyf�{�Ƣ!�#�m�2�g��W��ά�9-&qpI.�,�)��\�4%5�Z6�Z-�L��s�jV��V}O�v�R�wf���V︠�NE�kV�X�M���R��gW�E�uQG\e�P"ȗ��yV��Е��*����\w���)ҳ-�\q/��M[���6�4�OY��Tcf�>��nI��f��hsZ��T�j�껪O3ʱ���{���39��0�|寻��:�Oޢ�tG�K����k9aIJ-�hi(�~x7bRS�̻&2ٻ��\럺.�nT�sY��r�hҥuT%`'5���8ώO�+���	�?הyǸ�[4�t!��$��ָ��@���7h+8J����1rS�&��)x�=
^�x[��>������Q�S��E���F7��U������ѽ(��}�A���5G=�_9<�:�Fp�і!�^$I�]WmS�|���g(�J�}�w���Ͳ�(Y�esN�]M��h���M<�Ԟ�$�l���0)^}ɞS5��WL��u~>8<y���?s��m8v M*ׁ�-9�8��U��w ��dl?Ñ�HC2;|z�7��Us�MM!��|�r?p���]&�������V/� �o2� �:���f���Y>�|�0�wu��vc�n�s��z[n��ܨ��}��kT�߅�͇�-�����J~JK)��
�����|_�&\�΀�e#5�gYeD���`]��r�p�]Z%OV��V��;�*������hL̯�B85�U^F�?�\
�lh���}	>ē����d��}Oy��OK3����EЪt���j�`m�pl����%�Oi�(|طY��G%�	���u]�.DM+W���Gg#��/�ǡ�	��&���	y�-�r5�)�m$��D��������2�Ϲz���[\����]���G�	������O���:��^{��n�׈n�;Z��[�Z��4fy��kNVv,!o�Cv��v.`ǯ5b��Ș.�	d�ٴi@��"�Mڴ����+_�Q�/����q��Ɖ^ܒ@�;]�N��L�w4d���5��Y'-bҩH�B<{H�����K4���B����
�5]��TD�p�]?��͹\�AE,��v/�I%ю�	GK
ņ�M�R+W���m����ѷ��p��������[Gݣ�K�(gW����5(.b��\�v��S��:�p���;uMZ$<� e��[��t]|�1M0�撷���m��ep�D|Ҏ�q�k�nm�xo�$oT1�'�x���OW���\��1�����c�@K$�JQ�œ8�����YNی��kE���+��ز\���2Gt���?��c�\ਏ?�
��!���8�c�'����b����N*���no����Y+�o��Zq-o�O�O�@\Ml%����h�wi���]Z����<O�?�(/��c���7�f^z�r�r����!f5EW��35�!?�s����;�ɁI��i{��b�/Q���}||M:f�-:����PI>���0!�Z^�g���I��{"�J}��ZO�ؙą����[V�[�����f�L�e�07ԉE�����]��X1plq|U����UW���q�x|��߃��qv�z{j]ܻ$���hԽy����.����Ő%��ܭeiI0��~Q������}�v�l�Z��	$���sN,��z:c�[U��-R�u�����b��3�3�����?q/x���9�˯��S����I�0��va�i��c�բ�v�
M�t#4�w��ZN���	�U�m&^�S�j��Y�a�~K�'RUZB<��&�8Yz��Ai��)�af��o2�B�,��
��;�sS�\�^!���̨��}6�Eݟ���o��V��K�=�!�s)��	���� �}�\����p�)^�i�����f��If�q�TJ���:܀Z��A�����C���'�VQ�gK�hz	���6"�߾]s�Ғqf'A��A������\W;���ii~+T���I�t��A�j� ����h�4s���t6�TZi"��5�>�r�B�Ӳ�%M���U­fo�ll=��4�z�:����S����
��J�����������·[�h�d�~G�K�`�!qǻ�g�����o��p��Jk=pI*j��Ar[���֎0T��Q	�v�B	s|���2�v�}s����Y\a�d�������,��Z��.�:���s4[��2
gB4C~�q91��r����0�,?T�n�y��Yl	��=��7i�ۮ�Im��`����@���� ����V�O���mئ��wa���S����+�2Y-0A�8��H�-]�K9�鲱55��T�e���`M�yP!��.e+��y:z��Enj����U��_�/�\��ϝ�ז��*	k��z\�}>
N-�-B׻#�#9�AZ�[���"ѣ�|�����80~u�<�^��u_Fs<�f<k[�u��mΧ���+�$��hm�٫��\�h�6AP}I�b�_�,�=��NڮGB$��n��Y�a����TI]��;;U�A�*,^�$:*�u &�T�3��k�R�� k�/־��˫=�ϷE�TρҚ�kms��i�ѯ���<2yͶ�u�ᔭ6F����6M
�#�{��泱�.�Z�Bz>������~
r�&���V�إ-�=��B���2Z- �{�m��I2����*�-H�������U!�
������B�j�OE &� @���竂�[{�q��݇�~������D��9 "��\���Qt�Ϸr6����z+iS͚�-ͽ����\��'Ѹ�Hg�t� �b%���U�|s��>C��^�	)�d�kͪ�S!%�)���	�����.��2�������]R%�.}Xc��z���g%VI�q?�K��+ߠ��7I����g�s����b������p���:h�T]7�+#���ӵ���r8l�zC;��� 7�(�65���8�q�/�U�A;��W3�p�=�;��S��N�9��D�X��Z�C�6�u�|���G�u)'�k�Jέ�8���7�,�8�x�����+<ύٶo@�<����|WN9p%(*�$7��i�*u߱�tCGK=J*GW����H�l+�i\��Ib�����Qzm��t��x׏%��#�y?�v\��X�/q�Dϳ�Š�	�a�0ښ�����^��5T�3$3}�OoF���p��Q���tΟ����u8����֣�z=��w�����3�Ϗ����5]�vv��A�WOF�X���IN��0����&Щ?��+ΚCPA�1u���˵��Zj@]l���60�b�1eͲ��ު�^+	p�V~�+��"��D��� ���3������?ME_�xi?/�{E�6�N��� ������T�¡d����hk7�Z>o��gfԏ/2� ���?�N��Q��,��6FA�`��+إ�kgV�c�.��_%������વ� �  p�7a Њ���i����������q�5�~	�[��Y���n�A����d��<\��a�`4zh��h6������%80�Z#�.����3�9�R�ip�~�C�i0�{Q�w����+u�ʸ'j�k2������M�%�P&C�iR��� ���@�8ɤސ�O�{��暦VY�<!d�-��4�ɣ����I)
Nxz�A2���v�EW�Gr�j�z��� �Nem�5�NĿ����h�*}+�:�~�5������٨�ZS�Y��.���R���{�q�"0�ZrE���);V^(�J}�{�$�L�����I�Y�5)X�(�R'T)%�t��nF�꾌^��ؓ�/嚇H#{�Q�\��q�w�rs���ow�7�QOi��k��~ı;c!]�.]!��SUp��PC�ӶZ�����@YoZ=��:�8�*}���z�MRL�T�R˅0��Ȯ����*!�����s��9$NK`�*ߖ�΀~oI�ie.�`��Ҙ��:�а���gkO���j�`Bv�t��0���<�W�nJ�6I6�8�7N����4{���@O�,��+>]/U��9=�V�x��R����b��.�Z�n�+�"��>UȎW�N����
3@��N�'q�4����Ż�g��}���8Fm���W�����fw�:ɳ�$L��:��B�����};U�c���g�p^<Z�����9�rҝ&}h8��yT��9!�w�pzv%^b�c�659���|�}�#C� ͫB��#]��E?�#;�y�"a�w%i�arW,��a�� mMk�EYp씣B�$��CbB�P#&[���#�Uu�Q��Md���:����Btٸ�D&�
�^�.��<RV��nnsyiN���+��"w��T�s�rwȏ�W��������W�����BZ��`d�N�eI^�ɿ��Z{�����Ncn�xz�|�91iތ���޹A��h󁭮��u���8P������W�&R�'�ps&��B�|���0�'��&�N-�sE��9b���Jo�9_�DO�e�k�{����\����F}*PT�+y��ń��i��57C�����W�;�W�R a���hrl.��7�b�ᷤ�C+n����hc��(8����8��c�ͥ\���p+�E���w�6�OS-�|@4=���gB`�/2�`���K2w��-i;�rhw��F�ᇦ�>�����i�`#ډ������ɒ��b��Z��)�sHx� kYZ:-J���q��ruIꊳ��
&BQ�]�w-p��� E� E�L�!�$�q5��V[�W�T�u��N~z�w�s�d����������~�w6��^v�V�){WNE|�
C;M�S/�7�Q�}3���؆�~��'�{GCo����{�C��1�r�=37�%�$�9��4]ԥ����������D{���$xY��4�ϵ����Pq�!�&�Hn��<�^��#�?08|:���+�.���!\�j�-�ڲz8$�I�R���="m�h)m�_j)�<)�ۢlwS hV�q�'�˗+��[H�H����~K����Ҵ�Ͷ;��4�vԼ
�y��p;�#����$k5w*>�P��3�4�h�zMI�d�9���:oz���S��r�[x�.�';�̪�p=�����}T�뱎l��q����ᾃb:��c�J�(&0˹�%�Q�~���}nix]7�|I�6�>4��
AECg4ԓ�E@�4���	��Ļ�؄�X�v������1�yE��VG���1��\Z��,�U�[3MB������9��'bW
��ċe����) �40MNm�ns�l�]q����݄T#-��ΧO���������\���V�j�kq5��"K�C)W������4���yK�����o��yo�9���������:F����m�ߊ��<c�9)'[g�
�͌=2>�����7㧄�f���y�!^��w������Ν��6����&H����v�B��fO~�}�=tFO�Be�鐾��\��>|�'��ĳ���ƾ��O���`����ǋ*3x��W'd�*
o,Jb=�z\lqN���ͿL�KԢqe���"T�W��GI��|��u�ޝ�6��[�V�eϫA���@46`���uEm=���ی�����9.3���k�4G��� �'a6!d��?�Oa#p���|�(=#l{�]�z���k��<)��\K���Z��s�~���Z���{P��.����$�v�N�g���Ѷ�ˤx�[$���b�)�.H8]��Pd����Hi��iĮ+�����V����)X�J]]��Ѵ��	�,-cι�����%���q9վЖ}�M�7k��}̨Imx�q-׻vf����@����իJm�Q^�򜱍3:��ɷV%*���#�a�ػ�qBo�����??�n��v�s��OM���[�\���Z�U��4�@�q0�0�����=��=Ȝ�Yc=�NTZq�j���B� �j�C���|�����0r�u�P�_R�z�:�pM7��5��U5	�DxH����|��-ty��9z��p�k���f�gv��x�����R�y�n�l[XJ MN�7g[;�ā_�8@��0���C-Q��~��y����`kJ&�]����/�-�GS=�W�j�u�D�P!u��Ҹ��� b�?���4�8�]a�����E��2ɂr�{=p�<׋P��A�I�՞�M��nxu�P�=�O���������cuP��o�r��OC�&�Q�ª}Ƌ7
���DH�8�t��>��%mx[�0Z>
�z��7g�b��h��]��)Pni�n�H�ݗ�9%5�7JmG'щo%Y,�TW}V]̻u=!KAP�~�&xgv���z{��4�x=hIMk%��Q���$F�]�������뼋��Ҝ���
#.9�@)���h�f$:���B0��~-8)3���0\��mEͦ�H���5���� ��3,���C�ig�f,]~'��Ow4KJ��>�u��<���~�kH ��<���h����@���`o?��YS���1TvZb�v�X����8��=�]y��F~��sa6|":�I9n5�yx�7����}f�T�Քx��Vҋ_��(D[ޒ~Z�Q>1�kH� <�z8������@烋�7�PY׿�$��Ź%,
�����G�V�Z�DɸO%޾,�/�c:���p�\�V]z����z��z	��,E��ˮ�D#�Ҫg�&S��/j�~�� ;c*͒IA��\MF��8Ө��Ut��z��/�_���r5��\қ������*F���psk�ܯ�s�O0��Ǉa/�}=��΢��QT?TS�� TV@L�2=SYc����cy�V��}�,�l�춢�	�h�w���H~���E�F1L1��Sr`>u��h��_r+l{�+M�`_�K��ST�z]��[��'��v�u���Y-uv9�����.�U�0IK��S.BS���e��E��OvgݷI+��fv*D�*�2d��6���-v�
L�{|`5�? "x��.�C�D�{v�{�K�m��w���%�n��|�HfY:}r!��zϊ\E�{����{�g�*���_�Ƨ�=���i��,_~v\�rrG�"�өY�&���IX���M��ԇ�I��;ʶ��e3,87õaJj�`<�)�nGR�/�B֍�Z�I��g� �m������ް-�n5����Ӱi��pkl=�2����4+�n#�4q���y�u���u�q�P���S&$>K�E�Bl�S�맡J �&�a�1ǭ0�b�q�yT\� 6�wkXvȞ��p���PG���D�ػ��V���G�ח���s\٪���νӖ:���2��u��̼w�2'K�Iic���z��-W;$۫׶��5ׂ����oܖ��vd��y}�m�]k�B!�ǻn>�5�5�bߗ������h�kxZZ�>���kmd��rJg{�7,�:�.Cؘo96�b���v�� Wɍyk �A@�OJ�m ?)9��/� O)/��|h��W��΁�      5   �  x���AjC1D���	�e�[w馄�.BZH�OG����x��!}͌d=��I-r�y�n�����y��_�������g��� Ǭ��4�1�J�v�(�4B�Q��q�]A�"�6Ș���+�	��ͣJ�!U�s�j�YT��@ω:����Y�SC+�.�E
��Pho�a��I��dM�$3!��_H�L��r��8۰~�{���C��2�0��eCa�qN���������cQo'ZT��E�]�E�&����Ġ����қ$��X�$���5�n�� ��I�cC��ì�S$F�C�$�N��6I��~�3O�n�"3�A�$������ɉ�#1��cT1�L�\��0�4�B7L�[TLچ�1ʏ�F,�͏5����3WK�)�x��O�m�1`����(��hi'�$7��� Ɏ��q4]��      8   �   x�O��E1:K1;��K���_�b.#��� �mv�`BiZL�F)����`y��}�[9�ք��1�����&75��a7?��j�g��I��f�S廎��M���.Ŭ�=���d�;&��e�2k��? ��L"�      9      x�34�4����� �X         �  x��V�n�6}V��ݗ$�MK���[/(�@��-�b��i���Ф RQݯ����$N�̜93�(��>IC�^V�xd�h���ׇU�
Ek����Z��]Ӭ��X�����!x~
�I���e��6Ei��0��GEco�a���eo��Z	��frǲ	�lW�QD]~�2_1��$��2�4/�Gkr�g��I��(�����6�K����Y%hǖt�J;Nw�]�:����|ʐ��:�|����y�4�
f���-��F[[���;�̠�2�!�v<:��E�${��C�f5z�q�TojjX��@�*^݁}�Q���� �i�$~�y�$��|o}�,�Iz�|R�'$��5+�yz�ka�C�9^�3�M/+W�ᒊ�
��J�T�$��|M36����v`��M�:&+���1�Z��#3�Ӿ�n�;]����K�$4\��6k��רf���f��Q:Fp)z�j�\�2����*�;�{�NR����e�WC!{.�M�<�f}U�>��������J��B8��T�*A<�f�c}4�VL�{���Y��p#�\��Yp�'��B@�۽ځ���^�D�̡1��>��U�q��UW[�_ĚH�@�oj�h�#�3�}��[V�[�-��q�i3C-�<8������ U~|�n�� ���l�e�h���7��#B0��-ܜ\�����$��}]���v;�0sI��ؤ=z��n�q;''x�	=�� �F	��Z����r]Z���JT������X���0	�^��� f�W��o�/���<��: =�e���G�l)c�C%Fc j�(��q�T�i��'��i3)i�ٗk��}�>�����#û��s4P�G�#�[Z1���q����hm{�6őv/�L�T�\�۠/��cZ]�V�0�!��A����K�W	���՘��M����(x�����V\��J�"�s�/�y\�k���k�4�YH����:�u��a�C�����V�2dM��(Jȼ����؍�p��>]����3+�ɠt�^��i�A����xhѸ�.��M�؎��Ko�@h��'v}��m$�o kz��9]�~�{3 ��[޹0 U��⠆�����i�Se�D�Z֙�_��fH�4}��p��]�	�
g	��s��t�_�����J�Rv      ;      x�3�4�2�4����� 1�      ?      x������ � �      H      x������ � �         n  x���An� E��)z��v����@6�:�,Rs�b�4�T�$��5�#�l&��sf�&�Ga�������Z)�vCKJ���/�b�e��j+��)��GH�VkC�0ca��F��_�νJn�ֽ�߯�;)��L���&��n6�C��_)*	*�Ұ����ٷ�z VW`���t�������Q�N!�\���
���^������݅�;i�$�uj���#ۆۜ���(;��C��}��'��=O��N��ے�q�ʗ���d�r�L�KU#1o�+��l����RL�:ZL���24��!2�Q�f0�<Cd(�8<��{�m����$u���콓�ޯ�Ӈ>�(�#�XD         C   x����0��x�!�]��B*�#�f�j��m��_��VK9�;Ne�X�3,��������         �   x�u�A
�0E��)�	�IZ$;��� ��:j ��&��E](��W���Cq�����!���BM�11��3��o�g-�� C��9@�����un���5�DW/);ښ���g��ܼ��̚���yC���k쵔rD�EL      	      x������ � �            x������ � �     