--����ԤԼ��¼
use ����ԤԼ
--�û�ע��
insert into �û�(�û�ID,�û�����,�ֻ���,���֤��)
values ('gus11','����','17355667658','450322199912091233')
--ԤԼ����
insert into ԤԼ��¼(ԤԼ��¼ID,�û�ID,��ƱID,�ι۳���,����״̬,����ʱ��,֧����ʽ)
values ('gus11att07','gus11','tik11','����','��֧��','2025-2-01','΢��')
--��������
declare @gusID char(8)
set @gusID=(
	select �û�ID 
	from �û� 
	where �û�����='����' and �ֻ���='17355667658'
)
update  ԤԼ��¼
set �ι۳���='����',����״̬='��֧��'
where �û�ID=@gusID
--ɾ������
delete from ԤԼ��¼ where �û�ID=@gusID
delete from �û� where �û�ID=@gusID