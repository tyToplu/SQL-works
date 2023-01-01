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

