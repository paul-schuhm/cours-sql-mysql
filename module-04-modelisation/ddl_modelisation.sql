-- Créer la base de données avec l'user root et donnez tous les privlèges dessus à l'user dev:
-- CREATE DATABASE modelisation;
-- GRANT ALL PRIVILEGES ON modelisation.* TO 'dev'@'localhost';

USE modelisation;

-- inline constraint (attetion, primary key ne fait pas AUTO_INCREMENT par défaut)
CREATE TABLE IF NOT EXISTS Client(
    id_client INTEGER PRIMARY KEY, 
    nom_client VARCHAR(40) NOT NULL,
    prenom_client VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Facture(
    id_facture INTEGER PRIMARY KEY,
    id_client INTEGER,
    num_facture VARCHAR(10),
    date_emission DATE,
    montant_euro DECIMAL(7, 2),
    paye BOOLEAN DEFAULT false COMMENT 'Par défaut: impayé',
    CONSTRAINT fk_client_possede_facture FOREIGN KEY(id_client) REFERENCES Client(id_client)
);

-- Décrire les tables (DESC est l'abbréviation de DESCRIBE)
-- DESC Client;
-- DESC Facture;

-- Insertion des données

-- INSERT INGORE permet d'ignorer les insert qui échoue (ex: contrainte violée sur PK car la donnée a déjà été insérée) et de continuer la requete malgré les erreurs (pratique pour debug).


INSERT IGNORE INTO
    Client (id_client, nom_client, prenom_client)
VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Doe');

-- DATE attend les dates au format YYYY-MM-DD
INSERT IGNORE INTO 
    Facture (
        id_facture,
        id_client,
        num_facture,
        date_emission,
        montant_euro,
        paye
    )
    VALUES
    (1, 1, 'F-900-08', '2022-12-12', 120.5, FALSE),
    (2, 1, 'F-500-02', '2023-13-01', 90, TRUE),
    (3, 2, 'Z-500-03', '2023-01-01', 1000, FALSE),
    (4, 2, 'J-400-02', '2023-09-11', 800, TRUE),
    (5, 2, 'F-434-04', '2023-12-22', 400, FALSE);