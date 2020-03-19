# enjoy-sample

enjoy框架的例子。enjoy框架是闭源的，所以这个例子只有有代码的才能运行起来，其他人可以作为一个大型微服务项目的例子来学习。db文件夹中是数据库sql文件

* [项目结构](#项目结构)

## 项目结构
这个例子分为两个微服务群，sample-sys基础服务和sample-order订单服务。一个服务网关sample-gateway负责url路由和用户权限校验。一个包版本约定sample-dependencies。每个微服务都是可以独立运行的，正式开发的时候可以每个微服务一个git地址，一个开发小组负责。   
请求流是：前端->服务网关->微服务。

## 微服务
微服务一般分为三个项目。
- biz项目是业务逻辑，它一般是一个数据库一个项目，在biz内部是可以用数据库事务的。他是一个典型的mvc分层，service放逻辑代码，每个service方法是一个事务，每个表是一个dao放具体的sql查询。逻辑层与服务层分离，如果要切换为springcloud项目则只需要换服务层就可以了。
- model是放实体类的。它只包含需要与外部微服务交互的实体类。如果是业务逻辑自己用到的需要放到biz里面。   
model分为三个包：   
dto是返回值实体。   
entity是数据库对应字段的实体。   
vo是入参实体。   
如果入参或返回值与数据库字段一致，也可以使用enity。
- dubbo-api是dubbo服务的实现。
这个项目负责dubbo服务的注册，服务间调用等工作。这个服务可以打成jar包独立运行。
- dubbo-client是dubbo服务的调用接口

## 多数据源
可以参考sample-sys-dubbo-api的写法。UserDataSourceConfig负责加载user数据库，OrgDataSourceConfig负责加载org数据库。

## 数据库连接池监控
使用了druid的连接池监控。10001是sys服务的数据库监控，10002是order服务的监控。