ODEV 6
--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT AVG(rental_rate) FROM film;
SELECT COUNT(*) FROM film WHERE title LIKE 'C%';
SELECT MAX(length) FROM film WHERE rental_rate = 0.99;
SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150;

ODEV 7
--1.film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
--2.film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film 
--sayısını sıralayınız.
--3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
--4. city tablosunda bulunan şehir verilerini country_id sütununa göre
--gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız

--1--
SELECT rating FROM
film GROUP BY rating
--2--
SELECT replacement_cost,COUNT(*) FROM film GROUP 
BY replacement_cost HAVING COUNT(*) > 50;
--3--
SELECT store_id , COUNT(*) FROM customer GROUP BY store_id;
--4--
???

ODEV 8
--1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--1--
CREATE TABLE employee (
  id INT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  birthday DATE
);
--2--
insert into employee (id, first_name, last_name, email, birth_day) values ('251.200.94.47/3', 'Justis', 'Vine', 'jvine0@creativecommons.org', '1954-05-15');
insert into employee (id, first_name, last_name, email, birth_day) values ('122.133.139.162/8', 'Debora', 'Pindell', 'dpindell1@nhs.uk', '2017-06-03');
insert into employee (id, first_name, last_name, email, birth_day) values ('22.9.13.200/12', 'Frazer', 'Brach', 'fbrach2@barnesandnoble.com', '1917-06-04');
insert into employee (id, first_name, last_name, email, birth_day) values ('28.230.85.13/28', 'Roselia', 'Holleworth', 'rholleworth3@howstuffworks.com', '1927-12-29');
insert into employee (id, first_name, last_name, email, birth_day) values ('48.167.213.192/8', 'Sam', 'Bosden', 'sbosden4@goo.ne.jp', '1909-05-20');
insert into employee (id, first_name, last_name, email, birth_day) values ('4.79.94.52/7', 'Ardis', 'Coxon', 'acoxon5@so-net.ne.jp', '1956-06-19');
insert into employee (id, first_name, last_name, email, birth_day) values ('96.253.59.186/25', 'Laurent', 'Sandford', 'lsandford6@businesswire.com', '1904-08-09');
insert into employee (id, first_name, last_name, email, birth_day) values ('11.95.147.44/13', 'Lief', 'Fairey', 'lfairey7@canalblog.com', '1999-07-04');
insert into employee (id, first_name, last_name, email, birth_day) values ('149.16.155.241/2', 'Frazier', 'Butland', 'fbutland8@symantec.com', '1979-01-27');
insert into employee (id, first_name, last_name, email, birth_day) values ('243.85.20.242/27', 'Aundrea', 'Dicte', 'adicte9@ucoz.com', '2018-02-18');
insert into employee (id, first_name, last_name, email, birth_day) values ('13.124.152.165/3', 'Murry', 'Flatman', 'mflatmana@1688.com', '1966-10-04');
insert into employee (id, first_name, last_name, email, birth_day) values ('56.138.250.226/6', 'Ashlie', 'Ditchfield', 'aditchfieldb@ibm.com', '1969-05-05');
insert into employee (id, first_name, last_name, email, birth_day) values ('93.31.126.147/17', 'Minda', 'Geill', 'mgeillc@berkeley.edu', '1960-04-27');
insert into employee (id, first_name, last_name, email, birth_day) values ('42.165.254.42/18', 'Karlens', 'Jankowski', 'kjankowskid@reference.com', '1939-02-01');
insert into employee (id, first_name, last_name, email, birth_day) values ('147.15.93.66/4', 'Maddy', 'Lepoidevin', 'mlepoidevine@blog.com', '1965-09-15');
insert into employee (id, first_name, last_name, email, birth_day) values ('11.213.35.137/5', 'Elisha', 'Topling', 'etoplingf@dmoz.org', '1966-05-19');
insert into employee (id, first_name, last_name, email, birth_day) values ('239.37.172.181/25', 'Grissel', 'Potteril', 'gpotterilg@reference.com', '1968-07-17');
insert into employee (id, first_name, last_name, email, birth_day) values ('46.38.69.174/6', 'Merlina', 'Simonitto', 'msimonittoh@youtube.com', '1943-01-26');
insert into employee (id, first_name, last_name, email, birth_day) values ('252.48.128.239/6', 'Niall', 'Retter', 'nretteri@artisteer.com', '1993-12-24');
insert into employee (id, first_name, last_name, email, birth_day) values ('141.73.192.241/23', 'Conny', 'Raiker', 'craikerj@bluehost.com', '1946-02-07');
insert into employee (id, first_name, last_name, email, birth_day) values ('140.49.89.120/29', 'Virginie', 'Whinray', 'vwhinrayk@yale.edu', '1933-10-16');
insert into employee (id, first_name, last_name, email, birth_day) values ('3.15.5.163/7', 'Anabelle', 'Folliss', 'afollissl@plala.or.jp', '1907-03-20');
insert into employee (id, first_name, last_name, email, birth_day) values ('247.83.36.151/22', 'Alexia', 'Truder', 'atruderm@linkedin.com', '1911-08-11');
insert into employee (id, first_name, last_name, email, birth_day) values ('140.68.199.192/24', 'Mitch', 'Vaneev', 'mvaneevn@purevolume.com', '2005-09-19');
insert into employee (id, first_name, last_name, email, birth_day) values ('160.37.139.184/9', 'Yankee', 'Galiford', 'ygalifordo@free.fr', '1972-01-10');
insert into employee (id, first_name, last_name, email, birth_day) values ('118.237.245.101/29', 'Alverta', 'Guymer', 'aguymerp@livejournal.com', '1944-08-23');
insert into employee (id, first_name, last_name, email, birth_day) values ('152.120.191.208/17', 'Benni', 'Gwyer', 'bgwyerq@fastcompany.com', '1928-05-20');
insert into employee (id, first_name, last_name, email, birth_day) values ('10.111.198.66/19', 'Virgie', 'D''Ambrosi', 'vdambrosir@naver.com', '1937-09-07');
insert into employee (id, first_name, last_name, email, birth_day) values ('69.112.8.105/12', 'Torey', 'Mannock', 'tmannocks@dyndns.org', '1939-06-07');
insert into employee (id, first_name, last_name, email, birth_day) values ('41.167.25.109/31', 'Karel', 'Creenan', 'kcreenant@amazonaws.com', '1913-03-22');
insert into employee (id, first_name, last_name, email, birth_day) values ('57.220.33.222/15', 'Muire', 'Sutlieff', 'msutlieffu@tinyurl.com', '1965-06-19');
insert into employee (id, first_name, last_name, email, birth_day) values ('253.101.84.155/19', 'Shaun', 'Slay', 'sslayv@networksolutions.com', '1928-04-08');
insert into employee (id, first_name, last_name, email, birth_day) values ('36.56.67.239/6', 'Angelica', 'Boyan', 'aboyanw@earthlink.net', '1958-12-28');
insert into employee (id, first_name, last_name, email, birth_day) values ('174.230.76.91/28', 'Terrie', 'Yoselevitch', 'tyoselevitchx@vk.com', '2018-06-04');
insert into employee (id, first_name, last_name, email, birth_day) values ('243.238.244.103/12', 'Jaimie', 'O''Tuohy', 'jotuohyy@pen.io', '1943-08-17');
insert into employee (id, first_name, last_name, email, birth_day) values ('158.216.215.40/21', 'Sammy', 'Dilliston', 'sdillistonz@howstuffworks.com', '1963-01-26');
insert into employee (id, first_name, last_name, email, birth_day) values ('0.192.97.103/11', 'Deeyn', 'Gellert', 'dgellert10@china.com.cn', '1942-04-14');
insert into employee (id, first_name, last_name, email, birth_day) values ('163.247.111.173/5', 'Fred', 'Pickance', 'fpickance11@qq.com', '1961-03-02');
insert into employee (id, first_name, last_name, email, birth_day) values ('11.215.205.232/26', 'Francesca', 'Kelling', 'fkelling12@dmoz.org', '1936-10-19');
insert into employee (id, first_name, last_name, email, birth_day) values ('117.118.87.95/26', 'Marj', 'Frisel', 'mfrisel13@bloomberg.com', '1904-06-12');
insert into employee (id, first_name, last_name, email, birth_day) values ('17.215.13.204/26', 'Cassondra', 'Wheal', 'cwheal14@issuu.com', '1980-07-29');
insert into employee (id, first_name, last_name, email, birth_day) values ('117.62.250.255/7', 'Christie', 'Glisenan', 'cglisenan15@independent.co.uk', '2004-01-22');
insert into employee (id, first_name, last_name, email, birth_day) values ('62.148.86.50/2', 'Ailina', 'Feaks', 'afeaks16@bloglines.com', '1938-12-29');
insert into employee (id, first_name, last_name, email, birth_day) values ('62.122.170.148/30', 'Michel', 'Astill', 'mastill17@nsw.gov.au', '1914-03-02');
insert into employee (id, first_name, last_name, email, birth_day) values ('77.52.51.25/31', 'Latisha', 'Welch', 'lwelch18@loc.gov', '1926-05-21');
insert into employee (id, first_name, last_name, email, birth_day) values ('149.207.203.172/12', 'Issy', 'Lombardo', 'ilombardo19@symantec.com', '1938-06-03');
insert into employee (id, first_name, last_name, email, birth_day) values ('188.102.182.206/31', 'Egor', 'Buist', 'ebuist1a@ca.gov', '2008-03-13');
insert into employee (id, first_name, last_name, email, birth_day) values ('151.17.209.120/10', 'Kristos', 'Yakunin', 'kyakunin1b@webnode.com', '1931-06-20');
insert into employee (id, first_name, last_name, email, birth_day) values ('213.13.45.244/9', 'Harmon', 'Golt', 'hgolt1c@google.ca', '1926-06-08');
insert into employee (id, first_name, last_name, email, birth_day) values ('169.206.140.92/13', 'Cordelia', 'Merck', 'cmerck1d@dropbox.com', '1998-04-10');

--3--
UPDATE employee
SET name = 'Cansel',
      email = 'canselmutlu@gmail.com'
WHERE id = 2;

--4--
*DELETE FROM employee
WHERE name = 'Cansel';
*DELETE FROM employee
WHERE id = '31';
*DELETE FROM employee
WHERE birthday = '2021-12-19';
DELETE FROM employee
WHERE name = 'Karita';

ODEV 9
--1city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) 
--isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
--2customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN 
--sorgusunu yazınız.
--3customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN 
--sorgusunu yazınız.

--1--
SELECT CITY, COUNTRY FROM CITY 
INNER JOIN ON CITY.CITY_ID = COUNTRY_ID;
--2--
SELECT payment_id,first_name,last_name FROM payment INNER JOIN customer ON payment.customer_id = customer.customer_id;
--3--
SELECT rental_id,first_name,last_name FROM rental INNER JOIN customer ON customer.customer_id = rental.customer_id;


ODEV 10
--1city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
--2customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN 
--sorgusunu yazınız.
--3customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN 
--sorgusunu yazınız.

--1--
SELECT city, country FROM city
LEFT JOIN country ON country.country_id = city.country_id;
--2--
SELECT payment_id,first_name,last_name
FROM payment
RIGHT JOIN customer 
ON payment.customer_id = customer.customer_id
--3--
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer
ON rental.customer_id = customer.customer_id;







