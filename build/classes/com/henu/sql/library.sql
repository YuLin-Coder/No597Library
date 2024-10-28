/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 25/07/2020 15:39:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bookname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `press` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出版社',
  `pubdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出版日期',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书类型',
  `bookshelf` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书架',
  `count` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`bookname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('java 从入门到精通', '李兴化', '人民出版社', '1998-9-9', '教科书', 'B', 55);
INSERT INTO `book` VALUES ('Mysql5.7教程', '李四', '河南大学出版社', '2017-12-11', '计算机科学类', 'as', 9);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `bookname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '借书日期',
  `days` int(11) NOT NULL COMMENT '借阅天数',
  `count` int(11) NOT NULL COMMENT '借阅数量',
  PRIMARY KEY (`id`, `bookname`) USING BTREE,
  INDEX `bookname`(`bookname`) USING BTREE,
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`bookname`) REFERENCES `book` (`bookname`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('1510121026', 'C', '计算机科学类', '2020-7-25', 2, 1);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帐号',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `islogin` int(10) NOT NULL DEFAULT 0 COMMENT '是否登录',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '激活码',
  `state` int(1) NOT NULL DEFAULT 0 COMMENT '激活状态',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('admin', 'ff0ad942f3afc7a5', 1, '', 1);
INSERT INTO `manager` VALUES ('hkq', '2c1e7cab19c3483b', 0, '57bfaa9b1b614b0e8940e12ce3a1c027', 1);
INSERT INTO `manager` VALUES ('test', '2c1e7cab19c3483b', 0, '38d04dcace934b668de94dc236a6d97c', 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '院系',
  `islogin` int(10) DEFAULT 0 COMMENT '是否登录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1510121026', 'ymkz', '男', '15824961993', '1025605919@qq.com', '软件工程', 0);
INSERT INTO `student` VALUES ('1510121027', 'ymkz1', '男', '15824961994', '1025605920@qq.com', '软件工程', 0);
INSERT INTO `student` VALUES ('1510121028', 'test', '男', '15824961995', '1025605921@qq.com', '软件工程', 0);
INSERT INTO `student` VALUES ('1510121029', 'user', '男', '15824961996', '1025605922@qq.com', '软件工程', 0);

SET FOREIGN_KEY_CHECKS = 1;
