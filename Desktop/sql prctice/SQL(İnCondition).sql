--IN CONDITION-
--IN Condition birden fazla mantiksal ifade ile tanimlayabilecegimiz durumlari
--(Condition) tek komutla yazabilme imkani verir
--AND (ve): Belirtilen şartların her ikiside gerçekleşiyorsa o kayıt listelenir.
--OR (veya): Belirtilen şartlardan biri gerçekleşirse, kayıt listelenir.

CREATE TABLE musteriler3 
(
urun_id int, 
musteri_isim varchar(50), 
urun_isim varchar(50)
);
INSERT INTO musteriler3 VALUES (10, 'Mark', 'Prtakal'); 
INSERT INTO musteriler3 VALUES (10, 'Mark', 'Portakal'); 
INSERT INTO musteriler3 VALUES (20, 'John', 'Elma'); 
INSERT INTO musteriler3 VALUES (30, 'Amy', 'Havuc'); 
INSERT INTO musteriler3 VALUES (20, 'Mark', 'Elma'); 
INSERT INTO musteriler3 VALUES (10, 'Adem', 'Portakal'); 
INSERT INTO musteriler3 VALUES (40, 'John', 'Kayısı'); 
INSERT INTO musteriler3 VALUES (20, 'Eddie','Elma');

SELECT * FROM musteriler3 WHERE urun_isim ='Portakal' OR urun_isim='Elma'OR urun_isim='Kayısı';

SELECT*FROM musteriler3 WHERE urun_isim IN('Portakal','Elma','Kayısı');
SELECT*FROM musteriler3 WHERE musteri_isim='Mark' And urun_id='10';

SELECT*FROM musteriler3 WHERE musteri_isim IN('Mark','Amy');

--BETWEEN CONDITION--
--1) Urun_id 20 ile 40 arasinda olan urunlerin tum bilgilerini listeleyiniz
SELECT*FROM musteriler3 where urun_id>20 And urun_id<40;

SELECT*FROM musteriler3 WHERE urun_id BETWEEN 20 AND 40;

SELECT*FROM musteriler3 WHERE urun_id NOT BETWEEN 20 AND 40;


CREATE TABLE isciler(
	id char(4),
	isim varchar(50),
	maas int
);

insert into isciler values('1001', 'Arif Can', 70000);
insert into isciler values('1002', 'Velit Mert', 85000);
insert into isciler values('1003', 'Ayşen Tank', 65000);
insert into isciler values('1004', 'Derin Soluk', 95000);
insert into isciler values('1005', 'Yavuz Bahadır', 80000);
insert into isciler values('1006', 'Sevgi Beyza', 100000);

SELECT*FROM isciler

-- id'si 1003 ile 1005 arasında olan personel bilgilerini listeleyiniz
-- D ile Y arasındaki personel bilgilerini listeleyiniz
-- D ile Y arasında olmayan personel bilgilerini listeleyiniz
-- Maaşı 70000 ve ismi Arif olan personeli listeleyiniz

SELECT*FROM isciler WHERE id BETWEEN '1003' and '1005';

SELECT*FROM isciler WHERE id BETWEEN '1004' AND '1005';

SELECT*FROM isciler WHERE id NOT BETWEEN '1004' AND '1005';

SELECT*FROM isciler WHERE maas=70000 And isim='Arif Can';










