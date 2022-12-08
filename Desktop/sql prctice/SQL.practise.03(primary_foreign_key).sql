CREATE TABLE anahtar(
--PRIMARY KEY EKLEMENİN 1.YOLU
	id char(5)PRIMARY KEY,
	isim varchar(70),
	tarih date
);

INSERT INTO anahtar VALUES(2589,'Hakan','2030-12-30');
INSERT INTO anahtar VALUES(2588,'Hakani','2029-12-30');

SELECT*FROM anahtar
delete from anahtar;

--PRIMARY KEY EKLEMENİN 2.YOLU
CREATE TABLE ogrenciler001
(
id char(4),
isim varchar(50) NOT NULL, 
not_ortalamasi real,
kayit_tarihi date,
CONSTRAINT ogrenciler001_pk PRIMARY KEY(id)
);

INSERT INTO ogrenciler001 values(2541,'Abdurrahman',65.71,'2022-09-10');
INSERT INTO ogrenciler001 values(2542,'Abdurrezzak',65.72,'2022-09-13');
INSERT INTO ogrenciler001 values(2543,'Eburahman',65.70,'2022-09-12');
INSERT INTO ogrenciler001 values(2544,'Ali',65.74,'2022-09-11');

CREATE TABLE ogrenciler002
AS SELECT id,isim,not_ortalamasi FROM ogrenciler001;

SELECT*FROM ogrenciler001;
select*from ogrenciler002

CREATE TABLE working(

id char(5),
	isim varchar(50)UNIQUE,
	maas int NOT NULL,
	ise_baslama char(10),
	CONSTRAINT working_pk PRIMARY KEY(id)
);
INSERT INTO working VALUES('10002', 'Mehmet Yılmaz1' ,12000, '2018-04-14'); 
INSERT INTO working VALUES('10008', null, 5000, '2018-04-14');
INSERT INTO working VALUES('10010', 'Mehmet Yılmaz', 5000, '2018-04-14'); 
INSERT INTO working VALUES('10004', 'Veli Han', 5000, '2018-04-14');
INSERT INTO working VALUES('10005', 'Mustafa Ali', 5000, '2018-04-14');
INSERT INTO working VALUES('10006', 'Canan Yaş', NULL, '2019-04-12');--maas fiel dı bos olamaz... 

SELECT*FROM working;

CREATE TABLE adresler(
adres_id varchar(100),
	sokak varchar(50),
	cadde varchar(50),
	sehir varchar(50),
	FOREIGN KEY (adres_id) REFERENCES working(id)
);
INSERT INTO adresler VALUES('10003','Mutlu Sok', '40.Cad.','IST');
INSERT INTO adresler VALUES('10003','Can Sok', '50.Cad.','Ankara');
INSERT INTO adresler VALUES('10002','Ağa Sok', '30.Cad.','Antep');
-- Parent tabloda olmayan id ile child a ekleme yapamayiz
INSERT INTO adresler VALUES('10012','Ağa Sok', '30.Cad.','Antep');--parent te olmayan id den childe ekleme yapamayiz...
-- FK'ye null değeri atanabilir.
INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Antep');
INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Maraş');

SELECT*FROM adresler;

