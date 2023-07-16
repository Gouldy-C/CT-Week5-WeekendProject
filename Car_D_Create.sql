CREATE DATABASE 'Car_Dealership';

CREATE  TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    commission_rate DECIMAL(4, 2) NOT NULL);
    
   
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    vin_num VARCHAR NOT NULL,
    make VARCHAR NOT NULL,
    model VARCHAR NOT NULL,
    "year" VARCHAR NOT NULL,
    color VARCHAR NOT NULL,
    sticker_price DECIMAL(14, 2) NOT NULL,
    "new" BOOLEAN NOT NULL,
    for_sale BOOLEAN NOT NULL,
    sold BOOLEAN NOT NULL,
    "comments" VARCHAR NULL);
    
ALTER TABLE car ADD customer_id INTEGER NULL; 
   
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    phone_num VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    state VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
    postal_code VARCHAR NOT NULL);
    
   
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL);
    
   
CREATE TABLE purchase_invoice(
    purchase_invoice_id SERIAL PRIMARY KEY,
    purchase_total DECIMAL(15, 2) NOT NULL);
  
ALTER TABLE purchase_invoice ADD paid BOOLEAN NOT NULL;
ALTER TABLE purchase_invoice ADD vendor VARCHAR NOT NULL;


CREATE TABLE labor(
    labor_id SERIAL PRIMARY KEY,
    labor VARCHAR NOT NULL,
    rate DECIMAL(6, 2) NOT NULL);

   
CREATE TABLE part(
    part_id SERIAL PRIMARY KEY,
    part_number VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    make VARCHAR NOT NULL,
    model VARCHAR NOT NULL,
    "year" VARCHAR NOT NULL,
    retail_price DECIMAL(8, 2) NOT NULL,
    "cost" DECIMAL(8, 2) NOT NULL);


CREATE TABLE sales_invoice(
    sales_invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    "date" DATE NOT NULL,
    sale_price DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id));
    
ALTER TABLE sales_invoice ADD paid BOOLEAN NOT NULL;   

CREATE TABLE service_quote(
    service_quote_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    date_recived DATE NOT NULL,
    date_completed DATE NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id));
	

CREATE TABLE purchase_items(
    purchase_items_id SERIAL PRIMARY KEY,
    purchase_invoice_id INTEGER NOT NULL,
    car_id INTEGER NULL,
    part_id INTEGER NULL,
    shipping DECIMAL(10, 2)  NULL,
    misc DECIMAL(10, 2) NULL,
	FOREIGN KEY(purchase_invoice_id) REFERENCES purchase_invoice(purchase_invoice_id),
	FOREIGN KEY(part_id) REFERENCES part(part_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id));

ALTER TABLE purchase_items ADD qty INTEGER NOT NULL;

CREATE TABLE service_invoice(
    service_invoice_id SERIAL PRIMARY KEY,
    service_quote_id INTEGER NOT NULL,
    total_price DECIMAL(15, 2) NOT NULL,
	FOREIGN KEY(service_quote_id) REFERENCES service_quote(service_quote_id));

ALTER TABLE service_invoice ADD paid BOOLEAN NOT NULL;   

CREATE TABLE parts_needed(
    parts_needed_id SERIAL PRIMARY KEY,
    service_quote_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
    qty INTEGER NOT NULL,
	FOREIGN KEY(part_id) REFERENCES part(part_id),
	FOREIGN KEY(service_quote_id) REFERENCES service_quote(service_quote_id));
	

CREATE TABLE service(
    service_id SERIAL PRIMARY KEY,
    service_quote_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    labor_id INTEGER NOT NULL,
    hours DECIMAL(6, 2) NOT NULL,
    "comments" VARCHAR NULL,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(service_quote_id) REFERENCES service_quote(service_quote_id),
	FOREIGN KEY(labor_id) REFERENCES labor(labor_id));