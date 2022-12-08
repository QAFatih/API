CREATE TABLE kalemler(
	
	
	id char(5),
	marka_isim varchar(50),
	fiyat real,
	adet real
	
);

INSERT INTO kalemler VALUES(12345,'Pencil',5,100);
INSERT INTO kalemler VALUES(12346,'Faber',10,150);
INSERT INTO kalemler VALUES(12347,'Picacu',15,90);
INSERT INTO kalemler VALUES(12348,'Pilot',25,120);
INSERT INTO kalemler VALUES(23546,'Mikro',30,70);
INSERT INTO kalemler VALUES(45678,'Stabilo',50,75);
INSERT INTO kalemler(marka_isim,adet)VALUES('Andic',200);
INSERT INTO kalemler(id,fiyat)VALUES(3698,60);


SELECT*FROM kalemler
SELECT * FROM kalemler_new_table

DELETE FROM kalemler
DELETE FROM kalemler_new_table

CREATE TABLE kalemler_new_table
AS SELECT marka_isim,fiyat FROM kalemler;

INSERT INTO kalemler_new_table VALUES('Jelı',17);
INSERT INTO kalemler_new_table VALUES('Pelit',24);
INSERT INTO kalemler_new_table(marka_isim)VALUES('Asus');

--Tablodan istenen sutunları cagırma...
SELECT marka_isim FROM kalemler;

-Tablodan tum sutunları cagırma...
SELECT * FROM kalemler;








