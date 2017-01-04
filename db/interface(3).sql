-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2017 at 03:16 PM
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
  `adresse` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codePostal` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idAdresse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CONTACT`
--

CREATE TABLE `CONTACT` (
  `NomContact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenomContact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailContact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telContact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idContact` int(11) NOT NULL,
  `ENTREPRISE_idEntreprise` int(11) NOT NULL,
  `GENRE_idGENRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DEMANDEUR_EMPLOI`
--

CREATE TABLE `DEMANDEUR_EMPLOI` (
  `action` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_inscription_DE` date DEFAULT NULL,
  `date_derniere_modif_DE` datetime DEFAULT NULL,
  `photo_DE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profilDEcol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_DE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_DE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel1_DE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tel2_DE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_DE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qpv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbr_enfant_DE` int(11) DEFAULT NULL,
  `date_naissance` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tranche_age` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_naissance` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_naissance` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays_naissance` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationalite_DE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre_sejour_DE` enum('oui','non') COLLATE utf8_unicode_ci DEFAULT NULL,
  `autorisation_travail` enum('oui','non') COLLATE utf8_unicode_ci DEFAULT NULL,
  `locomotion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_pole_emploi_DE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `structure_ref` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diplome_pro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorie_socio` enum('Ouvrier','Ouvrier qualifié','Employé','Employé qualifié','Agent de maîtrise','Cadre','Cadre supérieur','Artisan','Commerçant') COLLATE utf8_unicode_ci DEFAULT NULL,
  `idDE` int(11) NOT NULL,
  `RQTH_idRQTH` int(11) DEFAULT NULL,
  `ADRESSE_idAdresse` int(11) DEFAULT NULL,
  `GENRE_idGENRE` int(11) DEFAULT NULL,
  `METIER_idMETIER` int(11) DEFAULT NULL,
  `NIVEAUETUDE_idNiveauEtude1` int(11) DEFAULT NULL,
  `STATUT_idStatut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DEMANDEUR_EMPLOI`
--

INSERT INTO `DEMANDEUR_EMPLOI` (`action`, `date_inscription_DE`, `date_derniere_modif_DE`, `photo_DE`, `profilDEcol`, `nom_DE`, `prenom_DE`, `tel1_DE`, `tel2_DE`, `mail_DE`, `qpv`, `nbr_enfant_DE`, `date_naissance`, `tranche_age`, `ville_naissance`, `dept_naissance`, `pays_naissance`, `nationalite_DE`, `titre_sejour_DE`, `autorisation_travail`, `locomotion`, `num_pole_emploi_DE`, `structure_ref`, `allocation`, `diplome_pro`, `categorie_socio`, `idDE`, `RQTH_idRQTH`, `ADRESSE_idAdresse`, `GENRE_idGENRE`, `METIER_idMETIER`, `NIVEAUETUDE_idNiveauEtude1`, `STATUT_idStatut`) VALUES
(NULL, NULL, NULL, NULL, NULL, 'HELP', 'geropkgop', '8888887788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'fsdoij', 'françois', '8888887788', NULL, 'francois@fillon.fr', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'dupont', 'charles-hubert', '0688448899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'giscard', 'valery', '8888887788', 'dddds', 'dazd', 'fzfz', 8, 'fezf', 'fdfz', 'jiojoi', 'iojoj', 'ojijioj', 'oijioj', '', '', 'oijiojiojio', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'plouplou', 'plapla', '0606060606', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, 'mapoule', 'raoul', '0606060606', NULL, 'raoul@mapoule.qq', 'le blosne', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, 1),
(NULL, NULL, NULL, NULL, NULL, 'truc', 'muche', '0666666666', NULL, 'truc@muche.fu', 'maurepas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, 3, NULL, NULL, 1),
(NULL, NULL, NULL, NULL, NULL, 'jfozei', 'fnspfnqeiqnfeinfiqunzfe', '8999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, NULL, 1, NULL, 3, 2),
(NULL, NULL, NULL, NULL, NULL, 'jfozei', 'fnspfnqeiqnfeinfiqunzfe', '8999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, NULL, 1, NULL, 3, 2),
(NULL, NULL, NULL, NULL, NULL, 'dickus', 'biggus', '8969696969', NULL, NULL, 'le blosne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DOCUMENT`
--

CREATE TABLE `DOCUMENT` (
  `document` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idDocuement` int(11) NOT NULL,
  `DEMANDEUR_EMPLOI_idDE` int(11) DEFAULT NULL,
  `OFFREDEMPLOI_idOE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ENTREPRISE`
--

CREATE TABLE `ENTREPRISE` (
  `RaisonSociale` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreOE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idEntreprise` int(11) NOT NULL,
  `ADRESSE_idAdresse` int(11) DEFAULT NULL,
  `OFFREDEMPLOI_idOE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GENRE`
--

CREATE TABLE `GENRE` (
  `Genre` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idGENRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GENRE`
--

INSERT INTO `GENRE` (`Genre`, `idGENRE`) VALUES
('homme', 1),
('femme', 2),
('autre', 3);

-- --------------------------------------------------------

--
-- Table structure for table `METIER`
--

CREATE TABLE `METIER` (
  `metier` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idMETIER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `METIER`
--

INSERT INTO `METIER` (`metier`, `idMETIER`) VALUES
('Acheteur d\'espaces publicitaires', 445),
('Acheteur en centrale d\'achat', 446),
('Acheteur en produits agroalimentaires', 447),
('Acheteur en produits horticoles', 448),
('Acheteur industriel', 449),
('Acousticien du bâtiment', 450),
('Actrice', 451),
('Actuaire', 452),
('Administrateur dans la Fonction publique européenne', 453),
('Administrateur de bases de données', 454),
('Administrateur de réseaux', 455),
('Administrateur des ventes', 456),
('Agent', 457),
('Agent d\'accueil en office de tourisme', 458),
('Agent de déchetterie', 459),
('Agent de développement local', 460),
('Agent de planning aérien (ou agent de planification)', 461),
('Agent de recouvrement du Trésor', 462),
('Agent d\'accueil', 463),
('Agent général', 464),
('Agent immobilier', 465),
('Agriculteur / Paysan', 466),
('Agriculteur bio', 467),
('Aide médico-psychologique', 468),
('Aide-soignant(e)', 469),
('Aiguilleur du ciel', 470),
('Ambassadeur du tri', 471),
('Ambassadeur ou consul', 472),
('Analyste de crédit', 473),
('Analyste et contrôleur des risques financiers', 474),
('Analyste social', 475),
('Anesthésiste-réanimateur', 476),
('Animateur de formation', 477),
('Animateur de patrimoine', 478),
('Animateur des activités physiques', 479),
('Animateur en écotourisme', 480),
('Animateur nature', 481),
('Animateur radio-télé', 482),
('Animateur socioculturel', 483),
('Animateur sportif', 484),
('Animateur touristique', 485),
('Animateur-éducateur environnement', 486),
('Aquaculteur', 487),
('Archéologue', 488),
('Architecte', 489),
('Architecte d\'intérieur', 490),
('Architecte en environnement', 491),
('Architecte en systèmes d\'information', 492),
('Aromaticien/ Aromaticienne', 493),
('Assistant comptable', 494),
('Assistant de service social', 495),
('Assistant export', 496),
('Assistant manager', 497),
('Astronaute', 498),
('Astronome (ou astrophysicien)', 499),
('Attaché commercial', 500),
('Attaché de presse', 501),
('Audioprothésiste', 502),
('Auditeur financier', 503),
('Auxiliaire de puériculture', 504),
('Avocat', 505),
('Bibliothécaire', 506),
('Bibliothécaire jeunesse', 507),
('Bijoutier-joaillier', 508),
('Biochimiste', 509),
('Biologiste', 510),
('Biologiste médical', 511),
('Biostatisticien', 512),
('Botaniste', 513),
('Boucher', 514),
('Boulanger', 515),
('Campus manager', 516),
('Cartographe', 517),
('Céramiste', 518),
('Chanteur', 519),
('Chargé de clientèle dans la banque', 520),
('Chargé de clientèle en banque/assurance', 521),
('Chargé de communication en environnement', 522),
('Chargé de communication événementielle', 523),
('Chargé de mission Agenda 21', 524),
('Chargé de mission ENR (énergies renouvelables)', 525),
('Chargé de pharmaco-vigilance', 526),
('Chargé des relations publiques', 527),
('Chargé du recrutement', 528),
('Chargé du suivi des programmes humanitaires', 529),
('Chargé d\'affaires', 530),
('Chargé d\'études commerciales', 531),
('Chef d\'escale', 532),
('Chef de cabine', 533),
('Chef de caisse', 534),
('Chef de chantier', 535),
('Chef de cuisine', 536),
('Chef de mission dans l\'humanitaire', 537),
('Chef de produit', 538),
('Chef de projet démantèlement nucléaire', 539),
('Chef de projet informatique', 540),
('Chef de projet photovoltaïque', 541),
('Chef de projet sites et sols pollués', 542),
('Chef de projet urbain', 543),
('Chef de pub en agence', 544),
('Chef de rang', 545),
('Chef de rayon', 546),
('Chef d\'exploitation d\'unité de récupération', 547),
('Chef opérateur', 548),
('Chef réceptionniste', 549),
('Chercheur en sciences et en industries', 550),
('Chirurgien-dentiste', 551),
('Climatologue', 552),
('Clown', 553),
('Com and Ben', 554),
('Comédien', 555),
('Commandant de bord', 556),
('Commercial en énergies renouvelables', 557),
('Commissaire aux comptes', 558),
('Commissaire de police', 559),
('Commissaire-priseur', 560),
('Community manager', 561),
('Comptable', 562),
('Concepteur de produits touristiques', 563),
('Concepteur-réalisateur de loisirs durables', 564),
('Concepteur-réalisateur multimédia', 565),
('Concepteur-rédacteur', 566),
('Conducteur d\'engins/recyclage', 567),
('Conducteur de travaux', 568),
('Conférencier de musée et de monument', 569),
('Conseil en lobbying', 570),
('Conseiller agricole', 571),
('Conseiller conjugal et familial', 572),
('Conseiller d\'orientation-psychologue', 573),
('Conseiller en agriculture durable', 574),
('Conseiller en économie sociale et familiale', 575),
('Conseiller en environnement', 576),
('Conseiller en immobilier d\'entreprise', 577),
('Conseiller en insertion sociale et professionnelle', 578),
('Conseiller en maîtrise d\'énergie', 579),
('Conseiller en management', 580),
('Conseiller en organisation', 581),
('Conseiller en prévention des risques psychosociaux', 582),
('Conseiller principal d\'éducation', 583),
('Conseiller-vendeur en agence de voyages', 584),
('Conservateur de musée', 585),
('Conservateur de réserve naturelle', 586),
('Constructeur bois', 587),
('Consultant en green IT', 588),
('Consultant en recrutement', 589),
('Conteur', 590),
('Contrôleur budgétaire', 591),
('Contrôleur de gestion', 592),
('Costumier', 593),
('Courtier', 594),
('Créateur de parfums', 595),
('Décorateur-scénographe', 596),
('Demographe', 597),
('Designer industriel', 598),
('Designer sonore', 599),
('Designer textile', 600),
('Dessinateur industriel', 601),
('Dessinateur-projeteur en bâtiment', 602),
('Développeur de produits bancaires', 603),
('Développeur de projets en énergies renouvelables', 604),
('Développeur informatique', 605),
('Développeur(se)', 606),
('Diagnostiqueur immobilier', 607),
('Diététicien', 608),
('Directeur artistique', 609),
('Directeur d\'équipements sportifs', 610),
('Directeur d\'établissement', 611),
('Directeur d\'office de tourisme', 612),
('Directeur d\'une salle de spectacle', 613),
('Directeur de centre de vacances ou de loisirs', 614),
('Directeur de création', 615),
('Directeur de restaurant', 616),
('Directeur des achats', 617),
('Directeur des opérations', 618),
('Directeur des ressources humaines', 619),
('Directeur du marketing', 620),
('Directeur d\'enseigne', 621),
('Documentaliste', 622),
('Domoticien', 623),
('Ebéniste', 624),
('Eco-concepteur', 625),
('Eco-développeur', 626),
('Econome', 627),
('Économiste de la construction', 628),
('Ecotoxicologue', 629),
('Editeur', 630),
('Éducateur de jeunes enfants', 631),
('Éducateur de la Protection judiciaire de la jeunesse', 632),
('Educateur spécialisé', 633),
('Educateur technique spécialisé', 634),
('Educatrice de jeunes enfants', 635),
('Educatrice spécialisée', 636),
('Électrotechnicien', 637),
('Enseignant à l\'étranger', 638),
('Enseignant chercheur', 639),
('Entraîneur sportif', 640),
('Ethnologue', 641),
('Éthologiste', 642),
('Expert automobile', 643),
('Expert bilan carbone', 644),
('Expert immobilier', 645),
('Expert incendies et risques divers', 646),
('Expert(e) en sécurité informatique', 647),
('Expert-comptable', 648),
('Game designer', 649),
('Garde du littoral', 650),
('Garde-chasse / Garde pêche', 651),
('Garde-moniteur', 652),
('Gendarme', 653),
('Généticien', 654),
('Géologue', 655),
('Géologue en environnement', 656),
('Géomaticien/ Géomaticienne', 657),
('Géomètre-topographe', 658),
('Gestionnaire de carrière', 659),
('Gestionnaire de paie', 660),
('Gestionnaire de patrimoine', 661),
('Grand reporter', 662),
('Graphiste multimédia', 663),
('Guide accompagnateur', 664),
('Guide interprète', 665),
('Gynécologue', 666),
('Herboriste', 667),
('Horticulteur', 668),
('Hôtesse de l\'air ou steward', 669),
('Huissier de justice', 670),
('Hydrobiologiste', 671),
('Hydrogéologue', 672),
('Hydrogéologue', 673),
('Iconographe', 674),
('Illustrateur', 675),
('Infirmier', 676),
('Infirmier d\'entreprise', 677),
('Infirmier sapeur-pompier', 678),
('Infirmière', 679),
('Infographiste de presse', 680),
('Ingénieur', 681),
('Ingénieur en gestion des risques industriels', 682),
('Ingénieur agronome', 683),
('Ingénieur automatisme-instrumentation', 684),
('Ingénieur calcul et appui scientifique', 685),
('Ingénieur chimiste', 686),
('Ingénieur d\'études dans l\'automobile', 687),
('Ingénieur de fabrication', 688),
('Ingénieur du son', 689),
('Ingénieur d\'études dans l\'industrie', 690),
('Ingénieur d\'études en aéronautique', 691),
('Ingénieur en efficacité énergétique des bâtiments', 692),
('Ingénieur en environnement', 693),
('Ingénieur en mécanique', 694),
('Ingénieur en méthanisation', 695),
('Ingénieur en recherche clinique', 696),
('Ingénieur méthodes', 697),
('Ingénieur numéricien', 698),
('Ingénieur procédés', 699),
('Ingénieur procédés en environnement', 700),
('Ingénieur qualité ou qualiticien', 701),
('Ingénieur système', 702),
('Ingénieur télécoms', 703),
('Ingénieur(e) agroalimentaire', 704),
('Inspecteur comptable', 705),
('Inspecteur des Finances', 706),
('Inspecteur des impôts', 707),
('Inspecteur du travail', 708),
('Installateur de panneaux solaires photovoltaïques', 709),
('Interprète', 710),
('Journaliste', 711),
('Journaliste d\'entreprise', 712),
('Journaliste radio en studio', 713),
('Journaliste reporter d\'images (JRI)', 714),
('Journaliste spécialisé en environnement', 715),
('Juge aux affaires familiales', 716),
('Juge d\'application des peines (JAP)', 717),
('Juge d\'instruction', 718),
('Juge des enfants', 719),
('Juriste d\'entreprise', 720),
('Juriste/avocat spécialisé en droit des ENR', 721),
('Libraire', 722),
('Lieutenant de police', 723),
('Lieutenant de pompiers', 724),
('Logisticien', 725),
('Logisticien dans l\'humanitaire', 726),
('Ludothécaire', 727),
('Maître d\'hôtel', 728),
('Maître d\'hôtel', 729),
('Maître nageur sauveteur', 730),
('Manager dans la restauration rapide', 731),
('Manipulateur en électroradiologie', 732),
('Maquettiste', 733),
('Marionnettiste', 734),
('Masseur-kinésithérapeute', 735),
('Mathématicien / Mathématicienne', 736),
('Médecin de l\'Education nationale', 737),
('Médecin du travail', 738),
('Médecin généraliste', 739),
('Médecin légiste', 740),
('Média-planneur', 741),
('Médiateur', 742),
('Médiateur culturel', 743),
('Médiateur en environnement', 744),
('Merchandiser', 745),
('Metteur en scène', 746),
('Microtechnicien', 747),
('Mixeur', 748),
('Modéliste', 749),
('Moniteur de ski', 750),
('Moniteur d\'équitation', 751),
('Moniteur-éducateur', 752),
('Monteur d\'éolienne', 753),
('Muséographe', 754),
('Musicien', 755),
('Neurologue', 756),
('Notaire', 757),
('Océanologue', 758),
('Officier de l\'armée', 759),
('Officier de la marine marchande', 760),
('Officier de l\'armée de l\'air', 761),
('Officier marinier ou officier de la Marine nationale', 762),
('Opérateur back office', 763),
('Opérateur de marché CO2', 764),
('Opérateur de marché en CO2', 765),
('Opérateur middle office', 766),
('Opérateur(trice)/recyclage', 767),
('Ophtalmologue', 768),
('Opticien-lunetier', 769),
('Ornithologue', 770),
('Orthophoniste', 771),
('Orthoprothésiste', 772),
('Orthoptiste', 773),
('Ostéopathe', 774),
('Oto-rhino-laryngologiste', 775),
('Paysagiste', 776),
('Pédiatre', 777),
('Pédicure-podologue', 778),
('Pédologue', 779),
('Pédopsychiatre', 780),
('Pharmacien d\'officine', 781),
('Photographe', 782),
('Pilote de ligne', 783),
('Pilote d\'hélicoptère', 784),
('Policier', 785),
('Producteur télé', 786),
('Prof de maths', 787),
('Professeur agrégé', 788),
('Professeur de lycée professionnel', 789),
('Professeur des écoles', 790),
('Professeur des écoles spécialisées', 791),
('Professeur documentaliste', 792),
('Professeur d\'EPS (Éducation physique et sportive)', 793),
('Professeur en collège ou en lycée', 794),
('Prothésiste dentaire', 795),
('Psychanalyste', 796),
('Psychiatre', 797),
('Psychologue', 798),
('Psychologue scolaire', 799),
('Psychomotricien', 800),
('Puéricultrice', 801),
('Réalisateur', 802),
('Régisseur de spectacles', 803),
('Reporter', 804),
('Reporter radio', 805),
('Responsable de la sécurité et risques des systèmes d\'information', 806),
('Responsable commercial recyclage', 807),
('Responsable d\'eau potable ou d\'assainissement', 808),
('Responsable de bases de données', 809),
('Responsable de centres de services éco-industriels', 810),
('Responsable de formation', 811),
('Responsable de la communication interne', 812),
('Responsable de la promotion des ventes', 813),
('Responsable de projet biodiversité', 814),
('Responsable de relais assistantes maternelles', 815),
('Responsable de site/recyclage', 816),
('Responsable du bilan environnemental', 817),
('Responsable du e-business', 818),
('Responsable du marketing direct', 819),
('Responsable du référencement', 820),
('Responsable d\'ordonnancement', 821),
('Responsable d\'une station d\'épuration', 822),
('Responsable environnement de projets ferroviaires', 823),
('Responsable HSE (hygiène-sécurité-environnement)', 824),
('Responsable SAV (Service après-vente)', 825),
('Restaurateur de livres anciens', 826),
('Restaurateur d\'œuvres d\'art', 827),
('Sage-femme', 828),
('Sapeur-pompier', 829),
('Scénariste', 830),
('Scripte', 831),
('Secrétaire administratif ou de chancellerie', 832),
('Secrétaire aux Affaires étrangères', 833),
('Sociologue', 834),
('Sommelier', 835),
('Spécialiste en biotechnologies', 836),
('Sportif professionnel', 837),
('Statisticen / Statisticienne', 838),
('Statisticien', 839),
('Styliste', 840),
('Substitut du procureur', 841),
('Technicien biocarburants', 842),
('Technicien conseiller en agrobiologie', 843),
('Technicien d\'analyses biomédicales', 844),
('Technicien de laboratoire d\'analyse des eaux', 845),
('Technicien de maintenance', 846),
('Technicien de mesure de la pollution', 847),
('Technicien de rivière', 848),
('Technicien du bâtiment en énergies renouvelables', 849),
('Technicien du génie rural', 850),
('Technicien du réemploi', 851),
('Technicien du traitement des eaux', 852),
('Technicien en automatismes', 853),
('Technicien en traitement d\'eau potable', 854),
('Technicien en traitement des déchets', 855),
('Technicien forestier', 856),
('Technicien gestionnaire d\'espaces naturels', 857),
('Technicien mesure pollution', 858),
('Technicien paysagiste', 859),
('Technicien qualité automobile', 860),
('Technicien traitement des eaux', 861),
('Technicien(ne) d\'intervention', 862),
('Technicien(ne)/recyclage', 863),
('Technicien-conseil en agriculture biologique', 864),
('Technico-commercial', 865),
('Technico-commercial en agrofournitures', 866),
('Testeur', 867),
('Trader', 868),
('Traducteur', 869),
('Traffic manager', 870),
('Urbaniste', 871),
('Vendeur automobile', 872),
('Vendeur d\'espaces publicitaires', 873),
('Vétérinaire', 874),
('Vétérinaire équin', 875),
('Visiteur médical', 876),
('Viticulteur', 877),
('Volcanologue', 878),
('Webmaster', 879),
('Zoologiste', 880);

-- --------------------------------------------------------

--
-- Table structure for table `NIVEAUETUDE`
--

CREATE TABLE `NIVEAUETUDE` (
  `niveauEtude` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNiveauEtude` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `NIVEAUETUDE`
--

INSERT INTO `NIVEAUETUDE` (`niveauEtude`, `idNiveauEtude`) VALUES
('sans diplôme', 1),
('BAC/BP', 3),
('Bac +2', 4),
('Bac +3', 5),
('≥ Bac +4', 6),
('CAP/BEP', 7);

-- --------------------------------------------------------

--
-- Table structure for table `OFFREDEMPLOI`
--

CREATE TABLE `OFFREDEMPLOI` (
  `DateSaisieOE` date DEFAULT NULL,
  `DebutOE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DureeChiffreOE` int(11) DEFAULT NULL,
  `DureeTempsOE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Horaire` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Remuneration` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descriptif` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPECONTRAT_idTypeContrat` int(11) NOT NULL,
  `FICHEOFFRE_idFicheOffre` int(11) NOT NULL,
  `TypeContrat` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LieuTravail` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idOE` int(11) NOT NULL,
  `METIER_idMETIER` int(11) DEFAULT NULL,
  `NIVEAUETUDE_idNiveauEtude` int(11) DEFAULT NULL,
  `RQTH_idRQTH` int(11) DEFAULT NULL,
  `STATUT_idStatut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offredemploi_has_permis`
--

CREATE TABLE `offredemploi_has_permis` (
  `OFFREDEMPLOI_idOE` int(11) NOT NULL,
  `PERMIS_idPermis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PERMIS`
--

CREATE TABLE `PERMIS` (
  `permis` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idPermis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PERMIS`
--

INSERT INTO `PERMIS` (`permis`, `idPermis`) VALUES
('A', 1),
('B', 2),
('C', 3),
('D', 4),
('E', 5),
('BEA', 6);

-- --------------------------------------------------------

--
-- Table structure for table `permis_has_demandeurdemploi`
--

CREATE TABLE `permis_has_demandeurdemploi` (
  `PERMIS_idPermis` int(11) NOT NULL,
  `DEMANDEURDEMPLOI_idDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permis_has_demandeurdemploi`
--

INSERT INTO `permis_has_demandeurdemploi` (`PERMIS_idPermis`, `DEMANDEURDEMPLOI_idDE`) VALUES
(1, 4),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `RQTH`
--

CREATE TABLE `RQTH` (
  `RQTH` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idRQTH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RQTH`
--

INSERT INTO `RQTH` (`RQTH`, `idRQTH`) VALUES
('oui', 1),
('non', 2);

-- --------------------------------------------------------

--
-- Table structure for table `STATUT`
--

CREATE TABLE `STATUT` (
  `statut` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idStatut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `STATUT`
--

INSERT INTO `STATUT` (`statut`, `idStatut`) VALUES
('actif', 1),
('inactif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `nomUser` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenomUser` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProfilUser` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  `STATUT_idStatut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_demandeurdemploi`
--

CREATE TABLE `user_has_demandeurdemploi` (
  `USER_idUser` int(11) NOT NULL,
  `DEMANDEURDEMPLOI_idDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_offredemploi`
--

CREATE TABLE `user_has_offredemploi` (
  `USER_idUser` int(11) NOT NULL,
  `OFFREDEMPLOI_idOE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Indexes for table `offredemploi_has_permis`
--
ALTER TABLE `offredemploi_has_permis`
  ADD PRIMARY KEY (`OFFREDEMPLOI_idOE`,`PERMIS_idPermis`),
  ADD KEY `IDX_A2486231AACA2ED` (`OFFREDEMPLOI_idOE`),
  ADD KEY `IDX_A2486231188C3D4B` (`PERMIS_idPermis`);

--
-- Indexes for table `PERMIS`
--
ALTER TABLE `PERMIS`
  ADD PRIMARY KEY (`idPermis`);

--
-- Indexes for table `permis_has_demandeurdemploi`
--
ALTER TABLE `permis_has_demandeurdemploi`
  ADD PRIMARY KEY (`PERMIS_idPermis`,`DEMANDEURDEMPLOI_idDE`),
  ADD KEY `IDX_6D044ECD188C3D4B` (`PERMIS_idPermis`),
  ADD KEY `IDX_6D044ECDBE742DE` (`DEMANDEURDEMPLOI_idDE`);

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
-- Indexes for table `user_has_demandeurdemploi`
--
ALTER TABLE `user_has_demandeurdemploi`
  ADD PRIMARY KEY (`USER_idUser`,`DEMANDEURDEMPLOI_idDE`),
  ADD KEY `IDX_9CCFC8CE297AFF18` (`USER_idUser`),
  ADD KEY `IDX_9CCFC8CEBE742DE` (`DEMANDEURDEMPLOI_idDE`);

--
-- Indexes for table `user_has_offredemploi`
--
ALTER TABLE `user_has_offredemploi`
  ADD PRIMARY KEY (`USER_idUser`,`OFFREDEMPLOI_idOE`),
  ADD KEY `IDX_5A561687297AFF18` (`USER_idUser`),
  ADD KEY `IDX_5A561687AACA2ED` (`OFFREDEMPLOI_idOE`);

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
  MODIFY `idDE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `idGENRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `METIER`
--
ALTER TABLE `METIER`
  MODIFY `idMETIER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=881;
--
-- AUTO_INCREMENT for table `NIVEAUETUDE`
--
ALTER TABLE `NIVEAUETUDE`
  MODIFY `idNiveauEtude` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `OFFREDEMPLOI`
--
ALTER TABLE `OFFREDEMPLOI`
  MODIFY `idOE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PERMIS`
--
ALTER TABLE `PERMIS`
  MODIFY `idPermis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `RQTH`
--
ALTER TABLE `RQTH`
  MODIFY `idRQTH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `STATUT`
--
ALTER TABLE `STATUT`
  MODIFY `idStatut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  ADD CONSTRAINT `FK_73271822550B019B` FOREIGN KEY (`ENTREPRISE_idEntreprise`) REFERENCES `ENTREPRISE` (`idEntreprise`),
  ADD CONSTRAINT `FK_7327182279FB9000` FOREIGN KEY (`GENRE_idGENRE`) REFERENCES `GENRE` (`idGENRE`);

--
-- Constraints for table `DEMANDEUR_EMPLOI`
--
ALTER TABLE `DEMANDEUR_EMPLOI`
  ADD CONSTRAINT `FK_7141863E2F0FE529` FOREIGN KEY (`ADRESSE_idAdresse`) REFERENCES `ADRESSE` (`idAdresse`),
  ADD CONSTRAINT `FK_7141863E5717963C` FOREIGN KEY (`METIER_idMETIER`) REFERENCES `METIER` (`idMETIER`),
  ADD CONSTRAINT `FK_7141863E79FB9000` FOREIGN KEY (`GENRE_idGENRE`) REFERENCES `GENRE` (`idGENRE`),
  ADD CONSTRAINT `FK_7141863E8AAB11D7` FOREIGN KEY (`NIVEAUETUDE_idNiveauEtude1`) REFERENCES `NIVEAUETUDE` (`idNiveauEtude`),
  ADD CONSTRAINT `FK_7141863EDE5CBEC8` FOREIGN KEY (`STATUT_idStatut`) REFERENCES `STATUT` (`idStatut`),
  ADD CONSTRAINT `FK_7141863EF43B3540` FOREIGN KEY (`RQTH_idRQTH`) REFERENCES `RQTH` (`idRQTH`);

--
-- Constraints for table `DOCUMENT`
--
ALTER TABLE `DOCUMENT`
  ADD CONSTRAINT `FK_1E5A163A766D0B2C` FOREIGN KEY (`DEMANDEUR_EMPLOI_idDE`) REFERENCES `DEMANDEUR_EMPLOI` (`idDE`),
  ADD CONSTRAINT `FK_1E5A163AAACA2ED` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`);

--
-- Constraints for table `ENTREPRISE`
--
ALTER TABLE `ENTREPRISE`
  ADD CONSTRAINT `FK_686E75F2F0FE529` FOREIGN KEY (`ADRESSE_idAdresse`) REFERENCES `ADRESSE` (`idAdresse`),
  ADD CONSTRAINT `FK_686E75FAACA2ED` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`);

--
-- Constraints for table `OFFREDEMPLOI`
--
ALTER TABLE `OFFREDEMPLOI`
  ADD CONSTRAINT `FK_2C7C68695717963C` FOREIGN KEY (`METIER_idMETIER`) REFERENCES `METIER` (`idMETIER`),
  ADD CONSTRAINT `FK_2C7C6869C1B24B0C` FOREIGN KEY (`NIVEAUETUDE_idNiveauEtude`) REFERENCES `NIVEAUETUDE` (`idNiveauEtude`),
  ADD CONSTRAINT `FK_2C7C6869DE5CBEC8` FOREIGN KEY (`STATUT_idStatut`) REFERENCES `STATUT` (`idStatut`),
  ADD CONSTRAINT `FK_2C7C6869F43B3540` FOREIGN KEY (`RQTH_idRQTH`) REFERENCES `RQTH` (`idRQTH`);

--
-- Constraints for table `offredemploi_has_permis`
--
ALTER TABLE `offredemploi_has_permis`
  ADD CONSTRAINT `FK_A2486231188C3D4B` FOREIGN KEY (`PERMIS_idPermis`) REFERENCES `PERMIS` (`idPermis`),
  ADD CONSTRAINT `FK_A2486231AACA2ED` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`);

--
-- Constraints for table `permis_has_demandeurdemploi`
--
ALTER TABLE `permis_has_demandeurdemploi`
  ADD CONSTRAINT `FK_6D044ECD188C3D4B` FOREIGN KEY (`PERMIS_idPermis`) REFERENCES `PERMIS` (`idPermis`),
  ADD CONSTRAINT `FK_6D044ECDBE742DE` FOREIGN KEY (`DEMANDEURDEMPLOI_idDE`) REFERENCES `DEMANDEUR_EMPLOI` (`idDE`);

--
-- Constraints for table `USER`
--
ALTER TABLE `USER`
  ADD CONSTRAINT `FK_BB063BFDDE5CBEC8` FOREIGN KEY (`STATUT_idStatut`) REFERENCES `STATUT` (`idStatut`);

--
-- Constraints for table `user_has_demandeurdemploi`
--
ALTER TABLE `user_has_demandeurdemploi`
  ADD CONSTRAINT `FK_9CCFC8CE297AFF18` FOREIGN KEY (`USER_idUser`) REFERENCES `USER` (`idUser`),
  ADD CONSTRAINT `FK_9CCFC8CEBE742DE` FOREIGN KEY (`DEMANDEURDEMPLOI_idDE`) REFERENCES `DEMANDEUR_EMPLOI` (`idDE`);

--
-- Constraints for table `user_has_offredemploi`
--
ALTER TABLE `user_has_offredemploi`
  ADD CONSTRAINT `FK_5A561687297AFF18` FOREIGN KEY (`USER_idUser`) REFERENCES `USER` (`idUser`),
  ADD CONSTRAINT `FK_5A561687AACA2ED` FOREIGN KEY (`OFFREDEMPLOI_idOE`) REFERENCES `OFFREDEMPLOI` (`idOE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
