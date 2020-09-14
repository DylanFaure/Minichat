-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 14 sep. 2020 à 12:52
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`ID`, `pseudo`, `message`) VALUES
(21, 'Testeur', '<strong> Je tente de mettre en gras ce texte ! </ strong>'),
(20, 'Elisa', 'Ca peut allez'),
(19, 'Jean', 'Très bien et vous ?'),
(18, 'Pedro', 'Salut ça va ?'),
(17, 'Bernard', 'Bonjour à tous'),
(16, 'Robert', 'Yo !'),
(15, 'Elisa', 'Salut'),
(14, 'Jean', 'Bonjour !'),
(22, '<br />Testeur', 'Puis-je créer des retour à la ligne ? <br /><br />'),
(23, 'Bernard', 'Combien de message peuvent-ils bien être stocker ici ?'),
(24, 'Bernard', 'Ceci est le 11 ème message !'),
(25, 'Testeur', '</p> Stop !');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
