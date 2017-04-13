/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-04-13 10:07:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `film`
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `score` decimal(3,1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('2', '肖申克的救赎', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p480747492.jpg', 'https://movie.douban.com/subject/1292052/', '月黑高飞(港)  /  刺激1995(台)', '9.6', '811008');
INSERT INTO `film` VALUES ('3', '这个杀手不太冷', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p511118051.jpg', 'https://movie.douban.com/subject/1295644/', '杀手莱昂  /  终极追杀令(台)', '9.4', '778551');
INSERT INTO `film` VALUES ('4', '霸王别姬', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1910813120.jpg', 'https://movie.douban.com/subject/1291546/', '再见，我的妾  /  Farewell My Concubine', '9.5', '576957');
INSERT INTO `film` VALUES ('5', '阿甘正传', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p510876377.jpg', 'https://movie.douban.com/subject/1292720/', '福雷斯特·冈普', '9.4', '668773');
INSERT INTO `film` VALUES ('6', '美丽人生', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p510861873.jpg', 'https://movie.douban.com/subject/1292063/', '一个快乐的传说(港)  /  Life Is Beautiful', '9.5', '387165');
INSERT INTO `film` VALUES ('7', '千与千寻', 'https://img5.doubanio.com/view/movie_poster_cover/ipst/public/p1910830216.jpg', 'https://movie.douban.com/subject/1291561/', '神隐少女(台)  /  Spirited Away', '9.2', '620659');
INSERT INTO `film` VALUES ('8', '辛德勒的名单', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p492406163.jpg', 'https://movie.douban.com/subject/1295124/', '舒特拉的名单(港)  /  辛德勒名单', '9.4', '358712');
INSERT INTO `film` VALUES ('9', '泰坦尼克号', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p457760035.jpg', 'https://movie.douban.com/subject/1292722/', '铁达尼号(港 / 台)', '9.2', '615327');
INSERT INTO `film` VALUES ('10', '盗梦空间', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p513344864.jpg', 'https://movie.douban.com/subject/3541415/', '潜行凶间(港)  /  全面启动(台)', '9.2', '723538');
INSERT INTO `film` VALUES ('11', '机器人总动员', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p449665982.jpg', 'https://movie.douban.com/subject/2131459/', '瓦力(台)  /  太空奇兵·威E(港)', '9.3', '475265');
INSERT INTO `film` VALUES ('12', '海上钢琴师', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p511146957.jpg', 'https://movie.douban.com/subject/1292001/', '声光伴我飞(港)  /  一九零零的传奇', '9.2', '569800');
INSERT INTO `film` VALUES ('13', '三傻大闹宝莱坞', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p579729551.jpg', 'https://movie.douban.com/subject/3793023/', '三个傻瓜(台)  /  作死不离3兄弟(港)', '9.1', '628023');
INSERT INTO `film` VALUES ('14', '忠犬八公的故事', 'https://img5.doubanio.com/view/movie_poster_cover/ipst/public/p524964016.jpg', 'https://movie.douban.com/subject/3011091/', '忠犬小八(台)  /  秋田犬八千(港)', '9.2', '422096');
INSERT INTO `film` VALUES ('15', '放牛班的春天', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1910824951.jpg', 'https://movie.douban.com/subject/1291549/', '歌声伴我心(港)  /  唱诗班男孩', '9.2', '426183');
INSERT INTO `film` VALUES ('16', '大话西游之大圣娶亲', 'https://img5.doubanio.com/view/movie_poster_cover/ipst/public/p2455050536.jpg', 'https://movie.douban.com/subject/1292213/', '西游记完结篇仙履奇缘  /  齐天大圣西游记', '9.1', '438084');
INSERT INTO `film` VALUES ('17', '教父', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1910907404.jpg', 'https://movie.douban.com/subject/1291841/', 'Mario Puzo&#39;s The Godfather', '9.2', '325042');
INSERT INTO `film` VALUES ('18', '龙猫', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p1910829638.jpg', 'https://movie.douban.com/subject/1291560/', '邻家的豆豆龙  /  隔壁的特特罗', '9.1', '395369');
INSERT INTO `film` VALUES ('19', '楚门的世界', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p480420695.jpg', 'https://movie.douban.com/subject/1292064/', '真人Show(港)  /  真人戏', '9.0', '420318');
INSERT INTO `film` VALUES ('20', '乱世佳人', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1963126880.jpg', 'https://movie.douban.com/subject/1300267/', '飘', '9.2', '257240');
INSERT INTO `film` VALUES ('21', '天堂电影院', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1910901025.jpg', 'https://movie.douban.com/subject/1291828/', '星光伴我心(港)  /  新天堂乐园(台)', '9.1', '294495');
INSERT INTO `film` VALUES ('22', '当幸福来敲门', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p1312700628.jpg', 'https://movie.douban.com/subject/1849031/', '寻找快乐的故事(港)  /  追求快乐', '8.9', '510647');
INSERT INTO `film` VALUES ('23', '触不可及', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1454261925.jpg', 'https://movie.douban.com/subject/6786002/', '闪亮人生(港)  /  逆转人生(台)', '9.1', '344954');
INSERT INTO `film` VALUES ('24', '搏击俱乐部', 'https://img1.doubanio.com/view/movie_poster_cover/ipst/public/p1910926158.jpg', 'https://movie.douban.com/subject/1292000/', '搏击会(港)  /  斗阵俱乐部(台)', '9.0', '387031');
INSERT INTO `film` VALUES ('25', '十二怒汉', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p2173577632.jpg', 'https://movie.douban.com/subject/1293182/', '12怒汉  /  十二怒汉', '9.3', '160154');
INSERT INTO `film` VALUES ('26', '无间道', 'https://img5.doubanio.com/view/movie_poster_cover/ipst/public/p2233971046.jpg', 'https://movie.douban.com/subject/1307914/', 'Infernal Affairs', '9.0', '373086');
