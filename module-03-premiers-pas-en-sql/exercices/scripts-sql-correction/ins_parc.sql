--

DELETE FROM Types;
DELETE FROM Installer;
DELETE FROM Poste;
DELETE FROM Salle;
DELETE FROM Segment;
DELETE FROM Logiciel;

INSERT INTO Segment(ind_ip,nom_segment,etage) VALUES ('130.120.80','Brin RDC',NULL);
INSERT INTO Segment(ind_ip,nom_segment,etage)  VALUES ('130.120.81','Brin 1er etage',NULL);
INSERT INTO Segment(ind_ip,nom_segment,etage)  VALUES ('130.120.82','Brin 2eme etage',NULL);

INSERT INTO Salle(num_salle,nom_salle,nb_postes,ind_ip) VALUES ('s01','Salle 1',3,'130.120.80');
INSERT INTO Salle(num_salle,nom_salle,nb_postes,ind_ip) VALUES ('s02','Salle 2',2,'130.120.80');
INSERT INTO Salle(num_salle,nom_salle,nb_postes,ind_ip) VALUES ('s03','Salle 3',2,'130.120.80');
INSERT INTO Salle(num_salle,nom_salle,nb_postes,ind_ip) VALUES ('s11','Salle 11',2,'130.120.81');
INSERT INTO Salle(num_salle,nom_salle,nb_postes,ind_ip) VALUES ('s12','Salle 12',1,'130.120.81');
INSERT INTO Salle(num_salle,nom_salle,nb_postes,ind_ip) VALUES ('s21','Salle 21',2,'130.120.82');


INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p2','Poste 2','130.120.80','2','UNIX','s01');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p3','Poste 3','130.120.80','03','TX','s01');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p4','Poste 4','130.120.80','04','PCWS','s02');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p1','Poste 1','130.120.80','01','TX','s01');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p5','Poste 5','130.120.80','05','PCWS','s02');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p6','Poste 6','130.120.80','06','UNIX','s03');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p7','Poste 7','130.120.80','07','TX','s03');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p8','Poste 8','130.120.81','01','UNIX','s11');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p9','Poste 9','130.120.81','02','TX','s11');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p10','Poste 10','130.120.81','03','UNIX','s12');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p11','Poste 11','130.120.82','01','PCNT','s21');
INSERT INTO Poste(num_poste,nom_poste,ind_ip,ad,type_poste,num_salle) VALUES ('p12','Poste 12','130.120.82','02','PCWS','s21');

INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log1','Oracle 6',   '1995-05-13','6.2','UNIX',3000);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log2','Oracle 8',   '1999-09-15','8i','UNIX',5600);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log3','SQL Server', '1998-04-12','7','PCNT',3000);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log4','Front Page', '1997-06-03','5','PCWS',500);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log5','WinDev',     '1997-05-12','5','PCWS',750);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log6','SQL*Net',     NULL, '2.0','UNIX',500);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log7','I. I. S.',   '2002-04-12','2','PCNT',900);
INSERT INTO Logiciel(numero_logiciel,nom_logiciel,date_achat,version,type_logiciel,prix) VALUES ('log8','DreamWeaver','2003-09-21','2.0','BeOS',1400);


INSERT INTO Types VALUES ('TX',  'Terminal X-Window');
INSERT INTO Types VALUES ('UNIX','Systeme Unix');
INSERT INTO Types VALUES ('PCNT','PC Windows  NT');
INSERT INTO Types VALUES ('PCWS','PC Windows');
INSERT INTO Types VALUES ('NC',  'Network Computer');


INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p2', 'log1', '2003-05-15',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p2', 'log2', '2003-09-17',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p4', 'log5',  NULL,NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p6', 'log6', '2003-05-20',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p6', 'log1', '2003-05-20',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p8', 'log2', '2003-05-19',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p8', 'log6', '2003-05-20',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p11','log3', '2003-04-20',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p12','log4', '2003-04-20',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p11','log7', '2003-04-20',NULL);
INSERT INTO Installer (num_poste,numero_logiciel,date_installation,delai) VALUES ('p7', 'log7', '2002-04-01',NULL);


SELECT * FROM Segment;

SELECT * FROM Salle;

SELECT * FROM Poste;

SELECT * FROM Logiciel;

SELECT * FROM Installer;

SELECT * FROM Types;
