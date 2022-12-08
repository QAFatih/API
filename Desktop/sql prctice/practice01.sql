CREATE TABLE ogrenciler(
id char(4),
	isim_soyisim varchar(50),
	not_ort real,
	kayit_tarihi date);
	
	CREATE TABLE ogrenci_ortalamalar
	AS SELECT isim_soyisim,not_ort
	from ogrenciler;
	
	INSERT INTO ogrenciler VALUES (1234,'FATİH KÜPELİ',65.79,'2022-09-05');
	INSERT INTO ogrenciler VALUES (2345,'AHMET TOPUK',70.05,'2022-02-15');
	INSERT INTO ogrenciler VALUES (3456,'FATMA CINAR',82.35,'2022-06-20');
	INSERT INTO ogrenciler VALUES (4567,'CEMRE ALACAT',60.20,'2022-04-23');
	
	
	INSERT INTO ogrenci_ortalamalar VALUES('AHMET CINAR',63.41);
	INSERT INTO ogrenci_ortalamalar VALUES('CANAN ATAKAN',49.59);
	INSERT INTO ogrenci_ortalamalar VALUES('FİKRİ IŞIKCAN',89.99);
	
	
	INSERT INTO ogrenciler VALUES(5678,'AYŞE FATMA',78.50,'2022-12-20');
	
	SELECT * FROM ogrenciler;
	SELECT * FROM ogrenci_ortalamalar;
	
	
	CREATE TABLE tedarikciler(
	tedarikci_id char(3),
		tedarikci_isim char(10),
		tedarikci_adres char(50),
		ulasim_tarihi date
	);
	
	
	CREATE TABLE tedarikci_ziyaret
	AS SELECT tedarikci_isim, ulasim_tarihi
	FROM tedarikciler;
	
	
	INSERT INTO tedarikciler VALUES(100,'ZÜBEYR','MEHMET AKİF MH.','2022-12-09');
    INSERT INTO tedarikciler VALUES(101,'FAKİH','CAYIRLIK CADDESİ','2021-12-09');
	INSERT INTO tedarikciler VALUES(102,'ABDULLAH','RAUFBEY SOKAK','2022-11-10');
	
	INSERT INTO tedarikci_ziyaret VALUES('CAFER','2022-12-10');
	INSERT INTO tedarikci_ziyaret VALUES('KERİM','2021-06-19');
	
	SELECT * FROM tedarikciler;
	SELECT*FROM tedarikci_ziyaret;
	
	
	CREATE TABLE ogretmenler (
	kimlik_no char(10),
		isim char(50),
		brans char(5),
		cinsiyet char(5));
		
	
		
		INSERT INTO ogretmenler VALUES('123456789','Ayse Guler','Matematik','Kadin');
		
		INSERT INTO ogretmenler VALUES('567597624','Veli');
		
		SELECT * FROM ogretmenler;--tablodaki tum dataları getirir...
		
		select isim from ogretmenler;--isim filed'ındaki dataları getirir...
		
		
		CREATE TABLE student(
		
		id char(4) UNIQUE,--TEKRARSIZ OLMASİ İÇİ....
			isim varchar(50) NOT NULL,
			not_ort real,
			adres varchar(100),
			kayit_tarihi date);
			
			INSERT INTO student VALUES(3234,'Mehmet Cam',65.45,'Mehmet akif cd','2203-09-15');
		
		
		SELECT*FROM student;
		
		
		
		
		
	
	
	
	