--Tablodaki Data Nasil Update Edilir (UPDATE SET)?

CREATE TABLE ikameciler -- parent
(
vergi_no int PRIMARY KEY,
firma_ismi VARCHAR(50),
irtibat_ismi VARCHAR(50)
);

INSERT INTO ikameciler VALUES (101, 'IBM', 'Kim Yon');
INSERT INTO ikameciler VALUES (102, 'Huawei', 'Çin Li');
INSERT INTO ikameciler VALUES (103, 'Erikson', 'Maki Tammen');
INSERT INTO ikameciler VALUES (104, 'Apple', 'Adam Eve');

select*from ikameciler

CREATE TABLE aplication
(
ted_vergino int, 
urun_id int, 
urun_isim VARCHAR(50), 
musteri_isim VARCHAR(50)

); 
INSERT INTO aplication VALUES(101, 1001,'Laptop', 'Ayşe Can');
INSERT INTO aplication VALUES(102, 1002,'Phone', 'Fatma Aka');
INSERT INTO aplication VALUES(102, 1003,'TV', 'Ramazan Öz');
INSERT INTO aplication VALUES(102, 1004,'Laptop', 'Veli Han');
INSERT INTO aplication VALUES(103, 1005,'Phone', 'Canan Ak');
INSERT INTO aplication VALUES(104, 1006,'TV', 'Ali Bak');
INSERT INTO aplication VALUES(104, 1007,'Phone', 'Aslan Yılmaz');

select*from aplication

-- vergi_no’su 102 olan tedarikcinin firma ismini 'Vestel' olarak güncelleyeniz.

UPDATE ikameciler 
SET firma_ismi = 'Vestel' WHERE vergi_no=102;

-- vergi_no’su 101 olan tedarikçinin firma ismini 'casper' ve irtibat_ismi’ni 'Ali Veli' olarak güncelleyiniz.
UPDATE ikameciler  SET firma_ismi = 'casper' WHERE vergi_no=101;
UPDATE ikameciler  SET irtibat_ismi = 'Ali Veli' WHERE vergi_no=101;


UPDATE ikameciler  SET firma_ismi = 'casper', irtibat_ismi='Ali Veli' WHERE vergi_no=101;--2.yolll...

-- urunler tablosundaki 'Phone' değerlerini 'Telefon' olarak güncelleyiniz.
UPDATE aplication
SET urun_isim = 'TV'
WHERE urun_isim='Phone';

