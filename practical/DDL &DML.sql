DROP DATABASE IF EXISTS bank_management;
CREATE DATABASE bank_management;
USE bank_management;
CREATE TABLE bank_transactions (
    txn_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    branch_name VARCHAR(50),
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    transaction_date DATE
);

ALTER TABLE bank_transactions
ADD account_no VARCHAR(20);

ALTER TABLE bank_transactions
MODIFY customer_name VARCHAR(100);

RENAME TABLE bank_transactions
TO customer_transactions;

INSERT INTO customer_transactions
(txn_id, customer_name, branch_name, transaction_type, amount, transaction_date, account_no)
VALUES
(101, 'Laxman Reddy', 'Hyderabad', 'Deposit', 5000, '2024-01-05', 'ACC101'),
(102, 'Sita', 'Hyderabad', 'Withdrawal', 2000, '2024-01-06', 'ACC102'),
(103, 'Laxman Reddy', 'Vijayawada', 'Deposit', 12000, '2024-01-08', 'ACC103'),
(104, 'Anil', 'Vizag', 'Deposit', 8000, '2024-01-10', 'ACC104'),
(105, 'Laxman Reddy', 'Hyderabad', 'Withdrawal', 3500, '2024-01-11', 'ACC105'),
(106, 'Ramesh', 'Vizag', 'Deposit', 15000, '2024-01-12', 'ACC106'),
(107, 'Keerthi', 'Vijayawada', 'Withdrawal', 10000, '2024-01-13', 'ACC107'),
(108, 'Laxman Reddy', 'Hyderabad', 'Deposit', 9000, '2024-01-14', 'ACC108'),
(109, 'Sneha', 'Vizag', 'Withdrawal', 4000, '2024-01-15', 'ACC109'),
(110, 'Madhu', 'Vijayawada', 'Deposit', 11000, '2024-01-16', 'ACC110');

INSERT INTO customer_transactions
(txn_id, customer_name, branch_name, transaction_type, amount, transaction_date, account_no)
VALUES
(111, 'Laxman', 'Vizag', 'Deposit', 7000, '2024-01-18', 'ACC111');

UPDATE customer_transactions
SET amount = 5000
WHERE txn_id = 105;

DELETE FROM customer_transactions
WHERE txn_id = 111;

SELECT *
FROM customer_transactions;

SELECT *
FROM customer_transactions
WHERE transaction_type = 'Deposit';

SELECT *
FROM customer_transactions
ORDER BY amount DESC;

TRUNCATE TABLE customer_transactions;

DROP TABLE customer_transactions;
