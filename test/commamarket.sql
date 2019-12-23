

-- 建表  seedmarket 订单展开数据

create table  IF NOT EXISTS 
sls_dw.dwd_commamarket_order_info

(
order_item_id string comment 'order_item_id',
event_id string comment "event_id",
event_time  string comment "事件发生时间" ,
service_id  string comment "服务id" ,
service_name string comment '服务名称' ,
user_id  string    comment 'user_id',
user_create_ts  bigint comment '用户创建时间',
user_type_code bigint comment 'user_type_code',
user_phone string comment  '电话号码',
event_time_ string comment   '事件时间',
event_date string comment  '时间发生日期',
type_name  string  comment '类型名称' ,
goods_name string comment  '商品名称',
goods_price string  comment  '商品价格',
goods_count int  comment    '商品数量' ,
goods_vip_price string comment    '商品vip价格',
primary_category_name    string  comment  '主商品类型名称' ,
category_name  string    comment   '商品类型名称'  ,
order_id string  comment  '订单id'  ,
payment_type  int  comment  '支付方式',
ishave_children  int comment  '是否有小孩',
ishave_baby int comment  '是否有婴儿',
Beauty_makeup int comment  '是否购买美妆',
create_ts  string comment '数据创建时间'
) 
comment '逗号便利店订单数据'
PARTITIONED by (p_day string comment '分区日期')
stored as parquet;