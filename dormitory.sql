/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : dormitory

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 03/10/2021 09:57:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for d_admin
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) NOT NULL,
  `a_password` varchar(50) NOT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  `a_phone` bigint DEFAULT NULL,
  `a_power` varchar(20) DEFAULT NULL,
  `a_describe` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_admin
-- ----------------------------
BEGIN;
INSERT INTO `d_admin` VALUES (14, 'juice', '57F7E96F370E04546066EE921424C760', '朱熹', 26219968, '1', '高');
INSERT INTO `d_admin` VALUES (15, 'admin', '21232F297A57A5A743894A0E4A801FC3', 'admin', 0, '0000', '0000');
INSERT INTO `d_admin` VALUES (16, 'liyao', '0BA8A3D4C7543D485E77A272F1413017', '李耀', 73263032, '1', '高');
INSERT INTO `d_admin` VALUES (17, 'lilong', '844C74EAB82729CF65BFDDB8782FEF76', '李龙', 74927824, '1', '高');
COMMIT;

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_classid` int NOT NULL,
  `c_classname` varchar(30) DEFAULT NULL,
  `c_counsellor` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_class
-- ----------------------------
BEGIN;
INSERT INTO `d_class` VALUES (3, 142, '土木', '孙玲');
INSERT INTO `d_class` VALUES (4, 161, '物流', '刘阳');
INSERT INTO `d_class` VALUES (6, 162, '物流', '刘阳');
INSERT INTO `d_class` VALUES (7, 171, '自动化', '周涵涵');
INSERT INTO `d_class` VALUES (8, 154, '土木', '孙玲');
INSERT INTO `d_class` VALUES (9, 151, '纺织', '赵凯');
INSERT INTO `d_class` VALUES (10, 153, '金融', '刘培');
INSERT INTO `d_class` VALUES (11, 133, 'IT', 'juice');
COMMIT;

-- ----------------------------
-- Table structure for d_dormgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_dormgrade`;
CREATE TABLE `d_dormgrade` (
  `g_id` int NOT NULL AUTO_INCREMENT,
  `d_id` int NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_grade` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_dormgrade
-- ----------------------------
BEGIN;
INSERT INTO `d_dormgrade` VALUES (1, 301, '24号楼', 6, '2019-04-25 10:51:17', '2019-05-12 17:28:38');
INSERT INTO `d_dormgrade` VALUES (2, 302, '24号楼', 7, '2019-05-01 16:36:47', '2019-05-01 16:36:55');
INSERT INTO `d_dormgrade` VALUES (3, 322, '24号楼', 8, '2019-05-04 16:37:42', '2019-05-04 16:37:47');
INSERT INTO `d_dormgrade` VALUES (4, 602, '23号楼', 7, '2019-05-08 16:38:25', '2019-05-08 16:38:30');
INSERT INTO `d_dormgrade` VALUES (5, 112, '22号楼', 7, '2019-05-12 16:38:53', '2019-05-12 16:39:00');
INSERT INTO `d_dormgrade` VALUES (6, 222, '27号楼', 9, '2019-05-09 16:39:37', '2019-05-09 16:39:41');
INSERT INTO `d_dormgrade` VALUES (7, 213, '27号楼', 8, '2019-05-10 16:40:02', '2019-05-10 16:40:08');
INSERT INTO `d_dormgrade` VALUES (8, 213, '23', 1, '2021-10-02 07:47:10', '2021-10-02 07:47:10');
COMMIT;

-- ----------------------------
-- Table structure for d_dormitoryinfo
-- ----------------------------
DROP TABLE IF EXISTS `d_dormitoryinfo`;
CREATE TABLE `d_dormitoryinfo` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `s_dormitoryid` int NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_bedtotal` varchar(20) DEFAULT NULL,
  `d_bed` varchar(20) DEFAULT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_dormitoryinfo
-- ----------------------------
BEGIN;
INSERT INTO `d_dormitoryinfo` VALUES (1, 311, '24号楼', '4', '3', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (2, 322, '24号楼', '4', '4', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (3, 601, '23号楼', '6', '6', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES (4, 602, '23号楼', '6', '5', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES (5, 111, '22号楼', '4', '4', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES (6, 112, '22号楼', '4', '3', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES (7, 222, '27号楼', '6', '6', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES (8, 213, '27号楼', '4', '4', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES (9, 312, '26号楼', '6', '6', '薛磊');
INSERT INTO `d_dormitoryinfo` VALUES (10, 313, '22号楼', '4', '4', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES (11, 323, '22号楼', '6', '5', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES (12, 301, '24号楼', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (13, 302, '24号楼', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (14, 423, '29号楼', '4', '3', '郭浩然');
INSERT INTO `d_dormitoryinfo` VALUES (15, 311, '24', '4', '1', '姐姐');
COMMIT;

-- ----------------------------
-- Table structure for d_dormrepair
-- ----------------------------
DROP TABLE IF EXISTS `d_dormrepair`;
CREATE TABLE `d_dormrepair` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `d_id` int NOT NULL,
  `d_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `r_name` varchar(20) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_dormrepair
-- ----------------------------
BEGIN;
INSERT INTO `d_dormrepair` VALUES (1, 301, '24号楼', '王涛', '水池', '2019-05-13 22:39:58', '2019-05-13 22:39:58');
INSERT INTO `d_dormrepair` VALUES (2, 322, '24号楼', '王涛', '灯管', '2019-05-11 16:29:20', '2019-05-14 16:29:35');
INSERT INTO `d_dormrepair` VALUES (3, 601, '23号楼', '冯军', '水龙头', '2019-05-15 16:31:14', '2019-05-14 16:31:20');
INSERT INTO `d_dormrepair` VALUES (4, 601, '23号楼', '冯军', '插孔', '2019-05-15 16:31:56', '2019-05-15 16:32:04');
INSERT INTO `d_dormrepair` VALUES (5, 213, '27号楼', '冯军', '排风扇', '2019-05-18 16:32:54', '2019-05-14 16:33:00');
INSERT INTO `d_dormrepair` VALUES (6, 312, '26号楼', '彭建国', '空调', '2019-05-20 16:33:56', '2019-05-20 16:34:01');
INSERT INTO `d_dormrepair` VALUES (7, 311, '24', 'lisi', '厕所', '2021-10-03 01:10:42', '2021-10-03 01:10:42');
COMMIT;

-- ----------------------------
-- Table structure for d_stgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_stgrade`;
CREATE TABLE `d_stgrade` (
  `g_id` int NOT NULL AUTO_INCREMENT,
  `s_studentid` int NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_grade` int DEFAULT NULL,
  `s_classid` int DEFAULT NULL,
  `s_dormitoryid` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_stgrade
-- ----------------------------
BEGIN;
INSERT INTO `d_stgrade` VALUES (1, 1413032001, '张杰', 6, 141, 301, '2019-04-26 09:56:51', '2019-04-26 11:02:13');
INSERT INTO `d_stgrade` VALUES (2, 1413032002, '赵凯', 7, 141, 301, '2019-05-01 17:00:05', '2019-05-01 17:00:13');
INSERT INTO `d_stgrade` VALUES (3, 1413032003, '许文文', 6, 141, 301, '2019-05-06 17:00:54', '2019-05-06 17:01:01');
INSERT INTO `d_stgrade` VALUES (4, 1413032003, '许文文', 7, 141, 301, '2019-05-16 17:01:33', '2019-05-16 17:02:15');
INSERT INTO `d_stgrade` VALUES (5, 1413032004, '王浩', 7, 141, 301, '2019-05-10 17:03:03', '2019-05-10 17:03:09');
INSERT INTO `d_stgrade` VALUES (6, 1413032005, '张伟', 8, 141, 301, '2019-05-14 17:03:53', '2019-05-14 17:03:56');
INSERT INTO `d_stgrade` VALUES (7, 1513112412, '赵跃', 9, 151, 112, '2019-05-08 17:05:04', '2019-05-08 17:05:07');
INSERT INTO `d_stgrade` VALUES (8, 1513112412, '赵跃', 9, 151, 112, '2019-05-17 17:05:34', '2019-05-17 17:05:39');
INSERT INTO `d_stgrade` VALUES (9, 1513122418, '田野', 8, 151, 213, '2019-05-15 17:06:28', '2019-05-15 17:06:35');
INSERT INTO `d_stgrade` VALUES (10, 1513122419, '张嘉佳', 8, 151, 213, '2019-05-15 17:07:09', '2019-05-15 17:07:13');
INSERT INTO `d_stgrade` VALUES (11, 15131, 'zhijk', 12, 24, 12, '2021-10-02 07:47:54', '2021-10-02 07:47:54');
COMMIT;

-- ----------------------------
-- Table structure for d_student
-- ----------------------------
DROP TABLE IF EXISTS `d_student`;
CREATE TABLE `d_student` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `s_studentid` int NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_sex` varchar(20) DEFAULT NULL,
  `s_age` int DEFAULT NULL,
  `s_phone` bigint DEFAULT NULL,
  `s_classid` int NOT NULL,
  `s_classname` varchar(20) DEFAULT NULL,
  `s_dormitoryid` int NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_student
-- ----------------------------
BEGIN;
INSERT INTO `d_student` VALUES (1, 1413032001, '张杰', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (2, 1413032002, '赵凯', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (3, 1413032003, '许文文', '男', 21, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (4, 1413032004, '王浩', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (5, 1413032005, '张伟', '男', 22, 138138138, 141, '土木', 301);
INSERT INTO `d_student` VALUES (6, 1413032006, '郭顶', '男', 21, 138138138, 141, '土木', 301);
INSERT INTO `d_student` VALUES (7, 1513112411, '曹原', '男', 20, 138138138, 151, '应化', 112);
INSERT INTO `d_student` VALUES (8, 1513112412, '赵跃', '男', 21, 138138138, 151, '纺织', 112);
INSERT INTO `d_student` VALUES (9, 1513112413, '孙畅', '男', 21, 138138138, 151, '纺织', 112);
INSERT INTO `d_student` VALUES (10, 1513122417, '周帆', '男', 21, 138138138, 161, '物流', 213);
INSERT INTO `d_student` VALUES (11, 1513122418, '田野', '男', 21, 138138138, 153, '数师', 213);
INSERT INTO `d_student` VALUES (12, 1513122419, '张嘉佳', '男', 20, 138138138, 153, '金融', 213);
INSERT INTO `d_student` VALUES (13, 1513122420, '陈昊', '男', 21, 138138138, 153, '金融', 213);
INSERT INTO `d_student` VALUES (14, 123, 'lisi', '男', 12, 123, 161, '物流', 3123);
COMMIT;

-- ----------------------------
-- Table structure for d_visitor
-- ----------------------------
DROP TABLE IF EXISTS `d_visitor`;
CREATE TABLE `d_visitor` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_name` varchar(20) DEFAULT NULL,
  `v_phone` bigint DEFAULT NULL,
  `v_dormitoryid` int DEFAULT NULL,
  `v_dormbuilding` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of d_visitor
-- ----------------------------
BEGIN;
INSERT INTO `d_visitor` VALUES (1, '郑杰', 138138138, 301, '24号楼', '2019-05-14 13:26:13');
INSERT INTO `d_visitor` VALUES (2, '李博', 138138138, 322, '24号楼', '2019-05-12 19:36:23');
INSERT INTO `d_visitor` VALUES (3, '张盈盈', 138138138, 601, '23号楼', '2019-05-13 19:37:11');
INSERT INTO `d_visitor` VALUES (4, '王涛', 138138138, 111, '22号楼', '2019-05-15 19:37:46');
INSERT INTO `d_visitor` VALUES (5, '胡浩', 138138138, 222, '27号楼', '2019-05-16 19:38:27');
INSERT INTO `d_visitor` VALUES (6, '陈昊', 138138138, 213, '27号楼', '2019-05-18 19:39:03');
INSERT INTO `d_visitor` VALUES (7, '刘军', 138138138, 213, '27号楼', '2019-05-20 19:39:42');
INSERT INTO `d_visitor` VALUES (8, '黄智', 138138138, 312, '26号楼', '2019-05-22 19:46:38');
INSERT INTO `d_visitor` VALUES (9, '郑杰', 123123123, 311, '24号楼', '2019-05-16 16:59:06');
INSERT INTO `d_visitor` VALUES (10, '12', 12, 23, '23', '2021-10-02 07:00:47');
INSERT INTO `d_visitor` VALUES (11, '12', 12, 23, '23', '2021-10-02 07:00:48');
INSERT INTO `d_visitor` VALUES (12, '1', 1, 1, '1', '2021-10-02 08:50:48');
INSERT INTO `d_visitor` VALUES (13, 'jj', 12, 12, '12', '2021-10-03 01:08:49');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
