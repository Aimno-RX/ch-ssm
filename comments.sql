/*
 Navicat MySQL Data Transfer

 Source Server         : comments
 Source Server Type    : MySQL
 Source Server Version : 90500
 Source Host           : localhost:3306
 Source Schema         : comments

 Target Server Type    : MySQL
 Target Server Version : 90500
 File Encoding         : 65001

 Date: 06/11/2025 16:02:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'user1', '123456', '2024-01-01 10:00:00');
INSERT INTO `users` VALUES (2, 'user2', '123456', '2024-11-05 08:30:00');
INSERT INTO `users` VALUES (3, 'user3', '123456', '2024-06-15 14:20:00');
INSERT INTO `users` VALUES (4, 'chc', '123456', '2025-11-06 00:37:46');
INSERT INTO `users` VALUES (5, 'cly', '123456', '2025-11-06 13:50:35');
INSERT INTO `users` VALUES (6, 'lll', '123456', '2025-11-06 13:55:40');
INSERT INTO `users` VALUES (7, 'fdh', '123456', '2025-11-06 13:56:10');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视频文件名，唯一',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者名',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '视频介绍',
  `publishTime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `videoName`(`videoName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '视频信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 'video1.mp4', '旅行爱好者', '探索未知的美景，记录旅途中的每一个精彩瞬间', '2024-01-15 10:30:00');
INSERT INTO `video` VALUES (2, 'video2.mp4', '美食家小王', '分享美食制作过程，让每一餐都充满幸福感', '2024-01-14 12:30:00');
INSERT INTO `video` VALUES (3, 'video3.mp4', '健身教练李', '专业健身指导，带你打造完美身材', '2024-01-13 07:30:00');
INSERT INTO `video` VALUES (4, 'video4.mp4', '宠物医生张', '记录可爱宠物的日常生活，分享养护知识', '2024-01-12 09:30:00');
INSERT INTO `video` VALUES (5, 'video5.mp4', '音乐制作人', '原创音乐分享，用旋律讲述故事', '2024-01-11 15:20:00');

-- ----------------------------
-- Table structure for video_comment
-- ----------------------------
DROP TABLE IF EXISTS `video_comment`;
CREATE TABLE `video_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_video_name`(`videoName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_comment
-- ----------------------------
INSERT INTO `video_comment` VALUES (1, 'video1.mp4', '旅行爱好者', '这个风景太美了，我也想去这里旅行！拍摄角度很棒！', '2024-01-15 10:30:00');
INSERT INTO `video_comment` VALUES (2, 'video1.mp4', '摄影达人', '光线处理得很好，构图也很专业，学习了！', '2024-01-15 14:20:00');
INSERT INTO `video_comment` VALUES (3, 'video1.mp4', '户外探险家', '这是哪里呀？求具体位置，准备周末去打卡！', '2024-01-16 09:15:00');
INSERT INTO `video_comment` VALUES (4, 'video1.mp4', '风景控', '大自然的魅力真是无穷，看完心情都变好了！', '2024-01-16 16:45:00');
INSERT INTO `video_comment` VALUES (5, 'video1.mp4', '旅行日记', '背景音乐和画面很配，营造的氛围很棒！', '2024-01-17 11:20:00');
INSERT INTO `video_comment` VALUES (6, 'video1.mp4', '追风少年', '无人机拍摄的吗？画面稳定性很好！', '2024-01-18 08:30:00');
INSERT INTO `video_comment` VALUES (7, 'video2.mp4', '美食家小王', '看着就流口水了！这家店在哪里呀？求推荐！', '2024-01-14 12:30:00');
INSERT INTO `video_comment` VALUES (8, 'video2.mpmp4', '吃货大军', '这个色泽太诱人了，感觉能闻到香味！', '2024-01-14 18:45:00');
INSERT INTO `video_comment` VALUES (9, 'video2.mp4', '厨房小白', '看起来不难做，周末试试看，希望成功！', '2024-01-15 13:20:00');
INSERT INTO `video_comment` VALUES (10, 'video2.mp4', '美食侦探', '食材很新鲜，烹饪手法也很专业！', '2024-01-16 10:15:00');
INSERT INTO `video_comment` VALUES (11, 'video2.mp4', '甜品控', '甜度刚好，不会太腻，完美！', '2024-01-16 19:30:00');
INSERT INTO `video_comment` VALUES (12, 'video2.mp4', '健康饮食', '营养搭配很合理，既美味又健康！', '2024-01-17 14:25:00');
INSERT INTO `video_comment` VALUES (13, 'video2.mp4', '夜宵党', '大晚上的看饿了，这就点外卖去！', '2024-01-18 21:10:00');
INSERT INTO `video_comment` VALUES (14, 'video3.mp4', '健身教练李', '动作很标准，核心力量很强！坚持就是胜利！', '2024-01-13 07:30:00');
INSERT INTO `video_comment` VALUES (15, 'video3.mp4', '运动小白', '这个动作我能做吗？看起来有点难啊！', '2024-01-13 16:45:00');
INSERT INTO `video_comment` VALUES (16, 'video3.mp4', '瑜伽达人', '呼吸配合得很好，柔韧性也不错！', '2024-01-14 08:20:00');
INSERT INTO `video_comment` VALUES (17, 'video3.mp4', '跑步爱好者', '有氧无氧结合，训练计划很科学！', '2024-01-15 17:30:00');
INSERT INTO `video_comment` VALUES (18, 'video3.mp4', '健康生活', '运动完记得拉伸哦，避免肌肉酸痛！', '2024-01-16 06:15:00');
INSERT INTO `video_comment` VALUES (19, 'video4.mp4', '宠物医生张', '猫咪很可爱，看起来健康状况很好！', '2024-01-12 09:30:00');
INSERT INTO `video_comment` VALUES (20, 'video4.mp4', '猫奴一枚', '太萌了！我家猫也是这样，天天搞怪！', '2024-01-12 15:20:00');
INSERT INTO `video_comment` VALUES (21, 'video4.mp4', '动物保护', '善待小动物，它们都是我们的朋友！', '2024-01-13 11:45:00');
INSERT INTO `video_comment` VALUES (22, 'video4.mp4', '宠物美容师', '毛发很顺滑，平时护理得不错！', '2024-01-14 10:30:00');
INSERT INTO `video_comment` VALUES (23, 'video4.mp4', '爱猫人士', '这个表情包我收下了，太有戏了！', '2024-01-15 14:15:00');
INSERT INTO `video_comment` VALUES (24, 'video4.mp4', '新手养猫', '求问这是什么品种的猫？好想养一只！', '2024-01-16 08:40:00');
INSERT INTO `video_comment` VALUES (25, 'video5.mp4', '音乐人小陈', '前奏一响就被吸引了，旋律很有记忆点！', '2024-01-11 20:30:00');
INSERT INTO `video_comment` VALUES (26, 'video5.mp4', '耳机党', '音质很棒，用耳机听效果更好！', '2024-01-12 13:45:00');
INSERT INTO `video_comment` VALUES (27, 'video5.mp4', '音乐分享家', '已加入我的歌单，单曲循环中！', '2024-01-13 16:20:00');
INSERT INTO `video_comment` VALUES (28, 'video5.mp4', '创作歌手', '和弦进行很有创意，学习了！', '2024-01-14 11:30:00');
INSERT INTO `video_comment` VALUES (29, 'video5.mp4', '音乐老师', '节奏感很强，适合做背景音乐！', '2024-01-15 09:15:00');
INSERT INTO `video_comment` VALUES (30, 'video5.mp4', '深夜听歌', '深夜听到这首歌，感觉心灵被治愈了！', '2024-01-16 23:45:00');
INSERT INTO `video_comment` VALUES (31, 'video1.mp4', '用户', '66', '2025-11-05 15:53:01');
INSERT INTO `video_comment` VALUES (32, 'video4.mp4', '用户', 'nb', '2025-11-05 16:56:44');

SET FOREIGN_KEY_CHECKS = 1;
