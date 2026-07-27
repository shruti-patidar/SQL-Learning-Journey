# 📘 Day 01 - SQL SELECT Query

> *Learning how SQL retrieves, filters, sorts, and summarizes data.*

---

# 🎯 What I Learned Today

Today, I learned the fundamentals of retrieving data from a database using SQL. I explored how to fetch specific information, filter unwanted records, group data for analysis, sort results, remove duplicates, and limit the output.

---

# 📚 Topics Covered

| Status | Topic |
|:------:|-------|
| ✅ | SELECT |
| ✅ | SELECT * |
| ✅ | Selecting Specific Columns |
| ✅ | WHERE |
| ✅ | GROUP BY |
| ✅ | HAVING |
| ✅ | ORDER BY |
| ✅ | DISTINCT |
| ✅ | LIMIT |
| ✅ | SQL Query Writing Order |
| ✅ | SQL Query Execution Order |

---

# 🔄 SQL Query Execution Flow

```mermaid
flowchart LR
A[📂 FROM]
-->B[🔍 WHERE]
-->C[📊 GROUP BY]
-->D[✅ HAVING]
-->E[📄 SELECT]
-->F[↕️ ORDER BY]
-->G[🎯 LIMIT]
```

---

# 🚀 Explore Today's Concepts

<details>
<summary><b>📌 SELECT</b></summary>

### 💡 What is it?

Retrieves data from one or more columns in a table.

### 🎯 Why is it used?

To fetch only the information required for analysis or reporting.

### 💼 Business Example

A sales manager wants to view only **Customer Name** and **Sales Amount** for the monthly sales report.

### 💻 Syntax

```sql
SELECT customer_name, sales
FROM orders;
```

</details>

---

<details>
<summary><b>📌 SELECT *</b></summary>

### 💡 What is it?

Returns every column from a table.

### 🎯 Why is it used?

Useful while exploring a new dataset to understand all available information.

### 💼 Business Example

A data analyst checks a newly received customer table before starting the analysis.

### 💻 Syntax

```sql
SELECT *
FROM customers;
```

</details>

---

<details>
<summary><b>📌 Selecting Specific Columns</b></summary>

### 💡 What is it?

Retrieves only the columns you need.

### 🎯 Why is it used?

Improves readability and avoids retrieving unnecessary data.

### 💼 Business Example

The finance team only needs **Revenue** and **Profit** to prepare a report.

### 💻 Syntax

```sql
SELECT revenue,
       profit
FROM sales;
```

</details>

---

<details>
<summary><b>📌 WHERE</b></summary>

### 💡 What is it?

Filters rows based on a condition.

### 🎯 Why is it used?

Returns only the records that match a business requirement.

### 💼 Business Example

Find all orders placed by customers from India.

### 💻 Syntax

```sql
SELECT *
FROM orders
WHERE country = 'India';
```

</details>

---

<details>
<summary><b>📌 GROUP BY</b></summary>

### 💡 What is it?

Groups similar records together.

### 🎯 Why is it used?

Helps calculate summaries like total sales or average revenue.

### 💼 Business Example

Calculate total sales for each product category.

### 💻 Syntax

```sql
SELECT category,
       SUM(sales)
FROM orders
GROUP BY category;
```

</details>

---

<details>
<summary><b>📌 HAVING</b></summary>

### 💡 What is it?

Filters grouped data after aggregation.

### 🎯 Why is it used?

Keeps only the groups that meet a condition.

### 💼 Business Example

Show product categories where total sales are greater than $100,000.

### 💻 Syntax

```sql
SELECT category,
       SUM(sales)
FROM orders
GROUP BY category
HAVING SUM(sales) > 100000;
```

</details>

---

<details>
<summary><b>📌 ORDER BY</b></summary>

### 💡 What is it?

Sorts the query result.

### 🎯 Why is it used?

Makes reports easier to read and analyze.

### 💼 Business Example

Display products from highest sales to lowest sales.

### 💻 Syntax

```sql
SELECT *
FROM products
ORDER BY sales DESC;
```

</details>

---

<details>
<summary><b>📌 DISTINCT</b></summary>

### 💡 What is it?

Removes duplicate values from the result.

### 🎯 Why is it used?

Returns only unique records.

### 💼 Business Example

List all unique customer cities.

### 💻 Syntax

```sql
SELECT DISTINCT city
FROM customers;
```

</details>

---

<details>
<summary><b>📌 LIMIT</b></summary>

### 💡 What is it?

Restricts the number of rows returned.

### 🎯 Why is it used?

Useful when only a few records are required.

### 💼 Business Example

Display the latest 10 customer orders on a dashboard.

### 💻 Syntax

```sql
SELECT *
FROM orders
LIMIT 10;
```

</details>

---

# ⚡ Quick Comparison

| SELECT * | Specific Columns |
|-----------|------------------|
| Returns every column | Returns only required columns |
| Useful for exploring data | Best for reports and dashboards |
| Retrieves more data | More efficient and readable |

---

# 📝 SQL Query Writing Order

```sql
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
```

---

# ⚙️ SQL Query Execution Order

```text
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT
```

---

# 🌍 Real-World Applications

- 🏦 Banking → Retrieve customer transactions
- 🛒 E-commerce → View top-selling products
- 🏥 Healthcare → Find patients based on conditions
- ✈️ Airlines → List delayed flights
- 🏨 Hospitality → Analyze hotel bookings

---

# 🎯 Key Takeaways

- SQL is used to retrieve and analyze data stored in databases.
- `SELECT` retrieves the required information.
- `WHERE` filters rows before grouping.
- `GROUP BY` summarizes data.
- `HAVING` filters summarized results.
- `ORDER BY` sorts the output.
- `DISTINCT` removes duplicate values.
- `LIMIT` controls the number of rows returned.
- SQL executes queries in a different order than they are written.

---

⭐ **Next Topic:** SQL Operators & Filtering Conditions
