-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 24 Mars 2016 à 15:07
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `apriori`
--

-- --------------------------------------------------------

--
-- Structure de la table `comporte`
--

CREATE TABLE IF NOT EXISTS `comporte` (
  `id_panier` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_panier`,`id_produit`),
  KEY `FK_comporte_id_produit` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comporte`
--

INSERT INTO `comporte` (`id_panier`, `id_produit`) VALUES
(4, 1),
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(8, 2),
(9, 2),
(3, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(2, 4),
(4, 4),
(1, 5),
(8, 5);

-- --------------------------------------------------------

--
-- Structure de la table `paniers`
--

CREATE TABLE IF NOT EXISTS `paniers` (
  `id_panier` int(11) NOT NULL AUTO_INCREMENT,
  `nom_panier` varchar(120) NOT NULL,
  PRIMARY KEY (`id_panier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `paniers`
--

INSERT INTO `paniers` (`id_panier`, `nom_panier`) VALUES
(1, 'T100'),
(2, 'T200'),
(3, 'T300'),
(4, 'T400'),
(5, 'T500'),
(6, 'T600'),
(7, 'T700'),
(8, 'T800'),
(9, 'T900');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `nom_produit` varchar(120) NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`) VALUES
(1, 'L1'),
(2, 'L2'),
(3, 'L3'),
(4, 'L4'),
(5, 'L5');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comporte`
--
ALTER TABLE `comporte`
  ADD CONSTRAINT `FK_comporte_id_panier` FOREIGN KEY (`id_panier`) REFERENCES `paniers` (`id_panier`),
  ADD CONSTRAINT `FK_comporte_id_produit` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
