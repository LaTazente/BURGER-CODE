-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 05 Décembre 2021 à 08:28
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3
CREATE DATABASE burger_code;
use burger_code;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `burger_code`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, 'Menus'),
(2, 'Burgers'),
(3, 'Snacks'),
(4, 'Salades'),
(5, 'Boissons'),
(6, 'Desserts');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(250) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(1, 'Menu1', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 8.9, 'm1.png', 1),
(2, 'Menu2', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 9.9, 'm2.png', 1),
(3, 'Menu3', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 7.1, 'm3.png', 1),
(4, 'Menu4', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 7.9, 'm4.png', 1),
(5, 'Menu5', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 8.95, 'm5.png', 1),
(6, 'Menu6', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 9.5, 'm6.png', 1),
(7, 'Burger1', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5.9, 'b1.png', 2),
(8, 'Burger2', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 4, 'b2.png', 2),
(9, 'Burger3', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 3.75, 'b3.png', 2),
(10, 'Burger4', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5.5, 'b4.png', 2),
(11, 'Burger5', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 4.1, 'b5.png', 2),
(12, 'Burger6', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5.15, 'b6.png', 2),
(13, 'Snack1', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 6.9, 's1.png', 3),
(14, 'Snack2', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5.9, 's2.png', 3),
(15, 'Snack3', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 3.99, 's3.png', 3),
(16, 'Snack4', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 2.99, 's4.png', 3),
(17, 'Snack5', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5.1, 's5.png', 3),
(18, 'Salade1', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 6.9, 'sa1.png', 4),
(19, 'Salade2', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5.9, 'sa2.png', 4),
(20, 'Salade3', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 4.99, 'sa3.png', 4),
(21, 'Salade4', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 6.1, 'sa4.png', 4),
(22, 'Salade5', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 5, 'sa5.png', 4),
(23, 'Boisson1', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 1.9, 'bo1.png', 5),
(24, 'Boisson2', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 0.99, 'bo2.png', 5),
(25, 'Boisson3', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 0.5, 'bo3.png', 5),
(26, 'Boisson4\r\n', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 1.1, 'bo4.png', 5),
(27, 'Boisson5', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 0.7, 'bo5.png', 5),
(28, 'Boisson6', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 0.85, 'bo6.png', 5),
(29, 'Dessert1', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 1.9, 'd1.pnh', 6),
(30, 'Dessert2', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 0.95, 'd2.png', 6),
(31, 'Dessert3', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 1, 'd3.png', 6),
(32, 'Dessert4', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 2, 'd4.png', 6),
(33, 'Dessert5', 'Sandwich:Burger, Salade, Tomate, Cornichon + frite + Boisson', 0.8, 'd5.png', 6);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categorie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
