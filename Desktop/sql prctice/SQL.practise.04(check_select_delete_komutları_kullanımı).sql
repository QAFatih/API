
--CHECK (sartının) KULLANIMI
CREATE TABLE sehir(
	alan_kodu int PRIMARY KEY,
	isim varchar(30)NOT NULL,
	nufus int CHECK(nufus>0)
);
SELECT*FROM sehir

INSERT INTO sehir VALUES(328,'Osmaniye',95000);
INSERT INTO sehir VALUES(312,'İstanbul',170000);
INSERT INTO sehir VALUES(315,'Konya',10000);

--SELECT KOMUTUNUN KULLANIMI---

SELECT alan_kodu FROM sehir

--nufusu 10000 den buyuk olanları listele
SELECT nufus FROM sehir WHERE nufus>10000;

--nufusu 10000 den buyuk olan sehirleri listele
SELECT isim FROM sehir WHERE  nufus>10000;

--Nufusu 50000 nin uzerinde olan sehirlerin isimlerini ve alan kodlarını listele
SELECT isim,alan_kodu FROM sehir WHERE nufus>50000;

--DELETE KOMUTU KULLANIMI--
DELETE FROM sehir WHERE nufus=1;
DELETE FROM sehir WHERE isim='İstanbul';

CREATE TABLE ogrenciler6
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int 
);
SELECT * FROM ogrenciler6;

INSERT INTO ogrenciler6 VALUES(123, 'Ali Cankır', 'Hasan',75);
INSERT INTO ogrenciler6 VALUES(124, 'Merve Gulse', 'Ayse',85);
INSERT INTO ogrenciler6 VALUES(125, 'Kemal Yasar', 'Hasan',85);
INSERT INTO ogrenciler6 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler6 VALUES(127, 'Mustafa Celik', 'Can',99);
INSERT INTO ogrenciler6 VALUES(127, 'Mustafa Bakkal', 'Ali', 99);

-- id'si 124 olan ogrenciyi siliniz

DELETE FROM ogrenciler6 WHERE id=124;
--İsmi mustafa bak olan ogrenciyi sil...
DELETE FROM ogrenciler6 WHERE isim='Mustafa Bak';

--ismi Ali Can ve id si 123 olan ogrenciyi sil...
DELETE FROM ogrenciler6 WHERE id=123;

-- ismi Nesibe Yilmaz veya Mustafa Bak olan kayıtları silelim.
DELETE FROM ogrenciler6 WHERE isim='Nesibe Yilmaz' or isim='Mustafa Bak';
--id si 124,125 olanları siliniz...
DELETE FROM ogrenciler6 WHERE id=125 or id=126 or id=127;
-- İsmi Ali Can ve id'si 123 olan kaydı siliniz.
DELETE FROM ogrenciler6 WHERE isim='Ali Cankır' And id=123;
--id 'si 126'dan büyük olan kayıtları silelim
DELETE FROM ogrenciler6 WHERE id>126;

--TRUNCATE--
--Secmeli silme yapamaz , tamamını siler...
--Where... kullanamayız.
CREATE TABLE ogrencilers
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int 
);
INSERT INTO ogrencilers VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrencilers VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrencilers VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrencilers VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrencilers VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrencilers VALUES(127, 'Mustafa Bak', 'Ali', 99);

SELECT * FROM ogrencilers

TRUNCATE TABLE ogrencilers

