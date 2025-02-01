CREATE TABLE IF NOT EXISTS proprietaire (
    id_prop INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    tel VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS appart_maison (
    id_appart_maison INTEGER PRIMARY KEY AUTOINCREMENT,
    taille SMALLINT NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    prix_location SMALLINT NOT NULL,
    id_contrat SMALLINT NOT NULL,
    duree SMALLINT NOT NULL,
    pourcentage SMALLINT NOT NULL,
    prop_id INT,
    FOREIGN KEY(prop_id) REFERENCES proprietaire(id_prop)
);


CREATE TABLE IF NOT EXISTS bail (
    num_bail INTEGER PRIMARY KEY AUTOINCREMENT,
    periode SMALLINT NOT NULL,
    appart_maison_id INT,
    FOREIGN KEY(appart_maison_id) REFERENCES appart_maison(id_appart_maison)
);


CREATE TABLE IF NOT EXISTS locataire (
    id_locataire INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    tel VARCHAR(255) NOT NULL,
    appart_maison_id INT,
    FOREIGN KEY(appart_maison_id) REFERENCES appart_maison(id_appart_maison)
);