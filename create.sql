-- �������ݿ�
--create database ����ԤԼ
-- ������
use ����ԤԼ
--�û���
create table �û�(
    �û�ID char(8) PRIMARY KEY,
    �û����� varchar(50) not null,
    �ֻ��� varchar(15) unique,
    ���֤�� varchar(18) unique,
);
--�����
create table ����(
    ����ID char(8) PRIMARY KEY,
    �������� varchar(50) not null,
    �����ַ varchar(100),
    ����ʱ�� varchar(50) Default 'ȫ��',
    ÿ�����Ӵ����� int Default 2000,
);
--��Ʊ����
create table ��Ʊ(
    ��ƱID char(8) PRIMARY KEY,
    ����ID char(8) not null,
    ���� varchar(20) check(����='����Ʊ' or ����='���Ʊ' or ����='��Ʊ'),
    �۸� decimal(10,2) Default 0,
);
--ԤԼ��¼
create table ԤԼ��¼(
    ԤԼ��¼ID varchar(20) PRIMARY KEY,
    �û�ID char(8) not null,
    ��ƱID char(8) not null,
    �ι۳��� char(10) 
        check(
        �ι۳���='����' 
        or �ι۳���='����' 
        or �ι۳���='����'
        ),
    ����״̬ varchar(20) 
        check(
        ����״̬='��֧��' 
        or ����״̬='��֧��' 
        or ����״̬='��ȡ��'
        ),
    ����ʱ�� datetime,
    ֧����ʽ varchar(20)  
        check(
        ֧����ʽ='֧����' 
        or ֧����ʽ='΢��' 
        or ֧����ʽ='����' 
        or ֧����ʽ='�ֽ�'
        ),
);
