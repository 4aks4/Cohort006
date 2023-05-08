CREATE DATABASE Manufacturer

USE Manufacturer
CREATE TABLE Product (
	prod_id INT PRIMARY KEY NOT NULL,
	prod_name VARCHAR(50) NOT NULL,
	quantity INT NOT NULL
);

CREATE TABLE Component (
	comp_id int PRIMARY KEY,
	comp_name varchar(50) NOT NULL,
	description varchar(50),
	quantity_comp int NOT NULL
);

CREATE TABLE Supplier (
	supp_id int PRIMARY KEY,
	supp_name varchar(50) NOT NULL,
	sup_location varchar(50),
	sup_country varchar(50),
	is_active bit
);

CREATE TABLE Prod_Comp (
	prod_id int NOT NULL, 
	comp_id int NOT NULL,
	quantitiy_comp int, 
	FOREIGN KEY (prod_id) REFERENCES Product(prod_id),
	FOREIGN KEY (comp_id) REFERENCES Component(comp_id)
);

CREATE TABLE Comp_Supp (
	supp_id int NOT NULL,
	comp_id int NOT NULL,
	order_date date NOT NULL,
	qauntity int,
	FOREIGN KEY (supp_id) REFERENCES Supplier(supp_id),
	FOREIGN KEY (comp_id) REFERENCES Component(comp_id),
);

	


