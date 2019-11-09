use classicmodels;
select customerName, phone, city, country from customers;

select * from customer;

SELECT * FROM customers WHERE customerName = 'Atelier Graphique';

SELECT * FROM customers WHERE customername like '%A%';

SELECT * FROM customers WHERE city IN ('Nantes',' Las Vegas',' Warszawa','NYC') ;