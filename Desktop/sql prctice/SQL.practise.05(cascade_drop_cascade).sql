--ON DELETE CASCADE
-- Her defasında önce child tablodaki verileri silmek yerine ON DELETE CASCADE
--silme özelliğini aktif hale getirebiliriz.
--Bunun için FK olan satırın en sonuna ON DELETE CASCADE komutunu yazmak yeterli
-- cascade yoksa önce child temizlenir sonra parent
CREATE TABLE talebeler(
 
	id char(5)PRIMARY KEY,
	isim varchar(50),
	veli_isim varchar(50),
	yaizli_notu int

);
INSERT INTO talebeler VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO talebeler VALUES(124,'Merve Gul', 'Ayse',85);
INSERT INTO talebeler VALUES(125,'Kemal Yasa', 'Hasan',85);
INSERT INTO talebeler VALUES(126,'Nesibe Yılmaz', 'Ayse',95);
INSERT INTO talebeler VALUES(127,'Mustafa Bak', 'Can',99);

SELECT * FROM talebeler;

CREATE TABLE notlar(
talebe_id char(5),
	ders_adi varchar(30),
	yazili_notu int,
	CONSTRAINT notlar_fk FOREIGN KEY(talebe_id)REFERENCES talebeler(id)

on delete cascade
);
INSERT INTO notlar VALUES ('123','kimya',75);
INSERT INTO notlar VALUES ('124', 'fizik',65);
INSERT INTO notlar VALUES ('125', 'tarih',90);
INSERT INTO notlar VALUES ('126', 'Matematik',90);

SELECT * FROM notlar
-- child tablodaki veriyi sildiğimiz zaman sadece child'daki veri 
--silinir. parent taki veri silinmez.
DELETE FROM notlar WHERE talebe_id='123';
-- parent tablodaki veriyi sildiğimiz zaman child'daki veride 
--silinir.
DELETE FROM talebeler WHERE id='124';

delete from talebeler;
-- İlişkili tablolardan parent 
--olan talebeler tablosunu siler
DROP TABLE talebeler CASCADE;
