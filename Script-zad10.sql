CREATE TABLE GeoEon (
    id_eon serial  NOT NULL,
    nazwa_eon varchar(30)  NOT NULL,
    CONSTRAINT GeoEon_pk PRIMARY KEY (id_eon)
);

-- Table: GeoEpoka
CREATE TABLE GeoEpoka (
    id_epoka serial  NOT NULL,
    id_okres serial  NOT NULL,
    nazwa_epoka varchar(30)  NOT NULL,
    CONSTRAINT GeoEpoka_pk PRIMARY KEY (id_epoka)
);

-- Table: GeoEra
CREATE TABLE GeoEra (
    id_era serial  NOT NULL,
    id_eon serial  NOT NULL,
    nazwa_era varchar(30)  NOT NULL,
    CONSTRAINT GeoEra_pk PRIMARY KEY (id_era)
);

-- Table: GeoOkres
CREATE TABLE GeoOkres (
    id_okres serial  NOT NULL,
    id_era serial  NOT NULL,
    nazwa_okres varchar(30)  NOT NULL,
    CONSTRAINT GeoOkres_pk PRIMARY KEY (id_okres)
);

-- Table: GeoPietro
CREATE TABLE GeoPietro (
    id_pietro serial  NOT NULL,
    id_epoka serial  NOT NULL,
    nazwa_pietro varchar(30)  NOT NULL,
    CONSTRAINT GeoPietro_pk PRIMARY KEY (id_pietro)
);

-- foreign keys
-- Reference: GeoEpoka_GeoOkres (table: GeoEpoka)
ALTER TABLE GeoEpoka ADD CONSTRAINT GeoEpoka_GeoOkres
    FOREIGN KEY (id_okres)
    REFERENCES GeoOkres (id_okres)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: GeoEra_GeoEon (table: GeoEra)
ALTER TABLE GeoEra ADD CONSTRAINT GeoEra_GeoEon
    FOREIGN KEY (id_eon)
    REFERENCES GeoEon (id_eon)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: GeoOkres_GeoEra (table: GeoOkres)
ALTER TABLE GeoOkres ADD CONSTRAINT GeoOkres_GeoEra
    FOREIGN KEY (id_era)
    REFERENCES GeoEra (id_era)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: GeoPietro_GeoEpoka (table: GeoPietro)
ALTER TABLE GeoPietro ADD CONSTRAINT GeoPietro_GeoEpoka
    FOREIGN KEY (id_epoka)
    REFERENCES GeoEpoka (id_epoka)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

INSERT INTO GeoEon (nazwa_eon) VALUES ('Fanerozoik');

INSERT INTO GeoEra (id_eon, nazwa_era) VALUES (1, 'Kenzoik');
INSERT INTO GeoEra (id_eon, nazwa_era) VALUES (1, 'Mezozoik');
INSERT INTO GeoEra (id_eon, nazwa_era) VALUES (1, 'Paleozoik');

INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (1, 'Czwartorzęd');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (1, 'Neogen');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (1, 'Paleogen');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (2, 'Kreda');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (2, 'Jura');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (2, 'Trias');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (3, 'Perm');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (3, 'Karbon');
INSERT INTO GeoOkres (id_era, nazwa_okres) VALUES (3, 'Devon');

INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (1, 'Halocen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (1, 'Plejstocen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (2, 'Pliocen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (2, 'Miocen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (3, 'Oligocen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (3, 'Eoncen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (3, 'Paleocen');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (4, 'Górna');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (4, 'Dolna');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (5, 'Górna');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (5, 'Środkowa');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (5, 'Dolna');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (6, 'Górny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (6, 'Środkowy');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (6, 'Dolny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (7, 'Górny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (7, 'Dolny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (8, 'Górny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (8, 'Dolny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (9, 'Górny');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (9, 'Środkowy');
INSERT INTO GeoEpoka (id_okres, nazwa_epoka) VALUES (9, 'Dolny');

INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (3, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (3, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (3, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (4, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (4, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (4, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (4, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (4, 'Pietro5');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (4, 'Pietro6');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (5, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (5, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (6, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (6, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (6, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (6, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (7, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (7, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (7, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (8, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (8, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (8, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (8, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (8, 'Pietro5');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (8, 'Pietro6');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (9, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (9, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (9, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (9, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (9, 'Pietro5');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (9, 'Pietro6');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (10, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (10, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (10, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (11, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (11, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (11, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (11, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (12, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (12, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (12, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (12, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (13, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (13, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (13, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (14, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (14, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (15, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (15, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (16, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (16, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (16, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (17, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (17, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (17, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (17, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (18, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (18, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (18, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (18, 'Pietro4');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (19, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (19, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (19, 'Pietro3');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (20, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (20, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (21, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (21, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (22, 'Pietro1');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (22, 'Pietro2');
INSERT INTO GeoPietro (id_epoka, nazwa_pietro) VALUES (22, 'Pietro3');


CREATE TABLE GeoTabela AS (SELECT * FROM GeoPietro NATURAL JOIN GeoEpoka NATURAL
JOIN GeoOkres NATURAL JOIN GeoEra NATURAL JOIN GeoEon );

CREATE TABLE Dziesiec (
    cyfra int PRIMARY KEY,
    bit int
);
INSERT INTO Dziesiec (cyfra, bit) VALUES (0, 0);
INSERT INTO Dziesiec (cyfra, bit) VALUES (1, 1);
INSERT INTO Dziesiec (cyfra, bit) VALUES (2, 0);
INSERT INTO Dziesiec (cyfra, bit) VALUES (3, 1);
INSERT INTO Dziesiec (cyfra, bit) VALUES (4, 0);
INSERT INTO Dziesiec (cyfra, bit) VALUES (5, 1);
INSERT INTO Dziesiec (cyfra, bit) VALUES (6, 0);
INSERT INTO Dziesiec (cyfra, bit) VALUES (7, 1);
INSERT INTO Dziesiec (cyfra, bit) VALUES (8, 0);
INSERT INTO Dziesiec (cyfra, bit) VALUES (9, 1);

CREATE TABLE Milion (
    liczba int,
    cyfra int,
    bit int
);
INSERT INTO Milion (liczba, cyfra, bit)
SELECT
    a1.cyfra + 10 * a2.cyfra + 100 * a3.cyfra + 1000 * a4.cyfra + 10000 * a5.cyfra + 100000 * a6.cyfra AS liczba,
    a1.cyfra AS cyfra,
    a1.bit AS bit
FROM
    Dziesiec a1,
    Dziesiec a2,
    Dziesiec a3,
    Dziesiec a4,
    Dziesiec a5,
    Dziesiec a6;
   
-- Indeksy do tabeli GeoEon
CREATE INDEX idx_nazwa_eon ON GeoEon (nazwa_eon);

-- Indeksy do tabeli GeoEpoka
CREATE INDEX idx_nazwa_epoka ON GeoEpoka (nazwa_epoka);
CREATE INDEX idx_id_okres ON GeoEpoka (id_okres);

-- Indeksy do tabeli GeoEra
CREATE INDEX idx_nazwa_era ON GeoEra (nazwa_era);
CREATE INDEX idx_id_eon ON GeoEra (id_eon);

-- Indeksy do tabeli GeoOkres
CREATE INDEX idx_nazwa_okres ON GeoOkres (nazwa_okres);
CREATE INDEX idx_id_era ON GeoOkres (id_era);

-- Indeksy do tabeli GeoPietro
CREATE INDEX idx_nazwa_pietro ON GeoPietro (nazwa_pietro);
CREATE INDEX idx_id_epoka ON GeoPietro (id_epoka);

-- Indeksy do tabeli Dziesiec
CREATE UNIQUE INDEX idx_cyfraa ON Dziesiec (cyfra);
CREATE INDEX idx_bitt ON Dziesiec (bit);

-- Indeksy do tabeli Milion
CREATE INDEX idx_liczba ON Milion (liczba);
CREATE INDEX idx_cyfra ON Milion (cyfra);
CREATE INDEX idx_bit ON Milion (bit);


--ZL1
SELECT COUNT(*) FROM milion INNER JOIN GeoTabela ON
(mod(milion.liczba,68)=(GeoTabela.id_pietro));

--ZL2
SELECT COUNT(*) FROM Milion INNER JOIN GeoPietro ON
(mod(Milion.liczba,68)=GeoPietro.id_pietro) NATURAL JOIN GeoEpoka NATURAL JOIN
GeoOkres NATURAL JOIN GeoEra NATURAL JOIN GeoEon;

--ZL3
SELECT COUNT(*) FROM Milion WHERE mod(Milion.liczba,68)=
(SELECT id_pietro FROM GeoTabela WHERE mod(Milion.liczba,68)=(id_pietro));

--ZL4
SELECT COUNT(*) FROM Milion WHERE mod(Milion.liczba,68) IN
(SELECT GeoPietro.id_pietro FROM GeoPietro NATURAL JOIN GeoEpoka NATURAL JOIN
GeoOkres NATURAL JOIN GeoEra NATURAL JOIN GeoEon);