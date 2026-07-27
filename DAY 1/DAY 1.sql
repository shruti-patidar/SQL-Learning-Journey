-- Display all columns from the Orders table.
SELECT * FROM sales.orders

-- Display only: OrderID, CustomerID, Sales
SELECT OrderID, CustomerID, Sales FROM sales.orders

--Display all delivered orders.

SELECT * FROM sales.orders
WHERE orderstatus = 'Delivered'

-- Display orders where Sales > 100.
SELECT * FROM sales.orders
WHERE sales < 30

-- Display orders where Quantity >= 2.
SELECT * FROM sales.orders
WHERE Quantity >= 2

--Sort orders by Sales (Highest first).
SELECT * FROM sales.orders
ORDER BY sales DESC

-- Sort by OrderStatus and then Sales (Descending).
SELECT orderstatus, sales FROM sales.orders
ORDER BY orderstatus DESC, sales DESC

-- Find total Sales for each OrderStatus.
SELECT orderstatus, SUM(sales) AS total_sales FROM sales.orders
GROUP BY orderstatus
ORDER BY total_sales DESC

-- Count orders for each CustomerID
SELECT  customerid, COUNT(orderid) AS total_orders FROM sales.orders
GROUP BY customerid
ORDER BY customerid
 
-- Show only OrderStatus where total Sales > 100.
SELECT orderstatus, SUM(sales) AS total_sales FROM sales.orders
GROUP BY orderstatus
HAVING SUM(sales) > 100

-- Show only customers having more than 2 orders
SELECT customerid, COUNT(orderid) AS total_orders FROM sales.orders
GROUP BY customerid
HAVING COUNT(orderid) > 2

-- Display the first 5 rows
SELECT * FROM sales.orders
LIMIT 5

-- Display the top 3 highest sales.
SELECT sales FROM sales.orders
ORDER BY sales DESC
LIMIT 3

-- Find the top 5 customers with the highest total sales.
SELECT customerid, SUM(sales) AS total_sales FROM sales.orders
GROUP BY customerid
ORDER BY total_sales DESC

/* Find the total sales for each OrderStatus, keep only those above 100, 
sort by total sales in descending order.*/
SELECT orderstatus, SUM(sales) AS total_sales FROM sales.orders
GROUP BY orderstatus
HAVING SUM(sales) > 100
ORDER BY total_sales DESC