-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 15 déc. 2023 à 12:38
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

DROP TABLE IF EXISTS `projets`;
CREATE TABLE IF NOT EXISTS `projets` (
  `id_proj` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(30) NOT NULL,
  `date` varchar(100) NOT NULL,
  `competence_principale` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `competences` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `couleur` varchar(10) NOT NULL,
  `description` varchar(800) NOT NULL,
  `lien` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_proj`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id_proj`, `titre`, `date`, `competence_principale`, `competences`, `couleur`, `description`, `lien`) VALUES
(1, 'Gotatrip', 'avril 2023', 'Développement web', 'HTML - CSS - Javascript - PHP - SQL', 'F0E8D3', 'Durant ce projet individuel, nous avions pour objectif de réaliser un site de réservation sur le thème de notre choix. <br> Grande fan de la série Game Of Thrones mais aussi passionnée par les voyages, j\'ai décidé de créer un site pour réserver des billets d\'avion pour visiter les lieux de tournage de la série.<br>\r\nCe projet m\'a appris à utiliser une base de donnée à manipuler en php et SQL. <br>\r\nJ’ai ainsi réalisé seule le site de Gotatrip du début à la fin, que ce soit la maquette, le design, la recherche d’images, le développement front-end et back-end, en passant par la création de la base de données.', 'https://resaweb.thibout.butmmi.o2switch.site'),
(2, 'Unblinded', 'juin 2023', 'Wordpress', 'wordpress - élémentor - autres pluggins', 'D7C4CD', 'Unblinded, c\'est le nom d\'une association luttant contre l\'invisibilté des femmes dans le domaine scientifique. <br>\r\nCette association, nous l\'avons créée en groupe de travail. <br>\r\nNous devions imaginer un concept d\'association et réaliser toute sa communication, que ce soit la réalisation de site web, d\'affiches, de cartes de visite, etc.<br> Dans le groupe je me suis chargée de réaliser le site avec wordpress et élémentor. <br>\r\nJ\'ai également appris à ajouter des fonctionnalités javascript dans wordpress comme vous pourrez le voir avec la fontionnalité de tri de la page \"archives\".', 'https://www.unblinded.chalat.butmmi.o2switch.site/wordpress/'),
(3, 'Affiche festival', 'mars 2023', 'Suite adobe', 'Illustrator - IndDesign - Photoshop', 'BDCCCC', 'Cette affiche a été réalisée dans le cadre du Festival des Arts Foreztiers. <br>Celui-ci se déroule chaque année en Haute-Loire et consiste en la réalisation d\'oeuvres d\'art sur un thème précis. <br>\r\nNous avions pour objectif individuel de réaliser l\'affiche publicitaire de ce festival qui avait pour thème cette année \"Peuples Racines\". <br>\r\nJ\'ai ainsi réalisé cette affiche à l\'aide d\'illustrator, ou j\'ai redessiné à la plume un dessin que j\'avais fait à la main. <br>\r\nJ\'ai également travaillé avec photoshop, mais aussi illustrator pour la conception finale de l\'affiche.', 'https://drive.google.com/file/d/1Rk5OJuKs4i5EjFzjrQrpMbTO0eD3Kzx1/view?usp=drive_link'),
(4, 'MMInd', 'septembre 2023', 'Figma', 'Figma - Refont de contenu sur les réseaux sociaux', 'BBB2A3', 'Nous devions réaliser en groupe une refont d\'un compte instagram.<br> Celui-ci, créé dans le cadre d\'un module d\'anglais, constituait en un compte ou des actualités étaient postées par des étudiants différents chaque semaine. <br>Nous devions ainsi proposer un nouveau design et, si nous le voulions, un nouveau concept de post. <br>Je vous laisse découvrir notre réalisation par le lien ci-dessous.', 'https://drive.google.com/file/d/1QkliJaOZO57ba2yQEqNBG3aqw37B5e3n/view?usp=drive_link'),
(5, 'Dataviz', 'novembre 2023', 'Développement web', 'chart.js - HTML - CSS - Javascript - SVG', 'F0E8D3', 'En groupe, nous devions réaliser un site de datavizualition sur le thème de notre choix. <br>\r\nNous avons opté pour un problème qui se pose à l\'échelle mondiale : la sous-alimentation.<br> \r\nJ\'ai un peu touché à tout durant ce projet, que ce soit la maquette ou le développement du site. <br> Je me suis chargée de réaliser les graphiques, et j\'ai ainsi découvert et appris à utiliser chart.js qui m\'a permis d\'obtenir le résultat souhaité.<br>\r\nJ\'ai également fait en sorte d\'adapter la présentation des données en fonction du lieu choisi par l\'utilisateur. ', 'https://sabine-thb.github.io/Dataviz/'),
(6, 'Campagne de com\'', 'novembre 2023', 'Figma', 'communication - design - figma - photoshop', 'D7C4CD', 'Nous devions réaliser en groupe la campagne de communication d\'une ville autour d\'un événement.<br> Nous avons choisi la ville de Nîmes avec sa célèbre Féria, festival traditionnel qui se déroule 2 fois par an. <br> Pour cette campagne, nous avons dû réaliser 3 maquettes web à différents formats, une affiche, et 3 bannières web.  <br>J\'ai principalement travaillé sur l\'identité visuelle de la campagne, sur les maquettes Figma mais également sur les mockups réalisés avec photoshop.', 'https://drive.google.com/file/d/1Vhd94hW-1TNrVebtY5wGBp6Q8X5ZNOsP/view?usp=drive_link');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
