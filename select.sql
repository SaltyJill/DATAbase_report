--查询龙宇辰所有预约记录
use 景点预约
select 用户姓名,预约记录.* 
from 预约记录 
left join 用户 on 预约记录.用户ID=用户.用户ID
where 用户姓名='龙宇辰'
-- 查询某用户取消的订单
use 景点预约
select 用户姓名,预约记录.*
from 预约记录
left join 用户 on 预约记录.用户ID=用户.用户ID
where 订单状态='已取消'
--查询所有免费参观的景点
use 景点预约
select 景点名称,类型
from 景点 
left join 门票 on 景点.景点ID=门票.景点ID
where 价格=0
