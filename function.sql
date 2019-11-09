use classicmodels;

select avg(buyPrice) from products;

select count(productcode) from products;

select max(buyprice) from products;

select min(buyprice) from products;

select sum(quantityInStock) from products;

select sum(quantityInStock) from products where productline = 'Motorcycles';

select ucase(productName) from products;

select lcase(productName) from products;

select len(productname) from products where productcode = 'S10_1678';

select productVendor, count(productcode) from product
where productline = 'Motorcycles'
group by productVendor
order by productVendor;

select productVendor, count(productcode) from product
where productline = 'Motorcycles'
group by productVendor
having count(productCode) > 10
order by productVendor;