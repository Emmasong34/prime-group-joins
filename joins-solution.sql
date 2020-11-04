--1. Get all customers and their addresses.
SELECT * FROM "customers" JOIN "addresses" ON
"customers"."id" = "addresses"."customer_id";

--2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "order_id"="orders"."id"
JOIN "products" ON "products"."id"="line_items"."product_id";

--3. Which warehouses have cheetos?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id"="warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id"="warehouse_product"."product_id"
WHERE "products"."description" = 'cheetos';

--4. Which warehouses have diet pepsi?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id"="warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id"="warehouse_product"."product_id"
WHERE "products"."description" = 'diet pepsi';

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

--6. How many customers do we have?
SELECT COUNT(*) FROM "customers";

--7. How many products do we carry?
SELECT COUNT(*) FROM "products";

--8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM("on_hand") FROM "warehouse_product"
WHERE "product_id"=6;