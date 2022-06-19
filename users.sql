-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 avr. 2022 à 12:26
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `users`
--


-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id_customer` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_customer`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id_customer`, `firstName`, `lastName`, `email`, `password`, `phone`) VALUES
(15, 'boch', 'miss', 'boch@gmail.com', 'bochboch', ''),
(17, 'meriem', 'meriem', 'meriem@gmail.com', '12345678', '20202020'),
(19, 'Sonia', 'Hafdhallah', 'sonia@gmail.com', 'sonia2001', '22218197');

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE IF NOT EXISTS `favoris` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_customer` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`id`, `id_product`, `id_customer`) VALUES
(24, 3, 17),
(23, 6, 17);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL,
  `id_customer` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `id_product`, `quantity`, `id_customer`) VALUES
(31, 13, 1, 17),
(30, 6, 1, 17);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `categories` varchar(50) NOT NULL,
  `id_provider` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `nom`, `image`, `price`, `categories`, `id_provider`, `description`, `size`) VALUES
(14, 'Test', '', 11, 'Personel_Gift', 17, 'I always loved the cover of the book so I said to my self what I don\'t create one .', '5 * 5 cm'),
(2, 'Unity Necklace - Gold', 'pictures/catg-4.1.jpg', 25, 'Accessory', 11, 'It\'s symbolizes a singular link between two. A timeless reminder that rests on your neck, a testimony to those who become one.', ''),
(3, 'Unity Necklace - Sliver', 'pictures/catg-4.2.jfif', 25, 'Accessory', 11, 'It\'s symbolizes a singular link between two. A timeless reminder that rests on your neck, a testimony to those who become one.', ''),
(4, 'Personalized notepad ', 'pictures/catg-2.2.jpg', 20, 'Bloc-note', 1, 'Make this notebook even more special by personalizing it the way you want, guarantee no one else will have the same with your own wording. ', 'A5'),
(6, 'Macrame Cushion Cotton', 'pictures/bam.png', 30, 'Home_Decoration', 7, 'Due to its neutral colour tone and traditional macrame knotting and tassels, it is perfect to add texture to your room.', ' 45 x 45 cm'),
(13, 'Happy smiley donuts', 'pictures/donuts.png', 6, 'Personel_Gift', 17, 'All colors are available', '5 * 5 cm'),
(12, 'Infinity Box', 'pictures/infinity.png', 50, 'Personel_Gift', 3, 'A creative and unique way to share photos, memories and notes of special moments in the relationship is this surprise box that you can put together ', '38 pieces');

-- --------------------------------------------------------

--
-- Structure de la table `provider`
--

DROP TABLE IF EXISTS `provider`;
CREATE TABLE IF NOT EXISTS `provider` (
  `id_provider` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `instagram` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_provider`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `provider`
--

INSERT INTO `provider` (`id_provider`, `firstName`, `lastName`, `email`, `instagram`, `description`, `password`, `photo`, `phone`) VALUES
(1, 'maram', 'ben mansour', 'maram@gmail.com', 'Maram_BenMansour', 'I always loved the cover of the book so I said to my self what I don\'t create one .', 'maram', 'pictures/maram.png', ''),
(3, 'Chaima', 'Chetoui', 'Chayma@gmail.com', 'chaimachetoui', 'I love made decoration tools.', 'chaima', 'pictures/chaima.png', ''),
(4, 'Sirine', 'Ben Ali', 'sirine@gmail.com', 'sirine_bnali', 'I love painting.', 'sirine', 'pictures/sirine.png', ''),
(17, 'Salma', 'Belhj', 'salma_belhjj@gmail.com', 'marmoris_artshop', 'I love made unique and accessory', 'salma123', 'pictures/salma.png', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
