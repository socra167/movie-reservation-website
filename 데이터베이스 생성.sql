CREATE DATABASE `tgv_db` 
/*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

use tgv_db;
-- tgv_db.`user` definition
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_UN` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- tgv_db.movie definition

CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `info` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `director` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `genre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `reservation_rate` varchar(100) DEFAULT NULL,
  `rate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
-- tgv_db.review definition
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` int NOT NULL,
  `uid` int NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `category` varchar(32) default null,
  `is_created` timestamp NULL default current_timestamp,
  PRIMARY KEY (`id`),
  KEY `review_FK` (`mid`),
  KEY `review_FK_1` (`uid`),
  CONSTRAINT `review_FK` FOREIGN KEY (`mid`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_FK_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- tgv_db.ticket definition
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `mid` int NOT NULL,
  `is_created` timestamp NULL default current_timestamp,
  `seat` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_UN` (`mid`,`seat`),
  CONSTRAINT `ticket_FK_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_FK_2` FOREIGN KEY (`mid`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;