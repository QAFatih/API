--IN CONDITION-
--IN Condition birden fazla mantiksal ifade ile tanimlayabilecegimiz durumlari
--(Condition) tek komutla yazabilme imkani verir
--AND (ve): Belirtilen şartların her ikiside gerçekleşiyorsa o kayıt listelenir.
--OR (veya): Belirtilen şartlardan biri gerçekleşirse, kayıt listelenir.

CREATE TABLE musteriler 
(
urun_id int, 
musteri_isim varchar(50), 
urun_isim varchar(50)
);
INSERT INTO musteriler VALUES (10, 'Mark', 'Prtakal'); 
INSERT INTO musteriler VALUES (10, 'Mark', 'Portakal'); 
INSERT INTO musteriler VALUES (20, 'John', 'Elma'); 
INSERT INTO musteriler VALUES (30, 'Amy', 'Havuc'); 
INSERT INTO musteriler VALUES (20, 'Mark', 'Elma'); 
INSERT INTO musteriler VALUES (10, 'Adem', 'Portakal'); 
INSERT INTO musteriler VALUES (40, 'John', 'Kayısı'); 
INSERT INTO musteriler VALUES (20, 'Eddie','Elma');

SELECT * FROM musteriler WHERE urun_isim ='Portakal' OR urun_isim='Elma'OR urun_isim='Kayısı';

SELECT*FROM musteriler WHERE urun_isim IN('Portakal','Elma','Kayısı');

SELECT*FROM musteriler WHERE musteri_isim='Mark' And musteri_isim='Amy' And musteri_isim='Jhon';

SELECT*FROM musteriler WHERE musteri_isim IN('Mark','Amy');