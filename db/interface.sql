-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2016 at 04:24 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interface`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADRESSE`
--

CREATE TABLE `ADRESSE` (
  `idAdresse` int(11) NOT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `codePostal` varchar(5) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CONTACT`
--

CREATE TABLE `CONTACT` (
  `idContact` int(11) NOT NULL,
  `NomContact` varchar(45) DEFAULT NULL,
  `prenomContact` varchar(45) DEFAULT NULL,
  `mailContact` varchar(45) DEFAULT NULL,
  `telContact` varchar(45) DEFAULT NULL,
  `ENTREPRISE_idEntreprise` int(11) NOT NULL,
  `GENRE_idGENRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DEMANDEUR_EMPLOI`
--

CREATE TABLE `DEMANDEUR_EMPLOI` (
  `idDE` int(11) NOT NULL,
  `date_inscription_DE` date DEFAULT NULL,
  `date_derniere_modif_DE` datetime DEFAULT NULL,
  `STATUT_idStatut` int(11) DEFAULT NULL,
  `METIER_idMETIER` int(11) DEFAULT NULL,
  `photo_DE` varchar(255) DEFAULT NULL,
  `profilDEcol` varchar(45) DEFAULT NULL,
  `GENRE_idGENRE` int(11) DEFAULT NULL,
  `nom_DE` varchar(100) NOT NULL,
  `prenom_DE` varchar(100) NOT NULL,
  `tel1_DE` varchar(10) NOT NULL,
  `tel2_DE` varchar(10) DEFAULT NULL,
  `mail_DE` varchar(100) DEFAULT NULL,
  `ADRESSE_idAdresse` int(11) DEFAULT NULL,
  `qpv` varchar(45) DEFAULT NULL,
  `nbr_enfant_DE` int(2) DEFAULT NULL,
  `date_naissance` varchar(45) DEFAULT NULL,
  `tranche_age` varchar(50) DEFAULT NULL,
  `ville_naissance` varchar(50) DEFAULT NULL,
  `dept_naissance` varchar(15) DEFAULT NULL,
  `pays_naissance` varchar(50) DEFAULT NULL,
  `nationalite_DE` varchar(50) DEFAULT NULL,
  `titre_sejour_DE` tinyint(1) DEFAULT NULL,
  `autorisation_travail` tinyint(1) DEFAULT NULL,
  `locomotion` varchar(45) DEFAULT NULL,
  `num_pole_emploi_DE` varchar(8) DEFAULT NULL,
  `structure_ref` varchar(45) DEFAULT NULL,
  `allocation` varchar(45) DEFAULT NULL,
  `RQTH_idRQTH` int(11) DEFAULT NULL,
  `NIVEAUETUDE_idNiveauEtude1` int(11) DEFAULT NULL,
  `diplome_pro` varchar(45) DEFAULT NULL,
  `categorie_socio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DEMANDEUR_EMPLOI`
--

INSERT INTO `DEMANDEUR_EMPLOI` (`idDE`, `date_inscription_DE`, `date_derniere_modif_DE`, `STATUT_idStatut`, `METIER_idMETIER`, `photo_DE`, `profilDEcol`, `GENRE_idGENRE`, `nom_DE`, `prenom_DE`, `tel1_DE`, `tel2_DE`, `mail_DE`, `ADRESSE_idAdresse`, `qpv`, `nbr_enfant_DE`, `date_naissance`, `tranche_age`, `ville_naissance`, `dept_naissance`, `pays_naissance`, `nationalite_DE`, `titre_sejour_DE`, `autorisation_travail`, `locomotion`, `num_pole_emploi_DE`, `structure_ref`, `allocation`, `RQTH_idRQTH`, `NIVEAUETUDE_idNiveauEtude1`, `diplome_pro`, `categorie_socio`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hollande', 'françois', '0606060606', NULL, 'françoishollande@president.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sarkozy', 'nicolas', '0666666666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DOCUMENT`
--

CREATE TABLE `DOCUMENT` (
  `idDocuement` int(11) NOT NULL,
  `document` varchar(45) DEFAULT NULL,
  `OFFREDEMPLOI_idOE` int(11) DEFAULT NULL,
  `DEMANDEUR_EMPLOI_idDE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ENTREPRISE`
--

CREATE TABLE `ENTREPRISE` (
  `idEntreprise` int(11) NOT NULL,
  `RaisonSociale` varchar(45) DEFAULT NULL,
  `ADRESSE_idAdresse` int(11) DEFAULT NULL,
  `nombreOE` varchar(45) DEFAULT NULL,
  `OFFREDEMPLOI_idOE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GENRE`
--

CREATE TABLE `GENRE` (
  `idGENRE` int(11) NOT NULL,
  `Genre` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `METIER`
--

CREATE TABLE `METIER` (
  `idMETIER` int(11) NOT NULL,
  `metier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `NIVEAUETUDE`
--

CREATE TABLE `NIVEAUETUDE` (
  `idNiveauEtude` int(11) NOT NULL,
  `niveauEtude` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `OFFREDEMPLOI`
--

CREATE TABLE `OFFREDEMPLOI` (
  `idOE` int(11) NOT NULL,
  `DateSaisieOE` date DEFAULT NULL,
  `DebutOE` varchar(45) DEFAULT NULL,
  `DureeChiffreOE` int(2) DEFAULT NULL,
  `DureeTempsOE` varchar(45) DEFAULT NULL,
  `Horaire` varchar(45) DEFAULT NULL,
  `Remuneration` varchar(45) DEFAULT NULL,
  `Descriptif` varchar(225) DEFAULT NULL,
  `STATUT_idStatut` int(11) DEFAULT NULL,
  `METIER_idMETIER` int(11) DEFAULT NULL,
  `RQTH_idRQTH` int(11) DEFAULT NULL,
  `NIVEAUETUDE_idNiveauEtude` int(11) DEFAULT NULL,
  `TYPECONTRAT_idTypeContrat` int(11) NOT NULL,
  `FICHEOFFRE_idFicheOffre` int(11) NOT NULL,
  `TypeContrat` varchar(45) DEFAULT NULL,
  `LieuTravail` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `OFFREDEMPLOI_has_PERMIS`
--

CREATE TABLE `OFFREDEMPLOI_has_PERMIS` (
  `OFFREDEMPLOI_idOE` int(11) NOT NULL,
  `PERMIS_idPermis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PERMIS`
--

CREATE TABLE `PERMIS` (
  `idPermis` int(11) NOT NULL,
  `permis` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PERMIS_has_DEMANDEURDEMPLOI`
--

CREATE TABLE `PERMIS_has_DEMANDEURDEMPLOI` (
  `PERMIS_idPermis` int(11) NOT NULL,
  `DEMANDEURDEMPLOI_idDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RQTH`
--

CREATE TABLE `RQTH` (
  `idRQTH` int(11) NOT NULL,
  `RQTH` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `STATUT`
--

CREATE TABLE `STATUT` (
  `idStatut` int(11) NOT NULL,
  `statut` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(45) DEFAULT NULL,
  `prenomUser` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ProfilUser` varchar(45) DEFAULT NULL,
  `STATUT_idStatut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_has_DEMANDEURDEMPLOI`
--

CREATE TABLE `USER_has_DEMANDEURDEMPLOI` (
  `USER_idUser` int(11) NOT NULL,
  `DEMANDEURDEMPLOI_idDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_has_OFFREDEMPLOI`
--

CREATE TABLE `USER_has_OFFREDEMPLOI` (
  `USER_idUser` int(11) NOT NULL,
  `OFFREDEMPLOI_idOE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADRESSE`
--
ALTER TABLE `ADRESSE`
  ADD PRIMARY KEY (`idAdresse`);

--
-- Indexes for table `CONTACT`
--
ALTER TABLE `CONTACT`
  ADD PRIMARY KEY (`idContact`,`ENTREPRISE_idEntreprise`),
  ADD KEY `fk_CONTACT_ENTREPRISE1_idx` (`ENTREPRISE_idEntreprise`),
  ADD KEY `fk_CONTACT_GENRE1_idx` (`GENRE_idGENRE`);

--
-- Indexes for table `DEMANDEUR_EMPLOI`
--
ALTER TABLE `DEMANDEUR_EMPLOI`
  ADD PRIMARY KEY (`idDE`),
  ADD KEY `fk_FLUX_GENRE_idx` (`GENRE_idGENRE`),
  ADD KEY `fk_FLUX_METIER1_idx` (`METIER_idMETIER`),
  ADD KEY `fk_FLUX_STATUT1_idx` (`STATUT_idStatut`),
  ADD KEY `fk_FLUX_NIVEAUETUDE2_idx` (`NIVEAUETUDE_idNiveauEtude1`),
  ADD KEY `fk_FLUX_ADRESSE1_idx` (`ADRESSE_idAdresse`),
  ADD KEY `fk_DEMANDEURDEMPLOI_RQTH1_idx` (`RQTH_idRQTH`);

--
-- Indexes for table `DOCUMENT`
--
ALTER TABLE `DOCUMENT`
  ADD PRIMARY KEY (`idDocuement`),
  ADD KEY `fk_DOCUMENT_OFFREDEMPLOI1_idx` (`OFFREDEMPLOI_idOE`),
  ADD KEY `fk_DOCUMENT_DEMANDEUR_EMPLOI1_idx` (`DEMANDEUR_EMPLOI_idDE`);

--
-- Indexes for table `ENTREPRISE`
--
ALTER TABLE `ENTREPRISE`
  ADD PRIMARY KEY (`idEntreprise`),
  ADD KEY `fk_ENTREPRISE_ADRESSE1_idx` (`ADRESSE_idAdresse`),
  ADD KEY `fk_ENTREPRISE_OFFREDEMPLOI1_idx` (`OFFREDEMPLOI_idOE`);

--
-- Indexes for table `GENRE`
--
ALTER TABLE `GENRE`
  ADD PRIMARY KEY (`idGENRE`);

--
-- Indexes for table `METIER`
--
ALTER TABLE `METIER`
  ADD PRIMARY KEY (`idMETIER`);

--
-- Indexes for table `NIVEAUETUDE`
--
ALTER TABLE `NIVEAUETUDE`
  ADD PRIMARY KEY (`idNiveauEtude`);

--
-- Indexes for table `OFFREDEMPLOI`
--
ALTER TABLE `OFFREDEMPLOI`
  ADD PRIMARY KEY (`idOE`),
  ADD KEY `fk_OFFREDEMPLOI_STATUT1_idx` (`STATUT_idStatut`),
  ADD KEY `fk_OFFREDEMPLOI_METIER1_idx` (`METIER_idMETIER`),
  ADD KEY `fk_OFFREDEMPLOI_RQTH1_idx` (`RQTH_idRQTH`),
  ADD KEY `fk_OFFREDEMPLOI_NIVEAUETUDE1_idx` (`NIVEAUETUDE_idNiveauEtude`);

--
-- Indexes for table `OFFREDEMPLOI_has_PERMIS`
--
ALTER TABLE `OFFREDEMPLOI_has_PERMIS`
  ADD PRIMARY KEY (`OFFREDEMPLOI_idOE`,`PERMIS_idPermis`),
  ADD KEY `IDX_A2486231188C3D4B` (`PERMIS_idPermis`),
  ADD KEY `IDX_A2486231AACA2ED` (`OFFREDEMPLOI_idOE`);

--
-- Indexes for table `PERMIS`
--
ALTER TABLE `PERMIS`
  ADD PRIMARY KEY (`idPermis`);

--
-- Indexes for table `PERMIS_has_DEMANDEURDEMPLOI`
--
ALTER TABLE `PERMIS_has_DEMANDEURDEMPLOI`
  ADD PRIMARY KEY (`PERMIS_idPermis`,`DEMANDEURDEMPLOI_idDE`),
  ADD KEY `IDX_6D044ECDBE742DE` (`DEMANDEURDEMPLOI_idDE`),
  ADD KEY `IDX_6D044ECD188C3D4B` (`PERMIS_idPermis`);

--
-- Indexes for table `RQTH`
--
ALTER TABLE `RQTH`
  ADD PRIMARY KEY (`idRQTH`);

--
-- Indexes for table `STATUT`
--
ALTER TABLE `STATUT`
  ADD PRIMARY KEY (`idStatut`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `fk_USER_STATUT1_idx` (`STATUT_idStatut`);

--
-- Indexes for table `USER_has_DEMANDEURDEMPLOI`
--
ALTER TABLE `USER_has_DEMANDEURDEMPLOI`
  ADD PRIMARY KEY (`USER_idUser`,`DEMANDEURDEMPLOI_idDE`),
  ADD KEY `IDX_9CCFC8CEBE742DE` (`DEMANDEURDEMPLOI_idDE`),
  ADD KEY `IDX_9CCFC8CE297AFF18` (`USER_idUser`);

--
-- Indexes for table `USER_has_OFFREDEMPLOI`
--
ALTER TABLE `USER_has_OFFREDEMPLOI`
  ADD PRIMARY KEY (`USER_idUser`,`OFFREDEMPLOI_idOE`),
  ADD KEY `IDX_5A561687AACA2ED` (`OFFREDEMPLOI_idOE`),
  ADD KEY `IDX_5A561687297AFF18` (`USER_idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ADRESSE`
--
ALTER TABLE `ADRESSE`
  MODIFY `idAdresse` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DEMANDEUR_EMPLOI`
--
ALTER TABLE `DEMANDEUR_EMPLOI`
  MODIFY `idDE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `DOCUMENT`
--
ALTER TABLE `DOCUMENT`
  MODIFY `idDocuement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ENTREPRISE`
--
ALTER TABLE `ENTREPRISE`
  MODIFY `idEntreprise` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GENRE`
--
ALTER TABLE `GENRE`
  MODIFY `idGENRE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `METIER`
--
ALTER TABLE `METIER`
  MODIFY `idMETIER` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `NIVEAUETUDE`
--
ALTER TABLE `NIVEAUETUDE`
  MODIFY `idNiveauEtude` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `OFFREDEMPLOI`
--
ALTER TABLE `OFFREDEMPLOI`
  MODIFY `idOE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PERMIS`
--
ALTER TABLE `PERMIS`
  MODIFY `idPermis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RQTH`
--
ALTER TABLE `RQTH`
  MODIFY `idRQTH` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `STATUT`
--
ALTER TABLE `STATUT`
  MODIFY `idStatut` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `CONTACT`
--
ALTER TABLE `CONTACT`
  ADD CONSTRAINT `fk_CONTACT_ENTREPRISE1` FOREIGN KEY (`ENTREPRISE_idEntreprise`) REFERENCES `ENTREPRISE` (`idEntreprise`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTACT_GENRE1` FOREIGN KEY (`GENRE_idGENRE`) REFERENCES `GENRE` (`idGENRE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `DEMANDEUR_EMPLOI`
--
ALTER TABLE `DEMANDEUR_EMPLOI`
  ADD CONSTRAINT `fk_DEMANDEURDEMPLOI_RQTH1` FOREIGN KEY (`RQTH_idRQTH`) REFERENCES `RQTH` (`idRQTH`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FLUX_ADRESSE1` FOREIGN KEY (`ADRESSE_idAdresse`) REFERENCES `ADRESSE` (`idAdresse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FLUX_GENRE` FOREIGN KEY (`GENRE_idGENRE`) REFERENCES `GENRE` (`idGENRE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FLUX_METIER1` FOREIGN KEY (`METIER_idMETIER`) REFERENCES `METIER` (`idMETIER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FLUX_NIVEAUETUDE2` FOREIGN KEY (`NIVEAUETUDE_idNiveauEtude1`) REFERENCES `NIVEAUETUDE` (`idNiveauEtude`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FLUX_STATUT1` FOREIGN KEY (`STATUT_idStatut`) REFERENCES `STATUT` (`idStatut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `DOCUMENT`
--
ALTER TABLE `DOCUMENT`
  ADD CONSTRAINT `fk_DOCUMENT_DEMANDEUR_EMPLOI1` FOREIGN KEY (`DEMANDEUR_EMPLOI_idDE`) REFERENCES `DEMANDEUR_EMPLOI` (`idDE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DOCUMENT_OFFREDEMPLOI1` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ENTREPRISE`
--
ALTER TABLE `ENTREPRISE`
  ADD CONSTRAINT `fk_ENTREPRISE_ADRESSE1` FOREIGN KEY (`ADRESSE_idAdresse`) REFERENCES `ADRESSE` (`idAdresse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ENTREPRISE_OFFREDEMPLOI1` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `OFFREDEMPLOI`
--
ALTER TABLE `OFFREDEMPLOI`
  ADD CONSTRAINT `fk_OFFREDEMPLOI_METIER1` FOREIGN KEY (`METIER_idMETIER`) REFERENCES `METIER` (`idMETIER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OFFREDEMPLOI_NIVEAUETUDE1` FOREIGN KEY (`NIVEAUETUDE_idNiveauEtude`) REFERENCES `NIVEAUETUDE` (`idNiveauEtude`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OFFREDEMPLOI_RQTH1` FOREIGN KEY (`RQTH_idRQTH`) REFERENCES `RQTH` (`idRQTH`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OFFREDEMPLOI_STATUT1` FOREIGN KEY (`STATUT_idStatut`) REFERENCES `STATUT` (`idStatut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `OFFREDEMPLOI_has_PERMIS`
--
ALTER TABLE `OFFREDEMPLOI_has_PERMIS`
  ADD CONSTRAINT `fk_OFFREDEMPLOI_has_PERMIS_OFFREDEMPLOI1` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OFFREDEMPLOI_has_PERMIS_PERMIS1` FOREIGN KEY (`PERMIS_idPermis`) REFERENCES `PERMIS` (`idPermis`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PERMIS_has_DEMANDEURDEMPLOI`
--
ALTER TABLE `PERMIS_has_DEMANDEURDEMPLOI`
  ADD CONSTRAINT `fk_PERMIS_has_DEMANDEURDEMPLOI_DEMANDEURDEMPLOI1` FOREIGN KEY (`DEMANDEURDEMPLOI_idDE`) REFERENCES `DEMANDEUR_EMPLOI` (`idDE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PERMIS_has_DEMANDEURDEMPLOI_PERMIS1` FOREIGN KEY (`PERMIS_idPermis`) REFERENCES `PERMIS` (`idPermis`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `USER`
--
ALTER TABLE `USER`
  ADD CONSTRAINT `fk_USER_STATUT1` FOREIGN KEY (`STATUT_idStatut`) REFERENCES `STATUT` (`idStatut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `USER_has_DEMANDEURDEMPLOI`
--
ALTER TABLE `USER_has_DEMANDEURDEMPLOI`
  ADD CONSTRAINT `fk_USER_has_DEMANDEURDEMPLOI_DEMANDEURDEMPLOI1` FOREIGN KEY (`DEMANDEURDEMPLOI_idDE`) REFERENCES `DEMANDEUR_EMPLOI` (`idDE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USER_has_DEMANDEURDEMPLOI_USER1` FOREIGN KEY (`USER_idUser`) REFERENCES `USER` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `USER_has_OFFREDEMPLOI`
--
ALTER TABLE `USER_has_OFFREDEMPLOI`
  ADD CONSTRAINT `fk_USER_has_OFFREDEMPLOI_OFFREDEMPLOI1` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USER_has_OFFREDEMPLOI_USER1` FOREIGN KEY (`USER_idUser`) REFERENCES `USER` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
