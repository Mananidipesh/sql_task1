PGDMP  	    7                |            Hospita data     16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16518    Hospita data     DATABASE     �   CREATE DATABASE "Hospita data " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Hospita data ";
                postgres    false            �            1259    16557    appointment    TABLE     �   CREATE TABLE public.appointment (
    appointment_id integer NOT NULL,
    appointment_date date,
    doctor_name character varying(250),
    specialization character varying(250),
    diagnosis text,
    medication text
);
    DROP TABLE public.appointment;
       public         heap    postgres    false            �            1259    16564 	   insurance    TABLE     �   CREATE TABLE public.insurance (
    insurane_id integer NOT NULL,
    insurance_provider character varying(250),
    policy_number character varying(250),
    insurance_company character varying(250)
);
    DROP TABLE public.insurance;
       public         heap    postgres    false            �            1259    16571    medical_record    TABLE     3  CREATE TABLE public.medical_record (
    record_id integer NOT NULL,
    appointment_id integer,
    insurane_id integer,
    patient_name character varying(250),
    date_of_birth date,
    address character varying(250),
    emergency_contact integer,
    emergency_contact_name character varying(250)
);
 "   DROP TABLE public.medical_record;
       public         heap    postgres    false            �          0    16557    appointment 
   TABLE DATA           {   COPY public.appointment (appointment_id, appointment_date, doctor_name, specialization, diagnosis, medication) FROM stdin;
    public          postgres    false    215   �       �          0    16564 	   insurance 
   TABLE DATA           f   COPY public.insurance (insurane_id, insurance_provider, policy_number, insurance_company) FROM stdin;
    public          postgres    false    216   y       �          0    16571    medical_record 
   TABLE DATA           �   COPY public.medical_record (record_id, appointment_id, insurane_id, patient_name, date_of_birth, address, emergency_contact, emergency_contact_name) FROM stdin;
    public          postgres    false    217          "           2606    16563    appointment appointment_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (appointment_id);
 F   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_pkey;
       public            postgres    false    215            $           2606    16570    insurance insurance_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.insurance
    ADD CONSTRAINT insurance_pkey PRIMARY KEY (insurane_id);
 B   ALTER TABLE ONLY public.insurance DROP CONSTRAINT insurance_pkey;
       public            postgres    false    216            &           2606    16577 "   medical_record medical_record_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.medical_record
    ADD CONSTRAINT medical_record_pkey PRIMARY KEY (record_id);
 L   ALTER TABLE ONLY public.medical_record DROP CONSTRAINT medical_record_pkey;
       public            postgres    false    217            '           2606    16578 1   medical_record medical_record_appointment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medical_record
    ADD CONSTRAINT medical_record_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointment(appointment_id);
 [   ALTER TABLE ONLY public.medical_record DROP CONSTRAINT medical_record_appointment_id_fkey;
       public          postgres    false    215    217    4642            (           2606    16583 .   medical_record medical_record_insurane_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medical_record
    ADD CONSTRAINT medical_record_insurane_id_fkey FOREIGN KEY (insurane_id) REFERENCES public.insurance(insurane_id);
 X   ALTER TABLE ONLY public.medical_record DROP CONSTRAINT medical_record_insurane_id_fkey;
       public          postgres    false    216    217    4644            �   �  x�uT�n�0=S_�SOQ *q��pR�M�8��[D(RRN���h�,�A��͛�H�4Io�d�	[�5��(��l!1�θc�9��K�-��R��|&�#Ϥ6u����H[�_�-ϖ���J}A!�c��S����,x��
z���&Nf-� �t `Ͷ��������U3��I���# � ߡ�C>���G�=p�I���ò�2�4E�rmd������P1t���'=���n�D�%�	v8}D�<{�H�e�������d�Ew=�],:���d�9�<[I��@M��7N'��X$����ܛ���6�>c�]Ish�ܾ�l�-9}ş\��{�|�WN�!���N�dkI92
z^	�rN�Nep��$�H����ޔG@+m_���*ot��ᧆ@�JiQ-h�!��������vͽ�*ɿ�umAu�^�$$N��{U^>�h@A���Ţi���'MU�ہ�}�)1s�����0
�hM�N$�O����R�Q�$�<�Tad����)�Ǿ2پ~�/G��j3��T�Wc���Pu�S PS��Ӿ*��"��EbT�d��g#����m�[�QPce�2�� |6�4��}����Jt�_�;[��)R����r�j��@��K�G���Q�H��      �   �  x�U��n�0��ç��$�5��ıP'(�B�k�Ee y�R���7�vgvvntG�p�m��swV�I����*G^7��M�9ijb	r�Fb�\�gY�����Gu$��P��=�
�u�����T{�Z���(O�����Z:Bԛ��Z۽�<o��e���t@Dr��<���O�G��x��%�+r���'Ē��S�Qxa'l�ߤu�[�`���\�0���m/�H�J\��f[!���D$��Xw��4����b#CP_�]��/�J�uo.x���B=aB�����J�S�v*-�qxv]���a"��je$e-"��W
�8�}�ض�x�o���U�5c8C������نg)���	�u�Ӛ	��Ou:7ҽ�s� �EE�=����Mc�Э      �   M  x�US�n�0</��?�BK�z�Z6�r酱ْ�,������RJjc�"ag9�" զ��\����,Gj@��ΆN�G0��gaJ����P��І���S=aªФ\����Ui
Xz[7L�B�ʾ�����_�U�
���>�N>�9^a
�0����iZ����ϡm�=���,�sD�Ӿ�E�v��~�p�ֵ_a����"��1)�,o2lH��1Х��b���u>���%p�O����6�e)��Έ6h��/�ն�5�LO����p��8z�.�����>XX�Te�,���^>�+oJ|4l\ׅ?.����ߺ���}]d�T��������Q�"�J�
���~F��V�$�d�Y�*ϐ�hڨ��kfS��2��s\���6Z/�t��&��L!(��v�73�aviB�P�^���?{�����D�N�U(s�|bd8;mt�49��rtߍ$��T��[�)�'K<� ������}�T6$s��Z5��Ϗia�)2!0��R "�u�RU�u:�x���_�?�az�So��W �2������~~[{!>sB��O�     