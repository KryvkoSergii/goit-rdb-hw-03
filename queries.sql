-- вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products
select * from products;
-- вибрати тільки стовпчики name, phone з таблиці shippers
select s.name, s.phone from shippers as s;
-- середнє, максимальне та мінімальне значення стовпчика price таблички products
select FORMAT(avg(price), 2) as avg, FORMAT(max(price),2) as max, FORMAT(min(price), 2) as min from products;
-- обрати унікальні значення колонок category_id та price таблиці products
select distinct category_id, price from products order by price desc limit 10;
-- знайти кількість продуктів (рядків), які знаходиться в цінових межах від 20 до 100
select count(id) from products where price > 20 and price < 100;
--  знайти кількість продуктів (рядків) та середню ціну (price) у кожного постачальника (supplier_id)
select supplier_id, count(id), format(avg(price), 2) as avg from products group by supplier_id;
