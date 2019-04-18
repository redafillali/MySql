-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 18 avr. 2019 à 16:45
-- Version du serveur :  10.2.23-MariaDB-cll-lve
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fair2019_inscriptions`
--

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `ID` int(5) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Pays_fr` varchar(100) NOT NULL,
  `Pays_en` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Pays`
--

INSERT INTO `Pays` (`ID`, `Code`, `Pays_fr`, `Pays_en`) VALUES
(1, 'AF', 'Afghanistan', 'Afghanistan'),
(2, 'AL', 'Albanie', 'Albania'),
(3, 'AQ', 'Antarctique', 'Antarctica'),
(4, 'DZ', 'Algérie', 'Algeria'),
(5, 'AS', 'Samoa Américaines', 'American Samoa'),
(6, 'AD', 'Andorre', 'Andorra'),
(7, 'AO', 'Angola', 'Angola'),
(8, 'AG', 'Antigua-et-Barbuda', 'Antigua and Barbuda'),
(9, 'AZ', 'Azerbaïdjan', 'Azerbaijan'),
(10, 'AR', 'Argentine', 'Argentina'),
(11, 'AU', 'Australie', 'Australia'),
(12, 'AT', 'Autriche', 'Austria'),
(13, 'BS', 'Bahamas', 'Bahamas'),
(14, 'BH', 'Bahreïn', 'Bahrain'),
(15, 'BD', 'Bangladesh', 'Bangladesh'),
(16, 'AM', 'Arménie', 'Armenia'),
(17, 'BB', 'Barbade', 'Barbados'),
(18, 'BE', 'Belgique', 'Belgium'),
(19, 'BM', 'Bermudes', 'Bermuda'),
(20, 'BT', 'Bhoutan', 'Bhutan'),
(21, 'BO', 'Bolivie', 'Bolivia'),
(22, 'BA', 'Bosnie-Herzégovine', 'Bosnia and Herzegovina'),
(23, 'BW', 'Botswana', 'Botswana'),
(24, 'BV', 'Île Bouvet', 'Bouvet Island'),
(25, 'BR', 'Brésil', 'Brazil'),
(26, 'BZ', 'Belize', 'Belize'),
(27, 'IO', 'Territoire Britannique de l\'Océan Indien', 'British Indian Ocean Territory'),
(28, 'SB', 'Îles Salomon', 'Solomon Islands'),
(29, 'VG', 'Îles Vierges Britanniques', 'British Virgin Islands'),
(30, 'BN', 'Brunéi Darussalam', 'Brunei Darussalam'),
(31, 'BG', 'Bulgarie', 'Bulgaria'),
(32, 'MM', 'Myanmar', 'Myanmar'),
(33, 'BI', 'Burundi', 'Burundi'),
(34, 'BY', 'Bélarus', 'Belarus'),
(35, 'KH', 'Cambodge', 'Cambodia'),
(36, 'CM', 'Cameroun', 'Cameroon'),
(37, 'CA', 'Canada', 'Canada'),
(38, 'CV', 'Cap-vert', 'Cape Verde'),
(39, 'KY', 'Îles Caïmanes', 'Cayman Islands'),
(40, 'CF', 'République Centrafricaine', 'Central African'),
(41, 'LK', 'Sri Lanka', 'Sri Lanka'),
(42, 'TD', 'Tchad', 'Chad'),
(43, 'CL', 'Chili', 'Chile'),
(44, 'CN', 'Chine', 'China'),
(45, 'TW', 'Taïwan', 'Taiwan'),
(46, 'CX', 'Île Christmas', 'Christmas Island'),
(47, 'CC', 'Îles Cocos (Keeling)', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombie', 'Colombia'),
(49, 'KM', 'Comores', 'Comoros'),
(50, 'YT', 'Mayotte', 'Mayotte'),
(51, 'CG', 'République du Congo', 'Republic of the Congo'),
(52, 'CD', 'République Démocratique du Congo', 'The Democratic Republic Of The Congo'),
(53, 'CK', 'Îles Cook', 'Cook Islands'),
(54, 'CR', 'Costa Rica', 'Costa Rica'),
(55, 'HR', 'Croatie', 'Croatia'),
(56, 'CU', 'Cuba', 'Cuba'),
(57, 'CY', 'Chypre', 'Cyprus'),
(58, 'CZ', 'République Tchèque', 'Czech Republic'),
(59, 'BJ', 'Bénin', 'Benin'),
(60, 'DK', 'Danemark', 'Denmark'),
(61, 'DM', 'Dominique', 'Dominica'),
(62, 'DO', 'République Dominicaine', 'Dominican Republic'),
(63, 'EC', 'Équateur', 'Ecuador'),
(64, 'SV', 'El Salvador', 'El Salvador'),
(65, 'GQ', 'Guinée Équatoriale', 'Equatorial Guinea'),
(66, 'ET', 'Éthiopie', 'Ethiopia'),
(67, 'ER', 'Érythrée', 'Eritrea'),
(68, 'EE', 'Estonie', 'Estonia'),
(69, 'FO', 'Îles Féroé', 'Faroe Islands'),
(70, 'FK', 'Îles (malvinas) Falkland', 'Falkland Islands'),
(71, 'GS', 'Géorgie du Sud et les Îles Sandwich du Sud', 'South Georgia and the South Sandwich Islands'),
(72, 'FJ', 'Fidji', 'Fiji'),
(73, 'FI', 'Finlande', 'Finland'),
(74, 'AX', 'Îles Åland', 'Åland Islands'),
(75, 'FR', 'France', 'France'),
(76, 'GF', 'Guyane Française', 'French Guiana'),
(77, 'PF', 'Polynésie Française', 'French Polynesia'),
(78, 'TF', 'Terres Australes Françaises', 'French Southern Territories'),
(79, 'DJ', 'Djibouti', 'Djibouti'),
(80, 'GA', 'Gabon', 'Gabon'),
(81, 'GE', 'Géorgie', 'Georgia'),
(82, 'GM', 'Gambie', 'Gambia'),
(83, 'PS', 'Palestinien', 'Palestinian'),
(84, 'DE', 'Allemagne', 'Germany'),
(85, 'GH', 'Ghana', 'Ghana'),
(86, 'GI', 'Gibraltar', 'Gibraltar'),
(87, 'KI', 'Kiribati', 'Kiribati'),
(88, 'GR', 'Grèce', 'Greece'),
(89, 'GL', 'Groenland', 'Greenland'),
(90, 'GD', 'Grenade', 'Grenada'),
(91, 'GP', 'Guadeloupe', 'Guadeloupe'),
(92, 'GU', 'Guam', 'Guam'),
(93, 'GT', 'Guatemala', 'Guatemala'),
(94, 'GN', 'Guinée', 'Guinea'),
(95, 'GY', 'Guyana', 'Guyana'),
(96, 'HT', 'Haïti', 'Haiti'),
(97, 'HM', 'Îles Heard et Mcdonald', 'Heard Island and McDonald Islands'),
(98, 'VA', 'Saint-Siège (état de la Cité du Vatican)', 'Vatican City State'),
(99, 'HN', 'Honduras', 'Honduras'),
(100, 'HK', 'Hong-Kong', 'Hong Kong'),
(101, 'HU', 'Hongrie', 'Hungary'),
(102, 'IS', 'Islande', 'Iceland'),
(103, 'IN', 'Inde', 'India'),
(104, 'ID', 'Indonésie', 'Indonesia'),
(105, 'IR', 'République Islamique d\'Iran', 'Islamic Republic of Iran'),
(106, 'IQ', 'Iraq', 'Iraq'),
(107, 'IE', 'Irlande', 'Ireland'),
(108, 'IL', 'Israël', 'Israel'),
(109, 'IT', 'Italie', 'Italy'),
(110, 'CI', 'Côte d\'Ivoire', 'Côte d\'Ivoire'),
(111, 'JM', 'Jamaïque', 'Jamaica'),
(112, 'JP', 'Japon', 'Japan'),
(113, 'KZ', 'Kazakhstan', 'Kazakhstan'),
(114, 'JO', 'Jordanie', 'Jordan'),
(115, 'KE', 'Kenya', 'Kenya'),
(116, 'KP', 'République Populaire Démocratique de Corée', 'Democratic People\'s Republic of Korea'),
(117, 'KR', 'République de Corée', 'Republic of Korea'),
(118, 'KW', 'Koweït', 'Kuwait'),
(119, 'KG', 'Kirghizistan', 'Kyrgyzstan'),
(120, 'LA', 'République Démocratique Populaire Lao', 'Lao People\'s Democratic Republic'),
(121, 'LB', 'Liban', 'Lebanon'),
(122, 'LS', 'Lesotho', 'Lesotho'),
(123, 'LV', 'Lettonie', 'Latvia'),
(124, 'LR', 'Libéria', 'Liberia'),
(125, 'LY', 'Jamahiriya Arabe Libyenne', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein', 'Liechtenstein'),
(127, 'LT', 'Lituanie', 'Lithuania'),
(128, 'LU', 'Luxembourg', 'Luxembourg'),
(129, 'MO', 'Macao', 'Macao'),
(130, 'MG', 'Madagascar', 'Madagascar'),
(131, 'MW', 'Malawi', 'Malawi'),
(132, 'MY', 'Malaisie', 'Malaysia'),
(133, 'MV', 'Maldives', 'Maldives'),
(134, 'ML', 'Mali', 'Mali'),
(135, 'MT', 'Malte', 'Malta'),
(136, 'MQ', 'Martinique', 'Martinique'),
(137, 'MR', 'Mauritanie', 'Mauritania'),
(138, 'MU', 'Maurice', 'Mauritius'),
(139, 'MX', 'Mexique', 'Mexico'),
(140, 'MC', 'Monaco', 'Monaco'),
(141, 'MN', 'Mongolie', 'Mongolia'),
(142, 'MD', 'République de Moldova', 'Republic of Moldova'),
(143, 'MS', 'Montserrat', 'Montserrat'),
(144, 'MA', 'Maroc', 'Morocco'),
(145, 'MZ', 'Mozambique', 'Mozambique'),
(146, 'OM', 'Oman', 'Oman'),
(147, 'NA', 'Namibie', 'Namibia'),
(148, 'NR', 'Nauru', 'Nauru'),
(149, 'NP', 'Népal', 'Nepal'),
(150, 'NL', 'Pays-Bas', 'Netherlands'),
(151, 'AN', 'Antilles Néerlandaises', 'Netherlands Antilles'),
(152, 'AW', 'Aruba', 'Aruba'),
(153, 'NC', 'Nouvelle-Calédonie', 'New Caledonia'),
(154, 'VU', 'Vanuatu', 'Vanuatu'),
(155, 'NZ', 'Nouvelle-Zélande', 'New Zealand'),
(156, 'NI', 'Nicaragua', 'Nicaragua'),
(157, 'NE', 'Niger', 'Niger'),
(158, 'NG', 'Nigéria', 'Nigeria'),
(159, 'NU', 'Niué', 'Niue'),
(160, 'NF', 'Île Norfolk', 'Norfolk Island'),
(161, 'NO', 'Norvège', 'Norway'),
(162, 'MP', 'Îles Mariannes du Nord', 'Northern Mariana Islands'),
(163, 'UM', 'Îles Mineures Éloignées des États-Unis', 'United States Minor Outlying Islands'),
(164, 'FM', 'États Fédérés de Micronésie', 'Federated States of Micronesia'),
(165, 'MH', 'Îles Marshall', 'Marshall Islands'),
(166, 'PW', 'Palaos', 'Palau'),
(167, 'PK', 'Pakistan', 'Pakistan'),
(168, 'PA', 'Panama', 'Panama'),
(169, 'PG', 'Papouasie-Nouvelle-Guinée', 'Papua New Guinea'),
(170, 'PY', 'Paraguay', 'Paraguay'),
(171, 'PE', 'Pérou', 'Peru'),
(172, 'PH', 'Philippines', 'Philippines'),
(173, 'PN', 'Pitcairn', 'Pitcairn'),
(174, 'PL', 'Pologne', 'Poland'),
(175, 'PT', 'Portugal', 'Portugal'),
(176, 'GW', 'Guinée-Bissau', 'Guinea-Bissau'),
(177, 'TL', 'Timor-Leste', 'Timor-Leste'),
(178, 'PR', 'Porto Rico', 'Puerto Rico'),
(179, 'QA', 'Qatar', 'Qatar'),
(180, 'RE', 'Réunion', 'Réunion'),
(181, 'RO', 'Roumanie', 'Romania'),
(182, 'RU', 'Russie', 'Russie'),
(183, 'RW', 'Rwanda', 'Rwanda'),
(184, 'SH', 'Sainte-Hélène', 'Saint Helena'),
(185, 'KN', 'Saint-Kitts-et-Nevis', 'Saint Kitts and Nevis'),
(186, 'AI', 'Anguilla', 'Anguilla'),
(187, 'LC', 'Sainte-Lucie', 'Saint Lucia'),
(188, 'PM', 'Saint-Pierre-et-Miquelon', 'Saint-Pierre and Miquelon'),
(189, 'VC', 'Saint-Vincent-et-les Grenadines', 'Saint Vincent and the Grenadines'),
(190, 'SM', 'Saint-Marin', 'San Marino'),
(191, 'ST', 'Sao Tomé-et-Principe', 'Sao Tome and Principe'),
(192, 'SA', 'Arabie Saoudite', 'Saudi Arabia'),
(193, 'SN', 'Sénégal', 'Senegal'),
(194, 'SC', 'Seychelles', 'Seychelles'),
(195, 'SL', 'Sierra Leone', 'Sierra Leone'),
(196, 'SG', 'Singapour', 'Singapore'),
(197, 'SK', 'Slovaquie', 'Slovakia'),
(198, 'VN', 'Viet Nam', 'Vietnam'),
(199, 'SI', 'Slovénie', 'Slovenia'),
(200, 'SO', 'Somalie', 'Somalia'),
(201, 'ZA', 'Afrique du Sud', 'South Africa'),
(202, 'ZW', 'Zimbabwe', 'Zimbabwe'),
(203, 'ES', 'Espagne', 'Spain'),
(204, 'SD', 'Soudan', 'Sudan'),
(205, 'SR', 'Suriname', 'Suriname'),
(206, 'SJ', 'Svalbard etÎle Jan Mayen', 'Svalbard and Jan Mayen'),
(207, 'SZ', 'Swaziland', 'Swaziland'),
(208, 'SE', 'Suède', 'Sweden'),
(209, 'CH', 'Suisse', 'Switzerland'),
(210, 'SY', 'République Arabe Syrienne', 'Syrian Arab Republic'),
(211, 'TJ', 'Tadjikistan', 'Tajikistan'),
(212, 'TH', 'Thaïlande', 'Thailand'),
(213, 'TG', 'Togo', 'Togo'),
(214, 'TK', 'Tokelau', 'Tokelau'),
(215, 'TO', 'Tonga', 'Tonga'),
(216, 'TT', 'Trinité-et-Tobago', 'Trinidad and Tobago'),
(217, 'AE', 'Émirats Arabes Unis', 'United Arab Emirates'),
(218, 'TN', 'Tunisie', 'Tunisia'),
(219, 'TR', 'Turquie', 'Turkey'),
(220, 'TM', 'Turkménistan', 'Turkmenistan'),
(221, 'TC', 'Îles Turks et Caïques', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu', 'Tuvalu'),
(223, 'UG', 'Ouganda', 'Uganda'),
(224, 'UA', 'Ukraine', 'Ukraine'),
(225, 'MK', 'L\'ex-République Yougoslave de Macédoine', 'The Former Yugoslav Republic of Macedonia'),
(226, 'EG', 'Égypte', 'Egypt'),
(227, 'GB', 'Royaume-Uni', 'United Kingdom'),
(228, 'IM', 'Île de Man', 'Isle of Man'),
(229, 'TZ', 'République-Unie de Tanzanie', 'United Republic Of Tanzania'),
(230, 'US', 'États-Unis', 'United States'),
(231, 'VI', 'Îles Vierges des États-Unis', 'U.S. Virgin Islands'),
(232, 'BF', 'Burkina Faso', 'Burkina Faso'),
(233, 'UY', 'Uruguay', 'Uruguay'),
(234, 'UZ', 'Ouzbékistan', 'Uzbekistan'),
(235, 'VE', 'Venezuela', 'Venezuela'),
(236, 'WF', 'Wallis et Futuna', 'Wallis and Futuna'),
(237, 'WS', 'Samoa', 'Samoa'),
(238, 'YE', 'Yémen', 'Yemen'),
(239, 'CS', 'Serbie-et-Monténégro', 'Serbia and Montenegro'),
(240, 'ZM', 'Zambie', 'Zambia');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Pays`
--
ALTER TABLE `Pays`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
