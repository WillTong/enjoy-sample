# enjoy-sample

enjoy框架的例子。enjoy框架是闭源的，所以这个例子只有有代码的才能运行起来，其他人可以作为一个大型微服务项目的例子来学习。db文件夹中是数据库sql文件

* [项目结构](#项目结构)

## 项目结构
这个例子分为两个微服务群，sample-sys基础服务和sample-order订单服务。一个服务网关sample-gateway负责url路由和用户权限校验。一个包版本约定sample-dependencies。每个微服务都是可以独立运行的，正式开发的时候可以每个微服务一个git地址，一个开发小组负责。   
请求流是：前端->服务网关->微服务。

## 微服务
微服务一般分为三个项目。   
- biz项目是业务逻辑。   
它一般是一个数据库一个项目，在biz内部是可以用数据库事务的。他是一个典型的mvc分层，service放逻辑代码，每个service方法是一个事务，每个表是一个dao放具体的sql查询。逻辑层与服务层分离，如果要切换为springcloud项目则只需要换服务层就可以了。
- model是放实体类的。   
它只包含需要与外部微服务交互的实体类。如果是业务逻辑自己用到的需要放到biz里面。   
model分为三个包：   
dto是返回值实体。   
entity是数据库对应字段的实体。   
vo是入参实体。   
如果入参或返回值与数据库字段一致，也可以使用enity。
- dubbo-api是dubbo服务的实现。   
这个项目负责dubbo服务的注册，服务间调用等工作。这个服务可以打成jar包独立运行。
- dubbo-client是dubbo服务的调用接口   

## 配置分层
biz使用逻辑层的配置。
例如application-orderBizDev.yml是订单逻辑层的开发环境配置，OrderBizConfig是订单逻辑层的配置类，logback-order-biz.xml是订单逻辑层的sql输出配置。
它们在服务层进行重新组合。例如sys微服务组合了user和org两个逻辑层。

## 数据库连接池监控
使用了druid的连接池监控。10001是sys服务的数据库监控，10002是order服务的监控。如果是多数据源则需要配置
```yaml
use-global-data-source-stat: true
```

## junit
支持在biz和api两个项目上编写不同级别的junit。参照UserInfoServiceTest和UserApiTest。

## nacos配置中心与注册中心
当使用test的profile启动的时候，会自动拉取已经维护好的nacos的配置，并且将服务注册到nacos上。nacos的建表语句在db文件夹中的nacos.sql，使用的版本是1.2.1。   
- nacos如何使用
管理员账号是nacos，密码是nacos。测试环境账号是enjoy-sample-test密码也是enjoy-sample-test。namespace按照每个项目和环境来区分。例如enjoy-sample项目的测试环境就使用enjoy-sample-test命名空间。

## url介绍
- /sys/user/login   
登录，session使用redis同步
- /sys/user/logout   
登出，删除redis存储的令牌
- /sys/user/searchUserManageList   
分页查询，dto和vo的区别
- /order/order/searchOrderManagerList   
数据权限，服务间调用
- /order/order/addOrder   
数据库操作日志相关
