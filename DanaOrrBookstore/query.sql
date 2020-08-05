

 	SELECT title,location FROM bookstore.books WHERE title LIKE '%harry%';

 	Select * from bookstore.customers WHERE join_date LIKE (select MIN(join_date) from bookstore.customers);

 	Select * from bookstore.books WHERE arrival_date LIKE (select MIN(arrival_date) from bookstore.books);

 	SELECT * FROM bookstore.orders order by date;

 	SELECT boo.title, count(boo.title) as times_bought from bookstore.transactions as tra INNER JOIN bookstore.books as boo ON  boo.id_books = tra.id_books WHERE boo.title LIKE '%HOB%' group by title 
	
  SELECT author_name, num_of_readings FROM (SELECT boo.author_name, count(boo.author_name) as num_of_readings, Rank() over (order by count(boo.author_name) desc) as Rnk FROM bookstore.books as boo INNER JOIN bookstore.transactions as tra ON boo.id_books = tra.id_books  WHERE tra.date between '2018-01-01' and '2020-07-20'  GROUP BY boo.author_name) as temp_result WHERE Rnk=1
	
  SELECT cus.first_name,cus.last_name,count(cus.id_customers) as books_bought FROM bookstore.customers as cus INNER JOIN bookstore.transactions as tra ON cus.id_customers = tra.id_customers GROUP BY cus.id_customers ORDER BY COUNT(books_bought) DESC LIMIT 3

 SELECT title, count(title) as num_of_translations FROM (SELECT boo.title, boo.translator_name from bookstore.books as boo WHERE location = 'Store' AND boo.translator_name NOT LIKE "NULL" OR location = 'Warehouse' AND boo.translator_name NOT LIKE "NULL" GROUP BY translator_name ORDER BY COUNT(translator_name)) as temp_result GROUP BY title ORDER BY count(title) DESC LIMIT 1

 SELECT  books.title,transactions.date,transactions.total_price  FROM bookstore.transactions INNER JOIN bookstore.books ON bookstore.transactions.id_books=bookstore.books.id_books WHERE id_customers in (SELECT id_customers FROM bookstore.customers WHERE first_name = "Mor" AND last_name = "Tahar" );

 SELECT books.title, orders.date, orders.status, transactions.payment_status FROM bookstore.orders INNER JOIN bookstore.books ON bookstore.orders.id_books=bookstore.books.id_books INNER JOIN bookstore.transactions ON bookstore.orders.transaction_number=bookstore.transactions.transaction_number WHERE orders.id_customers in (select id_customers FROM bookstore.customers WHERE first_name = "Nirush" AND last_name = "Hazanush") ORDER BY orders.date;
 
SELECT ((SELECT ROUND(sum(weight),2) as total_weight FROM bookstore.books WHERE id_books in ('12647','12648')) * (SELECT price_per_kg FROM bookstore.delivery WHERE id_delivery = "4")) as calculated_price;

 SELECT books.title, tb1.total_price, delivery.company, delivery.delivery_type, tb1.shipment_address, tb1.tracking_number, tb1.delivery_status, tb1.transaction_number  FROM bookstore.transactions tb1 INNER JOIN bookstore.books ON tb1.id_books=bookstore.books.id_books INNER JOIN bookstore.delivery ON tb1.id_delivery=bookstore.delivery.id_delivery JOIN bookstore.transactions tb2 ON tb1.transaction_number=tb2.transaction_number AND tb1.id_books != tb2.id_books AND tb1.id_delivery != tb2.id_delivery OR tb1.transaction_number=tb2.transaction_number AND tb1.id_books != tb2.id_books AND tb1.shipment_address != tb2.shipment_address WHERE tb1.id_customers in (SELECT id_customers FROM bookstore.customers WHERE first_name = "Liran" AND last_name = "Dafadi");

 SELECT customers.first_name,customers.last_name,books.title,transactions.delivery_status FROM bookstore.transactions INNER JOIN bookstore.books ON bookstore.books.id_books=bookstore.transactions.id_books INNER JOIN bookstore.customers ON bookstore.transactions.id_customers=bookstore.customers.id_customers WHERE transactions.id_transactions = '%55%';

 SELECT SUM(delivery_price) AS Xpress_Delivery_Price FROM bookstore.transactions WHERE YEAR(date) = 2019 AND MONTH(date) = 11 AND id_delivery in (5,6);

 SELECT SUM(total_price) AS BitPayment FROM bookstore.transactions WHERE YEAR(date) = 2019 AND MONTH(date) = 11 AND payment_type = "Bit";

 SELECT * FROM bookstore.transactions WHERE books_price > (Select AVG(books_price) From bookstore.transactions WHERE date >= DATE_SUB(NOW(),INTERVAL 1 YEAR)) AND date >= DATE_SUB(NOW(),INTERVAL 1 YEAR);

 Select SUM(id_delivery in (2,3,4)) AS 'Israel Post', SUM(id_delivery in (5,6)) AS 'Xpress' FROM bookstore.transactions WHERE date >= DATE_SUB(NOW(),INTERVAL 1 YEAR);

 SELECT boo1.title,boo1.id_books,boo1.translator_name,boo1.publisher_name,boo1.year_of_distribution,tra.total_price, tra.shipment_address, tra.tracking_number,tra.delivery_status, tra.transaction_number FROM bookstore.transactions as tra JOIN bookstore.books boo1 ON tra.id_books = boo1.id_books  JOIN bookstore.books boo2 ON boo1.title=boo2.title AND boo1.translator_name != boo2.translator_name OR boo1.title=boo2.title AND boo1.publisher_name != boo2.publisher_name OR boo1.title=boo2.title AND boo1.year_of_distribution != boo2.year_of_distribution WHERE tra.id_delivery !=1 AND transaction_number in (select transaction_number from bookstore.transactions group by transaction_number having count(*) > 1)

 SELECT tb1.date as last_purchase_date,cs.first_name,cs.last_name,cs.mobile_number from transactions tb1 INNER JOIN bookstore.customers cs ON tb1.id_customers=cs.id_customers where tb1.payment_status = 'Payed' AND tb1.date < DATE_SUB(NOW(), INTERVAL 2 YEAR) AND tb1.id_customers not in (select id_customers from bookstore.transactions where date > DATE_SUB(NOW(), INTERVAL 2 YEAR) group by id_customers)

 SELECT cus.first_name,cus.last_name,cus.mobile_number,ord.id_orders,ord.last_contact,boo.title,boo.location,tra.payment_status FROM bookstore.orders ord INNER JOIN bookstore.transactions tra ON ord.id_orders = tra.id_orders AND tra.payment_status = 'Not Payed' INNER JOIN bookstore.books boo ON ord.id_books = boo.id_books AND boo.location in ('Store','Warehouseן') INNER JOIN bookstore.customers cus ON ord.id_customers = cus.id_customers WHERE ord.last_contact < DATE_SUB(NOW(), INTERVAL 14 DAY) AND ord.status = 'Waiting For Pickup' ;

 SELECT payment_date, @b := cc+@b as books_in_warehouse FROM (SELECT sto.payment_date, count(boo.location) as cc, @b:=0 as var from bookstore.store_payments as sto LEFT JOIN (SELECT * FROM bookstore.books WHERE location = 'warehouse') as boo on YEAR(boo.arrival_date) LIKE YEAR(sto.payment_date) AND MONTH(boo.arrival_date) LIKE MONTH(sto.payment_date)  group by sto.payment_date,location order by sto.payment_date) as temp_table

 SELECT count(id_store_purchases)  as books_bought , sum(price) as price_payed FROM bookstore.store_purchases WHERE date between "2018-01-01" and "2019-05-23"; 

 select (SELECT sum(tra.total_price) FROM bookstore.transactions tra where year(tra.date) = 2019 and month(tra.date) = 09) - (SELECT sum(pur.price) FROM bookstore.store_purchases pur where year(pur.date) = 2019 and month(pur.date) = 09) as profit

 SELECT YEAR(payment_date) as year, count(tra.id_transactions) as transaction_count, ROUND(count(tra.id_transactions)/12,3) as yearly_avrage_monthly_cut from bookstore.store_payments as sto LEFT JOIN (SELECT * FROM bookstore.transactions) as tra on YEAR(tra.date) LIKE YEAR(sto.payment_date) and MONTH(tra.date) LIKE MONTH(sto.payment_date) group by YEAR(sto.payment_date)

 SELECT emp.full_name, sal.salary_sum, sal.salary_date FROM bookstore.employees_salary sal INNER JOIN bookstore.employees emp ON sal.id_employees=emp.id_employees WHERE month(sal.salary_date) = '05' AND year(sal.salary_date) = '2020' AND emp.full_name = 'Dana Orr';

 SELECT full_name, books_sold FROM (SELECT emp.full_name,count(tra.id_employees) as books_sold, Rank() over (order by count(tra.id_employees)) as rnk FROM bookstore.transactions tra INNER JOIN bookstore.employees emp ON tra.id_employees=emp.id_employees WHERE year(tra.date) = '2018' AND month(tra.date) = '05' group by tra.id_employees order by count(tra.id_employees)) as temp_table WHERE rnk=1;

