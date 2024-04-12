create table pracownicy ("id_pracownika" primary key not null, 
"imie" varchar(50) not null, "nazwisko" varchar(50) not null, "adres" varchar(100), "telefon" varchar(20));
create table godziny ("id_godziny" primary key not null, "data" date not null, 
"liczba_godzin" integer not null, "id_pracownika" integer not null); 
create table pensje ("id_pensji" primary key not null, "stanowisko" varchar(50) not null, 
"kwota" float8, "id_premii" integer not null); 
create table premie ("id_premii" primary key not null, "rodzaj" varchar(50) not null, "kwota" float8); 

alter table godziny add foreign key (id_pracownika) references pracownicy (id_pracownika);
alter table pensje add foreign key (id_premii) references premie (id_premii);

insert into rozliczenia.pracownicy (id_pracownika, imie, nazwisko, adres, telefon) values 
('B01','Karolina', 'Cygan', 'Wierzbowa 22/15 Gniezno', '789890901');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B02','Janina', 'Malinowska', 'Topolowa 13 Sanok', '890901012');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B03','Stefan', 'Wykręt', 'Tulipanowcowa 5c Bydgoszcz', '098987876');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B04','Angelica', 'Drzymała', 'Grabowa 115 Zamość', '987876765');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B05','Jan', 'Krzyczek', 'Cisowa 28a Legnica', '876765654');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B06','Alina', 'Kowal', 'Klonowa 27 Opole', '765654543');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B07','Bartłomiej', 'Lorek', 'Brzozowa 2/3 Białystok', '654543432');
insert into rozliczenia.pracownicy (id_pracownika,imie, nazwisko, adres, telefon) values 
('B08','Michalina', 'Habier', 'Świerkowa 3 Bielsko-Biała', '543432321');

insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('1','2023-04-10', '8', 'A01');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('2','2023-04-10', '6', 'A02');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('3','2023-04-10', '7', 'B01');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('4','2023-04-10', '8', 'B02');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('5','2023-04-10', '9', 'B03');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('6','2023-04-10', '10', 'B04');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('7','2023-04-10', '8', 'B05');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('8','2023-04-10', '6', 'B06');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('9','2023-04-10', '5', 'B07');
insert into godziny (id_godziny, data, liczba_godzin, id_pracownika) values ('10','2023-04-10', '7', 'B08');

insert into premie (id_premii, rodzaj, kwota) values ('P1','motywacyjna', '400');
insert into premie (id_premii, rodzaj, kwota) values ('P2','indywidualna', '210');
insert into premie (id_premii, rodzaj, kwota) values ('P3','świąteczna', '150');
insert into premie (id_premii, rodzaj, kwota) values ('P4','motywacyjna', '320');
insert into premie (id_premii, rodzaj, kwota) values ('P5','świąteczna', '240');
insert into premie (id_premii, rodzaj, kwota) values ('P6','indywidualna', '600');
insert into premie (id_premii, rodzaj, kwota) values ('P7','indywidualna', '520');
insert into premie (id_premii, rodzaj, kwota) values ('P8', 'wakacyjna', '270');
insert into premie (id_premii, rodzaj, kwota) values ('P9', 'motywacyjna', '380');
insert into premie (id_premii, rodzaj, kwota) values ('P10', 'indywidualna', '290');

insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE1', 'ECONOMETRIST', '15000', 'P1');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE2', 'PRESS OFFICER', '9900', 'P2');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE3', 'SOCIAL MEDIA CREATOR', '6800', 'P3');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE4', 'FINANCIAL ANALYST', '9700', 'P4');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE5', 'SELLER', '6600', 'P5');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE6', 'HR', '7500', 'P6');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE7', 'ECONOMIST', '9400', 'P7');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE8', 'EDITOR', '7300', 'P8');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE9', 'MARKETING DEVELOPER', '8200', 'P9');
insert into pensje (id_pensji, stanowisko, kwota, id_premii) values ('PE10', 'MARKETING MANAGER', '8100', 'P10');

select pracownicy.nazwisko, pracownicy.adres from pracownicy; 

select date_part('day', godziny."data") as dzien, date_part('month', godziny."data") as miesiac from godziny;

alter table pensje rename column kwota to kwota_brutto; 
alter table pensje add column kwota_netto float8;
update pensje set kwota_netto = kwota_brutto*0.8;