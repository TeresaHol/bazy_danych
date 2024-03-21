-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-03-21 19:09:24.485

-- tables
-- Table: Artykuly
CREATE TABLE Artykuly (
    IDZamowienia varchar(4)  NOT NULL,
    IDPudelka varchar(4)  NOT NULL,
    Sztuk int  NULL,
    CONSTRAINT Artykuly_pk PRIMARY KEY (IDZamowienia,IDPudelka)
);

-- Table: Czekoladki
CREATE TABLE Czekoladki (
    IdCzekoladki varchar(3)  NOT NULL,
    Nazwa varchar(30)  NULL,
    RodzajCzekolady varchar(15)  NOT NULL,
    RodzajOrzechow varchar(15)  NOT NULL,
    RodzajNadzienia varchar(15)  NOT NULL,
    Opis varchar(255)  NOT NULL,
    Koszt money  NOT NULL,
    Masa int  NOT NULL,
    CONSTRAINT Czekoladki_pk PRIMARY KEY (IdCzekoladki)
);

-- Table: Klienci
CREATE TABLE Klienci (
    IDKlienta varchar(6)  NOT NULL,
    Nazwa varchar(80)  NOT NULL,
    Ulica varchar(80)  NOT NULL,
    Miejscowosc varchar(80)  NOT NULL,
    Kod varchar(255)  NOT NULL,
    Telefon varchar(255)  NOT NULL,
    CONSTRAINT Klienci_pk PRIMARY KEY (IDKlienta)
);

-- Table: Pudelka
CREATE TABLE Pudelka (
    IDPudelka varchar(4)  NOT NULL,
    Nazwa varchar(255)  NULL,
    Opis varchar(255)  NULL,
    Cena money  NULL,
    Stan varchar(255)  NULL,
    CONSTRAINT Pudelka_pk PRIMARY KEY (IDPudelka)
);

-- Table: Zamowienia
CREATE TABLE Zamowienia (
    IDZamowienia varchar(4)  NOT NULL,
    IDKlienta varchar(6)  NOT NULL,
    DataRealizacji date  NULL,
    CONSTRAINT Zamowienia_pk PRIMARY KEY (IDZamowienia)
);

-- Table: Zawartosc
CREATE TABLE Zawartosc (
    IDPudelka varchar(4)  NOT NULL,
    IdCzekoladki varchar(3)  NOT NULL,
    Sztuk int  NULL,
    CONSTRAINT Zawartosc_pk PRIMARY KEY (IDPudelka,IdCzekoladki)
);

-- foreign keys
-- Reference: Artykuly_Pudelka (table: Artykuly)
ALTER TABLE Artykuly ADD CONSTRAINT Artykuly_Pudelka
    FOREIGN KEY (IDPudelka)
    REFERENCES Pudelka (IDPudelka)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Artykuly_Zamowienia (table: Artykuly)
ALTER TABLE Artykuly ADD CONSTRAINT Artykuly_Zamowienia
    FOREIGN KEY (IDZamowienia)
    REFERENCES Zamowienia (IDZamowienia)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Pudelka_Zawartosc (table: Zawartosc)
ALTER TABLE Zawartosc ADD CONSTRAINT Pudelka_Zawartosc
    FOREIGN KEY (IDPudelka)
    REFERENCES Pudelka (IDPudelka)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Zamowienia_Klienci (table: Zamowienia)
ALTER TABLE Zamowienia ADD CONSTRAINT Zamowienia_Klienci
    FOREIGN KEY (IDKlienta)
    REFERENCES Klienci (IDKlienta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Zawartosc_Czekoladki (table: Zawartosc)
ALTER TABLE Zawartosc ADD CONSTRAINT Zawartosc_Czekoladki
    FOREIGN KEY (IdCzekoladki)
    REFERENCES Czekoladki (IdCzekoladki)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

