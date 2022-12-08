--SUBQUERIES--

--SUBQUERY baska bir SORGU(query)’nun icinde calisan SORGU’dur.
--WHERE  DEN SONRA KULLANILIR.
CREATE TABLE calisanlar2 
(
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

SELECT*FROM calisanlar2

CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);

INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);




SELECT*FROM markalar
-- Çalisan sayisi 15.000’den cok olan markalarin isimlerini ve bu markada calisanlarin isimlerini ve 
--maaşlarini listeleyin.
SELECT maas,isim,isyeri FROM calisanlar2
WHERE isyeri IN (SELECT marka_isim FROM markalar WHERE calisan_sayisi>15000);

-- marka_id’si 101’den büyük olan marka çalişanlarinin isim, maaş ve şehirlerini listeleyiniz
SELECT isim,maas,sehir FROM calisanlar2
WHERE isyeri IN(SELECT marka_isim FROM markalar WHERE marka_id>101);

-- Ankara’da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz.--COZULEMEDİ...
SELECT marka_id,calisan_sayisi FROM markalar WHERE marka_isim IN (SELECT isyeri FROM calisanlar2 WHERE sehir='Ankara');
--AGGREGATE METOT KULLANIMI
-- Aggregate Metotlari (SUM,COUNT, MIN, MAX, AVG) Subquery içinde 
--kullanilabilir.
--Ancak, Sorgu tek bir değer döndürüyor olmalidir.
--SYNTAX: sum() şeklinde olmalı sum ile () arasında boşluk olmamalı

SELECT max(maas)FROM calisanlar2;

SELECT sum(maas) FROM calisanlar2;

SELECT avg(maas) FROM calisanlar2;

SELECT round(avg(maas),2) FROM calisanlar2;

SELECT min(maas)FROM calisanlar2;

SELECT count(maas) FROM calisanlar2;

-- Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.

SELECT marka_id,marka_isim,(SELECT COUNT(sehir) FROM calisanlar2 WHERE marka_isim=isyeri) as sehir_sayisi FROM markalar;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz
SELECT marka_isim,calisan_sayisi,
(SELECT sum(maas)FROM calisanlar2 WHERE marka_isim=isyeri) as topla_maas FROM markalar;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen 
--bir Sorgu yaziniz.
SELECT marka_isim, calisan_sayisi,
(SELECT max(maas)FROM calisanlar2 WHERE marka_isim=isyeri) as max_maas,
(SELECT min(maas)FROM calisanlar2 WHERE marka_isim=isyeri)as min_maas FROM markalar;



