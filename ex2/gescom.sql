
CREATE DATABASE IF NOT EXISTS gescom; -- créer la base de donnée gescom 
use gescom;
-- céer les tables qui ne possede pas des clés étangeres en premier 
CREATE TABLE Categories(
   cat_id INT AUTO_INCREMENT NOT NULL,
   cat_name VARCHAR(50),
   cat_id_1 INT ,
   PRIMARY KEY(cat_id),
   FOREIGN KEY(cat_id_1) REFERENCES Categories(cat_id)
);
CREATE TABLE Posts(
   post_id INT AUTO_INCREMENT NOT NULL,
   post_name VARCHAR(50),
   PRIMARY KEY(post_id)
);
-- tous les clés primère en auto increment pour eviter de donner le même id à different produit, le ID ne doit pas être null donc on a utiliser "NOT NULL" 
CREATE TABLE Suppliers(
   sup_id INT AUTO_INCREMENT NOT NULL,
   sup_name VARCHAR(50),
   sup_contact VARCHAR(50),
   PRIMARY KEY(sup_id)
);

CREATE TABLE customer(
   cus_id INT AUTO_INCREMENT NOT NULL,
   cus_name VARCHAR(50),
   cus_address VARCHAR(50),
   cus_phone VARCHAR(50),
   cus_mail VARCHAR(50),
   cus_pwd VARCHAR(50),
   cus_add_date DATE NOT NULL,
   cus_update_date DATETIME,
   PRIMARY KEY(cus_id)
);
CREATE TABLE Departments(
   dep_id INT AUTO_INCREMENT NOT NULL,
   dep_name VARCHAR(50),
   PRIMARY KEY(dep_id)
);

CREATE TABLE orders(
   ord_id INT AUTO_INCREMENT NOT NULL,
   ord_add_date DATETIME NOT NULL,
   odr_update_date DATETIME,
   ord_payment_date DATETIME,
   ord_shipped_date DATETIME,
   cus_id INT NOT NULL,
   PRIMARY KEY(ord_id),
   FOREIGN KEY(cus_id) REFERENCES customer(cus_id)
   -- on a céé un containtes entre les commende et les cliens car chaque client peu avoir un ou plusieur commandes,et une commande doit être pris par un client
);

CREATE TABLE Products(
   prod_id INT AUTO_INCREMENT NOT NULL,
   prod_price DECIMAL(15,2),-- type DECIMAL car le prix est toujours en vergule
   prod_reference VARCHAR(50),
   prod_stock INT,
   prod_stock_alert INT,
   prod_color VARCHAR(50),
   prod_title VARCHAR(50),
   prod_description VARCHAR(500),
   prod_add_date DATE NOT NULL,
   prod_update_date DATETIME,
   prod_picture VARCHAR(50),
   prod_sell BOOLEAN NOT NULL,-- on a utilisé le type BOOLEAN pour avoir des valeurs que  0 ou 1
   sup_id INT NOT NULL,
   cat_id INT NOT NULL,
   PRIMARY KEY(prod_id),
   FOREIGN KEY(sup_id) REFERENCES Suppliers(sup_id),
   FOREIGN KEY(cat_id) REFERENCES Categories(cat_id)
);

CREATE TABLE orders_details(
   ord_det_id INT AUTO_INCREMENT NOT NULL,
   odr_det_quantity DECIMAL(15,2),
   odr_det_price DECIMAL(15,2),
   odr_det_discount DECIMAL(15,2),
   ord_id INT NOT NULL,
   prod_id INT NOT NULL,
   PRIMARY KEY(ord_det_id),
   FOREIGN KEY(ord_id) REFERENCES orders(ord_id),
   FOREIGN KEY(prod_id) REFERENCES Products(prod_id)
);

CREATE TABLE Employees(
   emp_id INT AUTO_INCREMENT NOT NULL,
   emp_name VARCHAR(50),
   emp_salary DECIMAL(15,2),
   emp_join DATE NOT NULL,
   emp_gender VARCHAR(50),
   emp_kids INT,
   emp_id_1 INT NOT NULL,
   dep_id INT NOT NULL,
   post_id INT NOT NULL,
   PRIMARY KEY(emp_id),
   FOREIGN KEY(emp_id_1) REFERENCES Employees(emp_id),
   FOREIGN KEY(dep_id) REFERENCES Departments(dep_id),
   FOREIGN KEY(post_id) REFERENCES Posts(post_id)
);
