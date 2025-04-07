-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 avr. 2025 à 14:51
-- Version du serveur : 8.0.35
-- Version de PHP : 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id_proj` int NOT NULL,
  `titre` varchar(30) NOT NULL,
  `date` varchar(100) NOT NULL,
  `competence_principale` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `technologies` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(800) NOT NULL,
  `accroche` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lien` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id_proj`, `titre`, `date`, `competence_principale`, `technologies`, `description`, `accroche`, `lien`) VALUES
(1, 'SCO Metaverse', 'janvier 2025', 'Développement de jeu vidéo', 'Unity, C#, Spatial.io', 'J\'ai eu l\'opportunité de travailler sur un projet destiné au CNES (Centre National d\'Études Spatiales) durant mon alternance chez Ultranoir. Ce projet consistait en un jeu immersif visant à faire découvrir les projets du CNES au grand public, sur desktop, mobile et VR grâce à spatial.io. Nous étions deux développeurs sur ce projet, et j\'ai pu intervenir sur la réalisation de multiples fonctionnalités du jeu, telles que la configuration de l\'avatar, les animations, le post-processing, ainsi que la création des interfaces utilisateur (UI) sur Unity. Ce projet a été très formateur pour moi, car il m\'a permis d\'approfondir mes compétences sur Unity, un logiciel que j\'avais peu utilisé auparavant.', 'Un projet immersif très formateur...', 'https://www.spatial.io/s/SCODYSSEY-677e9cf2fc448df40d95c8bf?share=7059779562167575535'),
(5, 'Inside sephora', 'octobre 2024', 'Développement web ', 'React', 'Durant mon alternance chez Ultranoir, j’ai eu l’occasion de travailler sur le site carrière de Sephora. Celui-ci était déjà en ligne mais nous avions régulièrement des évolutions à y ajouter. J’ai, par exemple, travaillé sur l’intégration de nouveaux composants video pour le virtual tour de Sephora. J’ai également participé à des actualisations d’intégrations plus modernes sur certaines pages du site Sephora Asia.\r\n<br><br>\r\nLes modifications apportées ne sont pas encore en ligne.', 'Des évolutions sur un projet conséquent.', ''),
(6, 'Resaweb Gotatrip', 'avril 2023', 'Développement web / design', 'html, css, js, php, sql', 'Ce projet individuel constitue mon tout premier site réalisé de A à Z. Nous avions pour objectif de réaliser un site de réservation sur le thème de notre choix. Grande fan de la série Game Of Thrones mais aussi passionnée par les voyages, j\'ai décidé de créer un site pour réserver des billets d\'avion pour visiter les lieux de tournage de la série.\r\nCe projet m\'a appris à utiliser une base de donnée à manipuler en php et SQL. \r\nJ’ai ainsi réalisé seule le site de Gotatrip du début à la fin, que ce soit la maquette, le design, la recherche d’images, le développement front-end et back-end, en passant par la création de la base de données.', 'Mon tout premier site internet.', 'https://resaweb.sthibout.projetsmmichamps.fr/\r\n'),
(3, 'Esprit Vigée', 'mars 2024', 'Développement web / design', 'html, css, js, React, php, création d\'API, figma', 'L\'objectif de ce projet de groupe était de créer une exposition interactive sur une femme peintre.\r\nDurant ce projet, je me suis occupée de designer le site de l\'exposition, de le développer, de concevoir l\'API qui gère les réservations. J\'ai également réalisé le backoffice qui gère les réservations en React.\r\nMon objectif premier était de réaliser un site qui soit immersif dès l\'arrivée de l\'utilisateur.\r\nJ\'ai pris beaucoup de plaisir sur ce projet dans lequel j\'ai mis énormément de ma personne.', 'Un projet immersif et artistique.', 'https://esprit-vigee.com/'),
(7, 'Career website belmond', 'Mars 2025', 'Développement web', 'Next.js, drupal, emotion (styled components)', 'J’ai eu la chance de travailler seule en tant que développeuse front-end sur ce projet de refonte. Belmond, filiale du groupe LVMH, est une marque de luxe proposant des expériences de voyage uniques à travers des hôtels emblématiques, des trains légendaires et des croisières d’exception.\r\nDans le cadre de la refonte de son site carrière, j’ai conçu et développé l’ensemble des composants en Next.js, avec Styled Components (Emotion) pour la gestion du style. Le site s’appuie sur un back-office Drupal, permettant une gestion fluide du contenu. J’ai optimisé l’expérience utilisateur avec une navigation intuitive, une intégration fluide des médias et une parfaite adaptabilité mobile.<br><br>\r\n\r\nLe projet est encore en cours de réalisation et n’a pas encore été mis en ligne.', 'Refonte du site carrière de Belmond.', ''),
(2, 'Projet dataviz', 'novembre 2023', 'Développement web / design', 'html, css, js, chart.js', 'En groupe, nous devions réaliser un site de datavizualition sur le thème de notre choix. <br>\r\nNous avons opté pour un problème qui se pose à l\'échelle mondiale : la sous-alimentation.\r\nJ\'ai un peu touché à tout durant ce projet, que ce soit la maquette ou le développement du site. Je me suis chargée de réaliser les graphiques, et j\'ai ainsi découvert et appris à utiliser chart.js qui m\'a permis d\'obtenir le résultat souhaité.\r\nJ\'ai également fait en sorte d\'adapter la présentation des données en fonction du lieu choisi par l\'utilisateur. ', 'Un site de datavizualisation impactant.', 'https://sabine-thb.github.io/Dataviz/'),
(8, 'Projet ENT', 'décembre 2023', 'Développement web / design', 'figma, html, css, js, php, gestion de sessions ', 'Durant ce projet de groupe, nous avions pour objectif de recréer un Environnement Numérique de Travail pour l\'université.\r\nJ\'ai participé à la création de la maquette, au développement front, et au développement de toutes les fonctionnalités. En effet, on y retrouve un chat, un système de réservation, un système de vote du repas de la cantine... Les professeurs peuvent déposer des cours, des notes, et des absences visibles par les étudiants.\r\n<br>\r\nCompte d\'élève type : identifiant = sabine.thibout et mdp=thibout\r\n<br>\r\nCompte de professeur type : identifiant = anne.tasso et mdp=tasso', 'Un projet avec la notion de sessions.', 'https://www.ent-univ-eiffel.fr/'),
(9, 'Site Effisiens', 'juillet 2024', 'Refonte', 'webdesign, figma, html, css, js', 'Durant mon stage de deuxième année, j\'ai eu l\'occasion de travailler seule sur un cas client. Il s\'agissait d\'une refonte totale d\'un site web d\'une entreprise de coaching. Celui-ci avait été créé sur wix par le fondateur qui n\'avait aucune expérience en terme de conception web. Tout était à refaire : la recherche d\'images, le design, l\'architecture du site, le développement. J\'ai donc proposé un nouveau site web réalisé from scratch pour répondre au mieux à la demande du client. \r\n', 'Une refonte one page.', 'https://www.effisiens.fr/\r\n'),
(4, 'Le Bouchon Anglais', 'juin 2024', 'Refonte', 'webdesign, figma, html, css, js', 'Durant mon stage de deuxième année, j\'ai travaillé sur plusieurs cas client dont le Bouchon Anglais. Le site original était réalisé par quelqu\'un qui n\'avait aucune compétences en terme de conception web. Il était complètement désordonné, sans images, sans couleurs, et presque uniquement textuel. J\'ai donc été chargée de refaire complètement ce site, et de répondre à la demande de la cliente qui voulait un site simple pour faire découvrir ses dégustations de vin ludiques.', 'Une refonte complète d’un site textuel.', 'https://lebouchonanglais.com/'),
(10, 'Mini-jeu homer', 'avril 2025', 'Développement de jeu vidéo', 'unity, c#', 'Dans le cadre de ma dernière année de BUT, j’ai eu l’occasion de travailler sur un MiniJeu sur le logiciel Unity. Nous avons travaillé en groupe de deux, un créa / un dev. Nous devions tout réaliser, du concept, au jeu final. Nous nous sommes inspirés du jeu du catcher, où les joueurs doivent essayer d\'attraper des objets qui tombent et éviter ceux qui ne doivent pas être inclus. J’ai ainsi réalisé toute la partie technique de ce jeu sur Unity. J’ai pris énormément de plaisir à réaliser ce projet, qui, avec un concept complètement libre, nous a permis de réaliser un jeu simple au design insolite et amusant. Vous avez accès en lien au dépot github du projet, avec un readMe qui explique comment installer le jeu en local.', 'Une réalisation d’un mini jeu vidéo.', 'https://github.com/sabine-thb/Unity---MiniGame');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id_proj`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id_proj` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
