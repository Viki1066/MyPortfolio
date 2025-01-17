﻿SET IDENTITY_INSERT STANICE ON;
INSERT INTO STANICE (STANICA_BR,NAZIV_STANICE)  VALUES(1,'Prva')
INSERT INTO STANICE (STANICA_BR,NAZIV_STANICE)  VALUES(2,'Druga')
INSERT INTO STANICE (STANICA_BR,NAZIV_STANICE)  VALUES(3,'Treća')
SET IDENTITY_INSERT STANICE OFF;

SET IDENTITY_INSERT ZAPOSLENICI ON;
INSERT INTO ZAPOSLENICI (ID_ZAPOSLENIKA,IME,PREZIME,ADRESA,MOBITEL,STANICA_BR) VALUES (1,'Ana', 'Šare', 'Miminac 16','095/568/6598',1)
INSERT INTO ZAPOSLENICI (ID_ZAPOSLENIKA,IME,PREZIME,ADRESA,MOBITEL,STANICA_BR) VALUES (2,'Marjana', 'Ivić', 'Ulica lipa 56','098/336-554',2)
INSERT INTO ZAPOSLENICI (ID_ZAPOSLENIKA,IME,PREZIME,ADRESA,MOBITEL,STANICA_BR) VALUES (3,'Sonja', 'Prebanda', 'Obala maratuša 78','092/365-987',3)
SET IDENTITY_INSERT ZAPOSLENICI OFF;

INSERT INTO KATEGORIJE
(KATEGORIJA_ID,DULJINA_KOSE)
VALUES (1,'KRATKA'),
(2,'SREDNJA'),
(3,'DUGA')

INSERT INTO USLUGE
(ID_USLUGA, NAZIV, CIJENA,ID_ZAPOSLENIKA,KATEGORIJA_ID)
VALUES
(100,'Pranje i frizura', 70.00,1,1),
(101,'Pranje i frizura', 80.00,1,2),
(102,'Pranje i frizura', 90.00,1,3),
(200,'Minival i frizura',210.00,2,1),
(201,'Minival i frizura',280.00,2,2),
(202,'Minival i frizura',350.00,2,3),
(300,'Bojanje kose ,prmenovi cijela glava, šišanje i frizura', 320.00, 3,1),
(301,'Bojanje kose ,prmenovi cijela glava, šišanje i frizura', 370.00, 3,2),
(302,'Bojanje kose ,prmenovi cijela glava, šišanje i frizura', 430.00, 3,3)

SET IDENTITY_INSERT KUPCI ON
INSERT INTO KUPCI
(ID_KUPCA,IME,PREZIME,MOBITEL,DATUM_RODJENJA)
VALUES
(1,'Ivana','Marković','099/568-236','1997-12-05'),
(2,'Sanja','Stegić','092/536-125','1986-05-05'),
(3,'Đurđa','Lonjić','091/568-625',null),
(4,'Josipa','Landeka','092/135-56987',null)
SET IDENTITY_INSERT KUPCI OFF

SET IDENTITY_INSERT REZERVACIJE ON
INSERT INTO REZERVACIJE
(REZERVACIJA_BR, KUPAC_ID,DATUM, VRIJEME)
VALUES
(1,1,'2021-04-17',' 17:00:00'),
(2,2,'2021-04-17', '18:00:00'),
(3,4,'2021-06-17', '11:30:00'),
(4,3,'2021-07-05', '08:00:00')

SET IDENTITY_INSERT REZERVACIJE OFF

SET IDENTITY_INSERT  EVIDENCIJA_RACUNA  ON
INSERT INTO EVIDENCIJA_RACUNA
(RACUN_ID,KUPAC_ID,USLUGA_ID,CIJENA,STANICA_BR)
VALUES
(1,1,300,320.00,3),
(2,2,201,280.00,2)





