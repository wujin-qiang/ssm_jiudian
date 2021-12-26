/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : ssm_jiudian

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 25/12/2021 18:32:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('A20211204162504467', 'aaa', 'aaa', '小明', '12345678902', '2021-12-04');
INSERT INTO `admin` VALUES ('A20211204162602772', 'admin', 'admin', '老板', '12345678901', '2021-12-04');
INSERT INTO `admin` VALUES ('A20211221225810324', 'bbb', 'bbb', '小红', '12345678903', '2021-12-21');
INSERT INTO `admin` VALUES ('A20211221225828398', 'ccc', 'ccc', '小强', '12345678904', '2021-12-21');
INSERT INTO `admin` VALUES ('A20211221225909617', 'ddd', 'ddd', '小刚', '12345678905', '2021-12-21');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `articleid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contents` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hits` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`articleid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('A20211205163958515', '首家青山酒店落户', 'upfiles/20211205165608.PNG', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><big>本酒店定位于中高端轻奢品牌，致力于为新中产、精英商旅人士及亲自家庭等人群，营造优雅舒适的氛围，提供有温度、智慧化的人性化服务。</big></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><big>本酒店位于市中心黄金地段，距离商圈仅一步之遥，周边景点徒步几分钟即可到达，周边拥有5条地铁线，距离各大机场、高铁站30分钟直达，出行非常便利。</big></span></span></p>\r\n', '2021-12-05', '11');
INSERT INTO `article` VALUES ('A20211206204935614', '亚洲式待客之道的典范', 'upfiles/20211206205019.PNG', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:rgb(94, 81, 77)\">一家融美学与功能于一体的高品质酒店，让每个旅途劳顿的客人都能得到如亲朋般的热情款待。</span></span></p>\r\n\r\n<h4 style=\"text-align:center\"><strong><u><span style=\"font-size:18px\">把亚洲带向世界</span></u></strong></h4>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\">我们将亚洲传统文化带向全球，以酒店为载体，在此与世界分享我们深厚的文化积淀。我们从丰富多元的文化中汲取灵感，通过独特的建筑设计和室内设计，生动地呈现每个亚洲城市的精髓与魅力。</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\">此外，我们的服务团队更是通过细致入微的待客服务来展现亚洲式的至善盛情。</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\">作为一个兼具现代亚洲特色和全球视野的集团，我们能更好地了解见多识广的成熟消费者以及他们的偏好，并以创新解决方案满足其需求。</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\">这种以客人为中心的服务理念是青山酒店的基石，使我们在亚洲酒店行业中独树一帜。</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-12-06', '4');
INSERT INTO `article` VALUES ('A20211206205441724', '以人为本的企业文化', 'upfiles/20211206205438.PNG', '<h2 style=\"text-align: center;\"><span style=\"font-size:20px\"><u><strong><span style=\"font-family:arial,helvetica,sans-serif\">贴心周到的服务理念</span></strong></u></span></h2>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">在青山酒店，我们发自内心的关怀他人、了解客人的期望并提供周到的服务。我们重视与宾客、与同事之间的情感纽带，这些纽带伴随着强烈的归属感，使人们一次又一次地惠顾我们的服务<span style=\"color:rgb(19, 19, 19)\">。</span></span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">青山酒店细致入微的服务理念体现在员工之间的日常相处，也体现在员工对客人的一举一动之中。他们以真诚的服务为宾客带来喜出望外的体验。他们不仅倾情付出，而且淋漓尽致地演绎了青山酒店的传奇魅力。</span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">青山酒店的成功归功于每一位员工的奉献与投入，他们充满真诚、热情和人性温暖的服务使青山酒店成为亚洲式待客之道的代名词。</span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">随着集团的不断成长，我们致力于通过挖掘员工潜力来为他们创造价值。我们将与员工共同努力，帮助他们实现职业发展的理想。</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-12-06', '4');
INSERT INTO `article` VALUES ('A20211221214700178', '喜迎2022味赏派对', 'upfiles/20211221214552.PNG', '<p style=\"text-align: center;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(33, 37, 41)\">除夕之夜，相约亲朋挚友共享滋味晚餐，在愉悦享受中告别2021年。在品尝多道精致佳肴的同时，您还可自选升级悠享三小时香槟或指定饮品无限畅饮，让盛宴更尽情尽兴。晚餐后，欢迎参加味赏非同凡响的倒数活动，穿上大会指定的黑色领带派对晚装，在炽热的气氛中举杯迎接2022年。</span></span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:18px\"><span style=\"color:rgb(33, 37, 41); font-family:avenirltstd-roman\">如需查询或预订，请致电12345678901。</span></span></p>\r\n', '2021-12-21', '2');
INSERT INTO `article` VALUES ('A20211221214901352', '“传奇之上”住宿礼遇', 'upfiles/20211221214858.PNG', '<p style=\"text-align: center;\"><span style=\"color:rgb(33, 37, 41); font-family:avenirltstd-roman; font-size:16px\">入住青山酒店，在结合中西优雅的瑰丽天地，享受尊贵不凡的住宿体验。现凡预订，每晚每间房即可尊享特殊服务，让您随心细意探索各式高尚餐饮体验，悠享水疗护理的贴心呵护，或在房内用餐兼享视听娱乐。您还可以漫步在景致迷人的绿茵胜境花园及拍照留影，缔造精彩难忘的度假时光。惊喜难得的优惠，快来预订吧。</span></p>\r\n', '2021-12-21', '2');
INSERT INTO `article` VALUES ('A20211221215129697', '品味晨光时刻', 'upfiles/20211221215127.PNG', '<p><span style=\"color:rgb(33, 37, 41); font-family:avenirltstd-roman; font-size:16px\">入住尽显 Karl Lagerfeld（卡尔‧拉格斐）摇滚时尚的房间，经过一晚酣睡后，再以丰富的半自助早餐迎接美好新一天。摩登高雅的味赏提供一系列环球美食，呈献多元化的滋味选择，为您在晨光时刻送上味觉惊喜。用餐后，您还可以漫步在景致迷人的绿茵胜境花园，在和煦阳光下尽情放松。如此写意难忘的旅程，快来预定吧。</span></p>\r\n', '2021-12-21', '1');
INSERT INTO `article` VALUES ('A20211221215612344', '味赏乐聚优惠', 'upfiles/20211221215528.PNG', '<p><span style=\"font-size:16px\"><span style=\"color:rgb(33, 37, 41); font-family:avenirltstd-roman\">夕阳无限好之时，正是灿烂欢乐时光的开始。&ldquo;</span><em>味赏──欢乐时光</em><span style=\"color:rgb(33, 37, 41); font-family:avenirltstd-roman\">&rdquo;为您精选一系列特色鸡尾酒、葡萄佳酿和佐酒小吃优惠，缔造醉人品味享受。在每个星期三的&ldquo;</span><em>女士之夜</em><span style=\"color:rgb(33, 37, 41); font-family:avenirltstd-roman\">&rdquo;，您更可以相约闺蜜畅谈共聚，获赠免费迎宾饮品和葡萄酒一瓶。如果您喜欢热情的音乐节奏，千万不可以错过每个星期五及六展开的&ldquo;味赏DJ之夜&rdquo;，在现场打碟音乐带领下，更尽情尽兴享受欢乐时光。</span></span></p>\r\n', '2021-12-21', '5');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `booksid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordercode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`booksid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('B20211206170825442', 'ROS20211206170738', '客房收入', '458.0', '2021-12-06');
INSERT INTO `books` VALUES ('B20211206171454232', 'FOS20211206171358', '餐饮收入', '70.0', '2021-12-06');
INSERT INTO `books` VALUES ('B20211206171550486', 'ROS20211206171224', '客房收入', '298.0', '2021-12-06');
INSERT INTO `books` VALUES ('B20211206173037803', 'ROS20211206171949', '客房收入', '399.0', '2021-12-06');
INSERT INTO `books` VALUES ('B20211206173041362', 'ROS20211206171923', '客房收入', '399.0', '2021-12-06');
INSERT INTO `books` VALUES ('B20211218210302228', 'ROS20211207160750', '客房收入', '4788.0', '2021-12-18');
INSERT INTO `books` VALUES ('B20211221225224403', 'FOS20211216200510', '餐饮收入', '66.0', '2021-12-21');
INSERT INTO `books` VALUES ('B20211223200116201', 'ROS20211223200050', '客房收入', '458.0', '2021-12-23');
INSERT INTO `books` VALUES ('B20211223211813105', 'ROS20211223211739', '客房收入', '298.0', '2021-12-23');
INSERT INTO `books` VALUES ('B20211223212012222', 'FOS20211223211937', '餐饮收入', '188.0', '2021-12-23');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cartid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `begindate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enddate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carroomflag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cartid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('C20211225171352602', 'U20211204161812936', 'R20211205164533420', '458', '2021-12-25', '2021-12-16', '2021-12-25', NULL);
INSERT INTO `cart` VALUES ('C20211225181030363', 'U20211204162035531', 'R20211205164453553', '458', '2021-12-25', '2021-12-25', '2021-12-25', '1');
INSERT INTO `cart` VALUES ('C20211225182539973', 'U20211204162035531', 'R20211205102923639', '399', '2021-12-25', '2021-12-22', '2021-12-25', '1');
INSERT INTO `cart` VALUES ('C20211225182925979', 'U20211204162035531', 'R20211205164636164', '458', '2021-12-25', '2021-12-25', '2021-12-25', '1');
INSERT INTO `cart` VALUES ('C20211225183126987', 'U20211204161812936', 'R20211205164606875', '458', '2021-12-25', '2021-12-24', '2021-12-25', '1');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `cateid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `catename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memo` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cateid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('C20190313035539392', '标准双床房', '不可加床');
INSERT INTO `cate` VALUES ('C20211204203501123', '高级大床房', '不可加床');
INSERT INTO `cate` VALUES ('C20211204212915232', '豪华大床房', '不可加床');
INSERT INTO `cate` VALUES ('C20211205164258561', '亲子套房', '主题房');

-- ----------------------------
-- Table structure for fcart
-- ----------------------------
DROP TABLE IF EXISTS `fcart`;
CREATE TABLE `fcart`  (
  `fcartid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foodsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fcartid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fcart
-- ----------------------------
INSERT INTO `fcart` VALUES ('F20211206203035827', 'U20211204162138725', 'F20211205200052720', '2', '28', '2021-12-06');
INSERT INTO `fcart` VALUES ('F20211206203249950', 'U20211204162138725', 'F20211205200014763', '1', '25', '2021-12-06');
INSERT INTO `fcart` VALUES ('F20211218210210678', 'U20211218205946378', 'F20211205181344755', '1', '28', '2021-12-18');
INSERT INTO `fcart` VALUES ('F20211218210220203', 'U20211218205946378', 'F20211205200014763', '1', '25', '2021-12-18');
INSERT INTO `fcart` VALUES ('F20211223212800149', 'U20211223211707707', 'F20211205181538731', '1', '48', '2021-12-23');
INSERT INTO `fcart` VALUES ('F20211224110250551', 'U20211204161812936', 'F20211205175259838', '1', '98', '2021-12-24');

-- ----------------------------
-- Table structure for fcate
-- ----------------------------
DROP TABLE IF EXISTS `fcate`;
CREATE TABLE `fcate`  (
  `fcateid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fcatename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memo` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fcateid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fcate
-- ----------------------------
INSERT INTO `fcate` VALUES ('F20190313040141613', '川菜', '中国八大菜系之一、中华料理集大成者。');
INSERT INTO `fcate` VALUES ('F20190313043108289', '鲁菜', '中国八大菜系之一，是黄河流域烹饪文化的代表。');
INSERT INTO `fcate` VALUES ('F20211205172239625', '闽菜', '中国八大菜系之一，历经中原汉族文化和闽越族文化的混合而形成。');
INSERT INTO `fcate` VALUES ('F20211205193701544', '粤菜', '中国四大菜系、八大菜系之一');
INSERT INTO `fcate` VALUES ('F20211205195538382', '甜点', '甜点');

-- ----------------------------
-- Table structure for fitems
-- ----------------------------
DROP TABLE IF EXISTS `fitems`;
CREATE TABLE `fitems`  (
  `fitemsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordercode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foodsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fitemsid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fitems
-- ----------------------------
INSERT INTO `fitems` VALUES ('1a13f2d3abdf435b8110389f735ad4e7', 'FOS20211206171358', 'F20211205181344755', '1', '28');
INSERT INTO `fitems` VALUES ('1f3ccd48b27e4fa5a24bd10980289951', 'FOS20211223181247', 'F20211205175521690', '1', '28');
INSERT INTO `fitems` VALUES ('24e97b4f53434566abbed6a8548a8f18', 'FOS20211223195854', 'F20211205194338497', '3', '58');
INSERT INTO `fitems` VALUES ('3387eda038dc485892fc4d38bfe806a7', 'FOS20211223211937', 'F20211205195821257', '1', '12');
INSERT INTO `fitems` VALUES ('3858725b45d046a092da7b24a2de2a33', 'FOS20211216200510', 'F20211205195704706', '3', '18');
INSERT INTO `fitems` VALUES ('56919e8220ab412dbf5dbcc6b5f79ed3', 'FOS20211223181247', 'F20211205181721647', '2', '25');
INSERT INTO `fitems` VALUES ('73dd0a11b03e40e5a78c248d9ab6fc3d', 'FOS20211223195854', 'F20211205194222714', '1', '55');
INSERT INTO `fitems` VALUES ('78d6d96ca45541f9a00e4c217b48095b', 'FOS20211216200510', 'F20211205200119501', '1', '12');
INSERT INTO `fitems` VALUES ('a0957e23a7954779ad8ce723f92b28aa', 'FOS20211223195912', 'F20211205200014763', '1', '25');
INSERT INTO `fitems` VALUES ('cf231c693d7f4a8a8e1d70734e9f0c4b', 'FOS20211223195912', 'F20211205200014763', '1', '25');
INSERT INTO `fitems` VALUES ('d383dddeb9cb4367b61570568b70d876', 'FOS20211206171358', 'F20211205195704706', '1', '18');
INSERT INTO `fitems` VALUES ('d69566a502ac40ca96c692fb6fbc0b5d', 'FOS20211223211937', 'F20211205193837647', '2', '88');
INSERT INTO `fitems` VALUES ('d7782cd027a543399f059cf39cc33c01', 'FOS20211206174446', 'F20211205195945194', '3', '5');
INSERT INTO `fitems` VALUES ('e632c8e7dc744b089f4f24ceb3fe8cb5', 'FOS20211206171358', 'F20211205200119501', '2', '12');
INSERT INTO `fitems` VALUES ('ebd9010ec269432e9f3725c449ee0f97', 'FOS20211206174446', 'F20211205195625417', '1', '30');
INSERT INTO `fitems` VALUES ('fb1dc6449a3c44548982aa7143189791', 'FOS20211223181247', 'F20211205172853717', '1', '128');

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods`  (
  `foodsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foodsname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fcateid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sellnum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contents` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`foodsid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES ('F20211205172536635', '佛跳墙', 'F20211205172239625', 'upfiles/20211205172333.PNG', '198', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">佛跳墙又名福寿全，是福建省福州市的一道特色名菜，属闽菜系。相传，该菜品是在清道光年间由福州聚春园菜馆老板郑春发研制出来的，又据费孝通先生记，发明此菜者乃一帮要饭的乞丐。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">佛跳墙通常选用鲍鱼、海参、鱼唇、牦牛皮胶、杏鲍菇、蹄筋、花菇、墨鱼、瑶柱、鹌鹑蛋等汇聚到一起，加入高汤和福建老酒，文火煨制而成。<br />\r\n成菜后，软嫩柔润，浓郁荤香，又荤而不腻，味中有味。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205172640698', '肉粽', 'F20211205172239625', 'upfiles/20211205172613.PNG', '10', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">肉粽是福建泉州传统的地方风味小吃，端午节食俗。其选料讲究，配料多样，制作精细，历史悠久，味道香甜，油润不腻，色泽红黄闪亮，以独有的风味，享誉海内外。清末民国期间，市区</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">有个&ldquo;肉粽银&rdquo;，肉粽最为出名，还有市区浮桥头观音亭的许牛制的肉粽，顾客满座。端午节时泉州家家户户备有肉粽，供奉神明先祖。端午节吃肉粽、赛龙舟是泉州传统的风俗。泉州肉粽</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">富有引人品尝的魅力。肉粽以香菇、虾米、芋头粒、栗子、猪肉(或鸡肉)、糯米 等为原料。制作时先把糯米浸后晾干，拌上卤汤、葱头油，放在锅里炒得又干又松，再与红烧猪肉、生栗子搅</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">拌均匀，用竹叶包好煮烂。肉粽要趁热食用，吃时配上沙茶酱、蒜茸、红辣酱等调料，更是美味可口。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205172716633', '蚵仔煎', 'F20211205172239625', 'upfiles/20211205172701.PNG', '20', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">蚵仔煎,普通话译作&ldquo;海蛎煎&rdquo;，是一道常见的家常菜，起源于福建沿海，台湾，潮汕等地区经典的传统小吃之一。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205172803708', '扁肉', 'F20211205172239625', 'upfiles/20211205172744.PNG', '15', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">福建扁肉是一道菜品，主料是瘦肉、扁肉皮，辅料是鸡蛋、酱油、鸡精、蒜。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205172853717', '八宝红鲟饭', 'F20211205172239625', 'upfiles/20211205172827.PNG', '128', '1', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">八宝红鲟饭是一道福建的特色传统名点，系福州市传统佳肴，属于闽菜系-福州菜。以红鲟（青蟹）为主附于鸭肉肫等八种原料与糯米一起蒸熟而得名。它具有治疗营养不良、调理、健脾开胃</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">、调理、清热去火调理的功效。这道味口味咸鲜味，软、糯、香、醇，独具风味。主要用料是糯米和红膏青蟹。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205172935176', '爆炒双脆', 'F20211205172239625', 'upfiles/20211205172914.PNG', '58', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">爆炒双脆是福建省福州市的一道传统地方名菜，属于闽菜系-福州菜。该菜品以海蜇皮和猪腰为主料，其口感脆爽，造型美观，是福州宴席上的佳肴，也是一道可口的家常菜；该菜品在做法上</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">讲究刀工和火候，切猪腰时下刀要迅速而富有节奏，成菜才会既鲜脆又美观。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205173004484', '荔枝肉', 'F20211205172239625', 'upfiles/20211205172947.PNG', '38', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">荔枝肉是福建省福州市，莆田市等地的一道特色传统名菜，属于闽菜系；该菜品已有二三百年历史。因原料中有白色的荸荠和切成十字花刀的猪肉，烹调后因外形型似荔枝而得名。<br />\r\n制法是将猪瘦肉剞上十字花刀，切成斜形块，因剞的深度、宽度均匀恰当，炸后卷缩成荔枝形，佐以红糟、香醋、白糖、酱油、麻油、湿淀粉等调料即成。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205173037366', '长汀豆腐干', 'F20211205172239625', 'upfiles/20211205173017.PNG', '25', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">长汀豆腐干是以优质大豆，大茴，小茴，甘草，肉桂，五香粉为主料制作的菜品。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205173113305', ' 面线糊', 'F20211205172239625', 'upfiles/20211205173058.PNG', '15', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">面线糊起源于福建泉州，是福建闽南地区和台湾地区的一道风味小吃，该菜品呈糊状，是由细面线、地瓜粉制作成。该菜品的做法是先将水煮开，放入番薯粉和调料、面线。该菜品一般为早</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">餐食用，可以当做点心和夜宵，也可以就着油条跟马蹄酥吃，味道鲜美，清甜爽滑，具有闽南地方风味。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205173145648', '沙茶面', 'F20211205172239625', 'upfiles/20211205173125.PNG', '18', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">沙茶面是福建省厦门市的一道传统小吃，属于闽菜；沙茶面是源自华侨带回的东南亚菜系，主要原材料是沙茶酱和高汤，口味咸鲜微辣，有点甜。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175135495', '一品豆腐', 'F20190313043108289', 'upfiles/20211205175107.PNG', '38', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">一品豆腐，是一道经典的特色名菜，属于孔府菜。此菜白细鲜嫩，营养丰富而为人所喜食。冯骥才先生曾说过养育龙种，豆腐有功。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175222182', ' 葱烧海参', 'F20190313043108289', 'upfiles/20211205175157.PNG', '68', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">葱烧海参是山东省胶东地区（指烟台、青岛等地）的一道特色名菜，属于鲁菜系，该菜品也是青岛十大特色名菜之一；该菜品从山东源入，以水发海参和大葱为主料，其海参清鲜，柔软香滑，葱段香浓，食后无余汁。是&ldquo;古今八珍&rdquo;之一，葱香味醇，营养丰富，滋肺补肾。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175259838', '三丝鱼翅', 'F20190313043108289', 'upfiles/20211205175244.PNG', '98', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">三丝鱼翅，是山东省的地方传统名菜，属于鲁菜系。三丝鱼翅以鱼翅为主要材料。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175329288', '白扒四宝', 'F20190313043108289', 'upfiles/20211205175314.PNG', '58', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">白扒四宝，是一道色香味俱全的传统名菜。主要食材有水发广肚、炖鲍鱼、鸡脯肉等。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175417994', '糖醋黄河鲤鱼', 'F20190313043108289', 'upfiles/20211205175343.PNG', '68', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">糖醋黄河鲤鱼是山东济南的传统名菜。济南北临黄河，故烹饪所采用的鲤鱼就是黄河鲤鱼。此鱼生长在黄河深水处，头尾金黄，全身鳞亮，肉质肥嫩，是宴会上的佳品。《济南府志》上早有&ldquo;黄河之鲤，南阳之蟹，且入食谱&rdquo;的记载。据说：&ldquo;糖醋黄河鲤鱼&rdquo;最早始于黄河重镇&mdash;&mdash;洛口镇。这里的厨师喜用活鲤鱼制作此菜，并在附近地方有些名气，后来传到济南。厨师在制作时，先将鱼身割上刀纹，外裹芡糊，下油炸后，头尾翘起，再用著名的洛口老醋加糖制成糖醋汁，浇在鱼身上。此菜香味扑鼻，外脆里嫩，且带点酸，不久便成为名菜馆中的一道佳肴。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175451260', '九转大肠', 'F20190313043108289', 'upfiles/20211205175429.PNG', '38', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">九转大肠原名为红烧大肠，是山东省济南市的一道传统名菜，属于鲁菜系；该菜品在清朝光绪初年由济南九华楼酒楼店主首创；其做法是先将猪大肠经水焯后油炸，再灌入十多种作料，用微火炮制而成。成菜后，酸、甜、香、辣、咸五味俱全，色泽红润，质地软嫩。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175521690', '扒原壳鲍鱼', 'F20190313043108289', 'upfiles/20211205175502.PNG', '28', '1', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">扒原壳鲍鱼，是一道山东青岛沿海地区的传统名菜。此菜色香味俱佳，鲍鱼肉质细嫩，味道鲜美，再浇以芡汁，透明油亮。将鲍鱼肉制熟后，又分别盛在各个原来的壳内，它的造型美观又名贵。是一种造型和盛器双重配合的杰作，原壳置原味，面目一新。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175550908', '油焖大虾', 'F20190313043108289', 'upfiles/20211205175535.PNG', '68', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">油焖大虾是山东省的一道特色名菜，属于鲁菜；该菜品的主要食材为清明前渤海湾的大对虾，使用鲁菜特有的油焖技法。这是一道历史悠久的名菜，鲜香甜咸四种味道相辅相成，回味无穷。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">近些年流行的油焖大虾是起源于湖北潜江的鄂菜，使用的是淡水的鳌虾（俗称小龙虾）制作，与鲁菜的油焖大虾不同。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175620895', '醋椒鱼', 'F20190313043108289', 'upfiles/20211205175604.PNG', '58', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">醋椒鱼是山东济南地区特色传统名菜之一，处于一道传统鲁菜，另外北京菜中也有此菜。因其颜色素雅、鱼肉鲜嫩、汤味浓郁、微带酸辣，深受百姓喜爱。是平常百姓餐桌上和招待宾朋的美味佳肴。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205175701895', ' 芙蓉鸡片', 'F20190313043108289', 'upfiles/20211205175641.PNG', '48', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">芙蓉鸡片，是一道鲁菜名菜，成名后淮扬菜、川菜等菜系都有该菜品。通常都是以鸡脯肉、鸡蛋等食材制作而成。成菜后，肉片色泽洁白，软嫩滑香，形如芙蓉。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181344755', '鱼香肉丝', 'F20190313040141613', 'upfiles/20211205181326.PNG', '28', '1', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">鱼香肉丝，是四川的一道特色名菜，该菜品以泡辣椒、子姜、大蒜、糖和醋炒制猪里脊肉丝而成，由民国时期的一位川菜大厨所创制，相传灵感来自泡椒肉丝。<br />\r\n鱼香肉丝是一道著名川菜，其咸鲜酸甜兼备，葱姜蒜香浓郁，其味是调味品调制而成，此法源出于四川民间独具特色的烹鱼调味方法，而今已广泛用于川味的熟菜中。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181424865', '宫保鸡丁', 'F20190313040141613', 'upfiles/20211205181400.PNG', '38', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">宫保鸡丁，是一道闻名中外的特色传统名菜，在鲁菜、川菜、贵州菜中都有收录，其原料、做法有差别。该菜式的起源与鲁菜中的酱爆鸡丁、贵州菜中的胡辣子鸡丁有关，后被清朝山东巡抚、四川总督丁宝桢改良发扬，形成了一道新菜式&mdash;&mdash;宫保鸡丁，并流传，此道菜也被归纳为北京宫廷菜。之后宫保鸡丁也流传到国外。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">宫保鸡丁选用鸡肉为主料，佐以花生米、辣椒等辅料烹制而成；红而不辣、辣而不猛、香辣味浓、肉质滑脆；其入口鲜辣，鸡肉的鲜嫩可以配合花生的香脆。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181507939', '水煮肉片', 'F20190313040141613', 'upfiles/20211205181452.PNG', '38', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">水煮肉片，是以猪里脊肉为主料的一道地方新创名菜，起源于自贡，发扬于西南，属于川菜中著名的家常菜。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181538731', '夫妻肺片', 'F20190313040141613', 'upfiles/20211205181522.PNG', '48', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">夫妻肺片是四川省成都市的一道传统名菜，属于川菜系。该菜品由郭朝华、张田政夫妻创制而成，通常以牛头皮、牛心、牛舌、牛肚、牛肉为主料，进行卤制，而后切片。再配以辣椒油、花椒面等辅料制成红油浇在上面。其制作精细，色泽美观，质嫩味鲜，麻辣浓香，非常适口。&nbsp;</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181615681', '麻婆豆腐', 'F20190313040141613', 'upfiles/20211205181550.PNG', '29', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">麻婆豆腐，是四川省传统名菜之一，属于川菜，主料为：豆腐，辅料为：蒜苗、牛肉沫(其他肉也可以)，调料为：豆瓣、辣椒面和花椒面、酱油、生抽、老抽、糖、淀粉等，麻来自花椒，辣来自辣椒面，此菜成菜麻、辣、鲜、香、烫、翠、嫩、酥，将川菜麻辣味型的特点展现的淋漓尽致，如今，麻婆豆腐远渡重洋，在美国、加拿大、英国、法国、越南、新加坡、马来西亚、日本、澳大利亚等国安家落户，从一味家常小菜一跃而登上大雅之堂，成了国际名菜。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181651240', '回锅肉', 'F20190313040141613', 'upfiles/20211205181628.PNG', '45', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">回锅肉，是一种四川传统菜式中家常（味型）菜肴的代表菜肴之一，属于川菜系列。制作原料主要有猪后臀肉（二刀肉）、青椒、蒜苗等，口味独特，色泽红亮，肥而不腻。古代时期称作油</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">爆锅，四川地区大部分家庭都会制作。所谓回锅，就是再次烹调的意思。回锅肉在川菜中的地位是非常重要的，回锅肉一直被认为是川菜之首，川菜之化身，提到川菜必然想到回锅肉。</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">回锅肉色香味俱全，是下饭菜中大部分人会选的菜。配料各有不同，除了蒜苗（青蒜）还可以用彩椒，洋葱，韭菜，锅盔等来制作回锅肉，&ldquo;家常&rdquo;顾名思义，&ldquo;调料家家常有之意，&rdquo;故每</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">一家制作出的味道都不相同，这一特性，也是赋予了回锅肉这道菜独特的魅力。</span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181721647', '泡椒凤爪', 'F20190313040141613', 'upfiles/20211205181705.PNG', '25', '2', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">泡椒凤爪属川菜小吃类，是起源于重庆的民间独特美食。以酸辣爽口、皮韧肉香而著称。泡椒凤爪既能登大雅之堂，也为普通老百姓所喜爱。此款美食具有开胃生津、促进血液循环的功效。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181758726', '口水鸡', 'F20190313040141613', 'upfiles/20211205181734.PNG', '46', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">口水鸡是四川省达州市的一道传统名菜，属于川菜，该菜品佐料丰富，集麻辣鲜香嫩爽于一身。在烹制时，煮鸡用的汤料很有讲究，需要恰到好处，这样可以最大限度地保存鸡的可溶性蛋白，增加鸡肉的鲜美程度，又能具备其特有的香型和滋味。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">口水鸡是一道凉菜，该菜品佐料丰富，集麻辣鲜香嫩爽于一身。有&ldquo;名驰巴蜀三千里，味压江南十二州&rdquo;的美称。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181837655', '香辣虾', 'F20190313040141613', 'upfiles/20211205181816.PNG', '68', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">香辣虾是一道汁浓、麻辣味浓，肉质紧韧爽脆的名菜。属于渝派川菜。通常由虾、土豆、香芹、花生米等主料制作而成。精髓在于其肉质和炒制时加上多种特制香料如香芹、花椒、干红椒等的调和，也可以添加自己喜欢的食材如笋片、红薯等，不仅味道鲜美，色泽鲜艳，让人回味无穷。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205181913121', '鸡豆花', 'F20190313040141613', 'upfiles/20211205181854.PNG', '22', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">鸡豆花是四川地区达州市以鸡肉和火腿为原料的特色传统名菜，已有百余年的历史。此菜为四川厨菜的看家菜，成菜颇有特色，为川中清淡醇厚的代表菜之一。讲究&ldquo;吃鸡不见鸡&rdquo;、&ldquo;吃肉不见肉&rdquo;，将荤料制成素形，即人们所谓的&ldquo;以荤托素&rdquo;。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205193755987', ' 白斩鸡', 'F20211205193701544', 'upfiles/20211205193728.PNG', '32', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">白斩鸡又叫白切鸡,是一道中华民族特色菜肴，是一道经典的粤菜,后来在南方菜系中普遍存在。始于清代的民间酒店，因烹鸡时不加调味白煮而成，食用时随吃随斩，故称&ldquo;白斩鸡&rdquo;。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">白斩鸡形状美观，皮黄肉白，肥嫩鲜美，滋味异常鲜美，十分可口。肉色洁白皮带黄油，具有葱油香味，葱段打花镶边，食时佐以姜蓉、蒜泥、酱油，保持了鸡肉的鲜美、原汁原味，食之别有风味。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205193837647', '烧鹅', 'F20211205193701544', 'upfiles/20211205193809.PNG', '88', '2', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">烧鹅是广东省的一道特色美食，属粤菜系，烧鹅源于烤鸭.鹅以乌鬃鹅为优，去翼、脚、内脏的整鹅，吹气，涂五香料，缝肚，滚水烫皮，过冷水，糖水匀皮，晾风而后腌制，最后挂在烤炉里或明火上转动烤成，斩件上碟，便可进食。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">烧鹅色泽金红，味美可口。深圳公明烧鹅因色香味俱佳早在民国二十八年就名扬海内外，属于如今光明区公明上村的一项特色传统手工美食。 广东地区著名的烧鹅如广州市黄埔区长洲岛上的&ldquo;深井烧鹅&rdquo;，以及江门市新会区古井镇的&ldquo;古井烧鹅&rdquo;。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205193917595', '烤乳猪', 'F20211205193701544', 'upfiles/20211205193854.PNG', '145', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">烤乳猪是广州最著名的特色菜，并且是&ldquo;满汉全席&rdquo;中的主打菜肴之一。早在西周时此菜已被列为&ldquo;八珍&rdquo;之一，那时称为&ldquo;炮豚&rdquo;。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205193952480', '蜜汁叉烧', 'F20211205193701544', 'upfiles/20211205193930.PNG', '32', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">蜜汁叉烧，是香港十大经典名菜之一，也是广东省传统名菜之一，属于粤菜系。&ldquo;叉烧&rdquo;是从&ldquo;插烧&rdquo;发展而来的。主要以猪肉(瘦)、叉烧酱、蚝油、蒜、生抽、料酒、蜂蜜、白糖、花生油为原材料制作而成。因一只猪，只有两条里脊，人们便想出插烧之法。久而久之插烧之名便被叉烧所替代。具有补肾养血，滋阴润燥和有增加记忆力和健脑的功效。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205194028773', '上汤焗龙虾', 'F20211205193701544', 'upfiles/20211205194006.PNG', '138', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">上汤焗龙虾是一道色香味俱全的传统名菜，属于粤菜系。此菜以龙虾为主料，配以高汤制成的一道海鲜美食。本品肉质洁白细嫩，味道鲜美，蛋白质含量高，脂肪含量低，营养丰富。特别适合滋补食用。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205194107907', '佛手排骨', 'F20211205193701544', 'upfiles/20211205194041.PNG', '78', '0', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">佛手排骨，是广东省传统的特色名菜，属于粤菜系。特色佳肴，形似佛手，外香里嫩，鲜美可口。先将排骨拆枝脱肉，排骨枝用刀剁成每枝5厘米长，再把脱出来的排骨肉、瘦肉及肥肉、虾仁肉、荸荠、方鱼、生葱、红辣椒，分别用刀改切后拌在一起，放在砧板用刀剁成茸后，加入精盐、味精、麻油、川椒末拌匀，用手把肉茸分别镶在排骨枝上捏成20枝佛手状，沾一干面粉，再将面粉压实。将鸭蛋磕开，打成蛋液，然后把佛手状的排骨一枝一枝用鸭蛋液蘸过，再放入油鼎中用温油炸至熟透即成。配甜酱2碟上席。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205194155508', '护国菜', 'F20211205193701544', 'upfiles/20211205194119.PNG', '23', '0', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">护国菜是一道广东潮汕地区的特色传统特色菜式，属于潮菜。相传在公元1278年，宋朝最后一个皇帝――赵昺逃到潮州，寄宿在一座深山古庙里，庙中僧人听说是宋朝的皇帝，对他十分恭敬，看到他一路上疲劳不堪，又饥又饿，便在自己的一块番薯地，采摘了一些新鲜的番薯叶子，去掉苦叶，制成汤菜。少帝正饥渴交加，看到这菜碧绿清香，软滑鲜美。吃后倍觉爽口，于是大加赞赏。宋少帝看到庙中僧人为了保护自己，保护宋朝，在无米无菜之际，设法为他制做了这碗汤菜。十分感动，于是就封此菜为&ldquo;护国菜&rdquo;，一直延传。广州和潮州地区，许多菜馆都有此菜供应。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205194222714', '芙蓉虾', 'F20211205193701544', 'upfiles/20211205194207.PNG', '55', '1', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">芙蓉虾是一道色香味俱全的名菜，属于粤菜系。主料为大虾、鸡蛋等。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205194251685', '鲍汁扣辽参', 'F20211205193701544', 'upfiles/20211205194235.PNG', '95', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">鲍汁扣辽参是广东省传统名菜之一，属于粤菜菜系。主要食材是刺参、鲍汁。鲍汁是源于粤菜，已经在全国各菜系得到普遍应用的一种调味料。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205194338497', '虾饺', 'F20211205193701544', 'upfiles/20211205194322.PNG', '58', '3', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">虾饺是广东省广州市的一种特色小吃，属于粤菜系，该菜品始创于20世纪初广州市郊伍村五凤乡的一间家庭式小茶楼，已经有百年历史；传统的虾饺是半月形、蜘蛛肚共有十二褶的，馅料有虾，有肉，有笋，味道鲜美爽滑，美味可口。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195625417', '冰糖木瓜炖雪蛤', 'F20211205195538382', 'upfiles/20211205200150.PNG', '30', '1', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">冰糖木瓜炖雪蛤是一道美味可口的点心，属于粤菜系，主要材料有木瓜、雪蛤膏、鲜奶、水、冰糖等。制作步骤共有5步，含有丰富的蛋白质和维生素。中医认为冰糖具有润肺、止咳、清痰、和去火的作用，雪蛤也是泡制药酒、炖煮补品首选辅料。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195704706', ' 窝蛋奶', 'F20211205195538382', 'upfiles/20211205195642.PNG', '18', '4', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">窝蛋奶是一种简单易做的甜品。它营养价值丰富，入口嫩滑，甜而不腻，很适合做给小朋友们吃。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195750822', '银耳木瓜冰糖水', 'F20211205195538382', 'upfiles/20211205195728.PNG', '25', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">银耳木瓜冰糖水以银耳、木瓜主料制作的药膳。银耳木瓜冰糖水是一道美食，主要食材有银耳、木瓜。其功效有祛除脸部黄褐斑、雀斑、能增强人体的免疫力、有效防止钙的流失等。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195821257', '钵仔糕', 'F20211205195538382', 'upfiles/20211205195805.PNG', '12', '1', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">钵仔糕，是广东省的地方特色传统糕点之一。其主料是粘米粉或澄粉、木薯淀粉，以爽滑可口、口味丰富著称。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195848569', '姜撞奶', 'F20211205195538382', 'upfiles/20211205195833.PNG', '20', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">姜撞奶是广东省广州市的一种特色小吃，是广东珠江三角洲一带汉族传统美食，属于粤菜，该小吃以姜汁和牛奶为主要原料，加工制作而成，姜撞奶味道香醇爽滑，甜中微辣、风味独特且有暖胃表热作用。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195920667', '椰汁西米露', 'F20211205195538382', 'upfiles/20211205195902.PNG', '15', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">椰汁西米露是用椰子、西米、鲜奶制成的一道饮品，香甜爽口，具有健脾，补肺，化痰的功效，有治脾胃虚弱和消化不良的作用，西米还有使皮肤恢复天然润泽的功能。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205195945194', '蛋挞', 'F20211205195538382', 'upfiles/20211205195931.PNG', '5', '3', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">蛋挞，是一种以蛋浆做成馅料的西式馅饼；台湾称为蛋塔，馅料外露的馅饼（相对表面被饼皮覆盖，馅料密封的批派馅饼）；蛋挞即以蛋浆为馅料。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205200014763', '蛋糕', 'F20211205195538382', 'upfiles/20211205195957.PNG', '25', '2', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">蛋糕是一种古老的西点，一般是由烤箱制作的，蛋糕是用鸡蛋、白糖、小麦粉为主要原料。以牛奶、果汁、奶粉、香粉、色拉油、水，起酥油、泡打粉为辅料。经过搅拌、调制、烘烤后制成一种像海绵的点心。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205200052720', '蛋奶酥', 'F20211205195538382', 'upfiles/20211205200033.PNG', '28', '0', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">蛋奶酥，又名舒芙蕾，也有译为梳乎厘，是一种源自法国的烹饪方法。这种特殊的厨艺方法，主要材料包括蛋黄及不同配料拌入经打匀后的蛋白，经烘焙质轻而蓬松。</span></span></p>\r\n');
INSERT INTO `foods` VALUES ('F20211205200119501', ' 班戟', 'F20211205195538382', 'upfiles/20211205200103.PNG', '12', '3', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">班戟，是pancake的粤语音译，是一种以面糊在烤盘或平底锅上烹饪制成的薄扁状饼，又称薄煎饼、热香饼。</span></span></p>\r\n');

-- ----------------------------
-- Table structure for forders
-- ----------------------------
DROP TABLE IF EXISTS `forders`;
CREATE TABLE `forders`  (
  `fordersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordercode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fordersid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of forders
-- ----------------------------
INSERT INTO `forders` VALUES ('F20211206171358555', 'FOS20211206171358', 'U20211204161812936', '70.0', '2021-12-06', '已结算');
INSERT INTO `forders` VALUES ('F20211206174446663', 'FOS20211206174446', 'U20211204162035531', '45.0', '2021-12-06', '未结算');
INSERT INTO `forders` VALUES ('F20211216200510362', 'FOS20211216200510', 'U20211204161812936', '66.0', '2021-12-16', '已结算');
INSERT INTO `forders` VALUES ('F20211223181247375', 'FOS20211223181247', 'U20211204161812936', '206.0', '2021-12-23', '未结算');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ordersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordercode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thestart` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theend` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `begindate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ordersid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('05ed696b43574200bd2be93e406a6d3b', 'ROS20211223195701', 'U20211204161812936', 'R20211205102844502', '399', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('0aab0846577f49838789f238eacabcb7', 'ROS20211206170738', 'U20211204161812936', 'R20211205164636164', '458', '2021-12-06', '2021-12-06', '458.0', '结算', NULL);
INSERT INTO `orders` VALUES ('11e8528acfd44a6589b1c087c2289ff8', 'ROS20211224143237', 'U20211204161812936', 'R20190313035642119', '298', '2021-12-24', NULL, NULL, '已入住', NULL);
INSERT INTO `orders` VALUES ('15f80208e5d54845be0ad0875770615f', 'ROS20211225161918', 'U20211204161812936', 'R20211205102844502', '399', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('5161d2c8446e433caca45c00cd67aff6', 'ROS20211225161918', 'U20211204161812936', 'R20211205164533420', '458', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('53cabc3614b54462950bc056b2143ab8', 'ROS20211218211141', 'U20211204162228760', 'R20211204212219457', '358', '2021-12-21', NULL, NULL, '已入住', NULL);
INSERT INTO `orders` VALUES ('5ab94217fd07431eadbe338135eca524', 'ROS20211206171949', 'U20211204162035531', 'R20211204213054370', '399', '2021-12-06', '2021-12-06', '399.0', '结算', NULL);
INSERT INTO `orders` VALUES ('5d9bca924a9b4a02bf13065d4e8fc460', 'ROS20211225182549', 'U20211204162035531', 'R20211205102923639', '399', NULL, NULL, NULL, '未入住', '2021-12-22');
INSERT INTO `orders` VALUES ('753c1729d37d4a8ab3ce77a7bd5276b9', 'ROS20211225161918', 'U20211204161812936', 'R20211205164636164', '458', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('7af79f96991e43caa97805948bf4503e', 'ROS20211225161918', 'U20211204161812936', 'R20211205164606875', '458', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('7d7f86b33766465e8784b3cb324a59d5', 'ROS20211225161918', 'U20211204161812936', 'R20211205164533420', '458', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('b284a9190bcd4453ac29081cf2c18ff8', 'ROS20211225182549', 'U20211204162035531', 'R20211205164453553', '458', NULL, NULL, NULL, '未入住', '2021-12-25');
INSERT INTO `orders` VALUES ('ba11c25d0dfc4cdea705b93749bffd35', 'ROS20211225161918', 'U20211204161812936', 'R20211205164533420', '458', NULL, NULL, NULL, '未入住', NULL);
INSERT INTO `orders` VALUES ('cd362ac5a8634e8d8de63d1a09782ea4', 'ROS20211225174410', 'U20211204162035531', 'R20211205164533420', '458', '2021-12-25', NULL, NULL, '已入住', NULL);
INSERT INTO `orders` VALUES ('d0e67a72481a452599dbc0cf87a2f16c', 'ROS20211206171224', 'U20211204161812936', 'R20190313035600209', '298', '2021-12-06', '2021-12-06', '298.0', '结算', NULL);
INSERT INTO `orders` VALUES ('d25db821a9454fbb9b276d26e60a0434', 'ROS20211207160750', 'U20211204162138725', 'R20211204213054370', '399', '2021-12-07', '2021-12-18', '4788.0', '结算', NULL);
INSERT INTO `orders` VALUES ('d83669f34ed3458486ea8544981ac11a', 'ROS20211225180423', 'U20211204162035531', 'R20211205164453553', '458', '2021-12-25', NULL, NULL, '已入住', '2021-12-24');
INSERT INTO `orders` VALUES ('e2de97f40af94b51ac7bdb516e8a4a42', 'ROS20211225161918', 'U20211204161812936', 'R20211205164533420', '458', '2021-12-25', NULL, NULL, '已入住', NULL);
INSERT INTO `orders` VALUES ('ecaaad87aba346c79004c95ab34ac847', 'ROS20211225183001', 'U20211204162035531', 'R20211205164636164', '458', '2021-12-25', NULL, NULL, '已入住', '2021-12-25');
INSERT INTO `orders` VALUES ('f8240442ce5444f481b9931c49d6a005', 'ROS20211225183127', 'U20211204161812936', 'R20211205164606875', '458', NULL, NULL, NULL, '未入住', '2021-12-24');
INSERT INTO `orders` VALUES ('fa7a7c460cf34215a67a04a2347d9473', 'ROS20211225161918', 'U20211204161812936', 'R20211205164533420', '458', '2021-12-25', NULL, NULL, '已入住', NULL);
INSERT INTO `orders` VALUES ('fe303065db9a4841829b028d41b12353', 'ROS20211225180713', 'U20211204162035531', 'R20211205102923639', '399', '2021-12-25', NULL, NULL, '已入住', '2021-12-25');

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms`  (
  `roomsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomsno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cateid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shebei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `chaoxiang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mianji` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contents` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`roomsid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES ('R20190313035320496', '201', 'C20190313035231664', '219', 'upfiles/20190313035258.jpg', '客房设备客房设备', '南北', '55', '空闲', '<p>201201201201</p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313035350278', '202', 'C20190313035231664', '229', 'upfiles/20190313035329.jpg', '客房设备客房设备', '南北', '55', '空闲', '<p>客房设备</p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313035409545', '203', 'C20190313035231664', '229', 'upfiles/20190313035402.jpg', '客房设备客房设备', '南北', '55', '空闲', '<p>客房设备</p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313035427543', '204', 'C20190313035231664', '229', 'upfiles/20190313035421.jpg', '客房设备客房设备', '南北', '55', '空闲', '<p>客房设备</p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313035600209', '301', 'C20190313035539392', '298', 'upfiles/20211205170042.PNG', '1张大床', '南北', '35-38平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313035616408', '303', 'C20190313035539392', '298', 'upfiles/20211205170112.PNG', '1张大床', '东西', '35-38平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313035642119', '302', 'C20190313035539392', '298', 'upfiles/20211205170126.PNG', '1张大床', '南北', '35-38平方米', '入住', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20190313092548742', '304', 'C20190313035539392', '298', 'upfiles/20211205170140.PNG', '1张大床', '东西', '35-38平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211204205527153', '101', 'C20211204203501123', '358', 'upfiles/20211205170020.PNG', '1张大床', '南北', '25-30平方米', '空闲', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211204211943371', '102', 'C20211204203501123', '358', 'upfiles/20211205170005.PNG', '1张大床', '南北', '25-30平方米', '空闲', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211204212219457', '103', 'C20211204203501123', '358', 'upfiles/20211205165948.PNG', '1张大床', '南北', '25-30平方米', '入住', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211204212355955', '104', 'C20211204203501123', '358', 'upfiles/20211205165919.PNG', '1张大床', '南北', '25-30平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211204213054370', '401', 'C20211204212915232', '399', 'upfiles/20211205165754.PNG', '1张大床', '东西', '28-35平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211204213742880', '402', 'C20211204212915232', '399', 'upfiles/20211205165811.PNG', '1张大床', '南北', '28-35平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211205102844502', '403', 'C20211204212915232', '399', 'upfiles/20211205165829.PNG', '1张大床', '南北', '28-35平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211205102923639', '404', 'C20211204212915232', '399', 'upfiles/20211205165847.PNG', '1张大床', '东西', '28-35平方米', '入住', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-2人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211205164453553', '201', 'C20211205164258561', '458', 'upfiles/20211205165647.PNG', '1张大床 | 1张小床', '南北', '45-48平方米', '入住', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-4人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211205164533420', '202', 'C20211205164258561', '458', 'upfiles/20211205165702.PNG', '1张大床 | 1张小床', '南北', '45-48平方米', '入住', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-4人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211205164606875', '203', 'C20211205164258561', '458', 'upfiles/20211205165715.PNG', '1张大床 | 1张小床', '东西', '45-48平方米', '空闲', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-4人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');
INSERT INTO `rooms` VALUES ('R20211205164636164', '204', 'C20211205164258561', '458', 'upfiles/20211205165731.PNG', '1张大床 | 1张小床', '东西', '45-48平方米', '入住', '<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">可入住1-4人</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">洗浴用品：牙刷 | 牙膏 | 沐浴露 | 洗发水 | 护发素 | 香皂 | 浴帽 | 梳子 | 剃须刀 | 毛巾</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">便利设施：长沙发 | 自动窗帘 | 免费WIFI | 遮光窗帘 | 暖气 | 空气净化器 | 空调 | 衣柜 | 熨衣设备 | 书桌 | 茶几 | 休闲椅 | 餐桌 | 电子秤 | 闹钟 | 洗衣机 | 衣架 | 多种规格电源插座 | 雨伞</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">媒体科技：电视机 | 电话 | 语音留言 | 卫星频道 | 智能门锁</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">浴室：浴缸 | 独立卫生间 | 独立淋浴室 | 智能马桶 | 吹风机 | 浴室化妆放大镜 | 浴巾 | 24小时热水 | 拖鞋 |卫生纸</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">食品饮品：用餐区 | 咖啡壶 | 电热水壶 | 茶包 | 瓶装水</span></span></p>\r\n');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `usersid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regdate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`usersid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('U20211204161812936', '刘一', '111', '刘一', '男', '2000-01-01', '111111111111111111', '98765432101', '2021-12-04');
INSERT INTO `users` VALUES ('U20211204162035531', '陈二', '222', '陈二', '女', '1999-08-18', '111111199908183425', '98765432102', '2021-12-04');
INSERT INTO `users` VALUES ('U20211204162138725', '张三', '333', '张三', '男', '2001-05-11', '123423200105117654', '98765432103', '2021-12-04');
INSERT INTO `users` VALUES ('U20211204162228760', '李四', '444', '李四', '男', '1989-04-15', '294532198904152341', '98765432104', '2021-12-04');

SET FOREIGN_KEY_CHECKS = 1;
