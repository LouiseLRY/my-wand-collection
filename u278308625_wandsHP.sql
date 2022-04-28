-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 28 avr. 2022 à 15:51
-- Version du serveur : 10.5.13-MariaDB-cll-lve
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `u278308625_wandsHP`
--

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `firstName` varchar(250) DEFAULT NULL,
  `lastName` varchar(250) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `container` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection`
--

INSERT INTO `collection` (`id`, `firstName`, `lastName`, `price`, `container`, `image`) VALUES
(1, 'Harry', 'Potter', 39.95, 'Ollivander Box', 'Harry.png'),
(3, 'Hermione', 'Granger', 39.95, 'Ollivander Box', 'Hermione.png'),
(4, 'Albus', 'Dumbledore', 39.95, 'Ollivander Box', 'Albus.png'),
(5, 'Severus', 'Snape', 39.95, 'Ollivander Box', 'Severus.png'),
(6, 'Sirius', 'Black', 39.95, 'Ollivander Box', 'Sirius.png'),
(12, 'Luna', 'Lovegood', 29.9, 'Blister', 'Luna.png'),
(16, 'Minerva', 'McGonalagall', 35.95, 'Box', 'Minerva.png');

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `container` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wishlist`
--

INSERT INTO `wishlist` (`id`, `firstName`, `lastName`, `price`, `container`, `image`) VALUES
(2, 'Ron', 'Weasley', 39.95, 'Ollivander Box', 'Ron.png'),
(7, 'Narcissa', 'Malfoy', 29.9, 'Blister', 'Narcissa.png'),
(8, 'Mangemort', '', 29.9, 'Blister', 'Mangemort.png'),
(9, 'MangemortCrane', '', 29.9, 'Blister', 'MangemortCrane.png'),
(10, 'Bellatrix', 'Lestrange', 29.9, 'Blister', 'Bellatrix.png'),
(11, 'Neville', 'Longbottom', 29.9, 'Blister', 'Neville.png'),
(13, 'Ginny', 'Weasley', 29.9, 'Blister', 'Ginny.png'),
(14, 'Voldemort', '', 29.9, 'Blister', 'Voldemort.png'),
(15, 'Draco', 'Malefoy', 29.9, 'Blister', 'Draco.png'),
(17, 'Horace', 'Slughorn', 35.95, 'Box', 'Horace.png'),
(18, 'Nymphadora', 'Tonks', 35.95, 'Box', 'Nymphadora.png'),
(19, 'Gellert', 'Grindelwald', 35.95, 'Box', 'Gellert.png'),
(20, 'Fleur', 'Delacourt', 35.95, 'Box', 'Fleur.png'),
(21, 'Alastor', 'Moody', 35.95, 'Box', 'Alastor.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
