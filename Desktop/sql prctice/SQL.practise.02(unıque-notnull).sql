CREATE TABLE tekrarsız
(
name varchar(50),
	last_name varchar(50),
	id char(4)UNIQUE

);
SELECT*FROM tekrarsız
--UNIQUE--
  ------
INSERT INTO tekrarsız VALUES('Fatih','Küpeli',1234);
INSERT INTO tekrarsız VALUES('Ahmet','Kücük',1234);--Bu hatayı veriyor( duplicate key value violates unique constraint "tekrarsız_id_key")
--cunku id'yi tekrarsızyaptık...


--NOT NULL-- Kullanımı---
 ---------------------
CREATE TABLE isim(

id char(5)UNIQUE,
	names varchar(50)NOT NULL,
	tarih date
); 

INSERT INTO isim VALUES(1223,'Hakkı','2022-02-25');
INSERT INTO isim VALUES(1234,'Hüseyin','2022-10-23');
--insert into isim values(1230,'NULL','2022-10-23');--Hata veriyor kabul etmiyor----
SELECT*FROM isim


