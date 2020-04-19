/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100209
 Source Host           : localhost:3306
 Source Schema         : nacos

 Target Server Type    : MySQL
 Target Server Version : 100209
 File Encoding         : 65001

 Date: 19/04/2020 07:45:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (4, 'sample-order-dubbo', 'sample-order', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n  servlet:\r\n    context-path: /\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '9b14f1ca079b8a46405d7470cbc274e9', '2020-04-16 23:04:19', '2020-04-16 23:04:19', NULL, '0:0:0:0:0:0:0:1', '', '040ff926-412c-4de3-b5de-60c3dcbd0fbf', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (5, 'sample-order-biz', 'sample-order', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000\r\n', '9b54067fbee26e4dfabef8da6d8223f', '2020-04-16 23:05:08', '2020-04-16 23:05:08', NULL, '0:0:0:0:0:0:0:1', '', '040ff926-412c-4de3-b5de-60c3dcbd0fbf', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (50, 'sample-gateway-dev.yml', 'sample-gateway', 'test: \"123\"', '947314b0f9b0006dd590430b8e98f3b1', '2020-04-18 13:39:51', '2020-04-18 14:03:45', NULL, '0:0:0:0:0:0:0:1', '', '040ff926-412c-4de3-b5de-60c3dcbd0fbf', 'null', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (57, 'testa', 'DEFAULT_GROUP', 'test: a', '8bbbe76dca26c32157a96e68d77d3364', '2020-04-18 14:28:27', '2020-04-18 14:28:27', NULL, '0:0:0:0:0:0:0:1', '', '040ff926-412c-4de3-b5de-60c3dcbd0fbf', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (58, 'sample-order-dubbo-api-test.yml', 'sample-order', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '957d101cc4639617a844f624302a9fdc', '2020-04-18 19:51:59', '2020-04-18 20:09:16', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample', 'null', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (59, 'sample-order-biz-test.yml', 'sample-order', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', 'aba2fcbb254cab8932e6cf24b1018a59', '2020-04-18 19:53:23', '2020-04-18 19:53:23', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (62, 'sample-order-dubbo-api-test.yml', 'sample-order', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample-test\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', 'a6b006c3ae4f397e2a48b60f68cb5bb7', '2020-04-18 20:20:58', '2020-04-18 20:22:02', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample-test', 'null', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (63, 'sample-order-biz-test.yml', 'sample-order', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', 'aba2fcbb254cab8932e6cf24b1018a59', '2020-04-18 20:20:58', '2020-04-18 20:20:58', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample-test', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (65, 'sample-sys-dubbo-api-test.yml', 'sample-sys', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample-test\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21001\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11001\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', 'd6d9be51c88091a217ca6d44b35a4e3e', '2020-04-18 20:30:38', '2020-04-18 20:34:22', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample-test', 'null', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (66, 'sample-user-biz-test.yml', 'sample-sys', 'spring:\r\n  datasource:\r\n    druid:\r\n      user:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/user?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 5\r\n        minIdle: 5\r\n        maxActive: 20\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', '5f4d66ff4c07ad39baa2a6d70368ca7a', '2020-04-18 20:31:59', '2020-04-18 20:31:59', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample-test', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (67, 'sample-org-biz-test.yml', 'sample-sys', 'spring:\r\n  datasource:\r\n    druid:\r\n      org:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/org?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', 'be34405b2d3c18e6a551518e3531406c', '2020-04-18 20:32:50', '2020-04-18 20:32:50', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample-test', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (69, 'sample-gateway-test.yml', 'sample-gateway', 'dubbo:\r\n  registry:\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample-test\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    port: 21016\r\n    threads: 100\r\n\r\nserver:\r\n  port: 8080', '59d26fef17ba4d23f9b66bd9ae6580f', '2020-04-18 20:53:24', '2020-04-18 20:53:24', NULL, '0:0:0:0:0:0:0:1', '', 'enjoy-sample-test', NULL, NULL, NULL, 'yaml', NULL);

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime(0) NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfoaggr_datagrouptenantdatum`(`data_id`, `group_id`, `tenant_id`, `datum_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '增加租户字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfobeta_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_beta' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfotag_datagrouptenanttag`(`data_id`, `group_id`, `tenant_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_tag' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`) USING BTREE,
  UNIQUE INDEX `uk_configtagrelation_configidtag`(`id`, `tag_name`, `tag_type`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_tag_relation' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '集群、各Group容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`  (
  `id` bigint(64) UNSIGNED NOT NULL,
  `nid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gmt_create` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `gmt_modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `op_type` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `idx_gmt_create`(`gmt_create`) USING BTREE,
  INDEX `idx_gmt_modified`(`gmt_modified`) USING BTREE,
  INDEX `idx_did`(`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多租户改造' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info` VALUES (0, 1, 'sample-order-dubbo', 'sample-order', '', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '8466f4d483c1c370d134a8a11d191b8d', '2020-04-16 22:59:37', '2020-04-16 22:59:37', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 2, 'sample-order-biz', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000\r\n', '9b54067fbee26e4dfabef8da6d8223f', '2020-04-16 23:02:07', '2020-04-16 23:02:07', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (1, 3, 'sample-order-dubbo', 'sample-order', '', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '8466f4d483c1c370d134a8a11d191b8d', '2020-04-16 23:02:58', '2020-04-16 23:02:58', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 4, 'sample-order-dubbo', 'sample-order', '', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n  servlet:\r\n    context-path: /\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '9b14f1ca079b8a46405d7470cbc274e9', '2020-04-16 23:04:19', '2020-04-16 23:04:19', NULL, '0:0:0:0:0:0:0:1', 'I', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (0, 5, 'sample-order-biz', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000\r\n', '9b54067fbee26e4dfabef8da6d8223f', '2020-04-16 23:05:08', '2020-04-16 23:05:08', NULL, '0:0:0:0:0:0:0:1', 'I', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (1, 6, 'sample-order-dubbo', 'sample-order', '', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n  servlet:\r\n    context-path: /\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '9b14f1ca079b8a46405d7470cbc274e9', '2020-04-16 23:05:18', '2020-04-16 23:05:18', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (2, 7, 'sample-order-biz', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000\r\n', '9b54067fbee26e4dfabef8da6d8223f', '2020-04-16 23:05:18', '2020-04-16 23:05:18', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 8, 'sample-order-dubbo', 'sample-order', '', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n  servlet:\r\n    context-path: /\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '9b14f1ca079b8a46405d7470cbc274e9', '2020-04-17 00:00:25', '2020-04-17 00:00:25', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 9, 'sample-order-biz', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000\r\n', '9b54067fbee26e4dfabef8da6d8223f', '2020-04-17 00:00:25', '2020-04-17 00:00:25', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (6, 10, 'sample-order-dubbo', 'sample-order', '', 'spring:\r\n  application:\r\n    name: sample-order\r\n  datasource:\r\n    druid:\r\n      filter:\r\n        stat:\r\n          enabled: true\r\n          db-type: mysql\r\n          mergeSql: true\r\n      stat-view-servlet:\r\n        use-global-data-source-stat: true\r\n        enabled: true\r\n\r\ndubbo:\r\n  scan:\r\n    basePackages: com.enjoy.sample.order.api\r\n  application:\r\n    id: sample-order\r\n    name: sample-order\r\n  provider:\r\n    filter: exceptionFilter,mybatisHelperProviderFilter,-exception\r\n    timeout: 5000\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n  servlet:\r\n    context-path: /\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '9b14f1ca079b8a46405d7470cbc274e9', '2020-04-17 00:06:40', '2020-04-17 00:06:40', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (7, 11, 'sample-order-biz', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000\r\n', '9b54067fbee26e4dfabef8da6d8223f', '2020-04-17 00:06:40', '2020-04-17 00:06:40', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 12, 'sample-sys', 'mapping-com.enjoy.common.inf.TokenGenerator', '', '1587087002854', '225ba94ab0596ef1bece3c1a7772fde8', '2020-04-17 09:30:02', '2020-04-17 09:30:02', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 13, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.UserClient', '', '1587087003088', 'f5c00a45bf0b24e41d5d6c37fa970561', '2020-04-17 09:30:03', '2020-04-17 09:30:03', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 14, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.DepartmentClient', '', '1587087003120', '6ecacf0309e19e1ddf19d30c97f3b976', '2020-04-17 09:30:03', '2020-04-17 09:30:03', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 15, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564', 'e3b9ddf81b584a5de7231e324ab22d69', '2020-04-17 10:18:49', '2020-04-17 10:18:49', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 16, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216', 'c37e883cb69a4f99e22d21efe4c15fba', '2020-04-17 11:04:19', '2020-04-17 11:04:19', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 17, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908', '19d5a386d5532b8e2b136cedc8641f12', '2020-04-17 11:04:21', '2020-04-17 11:04:21', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (13, 18, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908', '19d5a386d5532b8e2b136cedc8641f12', '2020-04-17 11:15:00', '2020-04-17 11:15:00', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 19, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216', 'c37e883cb69a4f99e22d21efe4c15fba', '2020-04-17 11:15:11', '2020-04-17 11:15:11', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 20, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587093311814', '3ce9eced03111ae73a9d8700545bf42a', '2020-04-17 11:27:15', '2020-04-17 11:27:15', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 21, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587093300448', 'dc765910105e82c3e43b973705697e06', '2020-04-17 11:27:18', '2020-04-17 11:27:18', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (11, 22, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564', 'e3b9ddf81b584a5de7231e324ab22d69', '2020-04-17 11:46:42', '2020-04-17 11:46:42', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (8, 23, 'sample-sys', 'mapping-com.enjoy.common.inf.TokenGenerator', '', '1587087002854', '225ba94ab0596ef1bece3c1a7772fde8', '2020-04-17 11:46:43', '2020-04-17 11:46:43', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (9, 24, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.UserClient', '', '1587087003088', 'f5c00a45bf0b24e41d5d6c37fa970561', '2020-04-17 11:46:43', '2020-04-17 11:46:43', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (10, 25, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.DepartmentClient', '', '1587087003120', '6ecacf0309e19e1ddf19d30c97f3b976', '2020-04-17 11:46:43', '2020-04-17 11:46:43', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (8, 26, 'sample-sys', 'mapping-com.enjoy.common.inf.TokenGenerator', '', '1587087002854,1587095203059', '4d69c3543710e3ce774bf6bacb75c9c9', '2020-04-17 12:47:22', '2020-04-17 12:47:22', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (9, 27, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.UserClient', '', '1587087003088,1587095203105', '4b9ecf59adb69fcae0c69f7532c55356', '2020-04-17 12:47:22', '2020-04-17 12:47:22', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (10, 28, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.DepartmentClient', '', '1587087003120,1587095203152', 'b3f9f2893170110141a8b6b12618675c', '2020-04-17 12:47:22', '2020-04-17 12:47:22', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (11, 29, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564,1587095202223', '1905d14d1ae81c850bcd23a316dc9424', '2020-04-17 12:47:24', '2020-04-17 12:47:24', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (11, 30, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564,1587098844498', '30f91b5a281d3477685ac1964d7c61e8', '2020-04-17 12:48:01', '2020-04-17 12:48:01', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (11, 31, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564,1587098881774', 'daf7712c182fd315f531de4c6cf33201', '2020-04-17 13:03:19', '2020-04-17 13:03:19', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (8, 32, 'sample-sys', 'mapping-com.enjoy.common.inf.TokenGenerator', '', '1587087002854,1587098842841', '5a2e8a21b5fd42d6dcdb6a964cc8215d', '2020-04-17 13:03:19', '2020-04-17 13:03:19', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (9, 33, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.UserClient', '', '1587087003088,1587098842888', '98429955f15c2a2a30481d07b38dc872', '2020-04-17 13:03:19', '2020-04-17 13:03:19', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (10, 34, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.DepartmentClient', '', '1587087003120,1587098842920', 'f95865a975483827316bb591ad6865f9', '2020-04-17 13:03:19', '2020-04-17 13:03:19', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (8, 35, 'sample-sys', 'mapping-com.enjoy.common.inf.TokenGenerator', '', '1587087002854,1587099799759', 'b93b59fa06707622a21c871ca731b406', '2020-04-17 13:41:25', '2020-04-17 13:41:25', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (9, 36, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.UserClient', '', '1587087003088,1587099799806', '3842f4b59d0886a206eb30d61887b120', '2020-04-17 13:41:25', '2020-04-17 13:41:25', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (10, 37, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.DepartmentClient', '', '1587087003120,1587099799838', 'd136267ceedaddd7ae6a7f572f36c58b', '2020-04-17 13:41:25', '2020-04-17 13:41:25', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (11, 38, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564,1587099799306', '9af1af723d03c40150e24ecbe01da0ad', '2020-04-17 13:41:34', '2020-04-17 13:41:34', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 39, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587094038033', '73e38dd269e7ea6c80b2e1145a572c58', '2020-04-17 13:46:07', '2020-04-17 13:46:07', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 40, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587094035863', '93c9ed85b3fb6cce8e0606e3757f25e4', '2020-04-17 13:46:11', '2020-04-17 13:46:11', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 41, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587102367883', 'a9709cf5fcb974864c5aa99a4af7a197', '2020-04-17 13:52:09', '2020-04-17 13:52:09', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 42, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587102371076', '6b21c270de3b94c02922260d0c8987e', '2020-04-17 13:52:09', '2020-04-17 13:52:09', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 43, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587102729034', '5c7939eb325c479c60ffbb2a5b680011', '2020-04-17 13:58:21', '2020-04-17 13:58:21', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 44, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587102729440', '6bba84eb0f2cda424763aa3bb3860c36', '2020-04-17 13:58:22', '2020-04-17 13:58:22', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 45, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587103101828', '78da41468e70f7a5e0bbf83ddccf4afe', '2020-04-17 14:57:59', '2020-04-17 14:57:59', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 46, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587103102047', 'cf75a6f3e846159a6419e563f79624fa', '2020-04-17 14:58:00', '2020-04-17 14:58:00', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 47, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587106679797', '770ab4d444889c6d82b663a0acea501f', '2020-04-17 15:18:48', '2020-04-17 15:18:48', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 48, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587106680031', '456f4a7835c21fc2d2a67abbc737a495', '2020-04-17 15:18:48', '2020-04-17 15:18:48', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 49, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587107928602', '29e3aa700ae3633070aadf212c6af341', '2020-04-17 20:41:08', '2020-04-17 20:41:08', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 50, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587107928884', 'b1d382bbc69fa044077363c5122c34e4', '2020-04-17 20:41:08', '2020-04-17 20:41:08', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (12, 51, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587127268553', '525b87b561b8fc9d6b59db389244bcc7', '2020-04-17 21:06:32', '2020-04-17 21:06:32', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 52, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587127268209', 'd44fc45b648aaf74ea69a3d10a666e22', '2020-04-17 21:06:33', '2020-04-17 21:06:33', NULL, '127.0.0.1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 53, 'sample-gateway-dev.yaml', 'sample-gateway', '', 'test:\r\n  a: \"123\"', 'd7d0601f5408e9610e1177cba95f8e82', '2020-04-18 13:38:28', '2020-04-18 13:38:28', NULL, '0:0:0:0:0:0:0:1', 'I', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (49, 54, 'sample-gateway-dev.yaml', 'sample-gateway', '', 'test:\r\n  a: \"123\"', 'd7d0601f5408e9610e1177cba95f8e82', '2020-04-18 13:39:21', '2020-04-18 13:39:21', NULL, '0:0:0:0:0:0:0:1', 'D', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (0, 55, 'sample-gateway-dev.yml', 'sample-gateway', '', 'test:\r\n  a: \"123\"', 'd7d0601f5408e9610e1177cba95f8e82', '2020-04-18 13:39:51', '2020-04-18 13:39:51', NULL, '0:0:0:0:0:0:0:1', 'I', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (50, 56, 'sample-gateway-dev.yml', 'sample-gateway', '', 'test:\r\n  a: \"123\"', 'd7d0601f5408e9610e1177cba95f8e82', '2020-04-18 14:03:45', '2020-04-18 14:03:45', NULL, '0:0:0:0:0:0:0:1', 'U', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (0, 57, 'testa', 'DEFAULT_GROUP', '', 'test:a', 'e1e573afaa722b8b4526cd042eadbdd6', '2020-04-18 14:12:11', '2020-04-18 14:12:11', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (52, 58, 'testa', 'DEFAULT_GROUP', '', 'test:a', 'e1e573afaa722b8b4526cd042eadbdd6', '2020-04-18 14:12:36', '2020-04-18 14:12:36', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (52, 59, 'testa', 'DEFAULT_GROUP', '', 'test: a', '8bbbe76dca26c32157a96e68d77d3364', '2020-04-18 14:13:44', '2020-04-18 14:13:44', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 60, 'sample-gateway-dev.yml', 'sample-gateway', '', 'test: b', '8df6ec780801f63e74a8aa450de652d7', '2020-04-18 14:17:02', '2020-04-18 14:17:02', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (55, 61, 'sample-gateway-dev.yml', 'sample-gateway', '', 'test: b', '8df6ec780801f63e74a8aa450de652d7', '2020-04-18 14:20:00', '2020-04-18 14:20:00', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 62, 'testa', 'DEFAULT_GROUP', '', 'test: a', '8bbbe76dca26c32157a96e68d77d3364', '2020-04-18 14:28:27', '2020-04-18 14:28:27', NULL, '0:0:0:0:0:0:0:1', 'I', '040ff926-412c-4de3-b5de-60c3dcbd0fbf');
INSERT INTO `his_config_info` VALUES (8, 63, 'sample-sys', 'mapping-com.enjoy.common.inf.TokenGenerator', '', '1587087002854,1587102085082', '71fe50faebe8d53daaa43fcdbd5df8bb', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (9, 64, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.UserClient', '', '1587087003088,1587102085129', 'c5146d590fbcee74502f52db4ad7a58d', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (10, 65, 'sample-sys', 'mapping-com.enjoy.sample.sys.client.DepartmentClient', '', '1587087003120,1587102085160', 'e07ff3c7a14f625b046ba490b905e5d', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (11, 66, 'sample-order', 'mapping-com.enjoy.sample.order.client.OrderClient', '', '1587089929564,1587102094872', '14237d74eb0aa12e03ba601466ec4375', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (12, 67, 'lecc-consumer', 'mapping-com.will.test.consumer.service.ConsumerService', '', '1587092659216,1587128792797', '37f4c9340c3d7e90929e58014cf70655', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (13, 68, 'lecc-provider', 'mapping-com.will.test.provider.service.ProviderService', '', '1587092661908,1587128793000', '36421e1956a235ce043a98242472da39', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (52, 69, 'testa', 'DEFAULT_GROUP', '', 'test: a', '8bbbe76dca26c32157a96e68d77d3364', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (55, 70, 'sample-gateway-dev.yml', 'sample-gateway', '', 'dubbo:\r\n  application:\r\n    id: sample-gateway\r\n    name: sample-gateway\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20016\r\n    threads: 100\r\n\r\nserver:\r\n  port: 9090', '266d8d508ee50b3267abc6f0c3f7a3d0', '2020-04-18 19:49:27', '2020-04-18 19:49:27', NULL, '0:0:0:0:0:0:0:1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 71, 'sample-order-dubbo-api-test.yml', 'sample-order', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '6090cda2010e3a3c60631a4f60a151a5', '2020-04-18 19:51:59', '2020-04-18 19:51:59', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample');
INSERT INTO `his_config_info` VALUES (0, 72, 'sample-order-biz-test.yml', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', 'aba2fcbb254cab8932e6cf24b1018a59', '2020-04-18 19:53:23', '2020-04-18 19:53:23', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample');
INSERT INTO `his_config_info` VALUES (58, 73, 'sample-order-dubbo-api-test.yml', 'sample-order', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 20002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 10002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '6090cda2010e3a3c60631a4f60a151a5', '2020-04-18 19:56:11', '2020-04-18 19:56:11', NULL, '0:0:0:0:0:0:0:1', 'U', 'enjoy-sample');
INSERT INTO `his_config_info` VALUES (58, 74, 'sample-order-dubbo-api-test.yml', 'sample-order', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', 'cd98b6a6f00887170939bcac2e04957a', '2020-04-18 20:09:16', '2020-04-18 20:09:16', NULL, '0:0:0:0:0:0:0:1', 'U', 'enjoy-sample');
INSERT INTO `his_config_info` VALUES (0, 75, 'sample-order-dubbo-api-test.yml', 'sample-order', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '957d101cc4639617a844f624302a9fdc', '2020-04-18 20:20:58', '2020-04-18 20:20:58', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (0, 76, 'sample-order-biz-test.yml', 'sample-order', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      order:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/order?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', 'aba2fcbb254cab8932e6cf24b1018a59', '2020-04-18 20:20:58', '2020-04-18 20:20:58', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (62, 77, 'sample-order-dubbo-api-test.yml', 'sample-order', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21002\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11002\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '957d101cc4639617a844f624302a9fdc', '2020-04-18 20:22:02', '2020-04-18 20:22:02', NULL, '0:0:0:0:0:0:0:1', 'U', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (0, 78, 'sample-sys-dubbo-api-test.yml', 'sample-sys', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21001\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11001\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '737e5f1b34db8826f876969c16e32993', '2020-04-18 20:30:38', '2020-04-18 20:30:38', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (0, 79, 'sample-user-biz-test.yml', 'sample-sys', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      user:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/user?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 5\r\n        minIdle: 5\r\n        maxActive: 20\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', '5f4d66ff4c07ad39baa2a6d70368ca7a', '2020-04-18 20:31:59', '2020-04-18 20:31:59', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (0, 80, 'sample-org-biz-test.yml', 'sample-sys', '', 'spring:\r\n  datasource:\r\n    druid:\r\n      org:\r\n        platform: mysql\r\n        type: com.alibaba.druid.pool.DruidDataSource\r\n        driverClassName: com.mysql.cj.jdbc.Driver\r\n        url: jdbc:mysql://localhost:3306/org?useSSL=false&useUnicode=true&allowMultiQueries=true&characterEncoding=UTF8&serverTimezone=GMT%2B8&zeroDateTimeBehavior=convertToNull\r\n        username: root\r\n        password: will\r\n        initialSize: 1\r\n        minIdle: 1\r\n        maxActive: 5\r\n        maxWait: 10000\r\n        timeBetweenEvictionRunsMillis: 60000\r\n        minEvictableIdleTimeMillis: 600000\r\n        validationQuery: select 1\r\n        testWhileIdle: true\r\n        testOnBorrow: false\r\n        testOnReturn: false\r\n        maxPoolPreparedStatementPerConnectionSize: -1\r\n  redis:\r\n    host: 127.0.0.1\r\n    password: will\r\n    port: 6379\r\n    jedis:\r\n      pool:\r\n        max-idle: 500\r\n        min-idle: 50\r\n        max-active: 2000', 'be34405b2d3c18e6a551518e3531406c', '2020-04-18 20:32:50', '2020-04-18 20:32:50', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (65, 81, 'sample-sys-dubbo-api-test.yml', 'sample-sys', '', 'dubbo:\r\n  registry:\r\n    id: default\r\n    address: 127.0.0.1:8848\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    id: dubbo\r\n    name: dubbo\r\n    port: 21001\r\n    threads: 100\r\n\r\nserver:\r\n  port: 11001\r\n\r\nlogging:\r\n  config: classpath:logback-boot.xml', '737e5f1b34db8826f876969c16e32993', '2020-04-18 20:34:22', '2020-04-18 20:34:22', NULL, '0:0:0:0:0:0:0:1', 'U', 'enjoy-sample-test');
INSERT INTO `his_config_info` VALUES (0, 82, 'sample-gateway-test.yml', 'sample-gateway', '', 'dubbo:\r\n  registry:\r\n    address: 127.0.0.1:8848?namespace=enjoy-sample-test\r\n    protocol: nacos\r\n    timeout: 20000\r\n  protocol:\r\n    port: 21016\r\n    threads: 100\r\n\r\nserver:\r\n  port: 8080', '59d26fef17ba4d23f9b66bd9ae6580f', '2020-04-18 20:53:24', '2020-04-18 20:53:24', NULL, '0:0:0:0:0:0:0:1', 'I', 'enjoy-sample-test');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resource` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `uk_role_permission`(`role`, `resource`, `action`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('enjoy-sample-test', 'enjoy-sample-test:*:*', 'rw');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `idx_user_role`(`username`, `role`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('enjoy-sample-test', 'enjoy-sample-test');
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
  `max_aggr_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT current_timestamp(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '租户容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_info_kptenantid`(`kp`, `tenant_id`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'tenant_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
INSERT INTO `tenant_info` VALUES (4, '1', 'enjoy-sample-test', 'enjoy-sample-test', 'enjoy-sample-test', 'nacos', 1587212388291, 1587212388291);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('enjoy-sample-test', '$2a$10$onoBuPZelRlBz3hVVGWCVOGaW8kZthLdjSoGIC57xiBV/gFpUr3k.', 1);
INSERT INTO `users` VALUES ('nacos', '$2a$10$lz.4QYdhA0nuH3ipIrTGPelaGEAwyRzEGV/bseoTCZP6U5DU3qS2y', 1);

SET FOREIGN_KEY_CHECKS = 1;
