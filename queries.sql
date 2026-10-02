git add queries.sql
git commit -m "Update queries.sql with Week 4 answers"
git push
-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations

-- Question 1: Total Payment Amount by Date
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2: Average Credit Limit by Customer
SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3: Total Price of Products Ordered
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4: Highest Payment Amount by Check Number
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
