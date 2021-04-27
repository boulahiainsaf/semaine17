CREATE ROLE 'Rmarketing';

GRANT ALL
ON gescom_afpa.products
TO Rmarketing;

GRANT ALL
ON gescom_afpa.categories
TO Rmarketing;

GRANT SELECT
ON gescom_afpa.orders
TO Rmarketing;

GRANT SELECT
ON gescom_afpa.orders_details
TO Rmarketing;

GRANT SELECT
ON gescom_afpa.customers
TO Rmarketing;

SHOW GRANTS FOR Rmarketing;

CREATE USER IF NOT EXISTS 'marketing'@'localhost'
IDENTIFIED BY 'abcd';

GRANT Rmarketing
TO 'marketing'@'localhost';

SHOW GRANTS FOR 'marketing'@'localhost';

SET DEFAULT ROLE Rmarketing
TO 'marketing'@'localhost';

