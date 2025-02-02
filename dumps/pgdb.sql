PGDMP                         z        
   login_form    14.3    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16394 
   login_form    DATABASE     j   CREATE DATABASE login_form WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE login_form;
                postgres    false            �            1259    16396    country    TABLE     P   CREATE TABLE public.country (
    id integer NOT NULL,
    country_name text
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    16395    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    210                       0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    209            �            1259    16406    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    login text NOT NULL,
    real_name text,
    password text,
    birth_date date,
    country_id integer,
    user_timestamp_registration integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16405    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            a           2604    16399 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            b           2604    16409    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �          0    16396    country 
   TABLE DATA           3   COPY public.country (id, country_name) FROM stdin;
    public          postgres    false    210   �       �          0    16406    users 
   TABLE DATA           {   COPY public.users (id, email, login, real_name, password, birth_date, country_id, user_timestamp_registration) FROM stdin;
    public          postgres    false    212   �                  0    0    country_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.country_id_seq', 229, true);
          public          postgres    false    209                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 10, true);
          public          postgres    false    211            d           2606    16403    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    210            f           2606    16415    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    212            h           2606    16417    users users_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_key;
       public            postgres    false    212            j           2606    16413    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            k           2606    16418    users users_country_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_country_id_fkey;
       public          postgres    false    210    212    3172            �     x�]�Ow�8��ҧ�{1lcl/��!&&��}f1�3z�O�Bç�[2I��&�%d�J*�T�x��SuT9rj������׃�^���  9�j����u��>��3$g⺯��$s�ƴ$^��%�#�u�B��t�)�7�ٍ���k�(��#��)�4���o 0����[�1`����nH���87���,-i���}�R���L&�g��`���Q-Y��l��d���g%�)T�!��vl5�����I0�i�;l$��pV�Mٳj̑�`r�#A����w�ǡ���)�t֭L1��������N�0�ۆx�)�x�ǐ�=F�Ǿ��Lg►���[�ZYcpvtO�P�)[+9� :u8��� �����cw����ɾ���&�vG�����[|9e��L3��V,f
fk��Q�Ŵ��p����ŦOa� Kd��?�gpa�u�gJ�ɍS������V�.�!��l�||&?��}�M��2�ŝ�;�{������Jqg:���ɧ�>��bN���~�,�G�@�bޜNΦb�"����=󟞜�9�у׽��31��Y����p>�
1w;m�KqO�����/O<�*�	~�F}nO�{�C�<��>ly��{K�V�|
�zl ��\˳���iO�0c>�h������ϸ�y.h����p`y)��d1��ȗ�,b���D<�7[�x�J�F1jtWd�,f���Z��s�ɢ��Nu�����֕����F�&xYbV�i�D|#�c,S��������u-�G����{ܙ�,g�q���2�=ߏ�`a��(K�h�	��1��I<I��`I���xtԞ���7�eDY}���o��A�bAg��>�I!�?q�R,��$0p7�܈~y6��~EK��R!OCK"���B�bq���<
.	7)��@1@�T ���s�����.�Ro�c��� �K���T?8Ō
���|`}.��
P�A��'��$bJ�f�!���a�4��F�/�@���i�
j��T�D�>q�@�Pv�Q�~f{"����B������tz	����d��0���[�0|�[{9�<|2mm�YÅ�{�Ọ𲀄܀�A�x�	�چ~p`�|;�!��	9���g��&�0���r�������){Y��8��mys��gu�n���b@�[�P4f%���쳄'Q��2�tT����TD~}7�dє��r����,xP>��ďGB�����8� ���j W0�Ł�+|���B�����������+�[*�����0!и�nK���� ��K�q����	W^Yg�a�A ��&�N�(�kNz���tcv��/xD���^�
G9v��b�7��
���ڹ!����]�X8����0V!*�iP�w��6�"��'!+���AP�"�M�3 )+򵎮-�-+ի�4�R��N��bV�S/Z*d-`S�f���H�}��X&�?���M���
�X�<�h���X���ђ�=�Ð�B�*��@S�+�����ʁ�nΟ����UL8:@�:b�Q��Q������)����M��5�#�T@�~�K�%���s8��]�H_���A���k�W��	p��]澥Xà����6�� ��@H��5j*u�L��s��]�wj1(p�ڄ�I ��=��A�K�V3�h����gWT�����2$���y�>V�Q�g3�o�B9r��i,�ќ�7d��c��R�QC�8��J�_%�Sq�� �������_f�?
�\��pOє��U��\���OBi`�A\���JJ�`%��      �   �   x�M���0 �s��bz�b܈Q#q��Z)X�q��Ń�a&��<����)�>�!��/�	dR�gL��=��8�R�T���s7����3]T�m]�r�;�(�O��s$�����B6@6nB)r����\�����o*�>f���9"���a���]Z��q�����s�{�E,�X���b�?���?y��x��H�     