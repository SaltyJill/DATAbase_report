-- 创建数据库
--create database 景点预约
-- 创建表
use 景点预约
--用户表
create table 用户(
    用户ID char(8) PRIMARY KEY,
    用户姓名 varchar(50) not null,
    手机号 varchar(15) unique,
    身份证号 varchar(18) unique,
);
--景点表
create table 景点(
    景点ID char(8) PRIMARY KEY,
    景点名称 varchar(50) not null,
    景点地址 varchar(100),
    开放时间 varchar(50) Default '全天',
    每日最大接待人数 int Default 2000,
);
--门票类型
create table 门票(
    门票ID char(8) PRIMARY KEY,
    景点ID char(8) not null,
    类型 varchar(20) check(类型='成人票' or 类型='半价票' or 类型='免票'),
    价格 decimal(10,2) Default 0,
);
--预约记录
create table 预约记录(
    预约记录ID varchar(20) PRIMARY KEY,
    用户ID char(8) not null,
    门票ID char(8) not null,
    参观场次 char(10) 
        check(
        参观场次='上午' 
        or 参观场次='下午' 
        or 参观场次='晚上'
        ),
    订单状态 varchar(20) 
        check(
        订单状态='已支付' 
        or 订单状态='待支付' 
        or 订单状态='已取消'
        ),
    创建时间 datetime,
    支付方式 varchar(20)  
        check(
        支付方式='支付宝' 
        or 支付方式='微信' 
        or 支付方式='银联' 
        or 支付方式='现金'
        ),
);
