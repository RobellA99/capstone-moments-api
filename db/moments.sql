DROP DATABASE IF EXISTS `moments`;

CREATE DATABASE `moments`;

USE `moments`;

CREATE TABLE `monuments` (
    `id` int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `name` varchar(255) NOT NULL, 
    `location` varchar(255) NOT NULL,
    `latitude` float NOT NULL,
    `longitude` float NOT NULL
);

INSERT INTO `monuments` VALUES 
(1, "Big Ben", "London, UK", 51.5007, -0.1246), 
(2, "Tower of London", "London, UK", 51.5081, -0.0759),
(3, "Buckingham Palace", "London, UK", 51.5014, -0.1419),
(4, "London Eye", "London, UK", 51.5033, -0.1196),
(5, "St Paul's Cathedral", "London, UK", 51.5138, -0.0984),
(6, "Westminster Abbey", "London, UK", 51.4993, -0.1273),
(7, "The Shard", "London, UK", 51.5045, -0.0865),
(8, "Trafalgar Square", "London, UK", 51.5080, -0.1281),
(9, "British Museum", "London, UK", 51.5194, -0.1270),
(10, "Kensington Palace", "London, UK", 51.5059, -0.1886);
