DROP TABLE foydalanuvchilar;
DROP TABLE maxsulotlar;
DROP TABLE buyurtmalar;
DROP TABLE xodimlar;
DROP TABLE yetkazib_beruvchilar;

--1.Fordalanuvchilar jadvali
CREATE TABLE foydalanuvchilar(
   user_id SERIAL PRIMARY KEY,
   ism VARCHAR(20) NOT NULL,
   yosh INTEGER,
   manzil VARCHAR(20)
);

INSERT INTO foydalanuvchilar (ism,yosh,manzil)
VALUES
 ('Avazbek',25,'Toshkent'),
 ('Asilbek',20,'Buxoro'),
 ('Rustam',18,'Nukus');

SELECT * FROM foydalanuvchilar;

--2.maxsulotlar jadvali
CREATE TABLE maxsulotlar(
  users_id SERIAL PRIMARY KEY,
  nom VARCHAR(20) NOT NULL,
  narx INTEGER,
  tavsif VARCHAR(20)
);
INSERT INTO maxsulotlar (nom,narx,tavsif)
VALUES
  ('Noutbuk',1000,'Yangi model'),
  ('Telefon',560,'Smartfon'),
  ('Televizor',300,'Led ekran');

SELECT*FROM maxsulotlar;

--3.Buyurtmalar jadvali
CREATE TABLE buyurtmalar(
  users_id SERIAL PRIMARY KEY,
  foydalanuvchi VARCHAR(20),
  maxsulot VARCHAR(20),
  miqdor INTEGER
);

INSERT INTO buyurtmalar(foydalanuvchi,maxsulot,miqdor)
VALUES
  ('Ali','Telefon',1),
  ('Vali','Ipad',2),
  ('Bekzod','Televizor',1),
  ('Sherzod','noutbuk',2);
  
SELECT * FROM buyurtmalar;

--4.Xodimlar jadvali
CREATE TABLE xodimlar(
 users_id SERIAL PRIMARY KEY,
 ism VARCHAR(20) NOT NULL,
 lavozim VARCHAR(20),
 yillik_ish_haqi INTEGER
);

INSERT INTO xodimlar(ism,lavozim,yillik_ish_haqi)
VALUES
  ('Alisher','drektor',15000),
  ('Avazbek','Senyor',20000),
  ('Gulnora','Bugalteriya',10000),
  ('Bekzod','Dasturchi',25000);
SELECT * FROM xodimlar;

--5. Yetkazib beruvchilar jadvali
CREATE TABLE yetkazib_beruvchilar (
    id SERIAL PRIMARY KEY,
    kompaniya_nomi VARCHAR(255) NOT NULL,
    telefon_raqam VARCHAR(255),
    manzil VARCHAR(255)
);

INSERT INTO yetkazib_beruvchilar (kompaniya_nomi, telefon_raqam, manzil)
VALUES 
    ('GlobalTrade', '998901234567', 'Toshkent'),
    ('TechSupply', '998902345678', 'Farg‘ona'),
    ('ElectroHub', '998903456789', 'Namangan'),
	('Greena Lafe','998903661804','Qoqon');

SELECT * FROM yetkazib_beruvchilar;