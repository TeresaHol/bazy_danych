create database firma2;
create schema ksiegowosc;

create table pracownicy ("id_pracownika" serial primary key not null, 
"imie" varchar(50) not null, "nazwisko" varchar(50) not null, "adres" varchar(100), "telefon" varchar(20));
create table godziny ("id_godziny" serial primary key not null, "data" date not null, 
"liczba_godzin" integer not null, "id_pracownika" integer not null); 
create table pensja ("id_pensji" serial primary key not null, "stanowisko" varchar(50) not null, 
"kwota" money, "id_premii" integer not null); 
create table premia ("id_premii" serial primary key not null, "rodzaj" varchar(50) not null, "kwota" money);
create table wynagrodzenie ("id_wynagrodzenia" serial primary key not null, "data" date not null, 
"id_pracownika" integer not null, "id_godziny" integer not null, "id_pensji" integer not null,
"id_premii" integer not null);

alter table godziny add foreign key (id_pracownika) references pracownicy (id_pracownika);
alter table pensja add foreign key (id_premii) references premia (id_premii);
alter table wynagrodzenie  add foreign key (id_pracownika) references pracownicy (id_pracownika);
alter table wynagrodzenie  add foreign key (id_godziny) references godziny (id_godziny);
alter table wynagrodzenie  add foreign key (id_pensji) references pensja (id_pensji);
alter table wynagrodzenie  add foreign key (id_premii) references premia (id_premii);

comment on table pracownicy is 'tabela zawierajaca informacje dotyczące pracowników';
comment on table godziny is 'tabela zawierajaca informacje dotyczące godzin';
comment on table pensja is 'tabela zawierajaca informacje dotyczące pensji';
comment on table premia is 'tabela zawierajaca informacje dotyczące premii';
comment on table wynagrodzenie is 'tabela zawierajaca informacje dotyczące wynagrodzenia';


insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Zofia', 'Wojcieszczak', 'Kraków ul. Miodowa 1', '123234345');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Barbara', 'Szatanik', 'Bydgoszcz ul. Fiołkowa 2', '234345456');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Tadeusz', 'Sokołowski', 'Przemyśl ul. Szkolna 3', '345456567');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Tomasz', 'Rak', 'Poznań ul. Mieszka 4', '456567678');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Anna', 'Wesołkowska', 'Sopot ul. Pomost 5', '567678789');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Weronika', 'Pawlak', 'Tychy ul. Kościelna 6', '678789890');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Agnieszka', 'Skóra', 'Radom ul. Długa 7', '789890901');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Stanisław', 'Poniatowski', 'Sędziszów ul. Polna 8', '890901012');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Renata', 'Marzec', 'Toruń ul. Piernikowa 9', '901012123');
insert into pracownicy (imie, nazwisko, adres, telefon) values 
('Natalia', 'Kozłowska', 'Warszawa ul. Prosta 10', '012123234');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-01-31', '5', '1');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-02-02', '6', '2');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-02-12', '7', '3');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-03-03', '8', '4');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-03-13', '9', '5');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-03-23', '10', '6');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-04-04', '11', '7');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-04-14', '12', '8');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-04-24', '13', '9');
insert into godziny (data, liczba_godzin, id_pracownika) values ('2023-04-16', '14', '10');
insert into premia (rodzaj, kwota) values ('indywidualna', '200');
insert into premia (rodzaj, kwota) values ('indywidualna', '210');
insert into premia (rodzaj, kwota) values ('świąteczna', '220');
insert into premia (rodzaj, kwota) values ('motywacyjna', '230');
insert into premia (rodzaj, kwota) values ('regulaminowa', '240');
insert into premia (rodzaj, kwota) values ('indywidualna', '250');
insert into premia (rodzaj, kwota) values ('motywacyjna', '260');
insert into premia (rodzaj, kwota) values ('wakacyjna', '270');
insert into premia (rodzaj, kwota) values ('motywacyjna', '280');
insert into premia (rodzaj, kwota) values ('wakacyjna', '290');
insert into pensja (stanowisko, kwota, id_premii) values ('seller', '5000', 1);
insert into pensja (stanowisko, kwota, id_premii) values ('graphic designer', '8000', 2);
insert into pensja (stanowisko, kwota, id_premii) values ('economist', '9800', 3);
insert into pensja (stanowisko, kwota, id_premii) values ('financial analyst', '11700', 4);
insert into pensja (stanowisko, kwota, id_premii) values ('social media creator', '6000', 5);
insert into pensja (stanowisko, kwota, id_premii) values ('product designer', '12000', 6);
insert into pensja (stanowisko, kwota, id_premii) values ('IT manager', '12000', 7);
insert into pensja (stanowisko, kwota, id_premii) values ('recruter', '9000', 8);
insert into pensja (stanowisko, kwota, id_premii) values ('marketing manager', '7200', 9);
insert into pensja (stanowisko, kwota, id_premii) values ('editor', '6100', 10);
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-05-20', '1', '1', '1', '1');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-06-21', '2', '2', '2', '2');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-07-22', '3', '3', '3', '3');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-08-23', '4', '4', '4', '4');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-09-24', '5', '5', '5', '5');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-10-25', '6', '6', '6', '6');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-11-26', '7', '7', '7', '7');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-12-27', '8', '8', '8', '8');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-12-28', '9', '9', '9', '9');
insert into wynagrodzenie  (data, id_pracownika , id_godziny, id_pensji, id_premii) values (
'2023-10-29', '10', '10', '10', '10');

#a
select pracownicy.id_pracownika, pracownicy.nazwisko from pracownicy; 
#b
select pracownicy.id_pracownika, pensja.kwota from pracownicy inner join wynagrodzenie on 
pracownicy.id_pracownika = wynagrodzenie.id_pracownika inner join pensja on 
wynagrodzenie.id_pensji = pensja.id_pensji where pensja.kwota > '1000';
#c
select pracownicy.id_pracownika, pensja.kwota as pensja, premia.kwota as premia from pracownicy inner join
wynagrodzenie on pracownicy.id_pracownika = wynagrodzenie.id_pracownika inner join pensja on
wynagrodzenie.id_pensji = pensja.id_pensji inner join premia on premia.id_premii = pensja.id_premii 
where pensja.kwota > '2000' and premia.kwota is null;
#d
select * from pracownicy where pracownicy.imie like 'J%';
#e
select * from pracownicy where pracownicy.imie like 'N%' and pracownicy.imie like '%a';
#f
select pracownicy.imie, pracownicy.nazwisko, (godziny.liczba_godzin-160) as nadgodziny from pracownicy inner join
godziny on godziny.id_pracownika = pracownicy.id_pracownika where godziny.liczba_godzin > '160';
#g
select pracownicy.imie, pracownicy.nazwisko, pensja.kwota from pracownicy inner join wynagrodzenie on 
pracownicy.id_pracownika = wynagrodzenie.id_pracownika inner join pensja on 
wynagrodzenie.id_pensji = pensja.id_pensji where pensja.kwota between '1500' and '3000'; 
#h
select pracownicy.imie, pracownicy.nazwisko, (godziny.liczba_godzin-160) as nadgodziny from pracownicy inner join
godziny on pracownicy.id_pracownika = godziny.id_pracownika inner join wynagrodzenie on 
godziny.id_godziny  = wynagrodzenie.id_godziny inner join pensja on wynagrodzenie.id_pensji = pensja.id_pensji inner join 
premia on premia.id_premii = pensja.id_premii where premia.kwota is null and godziny.liczba_godzin > '160';
#i
select pensja.kwota, pracownicy.* from pracownicy inner join wynagrodzenie on pracownicy.id_pracownika = wynagrodzenie.id_pracownika 
inner join pensja on wynagrodzenie.id_pensji = pensja.id_pensji order by pensja.kwota;
#j
select pensja.kwota as pensja, premia.kwota as premia, pracownicy.* from pracownicy inner join
wynagrodzenie on pracownicy.id_pracownika = wynagrodzenie.id_pracownika inner join pensja on
wynagrodzenie.id_pensji = pensja.id_pensji inner join premia on premia.id_premii = pensja.id_premii 
order by pensja.kwota, premia.kwota desc;