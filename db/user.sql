/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100209
 Source Host           : localhost:3306
 Source Schema         : user

 Target Server Type    : MySQL
 Target Server Version : 100209
 File Encoding         : 65001

 Date: 19/03/2020 19:50:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `USER_CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `USER_PWD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `USER_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `CREATED_DATE` datetime(0) NULL DEFAULT NULL,
  `LAST_UPD_BY` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `LAST_UPD_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'aa', 'aaa', '管理员', 1, '2020-03-15 20:51:43', 1, '2020-03-15 20:51:43');
INSERT INTO `user_info` VALUES (2, 'bb', 'bbb', '张三', 1, '2020-03-15 20:51:43', 1, '2020-03-15 20:51:43');
INSERT INTO `user_info` VALUES (3, 'cc', 'ccc', '李四', 1, '2020-03-15 20:51:43', 1, '2020-03-15 20:51:43');
INSERT INTO `user_info` VALUES (4, 'dd', 'ddd', '王五', 1, '2020-03-15 20:51:43', 1, '2020-03-15 20:51:43');
INSERT INTO `user_info` VALUES (5, 'ee', 'eee', '孙六', 1, '2020-03-15 20:51:43', 1, '2020-03-15 20:51:43');

SET FOREIGN_KEY_CHECKS = 1;
