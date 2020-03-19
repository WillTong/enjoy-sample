/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100209
 Source Host           : localhost:3306
 Source Schema         : order

 Target Server Type    : MySQL
 Target Server Version : 100209
 File Encoding         : 65001

 Date: 19/03/2020 19:50:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ORDER_TITLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPARTMENT_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `COMPANY_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `CREATED_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `LAST_UPD_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `LAST_UPD_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 'XX公司订单', NULL, 1, 1, '2020-03-18 09:18:46', 1, '2020-03-18 09:18:46');
INSERT INTO `order_info` VALUES (2, '青岛中心订单', 1, 1, 1, '2020-03-18 09:18:46', 5, '2020-03-18 09:18:46');
INSERT INTO `order_info` VALUES (3, '大连中心订单', 2, 1, 1, '2020-03-18 09:18:46', 5, '2020-03-18 09:18:46');
INSERT INTO `order_info` VALUES (4, '沈阳中心订单', 3, 1, 5, '2020-03-18 09:18:46', 5, '2020-03-18 09:18:46');
INSERT INTO `order_info` VALUES (5, 'WW公司订单', NULL, 2, 5, '2020-03-18 09:18:46', 5, '2020-03-18 09:18:46');

-- ----------------------------
-- Table structure for order_info_log
-- ----------------------------
DROP TABLE IF EXISTS `order_info_log`;
CREATE TABLE `order_info_log`  (
  `ID` char(37) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RECORD_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `RECORD_TABLE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LOG_CONTENT` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RECORD_CONTENT` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LOG_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LOG_PERSON` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `LOG_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
