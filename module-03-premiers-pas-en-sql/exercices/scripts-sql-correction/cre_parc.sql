-- Correction de l'exercice 1 
-- Creation des tables et PK
-- Note: il est possible que certains noms ne correspondent pas exactement aux noms de l'énoncé (CamelCase vs snake_case, nom clarifié dans l'énoncé). Vous m'en excuserez, ce sera corrigé ultérieurement.
-- Version: 1.0

CREATE TABLE Segment (
	ind_ip varchar(11),
	nom_segment varchar(20) NOT NULL,
	etage TINYINT(1),
	CONSTRAINT pk_segment PRIMARY KEY (ind_ip)
);

CREATE TABLE Salle (
	num_salle varchar(7),
	nom_salle varchar(20) NOT NULL,
	nb_postes TINYINT(2),
	ind_ip varchar(11),
	CONSTRAINT pk_salle PRIMARY KEY (num_salle)
);

CREATE TABLE Poste (
	num_poste varchar(7),
	nom_poste varchar(20) NOT NULL,
	ind_ip varchar(11),
	ad varchar(3),
	typePoste varchar(9),
	num_salle varchar(7),
	CONSTRAINT pk_poste PRIMARY KEY (num_poste),
	CONSTRAINT ck_ad CHECK (
		ad BETWEEN '000'
		AND '255'
	)
);

CREATE TABLE Logiciel (
	num_logiciel varchar(5),
	nom_logiciel varchar(20) NOT NULL,
	date_achat DATETIME,
	version varchar(7),
	type_logiciel varchar(9),
	prix DECIMAL(6, 2),
	CONSTRAINT pk_logiciel PRIMARY KEY (num_logiciel),
	CONSTRAINT ck_prix CHECK (prix >= 0)
);

CREATE TABLE Installer (
	nb_postes varchar(7),
	num_logiciel varchar(5),
	num_installation INTEGER(5) AUTO_INCREMENT,
	date_installation TIMESTAMP DEFAULT NOW(),
	delai DECIMAL(8, 2),
	CONSTRAINT pk_installer PRIMARY KEY(num_installation)
);

CREATE TABLE Types (
	type_logiciel_poste varchar(9),
	nom_type varchar(20),
	CONSTRAINT pk_types PRIMARY KEY(type_logiciel_poste)
);
