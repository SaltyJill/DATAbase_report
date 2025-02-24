--新增预约记录
use 景点预约
--用户注册
insert into 用户(用户ID,用户姓名,手机号,身份证号)
values ('gus11','张三','17355667658','450322199912091233')
--预约景点
insert into 预约记录(预约记录ID,用户ID,门票ID,参观场次,订单状态,创建时间,支付方式)
values ('gus11att07','gus11','tik11','上午','待支付','2025-2-01','微信')
--更新数据
declare @gusID char(8)
set @gusID=(
	select 用户ID 
	from 用户 
	where 用户姓名='张三' and 手机号='17355667658'
)
update  预约记录
set 参观场次='下午',订单状态='已支付'
where 用户ID=@gusID
--删除数据
delete from 预约记录 where 用户ID=@gusID
delete from 用户 where 用户ID=@gusID