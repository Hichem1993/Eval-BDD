CREATE TABLE IF NOT EXISTS Consultation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_naissance DATE NOT NULL,
    prix SMALLINT NOT NULL
);


CREATE TABLE IF NOT EXISTS Médecin (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    id_consultation INT,
    FOREIGN KEY(id_consultation) REFERENCES Consultation(id)
);


CREATE TABLE IF NOT EXISTS Malade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    id_consultation INT,
    FOREIGN KEY(id_consultation) REFERENCES Consultation(id)
);


CREATE TABLE IF NOT EXISTS Maladie (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS Symptome (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL
);



CREATE TABLE IF NOT EXISTS Consultation_Symptome (
    id_symptome INT,
    id_consultation INT,
    FOREIGN KEY(id_symptome) REFERENCES Symptome(id),
    FOREIGN KEY(id_consultation) REFERENCES Consultation(id)
);


CREATE TABLE IF NOT EXISTS Consultation_Maladie (
    id_maladie INT,
    id_consultation INT,
    FOREIGN KEY(id_maladie) REFERENCES Maladie(id),
    FOREIGN KEY(id_consultation) REFERENCES Consultation(id)
);


CREATE TABLE IF NOT EXISTS Symptome_Maladie (
    id_maladie INT,
    id_symptome INT,
    FOREIGN KEY(id_maladie) REFERENCES Maladie(id),
    FOREIGN KEY(id_symptome) REFERENCES Symptome(id)
);