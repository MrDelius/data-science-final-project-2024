PGDMP  $                      }            db    17.0    17.0 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387    db    DATABASE     v   CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE db;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    24956    brand    TABLE     m   CREATE TABLE public.brand (
    id integer NOT NULL,
    name character varying,
    users_amount numeric
);
    DROP TABLE public.brand;
       public         heap r       postgres    false    4            �            1259    25075    brand_analysis    TABLE     �   CREATE TABLE public.brand_analysis (
    id integer NOT NULL,
    predicted_users_amount numeric,
    income numeric,
    revenue numeric,
    loss numeric,
    brand_id integer
);
 "   DROP TABLE public.brand_analysis;
       public         heap r       postgres    false    4            �            1259    25074    brand_analysis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brand_analysis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.brand_analysis_id_seq;
       public               postgres    false    222    4            �           0    0    brand_analysis_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.brand_analysis_id_seq OWNED BY public.brand_analysis.id;
          public               postgres    false    221            �            1259    24955    brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.brand_id_seq;
       public               postgres    false    218    4            �           0    0    brand_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;
          public               postgres    false    217            �            1259    24980    mobile    TABLE     �  CREATE TABLE public.mobile (
    id integer NOT NULL,
    name character varying,
    model character varying,
    battery_capacity_mah numeric,
    screen_size_inches numeric,
    touchscreen character varying,
    resolution_x numeric,
    resolution_y numeric,
    processor numeric,
    ram_mb numeric,
    internal_storage_gb numeric,
    rear_camera numeric,
    front_camera numeric,
    operating_system character varying,
    wifi character varying,
    bluetooth character varying,
    gps character varying,
    number_of_sims numeric,
    three_g character varying,
    four_g_lte character varying,
    price numeric,
    brand_id integer
);
    DROP TABLE public.mobile;
       public         heap r       postgres    false    4            �            1259    25092    mobile_analysis    TABLE     �   CREATE TABLE public.mobile_analysis (
    id integer NOT NULL,
    expense numeric,
    business_value numeric,
    battery_hour numeric,
    mobile_id integer
);
 #   DROP TABLE public.mobile_analysis;
       public         heap r       postgres    false    4            �            1259    25091    mobile_analysis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mobile_analysis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.mobile_analysis_id_seq;
       public               postgres    false    224    4            �           0    0    mobile_analysis_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.mobile_analysis_id_seq OWNED BY public.mobile_analysis.id;
          public               postgres    false    223            �            1259    24979    mobile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mobile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mobile_id_seq;
       public               postgres    false    4    220            �           0    0    mobile_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.mobile_id_seq OWNED BY public.mobile.id;
          public               postgres    false    219            0           2604    24959    brand id    DEFAULT     d   ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);
 7   ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            2           2604    25078    brand_analysis id    DEFAULT     v   ALTER TABLE ONLY public.brand_analysis ALTER COLUMN id SET DEFAULT nextval('public.brand_analysis_id_seq'::regclass);
 @   ALTER TABLE public.brand_analysis ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            1           2604    24983 	   mobile id    DEFAULT     f   ALTER TABLE ONLY public.mobile ALTER COLUMN id SET DEFAULT nextval('public.mobile_id_seq'::regclass);
 8   ALTER TABLE public.mobile ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            3           2604    25095    mobile_analysis id    DEFAULT     x   ALTER TABLE ONLY public.mobile_analysis ALTER COLUMN id SET DEFAULT nextval('public.mobile_analysis_id_seq'::regclass);
 A   ALTER TABLE public.mobile_analysis ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �          0    24956    brand 
   TABLE DATA           7   COPY public.brand (id, name, users_amount) FROM stdin;
    public               postgres    false    218   S.       �          0    25075    brand_analysis 
   TABLE DATA           e   COPY public.brand_analysis (id, predicted_users_amount, income, revenue, loss, brand_id) FROM stdin;
    public               postgres    false    222   �0       �          0    24980    mobile 
   TABLE DATA           %  COPY public.mobile (id, name, model, battery_capacity_mah, screen_size_inches, touchscreen, resolution_x, resolution_y, processor, ram_mb, internal_storage_gb, rear_camera, front_camera, operating_system, wifi, bluetooth, gps, number_of_sims, three_g, four_g_lte, price, brand_id) FROM stdin;
    public               postgres    false    220   9       �          0    25092    mobile_analysis 
   TABLE DATA           _   COPY public.mobile_analysis (id, expense, business_value, battery_hour, mobile_id) FROM stdin;
    public               postgres    false    224   ��       �           0    0    brand_analysis_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.brand_analysis_id_seq', 230, true);
          public               postgres    false    221            �           0    0    brand_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brand_id_seq', 76, true);
          public               postgres    false    217            �           0    0    mobile_analysis_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mobile_analysis_id_seq', 5436, true);
          public               postgres    false    223            �           0    0    mobile_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mobile_id_seq', 1359, true);
          public               postgres    false    219            9           2606    25084 *   brand_analysis brand_analysis_brand_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.brand_analysis
    ADD CONSTRAINT brand_analysis_brand_id_key UNIQUE (brand_id);
 T   ALTER TABLE ONLY public.brand_analysis DROP CONSTRAINT brand_analysis_brand_id_key;
       public                 postgres    false    222            ;           2606    25082 "   brand_analysis brand_analysis_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.brand_analysis
    ADD CONSTRAINT brand_analysis_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.brand_analysis DROP CONSTRAINT brand_analysis_pkey;
       public                 postgres    false    222            5           2606    24963    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public                 postgres    false    218            =           2606    25101 -   mobile_analysis mobile_analysis_mobile_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.mobile_analysis
    ADD CONSTRAINT mobile_analysis_mobile_id_key UNIQUE (mobile_id);
 W   ALTER TABLE ONLY public.mobile_analysis DROP CONSTRAINT mobile_analysis_mobile_id_key;
       public                 postgres    false    224            ?           2606    25099 $   mobile_analysis mobile_analysis_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mobile_analysis
    ADD CONSTRAINT mobile_analysis_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.mobile_analysis DROP CONSTRAINT mobile_analysis_pkey;
       public                 postgres    false    224            7           2606    24987    mobile mobile_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.mobile
    ADD CONSTRAINT mobile_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.mobile DROP CONSTRAINT mobile_pkey;
       public                 postgres    false    220            A           2606    25085 +   brand_analysis brand_analysis_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.brand_analysis
    ADD CONSTRAINT brand_analysis_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brand(id);
 U   ALTER TABLE ONLY public.brand_analysis DROP CONSTRAINT brand_analysis_brand_id_fkey;
       public               postgres    false    218    4661    222            @           2606    24989    mobile fk_mobile_brand    FK CONSTRAINT     �   ALTER TABLE ONLY public.mobile
    ADD CONSTRAINT fk_mobile_brand FOREIGN KEY (brand_id) REFERENCES public.brand(id) ON DELETE SET NULL;
 @   ALTER TABLE ONLY public.mobile DROP CONSTRAINT fk_mobile_brand;
       public               postgres    false    218    220    4661            B           2606    25102    mobile_analysis fk_mobile_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.mobile_analysis
    ADD CONSTRAINT fk_mobile_id FOREIGN KEY (mobile_id) REFERENCES public.mobile(id);
 F   ALTER TABLE ONLY public.mobile_analysis DROP CONSTRAINT fk_mobile_id;
       public               postgres    false    224    4663    220            �   �  x�mT�n�0=��"?�@ܥ�m�q'1j#H�\h��	S�*Kپ��a��tz����f����k�x��HX��2P��wo�a�.V6p��6�s7�Xv����=�ڗe\՝{',�&�?v�L��j���#�`�i��ֹrO���mw����������'���p���9��{,���m}�=	3��{M�bE +�]lc�Zy�Xy�$2x�?������~���>S8a`k�����'b��|C���.R���V;�&%�8��ְqe�����o��P֕m�6�W�>R�����I7,?�	����P����+��̆@��(�0m�@Yj	ۘ�i�P��%���b�n�!5�pX���"wF�uH%F��c_�P*9��n�i*K�Dk��l��tt�}�&\�3�.c|�\y�Ԉ9��f�ž@	רSS�N�e����(Q�Sg��%9[�m{ ɤ�O��=�ڿ�ι>��@U	}�_ȴS�}��9���Kԭs�\�S���a>B˱��m�4?��5<��	>�G��(yl��U���+cUc���p�_:�=6$����a����a�e���r�g#6帹���#c�
�?Y|���]���k����i��y���N�Ճ�Gj{<�L& K�ED      �     x�mXm��*�]S�ﰗ��u<�=W�#���
�c;���q����>�j�CϞ���̣��l�˓ݞ��iv�u��)߻�>CnriKs�m����C9IB��U\陊�Օ4�A{"_��
��]����I<��v����!a�P�k�Gb\��٥>؞�,�c+��bL��@�e�Ǻi�?6 x�p��Ɵ�8�� ���̆
��v��
C�����x��`��o���p�ѣ�Z���w'��o�P��S�����*Y�B�bo���-r_�6~�y�)-W@6׍�j!LF�"��E2�8���<
!=�E`F���|�Ҋ�u����I�! 2su��&=p� U�?w����P�ǝ���q��3l$_�6�Q�fl����;�y� �mF\�/�Fz9&���D)q_W�z�S���1t����4��q bv�J���,�8
��Hb�w�"k�_��(9 ӕ�T�b���<�8_���r����sAu�`�2�ᄘ��T�y0��h����#F�r{��E"^C��2���h|�)�LAW}H����-"��s����!�dA��7�;��}���9#f�n<G���c%E5#5}!
,Ȏ*x��a�Uy�a��\9�j�����$��֐|D~zc�z�)��Z��!Jk?�k�&����������U�O����E��w��_hV�K�:���VF�8X���:��p3w��W��( &�8C����b�
�7:p��KיB0BͯzFs����w�S�:1�C���	����S�c}�
Z-Ի���R�x�g����x�xV���a<��3�/��dm��j5|J-^���2�4l�7��\��F���R[`���N�!�3%�`�*��Ed4��PvF ;Y�֒�p�;J)K���$yg� B� �d;�.: ��D�u�1v�D�1����c?�U�.�6�nN�&_�p%E��:.�8@�!)��[1�_��z���	͓�Q�茄�M+�{o�7���bm�/���5��Y�v~�ƮR2��>SQ�M�p[檼�j���� 
;T5�����h��G0�͞�/��P�2i���a��k4�d]p�9~�\k��?b�M(��y�$ԡ����k��L���$��'(�\��}��+5Ӥ����Gi���\�o�f��f�[	�������t��c6WP�J,x��ru"/^xjnʚt q��J�% @H��i�V��i�r�/ޕ_�q�o�sӚ~ya+�����|�u��ch+�Ƿ+-4y��N���q�iO傪>�g��"��M4�S�S��	 ��� ǹ�8 qg��t\e�44
�[C4��&͋�|[���)��@q����nq�yzd�BC���n�4���қU����ײ<���$�Ʒ�P3.��G@-r���P=@}�[���f����BKǏ;�OU�х��j46��}��Z;]� 'Zb�L��"#�6����v����B�N.�����[əyo�H�8����P%B~�a�m꼕�=�ǁ���6�t�Т�m��A��︚1:��%U�Ɨ`���}´�P�bb0�ԓ����6�2g�h�ǡ�	��n�*14�]�C��Q'�C��>,�+ td&[JI�S��;5�r��KhT_C�=�ȧ���˗�E}�P��ig+t�1:4W�cQ�z��Pi�Ց�\�p��LA�h|�tdxU���d�6��a��������Dk�7�_��5��e��R���6I�X��E
Z@�!A9�( '�s�����|Je��O�<��|��-Z^@hO�!�X
��Ow��|LǾ���D�����L�O|��_��n�q�;�P��6�^���
��Zy̏<���-
�/���|mՔ����>:������V��  :a���ES|����ӗ�����T���XZP2���#��VT�L�� #b�<^�q �4��e��9��E��>7C[�E���A��Z�w��/��Z���!���nvԗ7�k��C���g��K,�������y�      �      x��][s7Ӿ�b.��^jt�\n�q���㻍ل�/���?u�0�5�Myw�%��h�>��J)r����P5��𺮉|&$���#�Մ
QA�U���oƾV7owۏ���#.yC�xB)�����Z)M����7a��@ARF�3�/l�����Mc��'��z�9�~������vW�^�^�nn�����|,j#�zf��B�GN��B��cnU�m�MO߫4Mc��F~۬�?o�d���J��-*��-3��%����Ӎ�s��p�=����T��;\��7�i)3�S���e�m���UZ���D�D��n���l�]Eݰ�T�D�9�N�E�����-iG~!E��\ą��"|lQ�=�G�e����Jv��-����˴4�7������װ/tg��m9�����-Yj���?�=��]����߾Wov��1�OIw.8ެI�ע{
ܣ�g�k���TO�����ۯ'��!�X$c�OC�{��fb�)�%�����/����m���}�j\�|�7��V]��7�v㴁������ˮzŉ��Z��YO�Ǽ�s|����|�\D
�GB�������P�[�v���okn�"Ɇ�'�c�NE��E�ܟ]�F¡��=��67;���U���g��D�+�f7G	a�
���q�H�<�v�09��<<BM~~X���Vg�m�p��M=|�<���g�Ԥ`�ץ}|�od':9m�a�Lܧ[Q>{����n�6�6Oז�?����nح#;���0�Tr��~b�������¨q���ar�E��&���]Z��Z�F�#��kG�N
�B�by�%#�/_�7����v��0�u��u=)Յ�=��;��S��Ϙ��Da���p����l�9Z2H?ʤ�\-�%#-INv��-����͵=��I2�VڶGv	kT�ȳglt��BOhؒT����j��d&��~Ĝ�b�#�[��y�#g� ��Dg�zLC�Y�&˺��I�kP�O�Gn��#1v�U����Q���rs���=N��d�#�̧��5�m��m4ԁ�Js��g�����e�3|�
ܳ�g����x��̤$�~
��q�����~�<W�~��G2�a�3�U��R������E*eW>�v��f�p�b���i�7��k�v���x˦F�VZ�ֈ恶�T���7�̀!��vO�uu��N��4[���az?I�7��wG��>%���,%Ґ����(}b��!vgH>��/E/�j�#���5VϜި%p�����LK�D�(/!��r3��U���C]�u�"����� ´�͇��"JQ�����w���u��U/v�W�Ϙ�@����iɎi�-iVi��6(��pF($۳ī�����5�̳](������`�
�%��KL�K�/)<�Ɏ��٭��%�%�h^�<*�wi)T-���e�|����~�J���;�J� ]���H�B<Nb�J/^-��Q��,���B$�D�{�N,i��F�k9���;�w@����k�a:cX~�^ˡ�)�Y&)<�3IGr�{�~���;�K	y�%d���fw�4��=+�w�ԬAq�)ۭHx�)�o�
,�C��y�z��~���N�L��'���?��DX�"-����^��m%	�y:tr��f�������F�:����t�\����s�w3��I��)*�%o������z.Y/R�&\+�]����h7E^mŪ������+g��g:z�h!��H��a:�.�:aʴ:O4Յu��X���������柵#Ў�<��RG��7��77c��c�%'��h�
VO�M��:U��4�{H�v�"�I9�ky�|EEծ(.f��\u���et'�.�ν�`$$F&�t��I	N�[�g;�_�'�G�Pk�_ս�_��a������f�����#�%a|.�y�{��9������y����'ߍT��y0�4K(�~Ɩp��j�j6���1�l�>�U�	������]��j/OB���2��J���h��n�^a5yBe0�R��:-���Yv��?��Fxd�M�}?���/X*N���v����(�ܚ���Ok-ZfT����^U��d���*]i�C�'��������c5����S�w��\�K�����vn��,[T*�F44�a�K�bt��ؕ�mP�ƨ�iC���)ݑKBΆ��P�u���J��"�{9fD�Z�^޵0�6����N��ۓ�-��±��N����.�$JIti��K��9���\��x����t�D�(W�\��/���p�����ŗ,'�I�'��.:0L{O]/W��F�)����uI쏜Lhj)��8d�4���W&��͞H�V��vF�����;��<�v{�
M�\��I���Z����R�����J6t���,�}t�(��aO�����r�K/����j�
b�l������D��L^'l���RQPY��r�s��tܬ0,QM��j�:��1hퟮ�W�T�ַ�T�D��q�aq������u�Z�P��QʇYpǂ�Ƅɻ�0F��nX��-�!a��4(��+���o�`K��n�!��rƒO
�J����EH/�;�p�d��T"�~���Ԝ����9e-�n-��;�:)�׼s^U�uO1�jq�!��ɂ=ڈ@Tyg����ߊ���C:<v���J���%�G*X?����eiڟ�,�DN7�tT�妑�iF���Gk�G�����!8.�;�@��$y����A&��}�֥6��v�F�)R��(���%���X�u�\	j|�=wɪ�~`55?��>����\�[�n�1����bJ����Dinh8MHA���C	�x��r�;���N����a���=��ê�C���>T^�8��p�zϦ{K�l�Z�K���twG���fԽ���s�#<���a��Jume�\8��D����&�{�Ž��3?��$�
�k��0�����S�4��n�a5f�˫,F>�.���d��,;��+�X�^y��5���>�1x&��}�����r��Q��GD�F`&*���.���+<�&��t�����Wpvej&U{�z=��r�����cuA��kt �{F�c�4O_6u(��~#�]��|�� |��Vt�n��
I%�[o�w��ɽF�2�	#���7Ij4�����a�2�H�n&n�(�X�Kƽ���&�'�5�2��L�ilU�������r��ب��Qa��rԧ�|{���ڑv���$Cl>�霪pR� /o���l�U?��sN��'��NUi_;,K�����WHNVϺ9oIĸ�-����'�Y��Y`������b�P=�����w����3����������}T��Ki�������8��iױDd���Y޺A�;b��D�WpY���"�h���p�v����i�Ȫ;-�;}yQ!�sϒƶ�|fgW0a�#�77;�.^��pc)[�h(������w_:t���#����{u�eskO�ť]�v���-%��c�Q_�ڒ�r���~J�-��c�e�wZ�B	�ZU��0�"\�0c6�q���&����.��D�������.����x1X��!�lb-�x2@'�ɰ�7����O(]L�	�d/�L�p-Y��	��aE%���|V"�����U�k�x���Ա�!���Y,W��"��yB&xi� �lw��̽���g���7�"�|m���*of���U�yI��
�|��ps����o�K�/$@#!����T�89�[E'I�!!��S9~K�&&4h8~&��o^��@��Z1E�p��c�ƣ�����cW\�J�t,j5����K����hZ��~]T~H<{��_j���(�{����:'��,�2���F��[E��&-k�ŖH����tr�@9���}������ڮ����:z_�Zi9����}��b�Xs���5�a�G�HO��"����ۇϤ�	gI2Rn���R-	���%�.�9��|��ӈH\"9h�x��:��*�;S�RN2Y�b�q��r�tV��=�����C���-���ŧ�h��(I�.J�P]{J�_�߮I���*�(�B��    ��:\h�I��N�d�+��5�T��=.V$�2;ȫ�ezXV��� >t'4*|�ˢ��L�.U:�\RZ}��l������=.ey�'�X^��2�W.e���yH�7b�B����L|rGZe*XeZG�LUg�7�$Ę6����7d:L�eޡJ���DRlZ��\�ٲ�~��/����c�w���<ߡ��pX.f���e��z5U�"�\��p�Ё�XVl��H��|ief;��+���v�c����3�a��ܫ,�Kl�zz�Ç����T���[U��屔,/�k?+1D�<��l���������Mu���w�:M�]�y��� �������*?b�6O�|�V�q�u�G@�A3����Gx�t�,oca䠅��N�E����2��+�����Ȕ2 ���zs|��^��.�B�j�m�8�4|uՈ�j+nIC��c��!g͌�=_��d
�lA�����vd�9�'�@��U����?i������L������'V��O�A���X�fr��.q���Y��0	V�=T��?�{(����f����|m^�U���2b�!�@.�
c7paTiL��5xy�d��й�����;Я�0X�/��8��j�eV�+/z���ʷ?/��ǭ��r޶��X�I�+���^��,z��sS�A����a��=�!WGi�/�yF��S�W&X�N);굣�˔=WX��b����qۋa�u@�g�z�v>; iIw���D��c���n2Y���_���j�U��N67��t�L�AC���*㖯#m㝊�5Og�N�.2I�eu�+��뿶ҙ�h|`n�u������a67%�4�#�����9C'��wQ0�Ʀ�z��&�Ԛ�mh�z�p��$C���D�HLlZ$3x0���ikwĦ:������8�V/K��6��y��=iG~Y'�j�
�`���}�%�#���75���hH�S>��Zjd���L�]2�O�y�N�y����n*��;��3;z�}W@18^m�
�é���o~$�����
�H��&eGu��!h��!Ir�
8���tq�͑d�Ĉ㫔�&k�E������ݗ��=��e)_�}���I�aի.��ʁYTy��h�_3kA9�P��*��
0��b��{CB��e�|g?�Δ�':���m��y`r����%��F���LI(\�>?�1�ym/yu���e}uO�����T�8K5+���H�ӓ�̭ ��ܾ���~��_f]cɆe�lr2���y����@ӸRu�c&�
j*!�l$�0ϋixº1�N3�z�*S�q�_���=�	έ��8G㙸�Q �d#�7�=����u��=�e�R�ϓ�.iG>�3�XtDd8"<�_��	m?A�$��i��
�ea\�:�q��`Kt���A��
�Ƿ=�]�|��L�����.���"����2a�|�]�(!%���!�в���;�O��ZW3A2�+t��'��R�_?|��XΓ}���:�c���?�7w�ލ=IL=Ֆ�to�iGTZ��je��7%�M��,a�����ڬ~9}PT�O�x�wA�<�;���?����&��8��_������^*���>��.
:'� ���ƞSǫYXڪu�e>��LAǜ8o���ĵ��lZ®���Z��)��/_�l�(ޥ�ﲫƍq���%���Q���k�g��>��9Gi"C�~od�ʄ�HV#�&���:8&Ce�%����}�:"�(��Ƥ�M:wE��2g�F5��1�u霘4�j�|;����`��� ����cN�W�>�Q(�m�g��$Xi"E_���5����*��}y��/��:��U;��[�DD}�7�:��T�h�uoi_*DI���&�4At�]�ǔ�W�d�����K��)��yW=���R��|2��C&5(�'�h��:�?P�P�"x��#<L�`�!S<{@���P��$��P6�{F&�� �g��x��k<�#������>�Y�a	�Ui�hT����a�F�m�����(�?(�'�h���G�,ɰ����t�ng�=j^d`��eV�8q����MI����a%?P��ר��&��v/�,L'44m�R�*��MB�Νe��sE�G��b^����6C	�^��f�Ѥ_����é���W�~���C��gW)�<+�C�����Q!^Yd�-�#Glz��D�d�:�:�zK�5��5V
B[>Phϩ�-�`R�����vZ����v�p��������(��&�W;u�%+�P@Ի=u�k��;���"�0C}��S��?������JI�O�{f�ru �NY�*��6r���o�����B�"��vi�E�]r5��Lႄ�}Q�'i��32_`@�^��˕�4�����H��=8JLs0j�y͟�T�_���QQ���Gƿ��hȫ�V٫-a
	Z2"7�����	'd�V\v/��*H�G�iB���?�'fqUf@^�����nw������^W��MB/�x�eI]��G��#J��/ؙɣ¬&`�M9~u��U��I���i�Dj?��!�0�y�E��\(�JPJ��{#��څ&櫮Kj�`�Y�m䚿L
/C�Ѿ"�5���d�#��H"��4o��	ݾ��B˹��'�I�2��쾮� W�'��e F>h�C���<�q��}����Q�LN��TZ	<���U�̕X��C5�yv0"�����j�םP������sƂ��kN�m�nv������]o��!��?͞T��R�+hRu��TC���Q�`��P+���K��%����1i�O������K���K��D|����b�!y�ǌT1I��]��N�\�D�.t[�U�a"��U]���F�n� �-�x�ٴ�W�IQa���=L��V_���Cw��q$�v`x��"����R��~s]�F��K��tr8�t�Ԟ�+�K���P7�eR�^I��bO!�y�%�����Z��ʩ��9QI�z��=�R?@l��mGk��t�#br���(�Z;1 ���5O�_�^����l��:#���$��CjIz������ũ|6�Sa�vET���q{�ɶv�'a���7�0���ﭟYZ���P��K��Ϩ�����hdS��Zz�{X��<�������Rd�(V��䌇ԧsJ�c�^�qf�HYV�E���|;�����d�J�"��%�U�,@S}�� ù��.{8=�-J�����n�~�ԫ�IV_�G|X�j,����T���yw}���p�����>���X����v�=LC�)1�#�`9�n�u�mO	�8�@��=�`��yE��"��9�ai=}A����x}R�U� 0�wK �د�+����_�%��:� �=�ƻ� ЎJa
�" �O�x/��2Ɇ��V�[����ZT�㯻�nO�b�k��𦄃��\��믐�+	��)��E���������3Z���vp^5��X���:���ꁤ�=�׮N^X]�����#(���p�yq�z�`�k�nA\Y� S#�)�׮�5f,��fE=(T��k�424N=l?�qXU��ȹ#�p%g9 ,k|�8�]Sg���r��ʁ��[�n͉j!� 5���`*���4�n�/M,H��¥Y��Y���ީ�>B�ɡz�}|Q%��E���p	C�9�\���E}�m�a?�刓�̥Q4k��B�$tYB�8�8��44�������p�7��K5����x�&C�^�9W�$��l285�ԖӲz�<U�reؕ�����.���9:R�y	U���Y���{��/�{2�o-�Ah�~-��/۫�9�9��0te�� *�1��S���4���7ߪ��=��z;\��ud8��*����Ȉ�t�� �?�B����e�%%�v��^M����Aop��suG��� ��> .O�n9�rl^�(�$��[)Y��*�!������Z1�=X���i�����Wv���):��K�q�*�,9��S��w֒��KM�@g�l�U��?�������ъ��    �e�0q����V�l�v�7�_F7�b��!����t�������BI�ЦE ��_�H;*<+t*�I������0����v
4��<=�cA��W�W@38���	�fQ�����{WYq0oƕ�M4!h�sd�W��+�r�Ծ���������y:ɨ>��Б�$��]u|���+�/������X�A�^TwW�����P�	-a���tA����n�}���/M��3`�'��&�ȭ����Z?��v}�iwS���q��zM�`�,��d���ԩ2v��� �h��/��hd�:q���]���T�H]�q����´l�Tٿ����r)8��COwiC����}�HF���Usm�QQI�Ռ#�s�8������a?"��J�
n���������`�q����gM����?�d%���w�t��Gl��7�x�YnZ���εm8yJz0�G^�7}byMP
��aCܻ���x�;���a�  ����u�ҙ)���&q��PnH�I�FVW�[{���a������d1�0`hi�م��`߳�:̆�׻���%����4�4s<�i��?�0M�zb����÷0~0r6�A�V���3vAұ�;Թa�q��7�桃��S�V�_�Y���Q��颐\`�Ɔd��M��̔^��:	�mQz���@���U �a�Qwvm�|s�1����(K�Z��ß?#D��(U�t챼`p����Rm�8���mn�M��p��A�5w��˧���_ㅧdF�3^�u(G�� �ߨ�Qz��TuD~\A��T���I=��rg��:�jV�ýg�}�ʘ���9*]����8��k��it�zC�$ޏ]N�ϲ�3�G����V��4��`�(�q����?�ɞ�{��Oq��d�]^Z�em�-�z8����N~H�g����q'�@�B�����]��as]�g�MƬ�|x
-'>7��2����%�/�F�_?L�v�b[AY������d�v�	5�ϼc.�a�bD�&�9�₈�i�� ��	���6jo�ǽg�,���jܠ<���z�5G>c�[�$�Be����ڙ�%���=BC	�D��@�TC^��Y{sS�Y��s��ޓv����I�A�"�l�.����զz~�Y�~�ّvtJ�ЊOF{k�f{�#�d���B�*|?�X�dx�h���T�;�g���1�-�b��3��e�[���P�W�_>�I6�PD1�M�p�<|Y�s��_s�?w��Eˤ���c8	N<S~{��o��׷TK��ᣞl�"zn��&��۠�$������5o؊�V����8Y�`A;�y`Ȭq�7�:��lI�2*fI$5�����홷�%�}��̱�zP)�;�Ӥ&��ؙ�y*	�o�Pf�$�x�d�u�U����aZXѠ��N����iH����ߠ[�aC�:7ޅv�$���<jZo��06d�,����κ�ĺ�����O�$�1>|*MH�G�OeL�j�p��.oF�4w`�k/C.Z[!"rC��D1	�?*��,M�����s����U�a�ypc�Q�Eio2��� +>�%���g��w�4!�`l�ջ<���ge^.Y5ƪ�j��Z(�?��_;V$ze9>H�f�#�O2��H^��4��9,T!xn�)Ҏ0Z��7˺o�v�i(�zB�ݿ����d0.~ |�7���N�M	޾˱���6q�7��9</����f�DE�;���J3�bP.ζ77�+�\���9�&����{G�B���"q��u���칳^�����m��s��L��/�&1�e-�����(jX+]�}�����E�	*�Xk:S}��C��8K�fT(p��m�.:p�g	5�o�҉�tδ�|��k����T�raپ��'q@�������&���4���vĸ���Y�}/����-�v!4�z>��:�
���3�:p�<fWT��������o��E@�8�:��ˀ�x��T�Qrܜf@I�$�ʈ4��)��*٪�-��Ü$EPp�V:¯_�h;!��CE�����4|��%A�1*}N�{v3�'���)���Ψ2�qi� ���Rb�Bl��>C�u(��7�|��4�c�w��1��xB��	$���H����v��Z2���VXZ,0%s�A� `]&Ć�pI]3�����?G�����sH���k	P(�x�0x���-�.P5����p��ɺ��8�9�jZ��m�{�ZӰ��dCvyʶb^�ѝ�?CRT�AT��v�) 8 |i�@��)I�}�^�����Vq�ᰪ�g��"Z�b�b�"�(6"쵍��UG�۶K��f �#�n����Gh� y��@Cy<�e۾e����wM�	8���ݰ��1��DuPz	W��c���#�<X��*b6g�^�:�^s���TGА���]��ɮp����朏vE�#�������wE�~W�a���p���D�B=�����+HM�g�9�z�� �%���5�4
�*,�t���R�k.��2&�4��Ds��#�K� cd��LX�?l=J����ol˳(�<��H���_o�ϗ�}0���������[���n���t�>\۩���\�J������}ur���]��nI;NP�Q+��9c��11����l"́��%w0=� �Cu��s{��N99�@`<"�Z@�>m
�$����������E��e��!{�z�#p��3��<����a=F��	��*x��.(թ]ħ�1����^����>U�d�٤Y�,���A.�;{��o�ջ����t��X���
���}����'cWld�ڕ�FŅ]=��B�H:N5ۃ��Æ����ˮ:���|�.H�2(��.b���
�����W�	��)�sQ���0Ѧ�}����ۣJ����@�u�x��VWUy�]le������n����o��G��U��.K^�u{��cip��^\��>U��1��t�\��b��,I���AJ��æI!�nJ�J�=>��CX�)0U�T[����T�u���?|��|�x�$��f�O Y�'�C���M����L��Rs��4=!JI�+14 �K��MTN��s��Gɳ����A|HZ��3�����T��5��	�P׫�]8�B�Z��/��Ｇ��^�vDѧ�(�0��/#>����L���X`��P!����t�-�ɠC�&Tv�%q�^-P��S��!h�
"�ʀ���&��j��MJֿ�:�=o�����구�����4�u=��I������O ��|�E�>�X�#�D4�כ��u�'�l���$�s3�]껓P���:�6Fs�9�Z�����E��jC�`L�_^��U9�|:�����zo�J�1��n�P{Z��Ԫ'��=BP<9�c Y��`*/�0��dv�"�T{��F�`��4+I�-�I�xe�%�W{�NF����Ϛ.�C��O�D�˫�I�|$	r��J�M,��,����g���z���!��Q/�T��Fƒ:<H�������%�cNI�w�\X���}�q>�o�*�(#9�� %q�Ԑw*��[�'#!��s��w��כ6(�}�u2�2���qi��<��?%ɐ5��2\-�����v��n.0�P��^���$�G���O!�\z�qt�{�X�!�J���Y��t�H��H�a��b�~�f��{S
���kkP�������ဦOO���u�SL�w���M�l�j�P�I�m�7���yJ�l�$�'?�F��l�oX5Cd�'�1e��|�n��#���.�AG��w�9`ȍ|L�~7o���a�[N���������u0W�8Fþ��T'5�`��G'm{���-�������Ϡk��xaH�Ίx͖���:!�^w����L�dH��^��5�u9�R��\�$��qלC[��O�L�ev#T�B}���C���᤻��7Iϛ�I���5��_�pe`��DL'�����g6�q��?8��d���.�M�1�G���$��L,�.�A�KISS�������Lo�z��$CV    c���Y55>2�a���2���Q���܍�C�2Gz�`$\�K6���$a5%�H��������E��=%}�0t�"B`��$˼�׈�����Ԩ��v8
<0�]�fZ��!�Ii�����ue��m%_Uւ���3��쾀�
��I�����w�}6Y$]���}!*�Gnyڬ�I�29\k��|����j���=V����ջ#��H�9�P@����Q��qҎ�@�3�5W�D�Od��w�|F�uJ�/F 0A�V��BI�҉x~�n��ڛ��(��?sr�s-h 	^�5����"�f�`I�����)c���B��i]
����#$p�?�8����|/�^��Ƨ�}8R9� ��An�[*���C�8�y���s���=4M�h�\���}�KH�:��'~����d�t޹&Ђԙ�V��#6XH�\ Qe�A�K3_��ǽgM�zE_K��J"�Ҽgp����;�$4�ݯZ�vR��@o�3I����~elǸf��5��8��ƽ��X��G�x}G/n�l7Δ�-yj�C�H��`MV2���=S�g�N?6��iڊ\L�M����>ԫV���s4�䢠&�b�({���;q`���h���M�1�Y������,I�Ѡ�^R����+;�a�����d8	J1'�[�j�}���ŕ�u������Un��`?�vɹp�U�)�<)�R���H�\�_�����LUn��­�ZMhD��n��n�^������=�g4��mm"3	,l�Ù��z�On�7��������+�0�x(�u����H���L� s�`�=M~i,���+���  ��r�#|�8d��B�&�hD��}�7�S�i�k^�|�́�(�M���bvq'f8���M�=z���������=C@�����M:����۴$y�����T���_HV�  �d,)a���墴����V�%�S�JKd��n�w�����G���䅒�̯�5Tv�>owւs`�ኹ�j;V��]'��"�~�J��\���j�8�#*sӚC+QW/o>n�7$�K/K���z쪾�~���	��__{��t<��/o��O@����ME��>��X��7���7!�T��e)桶J!:H~y�����|·�R5O����w{��I6v&./,���\Ղ������l�m[���#I��&	ޔ�d(����XU�-9hZ�������Kf��-��)� �S?s��t<!�tO�S���Ж�v _�ͤA�(��� ap�����F-�yHU�Ex��nn>�dx�,g�=�KifAP.�,�"/ n�5Q��Z���$����q`��j<$������J5��N�Alar�$hbs�E���������V[���r����Q�gN5�w�)c)�!VǊlJ���c��y�[��~��UuE{���������7�nz�k�����EA�T���*ݬ�����6�k2�A/*Z [�^��A��P��a[���0�J�V�e��z���3_g�8���*<Tk��>�Xܯ��m��6��0y�Q�>�VR�AhpM5%���z�MVA�
�a�f9����阭�T�=��s�N.����ӱry�m�4��]2���I��U�`��Xٗ��'[��=���)m��}�b>�s)��4�t8r�_���&0���X*�U��-�&�f���p�X��S���-�{�o\o�D�%��&�UL������O���k��k�͓�U��SK�ҸVYV
1ӡ�쩔{8e15�I�H-�}^Q�w |�����nٜl�@=Y�s}G�q.��>E��	�>�2���Mnŭ-t�YK�b�P>��M������$��N�l|��z>�W��M�u�=ȕKn��~=Z�ۮ˫|�x�f�>Ҋ� �*F�L"�{��/�ը	ٳ��@�<�C�ޡ��a�L^s6㤝eƎ�5V��W o�m҅E�����c��������$z>I���zH�P��]�di���ׇ��ĚF�7��t��5�t��`�1T�p�SO��f5uiE.��*X��J����u��XSʋq�}�P�|�i}s��\5�y�I�ZFTGܱ+��%����_�p}k�6eh�؍+Bѳ5}�%����q,��l�tZ���%�@V�Y��'�u�t����u�-a(�8e�������8h��ՠ%e��ɚ�S*җ�Cڰ-E�,Z��%a�}_$u���n�!(��
Fn��ڒQrp��S�]�>��ѸVSh\��%8@X���U�j-�Uk��D�N�P���@��'��[�o�懂�Ӯ���CL���i��i�l�*���'D��d.��U&��z�^���O�T���$h�W�bf�3z$���l�*��lY-�C�A�ϴ?\��U�9����������:���)�fTG�.�.B�*��\��s
�r��į�r˕������9w�';���?v&��f��2d�@��S���1$�Щ�m�p`����$�	����ͧ�7��#�0re6ͨ5��ZX�hW.��b���/��j�����J�A�NJ��(v��Mn\��R��[�sW�[����W�4��b	����Uӕhi0�o�>�$Z��o�)Hr����P��w^��U*�#��(�S�3߉���|��a���l��@����->Ot �P��P�tGN��3���H�i������`r���<�a�?ճ>���g}�?�&���^��A�J�կn��yʗ��+��"������i�頓|��>A�Q%[.�y����gW��k幆N`���dG�`*��`�ԁ��)��4A��Q�Te�:؜j�n�Y�<��6�^� IyO���-��,P6�����~=F�5$\��{MI�R\�ˬuR+�*^���U��@c��R�D �Ky����B.�C!R&�ǟ߯׷�ʊ�vT$R�{v�(ʰ���������B���p����s*;n%>�g%�2��	�͈V��z����;�ɥ9�v����N%����꡴��.�^�0_u� ?����\��1O����Ķ��h���3��~�w%s �a=g^=��_�gn��s�3�K�O��۷������(�;��Ep,yR������&VU}G�_N^�r�`�`a����ӎC���	o�^��P �̽G�aA�^���_�|�z0�+��t��}�7�̒��1��pLv
�E��C�W�T��7�:Qt���98��{�9p�I���F�m��hT�]qtL�a!��C%=�nM�5��O ��w�U���j%�3��"�����N�+%=rj0�����������KQ+��Dg�`\����A�Ć5?��'~U;���h��غ��Ny�����c�e�ݽ�<�`~��O/�qf���PDG�b"�=q��1�S�'�g �Փ�U�V�b����W����T������'\<NB��ճt-sR�R��U�@�dj ��+~G�%Xφ��-��(����Y�ʊ9��Q?�g�6nSTb�����(Lʌ�g�p۪���F�d�}R��;�E\�j夔��v2-��"���|k�.���@�����}�ͺF�L&�A����5�N�Ľ�M9y����skD�TjE���2'�4&NX�M�/�8rF�����������`�d��<���<����8򦕶��I��cj<%�($ILI9U�bT�b%MuJ+��Աf)�H)v��\���)pW���-��AGIx����w��E|R�і�o�4�_���G�mw�/Ճ�&���S�A��x�e2q���,K�~u��|��rTU]���9��z���xR�u��؟�R�ymZ0@W ���<ّv���dgڠ�Q3ٶW"[6���$I�r���ӯ���Os�1' R�2w����o_�;�-ݗ��MyJ�-S����t3+�v�K˦�	��B���n3{��Mut�����v^~��p}�!�Zگk�)$쎂F;��{։���H�}{4�����Y�Mzq������Ҏ|='8�L�E��c8�8>kҎ�$�{>�U�S�FxM��)��>GBV�@��	���}�޼%q�5�t˴�?�s�=���    �y��}u�ՌJ[��s�	�F/��ֱx�F.�_��$nBnOxD9ZNA�����$��M�a�p��ā��� ,��B@�wMWe�f5���N��D�4�`�[�M���a�{{]��沢dE��'�[};Oh�og�H�䳱.3�jP���6�D�ƅ+���}�<����C25%�*4uR
1�3��ڇ�uHo\Nc2�Ԍ���=o`�T^5��<��'�Q�t?���RI������ޔ�C]�1'�l�ϸ{�T���*�ב����@n\�_J@�,��������|r�-��׮5)k�)��f�&��$E�5��at|!<�����^\2���5rCMA��7:CJk����e�޴8!,����KN��V����	���l���'W*�+�["�_��宫H#kޝ+�<ۗ��9�<�'�<|Ӈ�����}0�|s1�5��~�4�'p���gw �o	���p�%�Z̐�o���-��ÕB�/���"�2�<�s�(��X����<�����l�U/Ҏ�88-�4�ϡ�V�/5���hn�C�k/>T��t����;E�\:#
�e�JEL�#�g�=<�j�M�#�U;h��v��F�:4%�l� ��Z``ʾ��0ЕU��"��x2d|J~A � �~���Z8�#q�>���6��N���g���G#M��&�A�Eݦ5�;��Ӌ�	��y���Q��f�4{R��M �uG�X1���C�h�X{��XaͰ�-�B�r yԵp�f�Mm��J[(��SkZ=ǋ�:@f�Z�U1���΄�o�����q����	�N��ធ8�]��f�0 W�hE�n�~˧wV�v�q���!�S�`�pM0Z k�oh!D�Kϲ��P�����m�uw� ��ջ�w�t羹�(�2N�� ���ߓ�eC�`���.�.uX��;>V$\�Z(.�9�	�a���3��x��B�'�o#G;�����gc>����.<��]�����\�8;��4�,D�
H�>#�<t�}.N�׍_�c6����C�K�H������
�!?�T������a��R�=%�*�ٻT�t�ߴˢ�M���V]nn�]����5Iɋ�N��$�Y�����Z�l�����l�X�R��@N��>d��I0&ِ\(�y��i�T�^�Zvv�#�$���,����%ݣ�����9��J�o����oE#�fQ9�F%����&?m��A����?�n��8(�E[��L���´�>~Lh��d��f���@��	^I⠰�kQ%�~x���3J���T�5�jj�on-H�I��D�%�� o��!���&v�֖ H���H�@��tJ���e������#�t�%;��wάNhO���.h�H���q��a��yS�������L���D��y�[�Pw�$G�-�$5��6Г���ji7���2�
����jh��ugJ�͋��>��̜jh@<���ZR�6C���4�W�A%��<�r�^
�4X[�Ή{�T���Y�S�oi���_�,�ߋ��H��U�����%i��P��gN�n*��q�l�XEEUm�J��~���_F��l���4jwn��i>���+�j)�ٸ�h ��5��>9#T��|p��&��[�<�Z�%Z��=-=N`違L�;`m`��VZ�B���a����k s��4����S/��`�mg:��ZZQ�醉�*T�����VjJ�q�6	9?$]Wy���I�pIS}}	{����kK��y�l��#�$�M@@{A�>)�0���a��\X�^��(�ׇ�N�gYjȹ7���D�,X:��y��Y�#J�jy�\�j����sA�~I��>�B�7����-�%�z�0A�H{(�w�a��!08�����Ǔ�����`��3Yz��D�n�}��}�h�YR�I.*��HK�?<�n�M�_0�8�V�>��Ϙ�����oOI6�y��m�H���8�����ݢ�2�.�8�O�B"�4�����������[�P���eF����eiw������A,���P`1- �F�r?�Oh4�'�[�q��t�
&KD1B�t��(���}��Dd̷Zi�`E
�ԩ�A�0>����X�{p���u���S�����^���B<k���g3��#Ӊ��ޕ8�b����Ya��.�<�Qx�B>;G�^1�C��5����U%�/O��ȭ���Gn]�.���~Q�2R���XF����z�J��(a�R���������1e$���h1h��'�h&m��P�)�)��߯7�˗/IgZ��`6��';�|��V�h>�������/T0R'�ڌ����{˔*�;N+�w����<�];b=wp�P�)�8��T�M�,t-�u��� ���"u\�JCU�7���ϭ}�o�>��P�D��ij	ь����IB�����B,���e��s��ǲ#���>O��h5����է���8!�}��-	���f7���F.���-v�4Q{���j���д�a�z�^{0��ɿ�z�'�7�R|1�Q���ULii�m���߭���ָ<�����5��ؙ�v���o�.�p4��	� �h��.��pݜ�V�u�9��9���]��J_�juu��J:��s�����E_ʼ����$�z��?�U1�i�(|��z~T�p�\J����d�_'������=k�r ���<�.�dz�BF��z�H�}�Ɋ�8��SY3��2p�UH��WO���K)|��IV��7��4ű픔�1(J�������6W��D>;X�SN�q�t?m��n>)���[!���&��:��YuD���B&	��Ǝ�2y���	>�z�zÓ���<>Xc\�1mF�ϻ�������^.\Ԓc�ޔ �"RL쉄�y��xJ�Sֳ4F����p,�i�ZJHtE���&�=#2➜V���3AU6ҹAo��� ��KUB�nP����UG�VR�8�r�'����e������7��I>�;���]t:��&q��֖?2bQ{ �iZ�����$�>�&�;;Q
wFxObC�U�����IǇ��������$���U�U�˕��7"-����O+e==l����1���2н,ӊi(��eh��C�����(��RO	�J ��̔�#������?�����IF2�,[���ß�uuʜ@�B�RQ��}HpS=LA�O��H>�Â�NQ�H@�Y�e��pBEؑ|�����5��#�_V��SSS<��7��>'q���G\O��*�BM=Py�-�{M�٣ՠV���l�,������6�$��9D��}S��0ij�8v�!H�D�\�{���e���%`��6>�K%w�lS+gO����T�%q�8�%?��G�SB�>%�h����pNi�iu��%G�Y�D���o0�KA."��l�w��F1 �t�7��l�B���!Guqu��{w~�<�M�',���,��p����a�4�;p��f���������?e�O�H��R���\[���d�Y?\�$%K�H�8��.��o�Y��Uhn�T�8ߛ���3R��*�_v�F�Q�x6��/I�r�)�Ԛ� �����`�*L�d��}ٹ�N����yf �&�� �}��v7ի��_��٣�3��1!3p�{�O;yX�{2H6�/�+c�R��fNβ�E³�DN)�1i�k��KNË��U�����4�ښ�A��d�d�T�-B��j�l����߂�����6��p��#�:�q�e�,�bغ���2��-��6��a���ֵ��1,����v?pGG��7s8� �呀�7bobLg�h*����[<�` �Z+N��[@zf�뮶��I�2B��G��YD����{��xb�?lC���Z�ķU#ܞV�1�L0JǬ׶gYEC@����m�&�G���t�J/�A<����_��^\���o�h>�ZK-�*W�����w��P��	eGL�я��7wPPy���4J�Q��U�s����,1�    ��8��zs.��N�
�d �$����l���v�qQ�FԹa���,��|�>�وA릺 �Pn(6��j�W���Ϧ��0����Df��t{�%�$��e��p��T�^��V�d�S�����4جB�:���돛�O�3�Q*���Xᠥ
���o���kJ�%�G-��ݺJ1�����E�48����������h���c$C�

Mo��Sk��nn>&�{�<�{yn�O���o��T?yt���@��3=�7�W��5nV�%��TԺ(<Qp�1Dgσlq����{���>�;}6e#y�lt���ېt�g�� ��B�<��vw�U��S��� JƷp��p�i��-\�2��>j�HE.�W?][�U�7�9�awAP��WA���%��+Y�>~N�e������ڔ=�ɟ$� ��蓼�Jq��d[��p=X�n�]T@	�Joi����7' �w��BRf�~���gbT�G�хb�ʺzm�&�$�����F�~�Q�T�H ��ف��k�9J,64�@���r�	Q;�Fe������6���q�2��G���Yf S���ǣ0qS�C�]�B=�6y˝�聀(�2Y������3�-`-�)P�P���[�a�eX���*S[���Ur:��˰���wTп.�Ժ�ֆa��|6�D�N�c�A���F�����l.��DCc�g��ā�����7j%�h��9	�=R��x�T�_c���H�='��";E��7�0(d�ﷷ���G,m'c�p��L��v���� d3�+c�IL���7g ��uϳO'|�}L���I�O�it��&�Ǵ��e!bcP�e�������V5�7��;bn�WD�!"��c�Kg(��Gۛ��]o��!��W����4"�D��de�$�QSc�Ԉ�1�i�|4a4Z&���_dE&�{e9��/$�n�^�f��l�5&�g^����<o)bD�ibƺxM��N&/�A�s�#	�ǹ��΂%�V�!D��s7�vK�/��%�EI�w���J����h��r�A�f��P����j|�6Y)=Y���{���\c޸�Y��H�w��X��6 ����=?�)�5�&�gd<�֦����6_�^�x��,�
�#�A�
�Z��%�:&r�p$n�R�e�N�iˠ	��5�f:��`$�H/��ƍl\��馚��ݽ�:����T�yafݖJ��s�_�(���3X��/�y��k!���Cr��bYb�Kq<%�D�W����_b���d��g>"d�]^8�)��rE£�g�Ǚ4��rb����RO+C�l��'����	gi'y��Ty����[�ޘ����"�/dA�^�f.��~�ν	���A؇��(n[fu5o	W���m��V�2���?�������%�Ti�G�JA������&)f����؝���- ���t�ϭ2������{9�r9V���d3'��u�]�I��@I�������j���PJJZ��2���z z�ul�X�r�Ç!�D����	�YR�y��r�jU�A�-i��;»��R3l��paU���2^\�?o*}G�`!�����@�85����E��29��,�3�hk)6��9F��,v�?�l�1���7��	�1͓s�@w��tq��k"��%'����֒�~�\�δN�Á[f���!`�5-�0�����{n5��7��dĒf�f%�,�,�VT��q	c���J�{y�D�@����9Y��pJ9�&;5��>(z0G��7��)kz��$�Ġ��L�~����C�a�bW�E�}�-Qӫ&���d6;����r���I��F�\�#�O���y�U�]��GƲT�9�������.!�����#O"��uw}_��L=%����.�KPW�o	rtC<��Azv}�ks�52�٘痕�VU����	=��U��|��R)y�����e�W}��'���$��"V�m��Xn�Pc�RW����'���!-j�᩹�LSxLy��y3�4���W���S<OQ�� �&�舍�Y����>��j���D��K��ݣn:�K�B�/v�7�m��8���~f�b�
�;�>TkI����׾�FcT��;��~��z���_�d8�!�L�E�D�V�M�+��Xj�����#)G�UF�`2jQ�L�jg���ȨU��m�n���pG���w���G�����բ�^��Y������]!�v�I�dG���h��2��")�e���5
;b��a��\�Sڢt�q$�Q=��IS d��p,ՈM)X�v�a�Xj,�a:�^_onn�����6֊��K������Ū%�q��&�G�(�%)\YҌ?�y~�������H6�Q�A��e��RK�4>Ls���R�^��8T[��LV��-pI2����?��gz)�?\�d�y'����A��L��4���$KkH�&�ä/���n7
'��@��������~���R.�*�J#"譪�9�t��<`T��q�B��,�{��j��-�/Ԓi��h#��Ѫ1����&�S��Þ�R�O����TV���';d�õ����P��cy{��n<{�7�*�KE�&��N�.�����GM�� �a@�7C5��[�U_�;��d
Y� -b���Xu�ZbH���哪�>�it��X�}�&���7$�`c�Ȑ2��+��\���^Jl���f�i�e{�[onԫ�rO%�O�{g��Q��ޡo5\��0�ٝB��عX;���v���7nѦ�N�����$�&�P|������l>Gp��گ��1�%��|�V������I�#1�e�����o�wA5��l ��e���Ҥ<B�p�
I/�}�z����`��G���%���o�ɺ���k���z� |%�^�1 `�xX�@k7R��Ѕ����dt��$�Ӗ�*2K3ֹSu;w����E�C7���L1�f|�b�Ѹ�!KU��D��s��0�~��iN
�� �����1yw���x��_,1A­�G�$�������3iG�"=��pIx(�p���������p#۟��ו��m%O����7�����a��c�y���~^RJ�5
���,K}du܈����׷��@q������~}^�l2���z}�a2�U,�X �r�z��A�$���%m ���Ќ�J�k��5�S� �;qH���1X$���q:�9g�ʓ�^yj��$��Z#��@"ˣ`���6�;?'q0�2|��z�-�k Gs7��_Ҏ�0n
��6�Y�( eǙ�
���Fk��<(��0]�b
� �77���M�ܙ�DK'� �(!a��F�s}��}FR����O�?-��,�U�Dw�����s��tN
�d��)�(�A`�%���_X^󝁗X`�X���6I��(����qo� ئ/zV^*yn�7�hLtu������9N{uQ��U���Cx��U��A2Jy�4W$\G���6�C���D^ߦ�{rb�ۛ�Q��}J�3�Z��z<���7w;�,��OۛM�L��P���~^
9���֗<�3O����2�a|����ռ޲W/����-�!!�4�#H�N��"�.����i%H2||�#�K�b�2����YQ2��Ӡ,��
C�'f]�������y���g�Յ>}���gޮ�n��5�]���b��3ٳ|�A��"<�i^�)�k^-m�I*��4�qc��3=)�Cq�����|��\� �qt��Yr�p����6�=b���6�R��a��C!��1˴�k7n�T�~}�&�9�Z!�8̑��1�hY2�s$N����Y�~ju�T<p.9KT3�����S2���vڣP�< ?��Č���PbU.��H��d$`��H�8C�2����9w�ćL�}�1�93xao�$�}e^F���3���a0�	ҩ�����4�<&���,�N�7�9s�E�{vЎ��|�#��0>�-lɽ�4sA���BV�dD���+��Eu��x�����?�-���PGE_    �x�c���4�e�	���Dn�xW{�m�G�ѭ�e/J�B�W'YNT�syQEO�{�7��d�
����a��#[�j�����XI�N�!�ߝ�Z��}�GW��MJ#)D�C�M�H�<7q0B����Ni��Bۖ�>ped��H߫��kBT�J���r[��?H:�ǖ(S�Q�>�,I��SَD�RU��|KIK��������g���ǒ�Za	
�x�-��&9�!�BYI:�i�QtI�]>��4\�0�U��9���98KK��6�Oկ_�77�$\����k���Ց����f����))B��F܉���pZ�l�P�Ie�ߪI��~&��r0��	 q��G7���d8���O�[R�qu7� ~��j&��{�������? ~���҄RQ��/3�Pfo>�����%`��T	\�v�)��9�2���Ŀ����U影���W�۾P�G�Af����x^���7ܤ:���Jq`{�8��1X=�@2.A����l��{@���eҙR=�=��X9Z��~m��:����V����c�E�oQQ~���v*�X]�p*���t�O}�tY�K�b�ǐtڱ��>xyԻ�	����>�ݿۻ{�G*�:;e.(CVZ��g��Ơr2˕�YM����&�e��]p�_�SuA��HKe�����p��d0������/�bU�_���G4��&m�%��%b�v4_��@���W^}�e��h�E��t�-7�R�h�����f]�����S+�+��&Ky���}�qT�R�͝��������aS���XА�ʨΛ��o�Bnk�Ɏ.l�Iq��=F��p�gp^C>k�9o}棵���Kɮ�����L�dx0W�K�-�2�y뗄��@���I���g޳�-�e�ᚽ6��BZ�y�_M`@��FV�M� �bLlp�����_���~�����J�������&�g�
���w�?y�ҥ�9��X5L&��� ���cL?�zYʏ��7,�t�C/{&Ct0�hlÎ�"��6({M��������3�&ctaY�j�{h�����^?|��p �QR��='��`��+�L\�?��${�=9���,3�.&؃e����n�"����b�GI؄�5J	�$�5z2p횐!d�1�[�<���`��pl����a�z>+�.(�3�]��C։5w�u �*����X���em8);[
�` X�������`첰!�@�˲Yϔ��W:p�倽�\�3�et�$\K�QJRk��j����9�A
�%�<*�ϛ[ r�����D�aNWJ�B�v��A�Շ���5�2��8΄;n�� ��a{����Ab��|F#,#��-+#l݀K���n@F=�x/�{Y�_<���mBӼwF�uRl���%�R�)P��sg�a�7$%�U������-s�8��^��	�t<\`�T�ˎg4��z��� X��#�/�)�.�����zG��p�����E�4KJYmo#J��9w�B�*-ꕋ��ۻjuoU�vD�<��,)�@�~����E����@�ܴv�͌���@$�*�t�'3RA�%h����3!:_����Q#`���k�OY:�0��X�Kk���D��=�8�4L���wn�j %�A����D����$C&� N�Ҡ��$vm���0H����13��C�4`��++1_��o|�/7s&~;o�>�}Z�Bұ��+�˒x0�벑��t<��U�6��p��K>�����t���Y��A�>��C �z���d9@����w;`��*�V�����:U0.�p䥔!$I��l�u!�`�G7��?GZ���a�H��(B��	@��d8�Q&h$fƃU�)�Ơ4��aN(ڼ�|�p}�I2t�|�C�>���uǲ䛘�r��+X�gu�å�)�.ap�S���0�W{h�I-Vϋo�ۡ��>n���/ۄ�����L�\����=:�>d9o�mlB�+l8��}�a:V)���C�:>v������Sҝ��I.���[�x����3K3�T�WbB������pQF����`{K�B�K���<�}*�=�=�U7Ki5���G&c�jvYBL�\�<�`7�d8V�1�k�eV���ZU��˛���\
�+�������P�}���?[_e\�O37�^�9p�|[AK9 �[�/�7<^97�a27t.7w����l�Ky6!
Uɻ:&� ���@������s�3�فЄD<&Rv| �0f�/RSD�9P���vsw�����<�duP#��ѷ,��L��̕�Q�:�� ����/�2:���n�X-�Y����W �Ѭ;���(��*k��V��k�*Ӄο�no�=�U��9ĜySQUH����s_YN���헂�R��ʡ��p�{W�	G�<�_Ę}6Z;���j�:�#�1�%�hfNzC��p�T+م<u���,Z�a��vnx�LR�߅�b�X�ێ�e�p�e�g�8��X��	q��^m�Sd��~�o%2� �&�X���]��F,5�q�O��;���jLS�[�f��4q��:u�,�g"����N�G�OK}#t�G�y��g�Mx�X���A�!����q�Mʵ�R��OF75~�{���/K�"JtJk�v~�����=I�K)�1�u���x�\C��l2��9�]�w�&  ��e_�XQ�ͺ��b8<�J݁��w�W���x,��o��$��'��>�:�LWM���[S�1�oh����h�B��,3��֮��mf~��m@�B䑲�1m�t@��p��ƾM�h��i��ߏ�7�HQ��}TP�E��<���2��v^�� U�M�����"vL��^�~&�O��H�������[6H��ӛf�Jp4|�����UcО,%;~�6輶�ĈN�5mM�$g	p����1��u�ؾ����ջ���w�>?��ky��� "����uQ<"Jƨ�
�y��pDl�pDl*�B�Ϫ�'9@����8��:%��Ċ����sF �"|����G��>��{���zϕ�L:^ L�7�Oe��7�or�Q�������f����[6ri
��_���1�^����ȥ�P�@��ʁ���0�F���m�+=կ��,.�c���A�Q3��a���k�Hl����X�ٖ��"lW�ݍ�d���K�Pt�0"�}�pv_ϯ���D�.ΈS\
��Q��o�����?6,�3�R�)}¼m.\���l��� ��Ӭ�j�k�ؽ�F��U+��F�p�ұ,���i�gʠ!��/W�h�H��:/7��!�X���������ǕᲐ�&��YM&���.s��S�%Q�� �|��z�r�l��t��	h��
��=(�?�R�m����OQ�EV�����`�.-ʫp�-]��
g�p��]ܿ�v�Z'�q�dzAա2,A�0ϸ�$w��> {Fx��CƁ8��Π����.c�������cم)6o���!\ܬ_��|0z�A�;L�E��2�T�`Gat��.�����/|�b�o���S�Қ&�ձ�g�]��d@��,m����[��xr��,���alA����軱�1�Z�mϊkI��$�h��ٔxDk
º >��p�NI�#inj�����,�̯��'8u2Sw�՝�r)�3++��6�ab� �!�؜��}6��f-�������ݽ��D�5ޯ�h�A�U��FÒ��:��No-��/������?o��e�)��L) ��<v�4#N�E"	s�WW���'	h������S�����i�'�9Ũ
�������?Z�,^J� �<�vsu|�0�^�X����C%����Q[l?njw���B(I_ğ�y^I �՝`ԇ�^�"���x+�4;y$V��ة�1!@[�w��0��/��s�?Z����&.�;��X�2Mϳu(�4���X�Ei��X�0��%S_�\(O������.=e$X�i���C���.�ys�:g��(�(>�� yt��?<߬>b/S
�y" w  1b�w�\�6foO[�7,	Ŋ,� �O	�q��T^�b�m�$�+�ު���G���'��`m�mARd�ŗc��^�>u�#� ۑ�ãy���.;C6=--��]A�5�_3�T9ޞ�]�8�g�bu�&ϣ`����� ]Ծ�=}�o�b�����eӲAM@��6+J�L�/�V�M(�㦃4ڲCm��I�P���,w�Z^�hp
�I %2�c���h�+�)ĽD	�����(ұ���h�*�@�AFGR��o�$d�����O}j�B���c6rins�<B�� E��O���=�#�: {��6"W����N2��ˑq؇�l������}+�舠"
�8ϱ�"��:::��U�      �      x�e�Y��(D�Ӌ�cf�K���d}tu��È�"��~�Lc��?iᏙ��'���^�����[~�O~g棭����S��5�����~Rʵ�g�A{��,���?3����RW�3rI�OX����,����A��v=	y�j�}������S��ڔ�����Sr��4?�����U�EyREFY/�!�Oj?���dEzRGi��YKڟk{�/+𬔏'Mh��s���~SK��-�^OF]�f%a��B~�� ��S����CvS�P���%�\��P��f�)O����E�!�On�p��w˦=����L!>�X�?��N���_�f<����J&�O^?��b���M����1֐�[y���zW�R�S�����S�Y��DݝB��h:�'�������w�,�)TS��?�H�?e�~��Ll�.�)�2�5ve���SР�cזJ���v˴�z��SѠ˺�Z���zjF��G�!�OE�UY{X�����cW��֧B�i�w�`mO�����D�p�):/E�x�Z9��M�:���H�$6��z��$1�������i4��i9YA����-?3ϐ2������_)��卹��9j�����0��Z�Lܟ6P>|!O�K�=m����|�B��h��r=�s�:ӯ�)�}z��F�0%{z:&����hM����_�6�zy:f��*�>��-s�fbL��Ӽʡ?}�ht���}<�}�힭�O�OG�f��e��>Q^�}����f��ӑ���)E.#?���lt̐�gTT����Q���cڢ��gt��]>��d@O�G�^-}<�:�e���|���ͫD��X�����|�������~�L����B���)'��#��L��^�١����6�О����z�2�39��[*=&�H������gB�lC<����Ŧ��R<��g%hms�ܥ[�Y�m��#����U�q��g˳*�W��δ�0��6v9Lڞ��&kL��)���TSw5[խ�B�s�6�
X��}l�� �;X�Zq�+���Q;w�� �jM�;{� /��떃^�Ʃi94�	�o��  x;f-q�d&x;��+���wrf��#�@0�Լk2P+��l�n2�I\ _�R=O�I�c�E@� ��@iͭ��x��%/��A���h�-�@gPPy-[��.����&�#��D6��	B !T�8��\n#W�&H(���E13q��Z�%ރ����`%F d���{�w>P,Ի�d:�J��T�M�Z��
h *5&�Cc�H{hH3�P�l��wjz Q*đ��Tσ� U�����&*��`k��B��B��x�h:��Z��*d��_:N� F	dT�-���AF	h�hSC
�����
��Z���`#Lw��x�e8J���z���<J�G6�N� ��(�������� DBÈ-1��H`$�16�7@�j�Xa%�����c�kx �8	%�����r�:56()��f�F�I��J��n�"(VB��0P1�J����D{��}X��'(XJ㝗R��ZZ66�CW�:�Y���m��6Ȭ��P�omX�^S�ܳ�g��yДHM�]���	�+ƞK]���y��<��櫞Yct��:����t?a��rrv��H����"^i��Q��=Ci�B�r��gK�w��Q��~M�hY�hj�� ��pΎ�KrhM��+
�o��$������^�XbO��ܴN���JĪa��5�@@U"UU-&�� JO�;#�`�&�nդ�*��P��C�I�v�%9T_�b�Q���5m���
�J�ۀM6.��d�2v)� �m�F��
����16�*�]�*�+`�)�9��� ��ꯕ'�n�J�-lН����B6����-�q|�.�:�+-%ʻ;�ZȅɆ��]c� -�?���� D� ��w�4�=��Vڃ��^$$��l�2FH��b�B�����J^ E�+��
@^�ł��䜭�^Ň��!��US�h��!���V������=� |r��1��<�"��@{�+#�Wx%���� �������L��2ͥ�V�Wya)�K���A^x�؃�����U����v"a������hM�jJ('Zgj��­L�C��0�7������}�N#K�Μ���-h�"���L��d�2�+�hU	Л�z쇍I3R�a��G=Z�@`�;+�Հ�@0����
��ֵ`3�	��`-��I�-0X&���X�_�W0�Z{�k DBE���N��a���>H���28�j��!�fq�-���ep�Xy���	�i�*s�>�/���X��e�!!���6�lz�rn�J�}�;�P�)_�p	�*M���j�/�X6[�ç)@b�Ḩ�_��A�4��|�@7�@o�X{�NY�%���6��z:9X@���Jh�un�����j���Kr(m�����Й0��z졍�Vl͡�5 DB��s�k �p��6#�hL"˳�o����������Aj&��x�uX� d`[�K����g Y��󵗀r��o]�:Ȱ�l�������ks�+���1hl�u�
��9�#���&ٽ��^`��c]��e���E�AL�z�U ����0��We�a�v��0��sC�/�d��I�ܯ������q&#@X�����4��`^\��YU�`���,��zhK[ko�]m'��Uw9��u{m9�C[2X��KA< R�.$O&���A@`��=觌P��.���0A��D���a� L��@["X�w%��2	��D����2���ؐA޹�\v3� 4�Ka X&���:Mh��%4����C⁉횯��ƶݩ$N�uϦ���U�^9�>.K2���g�ygS!��o^&� ���bG&y�|���z �|��F`��L$`-3[=�X�Uh���>!��ۨ��z3ȫ���h�[�A^�jb�g
�J�ӓv���]�k�Uw�1������{P�؅���,X���Ž����o�q��'�8 p��>��<�D�Mb�8�p�رh
��K̿�9 2�:_ ���/� Ds���Zg��*�u�}��CWںj����ӿb��h,�-\{�s�d?��_�_��y �c�s�g��Y�ਜǡ/!k���Rx�jk�S��C@2V?'i�C_ 3��u
}�X,V�5:3���F�6A���}�U�m��~���*<����u��	�/�_6RMo�U]���0�"�yq� �ܚ76;��V6���?u�V�԰+)u�M6g?`� [ڹd9��+d��,�(s�^`�B��9L�&\�3;؛�x9zm:���V����nH�|�r3��Fe=h�	�vfe���Jli�w��)�L�{X�)�V�h5Gԩu�UYao{Y�!��pKu4� �
O	ub�S�Ccں��*R��Xی{���6YP��O�y-�X��W���r�lÐ=e�a�:��* +�q�`-!إ�^H��`���+L26;�
�*���C[�U���Y�Vh5b^2^���]G=V#����`U����]����o���ۤت���\��+�U\��lU�V�oHP�V��W���lU&竳ٯr7� +o7������X���-p��b�*�f����	}�e���$Cq�R�y��?���:�J�pU W��>n[8� �n�ݠ��*<Ml)X@�\��|k>��*��r�����¨��@?:j�f� �4̄3�M ���ڂ���w��F�͛6��MpUW3����@lF��C�v�Br�9�3o�3��-"D�iw�*�["�㽻� ����X�9Mf%�G.�H��m��U)Д'�yo%�����*�xu%�CURU��xjXU����Z(��qp��8�U�X��������GQ!�+�*v.��<D�A,�L���G�1-@��۶�D �*O����0�	uۋl`Z/V���=T9�*ԣoЎR��
��+��CW@Uvϗ7�TUAU�����*�*������ҫ���jIcPUUe[;�y��F<�aV_UU!��5��*t���Y����
�¶�L7�hA�    :��G:���Z��"�ɑ�%U��wU���B����"X�-�T=�HVr�8�J+�Ւ�ٯ/	�\��L��X$�aUٛ[�Ҟ?4��U��iU�Зd�V(��Ca�U����0�J��
�f%��
���jM�\U�U�e�F�@?��[X*��j�ĴI��l�)k�7������I�}�U�Xu���C]Z��w�Qak�H@���6���p�A�}D��j7o�_�Vr�UUګ�ms�rګ��P�\���BPUU+��]��BG���r@ձIm���]U+hڟ��t�*-_r U幡��� �:�[poB\]AT5 ^���*����!���h_;� �)��9�@|�Yp�)f�2BS���Oѡ)�J[�S]��J�J�,w�T�t��c5KKU:b��4݁�*XJ~=�Յ���X�0D7y����P %ǚ�"A1Z4�I�ФW$۾3_:������`p+(��JUb'_I�	��uW�^	�������C� 7{�碹UQ2 =�Pum�㱳@9���i�z��R��? P��qm �x�a�n������fC��9ͬqD��qޞ(����%k^秐A�â����ـ��imKPSn������!�VB$�P��O�
 T#@�Cd��P-�k�)@O'��&���/�F~���5G����t�a�� T@�q�G� n�zad=5��*�I"���ܠ@Q��[�L"�k�SKtx�8���)�u�@6� �. �^=��֛iI�,���h��A�#���խ�?Ui�j=�F��ԈOk�&�)�e��eR
�ԈO�[��+%D/�3��=�S��jU�S�=�j�D7a�E�M�j�Ѕ������ˇ��z�|� ��ۻ��B$`S3lړ�4a]�5o13)��dA�KŶɩǂ�Z��]l�[b�"N��E^>�^�u��&g&(Z�W�{�\�*}���"�H-5;��CC�o`�V�7��SC������5+G�N�O�ГF��\h�#������el�I')���*�>� �ւ��e=iJ�x�ɗ�6:��o��Ko?��,�����g�P��/��Vo`�{�C��λ���AIc�= �Ժ����Vx0R���]�I�j7���Y�$ ��䀨hɡ+���=�����t�Osw�������t��U4���v���S�8t��;q���Ԇ���Sչ�-0)�K��#�Im�%�ePj�7��5@J�L~t"�t�br(<�Qr�u�R��ޫ����ൃ���u2��3��c�b4oݣJ�\j�KV��"!q{uu�R����
� ��MOẂ�ڌ���7���8�q����̅}Kt�hj�����N�|��܅8�C]�hr �ݫ���~`S�{l�d�6;Ub?���P�|��u^�k� �ܤ��C��6L�$��f��-V�5�E�=����I�y��jb�>������Ľ��g����S�3��'�����=^A��͘U�T���m��C1�)o#x�{;�$�?���༷xB�����l� z:����tⵙ�l�>r���"�(�:��1�N����iob�qIA�ĉؽg����?��[}it
�ڃb����8ÖH�b��Z�C�Z`�v�a�������^E�  �Z�hM���+��`���8\��	ة������8N�u���y�oʉ���=�H1ג;u�5@�l\�퐺2 ��FP=&;5��������\	R�p%
�:���T�>an�J[t�-���:F�!9�.ܮǪ�fHu�S�JӃ}��� ��9���f��]�� ]�O���h�NY�)�\�P�iQ U��� � ��x�v�L�^�����-��@U���:����7v�ֻ�U��{����2�J'����҃]�~��B9�@p��N��ڐڜe�'�H)n�<����F����4^�k?��}�P�uw~�dU8�����N�Z1�(PXU����C�n���j+����)�&z-��un.[y�?��x�U<o���T�!�ihjXu
�?x��,�~'T��Ts�.#t%W�G��C�nN�w!��0װm�W��:=���:�O���q�j7 o�3� ��,%@�nHu ��o'�S��{�v��$9���ϖ�ONPw,��a߁��d�^c��A]3A�Q����{�Q�T�\�jx���@[U���@y���>�r���f���x���[�rr��I�~?^� ��o>�}n�+�T'M�q�Mu�TX`l�ą��M�l S}�Y{��X Mu�T?�/�;@S��x)ƍ��s�s9���8�y��ˏg�!���露x���wL짆��	��D��R)�j �t`c"�i/�B�\u/�D��A�J� f'>�е>t�����rv⸞�C1�ՠsz��7��H��z�7��.�{Vx�X�@����ƪd���o�cHA1M��$��v!�r)�b�|�I�jH5>�|ˡ+�J��1�!��;����g� /���R�Ԡ;�����d^N����,��S8%Z;����sh#1T�)��]QF�Ԡ#�Z���{��P5�D��8�6�w��A���7�y1@j ����ļ=v+W�U�B��Ug`�Q���ǚ���P�'whK�Zq��rh� 	sW�����Q�_�^~�O5H�Z
�4*o�5 {�4�����i�%�	���l�ǡj��p�3"d�ןu_��b���ihj��<�F�i��zL�RhJn��ҡ �2D¼\� zF�Y)��*�4h��{�q16eu�S@�h��m6PO4�f�=�U���ޱo~!'�� �����] �ApJk��ˡ,��Ҙag��~�����}��gtB��	[G �8q��-�u�4 N-6d �p�)�J�� 8�}LT�7Te��������M�Y�4�]�
�R�Д�y�c�N�IkT8�k�gԄ�-�.Y�mud؄A��CX�3l ����`�P�%�A�L��`�Y���Z��'�*�R{��	�	�p=��	�C��jx�O67�~L{���a�bB��4ag���2;���.��~�0� 3��UM��]�����JX<�� �1�����N�KӠ*��w0���<r���D/�Z�}���l
��Nb@��s�Vbsm� �4��v��ǡ(#)�#m��貛�Wm��}��+���s��^�4~AL�4�3� ����Ʉ�0�7\}z1�9�}�(D���'�J��Q���YA̓,�B�ݢ"���x��+�<����nw#��ς䜑枑\> �?炤�tB�+��d�A�d����L�~$z�"Z& �	PjaDiCS�Ҹ]�!��L��p1�Lt������g��.'1Ԥ��=!<	�L�%&$�g�(���B�Lz����!�8}=�	#���<E��+��Ey^w�B1�/�ګA�>�:�L��!o��P��I���G�7��;�IW���)�fCq"_%!M��Kw�FraϽ�"�y�� 0�,���O�Г�u5��c[ ��n]���t�!�p>S-��&�j{�P���f���Yj!��4��Wce@��-�q��2hM���g��b^P��~)�۸�W�8	��&�ci�)�=���ڤYԭ_c�*�4�N�e���D�Q��3��IJ��T�
H��m
�@Ҵ�x���Č��=���@Y���)
t5��UW� MR��x.P�����G4zv�"z;)���ݼ3;g��<�fW��k/ ��܇�46�h���we�`D<��j�R̘ޢ�	>�:�=�CQ�4�=؍_ z�{�W���H���Al��<���g@��&�H^�g@�&�h�{(����߃-ጻ4�x�����#��t�}&�JMnj�|��f\)��\�iu2��J���<��Ꝍ-E���K�gX3��d��~��x:��E0e��u�cZ�)�n�J�BB��@ �D�\���ϒ	6�d�?s)�h���}�"����a4��+�=M�&�I#8Eb�I4�s��`�����[��l4�ma��I��m����    ci�uH��_'o���(, A����"�y>L�-���g�����x&�v���v�q���F��sq��3�/�C��u�=��,�}"���n1�$�ɵ�I� .�D.�&���!_��h��F�*��bd͸ -�F�&�����0Ztf��r�Jh�1�7����fy� �]0N�<�Yfl4.-�L�l�=�k�2Z ���T�����NC �H�N��M�CQ����~���F�E���h�����ѳFJ��_ߨBq���%T�-ڎb[�Wƀc��k5���w�C1�.��T��ew���wC1��ܙ@K������BK�ΏzZV�?���z>�hUz�]$
ę�:���˃[�֬�uǱy�I@1�����E������B��U-
�����Dg胈�(�D��@�,�]�1A���>�(�Aέ���"���]D�ڢ1�_���Up ��aۻ�[�!�jv�l��|��9{�	�JME-nJ{a�)O��s��䀢�tTG�(Z��סU_��E�ѻ-�R	P�����)�� �h�=ߞ)�3~!�]�_� ~E7�KA<t�}�-��{�-��� �7�h��2���=xR� ��c� bCK ��3��O�R�.�� �+��m0L#M�A�6ႈ�h�^a�D��Tvw��@�i&{�U#B�HH�ۦ�e&Zs��5��[@�e�֮L��D��<`�[D�@D#�_�#����w�d@��sl�EyCQ^��w�`����U�� Cn�����b��x��[kS�n.ی�g]��7�^V7�;#o�����J�I?o{��jz�Gl=�V�
���m���ܷ��F�X�Me��i��LJ�3��ǗS��d�3P}�� �o�&�NL8Xí���!8�GG	Cp��jĺU���Bp��Ɖ_��R��|-����xCpҏ�v���F_�m7)eLH���M�6d��b��0.�Q�$�^��
�@�/B��v���ӥiB����8_�Ӹ�dP����C�o.3 �K~
�3oF�|Ͳ�G�V���w;|�!�R��F��U4.O��{�5�2&F�vTʘPi��k��9_���[�8J28�K��7@X��؜o;�El�(d
}�:�yQ}�Z�O��~1�w��K��[)���3@�K���qb�g=�'�v�������U�2g�η�snE��Inʘ0x:�K�YQ{�Ͱ?�/�}፝ YO�����Z��v�)?2J��yO�I�����3���{��e�����`�\��־�x���Py�W=k����Wޘ�e\�e�ΗQ;�X�הQ;��~�>%0l������3n�k��0�{U��wsCw�d��g<4;�~G�t��b�Η&��Gp�j��F�Ɲ�����SW	#x�m��~�!<_���ߎ� ��|�<��z�2��k��M�SW������{�()cB�ˋ�,F�|{sw��ʘ`aZ����D�0g�T�0�/ݡι�+BՁi=B�x7a�w;�Úq<_�q��a<_�_):�����^�W��@�l5�S{���5+�W��E��|y3/ǒ��>,�4�F�|���@�c8ϗ�Q�f�2ƧfO����b<����zLO���2��K�����˘�/����; ��]5�F�|'=/��*�c��Z�0�'�ӌso�)e��n������o�ẹ�Q��o���� ��2_���B�0�T-��!>_z���o��Ř�;�^ ��|e*|lg��ލ@��V�~�ƣp��>_"�}��2&���쮱e��_?�o��b�b��{J���n����Xg�u�g�uƂ�3�z�����Y�(���=��y@�c&�?4�x�^�1�|�<�Q�h}W��a���G���N
����CX)
����n!)�:(o���ꭊ��K~�>��HU�u0��+�1W��uEC<cX��yn1���-�şz�ᥐ� �ӧ7��\��,�){��u=���H�c���\�lq����n.�u����x�w�C��p~�>D�c��֮=m��댽����r���	1�쬨9�ܗْ�^Ov�/L^\jN�+�:L~�⯟P(�	���Ǳ��/,�~�=�=|���"���EO�괠�˨�,;c��㆝@�iE����΢����>bQ��=帻���]_T�-v�8�Ğ����	v�]�������1��y5V��@u����u������X �1��}��"�%�d�u�,Y0vFc�<�?���7̈;��ӝ]�P?=�hǐ���	�B�3&;Y���d�d�Y7&ZXv���c��)�yF*�#��(��ٳ<��h �1:�����@���n����³3>{�'�� �B�3F{��>���=�Z�'�iO�
��V�x���}2?c���H�)�Nym��>ss���ݩ��b0��ވd�SFj/*���H��)'�?�	��6>4���K|��=����ڧ�L����=�������p��=��j"��kOaf񕃐ǈ�)�������zn	^bj?8ه��A��>���B^2ݍ?��Q�?��@�i��ו�da�-n{;_}sUy�~��`�<��Qm}� �%Ŷ:{:O��<���u�dO���/���� ����u ����|z��^"��'��}֛-���r�%9����ס�/X�v�����Iy�=�I��'1���B�Xk|�|�����H߿�������c˾���'�0�LJ�"��ǐ�)�+#��_��l��J��V��a5��	�o'��.��'Fu?N���Њ����^;��Z�7��b=B�c`�����fY�ad�����r�>�'�y�/�i���y�����掱�pm_o1��E�K$�^���t�o�?I���e)c��ˀ���=1���|�U��}~�l��-�}^�.(�~-VY���?�i��T=��Z�<�����*慲O�d��E����;:�wX���z[��8_���7=�Ü�y=�'v�X�ns�'x��Hy����W>v
5'�{be����%��\sbC���(��Fx�s��"���;�y�m���但��wb�������"�1��9�T�|yO��"|���Iy��^����%�1���艔1��	�G��*U�ù����0����Bʘ���l�����wb��'T��+�S^�Nʋ�-nB%�1�{�oU�K�x���!#oDR�E{�S�鿡�4����=1�{�x�ޯ�}S�n}�#��ǀ���|ۡl�4%P���$���tK�c�����|g���,�C����x"�1���e���1�{b��׏lǠ����,�=Y��rB��$��V�D3�6!�Y���WW�|���Ok��K��������^_5�;*����{�]��E��fË/���O��(��FXF�O_O%U��q��?���þw��a��*���w�_c����c���o��~'��;ƃOqE;DƃO~�Y_Hw��O�&�1$�L�(�Z$�1&�	����lgQ��=iN�c\�S����>�6=�˧����],wb��W]�)�&N�����D��O���<r���ϨN'���G��O#>�0{��,H|D����A�E�����I�:��3�{ƉO(>f5��eߑ[n����e��5��|K`���P�i��c�'����I��]"�
8=�ߒ��8��	���a]xkȔE�c���1>1d���'+~O��Mϸ�J��h����#��,f|�5�|�?��O��N�E��Xg��㞆��>͐��`F�O_�R�����?�J��O��B���9��2x<?�弻G4/0�gԉ���'����5C>1�|8�kJe��(�
��Q�X�0��yNT�T��	H>1�|�}��,F���%~���:&�cwU'����Z=M�_(�)}����>�hNo�.�};���N����o'��"��f࢏'�}y�L*�>��;�?��;����T�pq�^��b_P֭p"o^,�N�{�܊��k_Q�����E�cl���� 1�<}}�r��:�������VN�b�p�
�����s��yW$�1�|	۳Lq�0�b��۫ �   �,rç��靗X� �'��b�3�|b��T.�K���Jc[/�l�2�,ʼ���og��1��ٽQ&�Y���L���Oi>�z56�lf�Y�aH�c�����c�3^�_���_b����:7� %����y��S�u     