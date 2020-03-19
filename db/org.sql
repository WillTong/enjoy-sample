/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100209
 Source Host           : localhost:3306
 Source Schema         : org

 Target Server Type    : MySQL
 Target Server Version : 100209
 File Encoding         : 65001

 Date: 19/03/2020 19:50:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for org_company
-- ----------------------------
DROP TABLE IF EXISTS `org_company`;
CREATE TABLE `org_company`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `LAST_UPD_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `LAST_UPD_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_company
-- ----------------------------
INSERT INTO `org_company` VALUES (1, 'XX公司', 1, '2020-03-16 15:08:43', 1, '2020-03-16 15:08:46');
INSERT INTO `org_company` VALUES (2, 'WW公司', 1, '2020-03-16 15:08:43', 1, '2020-03-16 15:08:43');

-- ----------------------------
-- Table structure for org_datascope
-- ----------------------------
DROP TABLE IF EXISTS `org_datascope`;
CREATE TABLE `org_datascope`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) UNSIGNED NOT NULL,
  `DEPARTMENT_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `COMPANY_ID` bigint(20) NULL DEFAULT NULL,
  `CREATED_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `LAST_UPD_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `LAST_UPD_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_datascope
-- ----------------------------
INSERT INTO `org_datascope` VALUES (1, 1, NULL, 1, 1, '2020-03-16 15:10:11', 1, '2020-03-16 15:10:11');
INSERT INTO `org_datascope` VALUES (2, 2, 1, NULL, 1, '2020-03-16 15:10:11', 1, '2020-03-16 15:10:11');
INSERT INTO `org_datascope` VALUES (3, 3, NULL, NULL, 1, '2020-03-16 15:10:11', 1, '2020-03-16 15:10:11');
INSERT INTO `org_datascope` VALUES (4, 4, 1, NULL, 1, '2020-03-16 15:10:11', 1, '2020-03-16 15:10:11');
INSERT INTO `org_datascope` VALUES (5, 4, 2, NULL, 1, '2020-03-16 15:10:11', 1, '2020-03-16 15:10:11');

-- ----------------------------
-- Table structure for org_department
-- ----------------------------
DROP TABLE IF EXISTS `org_department`;
CREATE TABLE `org_department`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `COMPANY_ID` bigint(20) UNSIGNED NOT NULL,
  `CREATED_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `LAST_UPD_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `LAST_UPD_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_department
-- ----------------------------
INSERT INTO `org_department` VALUES (1, '青岛中心', 1, 1, '2020-03-16 15:09:37', 1, '2020-03-16 15:09:41');
INSERT INTO `org_department` VALUES (2, '大连中心', 1, 1, '2020-03-16 15:09:37', 1, '2020-03-16 15:09:37');
INSERT INTO `org_department` VALUES (3, '沈阳中心', 1, 1, '2020-03-16 15:09:37', 1, '2020-03-16 15:09:37');

SET FOREIGN_KEY_CHECKS = 1;
