DROP DATABASE IF EXISTS `moments`;

CREATE DATABASE `moments`;

USE `moments`;

CREATE TABLE `monuments` (
    `id` int unsigned NOT NULL AUTO_INCREMENT, 
    `name` varchar(255) NOT NULL, 
    `location` varchar(255) NOT NULL,
    `latitude` float NOT NULL,
    `longitude` float NOT NULL
)