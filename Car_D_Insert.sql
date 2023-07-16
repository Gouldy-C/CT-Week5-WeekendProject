CREATE OR REPLACE PROCEDURE addSalesperson(
	firstname VARCHAR,
    lastname VARCHAR,
    commissionrate DECIMAL(4, 2))
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO salesperson(
		first_name,
    	last_name,
    	commission_rate)
   VALUES (
  		INITCAP(firstname),
    	INITCAP(lastname),
    	commissionrate);
	COMMIT;
END
$$;


CALL addsalesperson('Christian', 'Gouldy', 1.25) ;
CALL addsalesperson('Sean', 'Currie', 1.75) ;
CALL addsalesperson('Dylan', 'Smith', 1.75) ;
CALL addsalesperson('Matt', 'Damon', 1.00) ;


CREATE OR REPLACE PROCEDURE addCar(
    _vin_num VARCHAR,
    _make VARCHAR,
    _model VARCHAR,
    "_year" VARCHAR,
    _color VARCHAR,
    _sticker_price DECIMAL(14, 2),
    "_new" BOOLEAN,
    _for_sale BOOLEAN,
    _sold BOOLEAN,
    "_comments" VARCHAR)
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO car(
		vin_num,
	    make,
	    model,
	    "year",
	    color,
	    sticker_price,
	    "new",
	    for_sale,
	    sold,
	    "comments")
   VALUES (
  		_vin_num,
	    INITCAP(_make),
	    INITCAP(_model),
	    "_year",
	    INITCAP(_color),
	    _sticker_price,
	    "_new",
	    _for_sale,
	    _sold,
	    "_comments");
	COMMIT;
END
$$;

CALL addCar(
		'dlkfjvh3486787fy80e8f787y',
	    'Ford',
	    'Fiesta',
	    '2016',
	    'white',
	    18999,
	    TRUE ,
	    TRUE ,
	    FALSE ,
	    NULL);
CALL addCar(
		'dlkfjvdflksdcvn87sdc87y',
	    'Ford',
	    'Mustang',
	    '2019',
	    'Red',
	    35999,
	    TRUE ,
	    TRUE ,
	    FALSE ,
	    NULL);
CALL addCar(
		'dlkfjvdflks654687891sdc87y',
	    'Chevrolet',
	    'Tahoe',
	    '2016',
	    'White',
	    9999,
	    FALSE ,
	    TRUE ,
	    FALSE ,
	    NULL);
CALL addCar(
		'dsjkhf3546ljkdhsfiv6546547y',
	    'Chevrolet',
	    'Tahoe',
	    '2017',
	    'White',
	    10999,
	    FALSE ,
	    TRUE ,
	    FALSE ,
	    NULL);
CALL addCar(
		'dlkf354676513648867987987y',
	    'Chevrolet',
	    'Silverado',
	    '2017',
	    'Blue',
	    7999,
	    FALSE ,
	    FALSE ,
	    FALSE ,
	    NULL);
	   
	   
CREATE OR REPLACE PROCEDURE addCustomer(
    _first_name VARCHAR,
    _last_name VARCHAR,
    _phone_num VARCHAR,
    _address VARCHAR,
    _city VARCHAR,
    _state VARCHAR,
    _country VARCHAR,
    _postal_code VARCHAR)
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO customer (
		first_name,
	    last_name,
	    phone_num,
	    address,
	    city,
	    state,
	    country,
	    postal_code)
   VALUES (
  		INITCAP(_first_name),
	    INITCAP(_last_name),
	    INITCAP(_phone_num),
	    INITCAP(_address),
	    INITCAP(_city),
	    INITCAP(_state),
	    INITCAP(_country),
	    INITCAP(_postal_code));
	COMMIT;
END
$$;


CALL addCustomer(
		'Madi',
	    'Kim',
	    '8172408526',
	    '856 wittle dr',
	    'Fort Worth',
	    'Texas',
	    'Unitied States',
	    '75684');
CALL addCustomer(
		'Jerremy',
	    'Nickleson',
	    '8172758526',
	    '856 wittle dr',
	    'Fort Worth',
	    'Texas',
	    'Unitied States',
	    '75684');
CALL addCustomer(
		'Debbra',
	    'Kim',
	    '8172268754',
	    '856 wittle dr',
	    'Fort Worth',
	    'Texas',
	    'Unitied States',
	    '75684');
CALL addCustomer(
		'Christian',
	    'Gouldy',
	    '8172401998',
	    '1615 Radcliffe dr',
	    'Davis',
	    'Califonia',
	    'Unitied States',
	    '95616');
CALL addCustomer(
		'Brinkley',
	    'Kim',
	    '8172455556',
	    '856 wittle dr',
	    'Fort Worth',
	    'Texas',
	    'Unitied States',
	    '75684');
CALL addCustomer(
		'Adam',
	    'Hud',
	    '8172406321',
	    '8888 main st',
	    'Fort Worth',
	    'Texas',
	    'Unitied States',
	    '75684');

	   
CREATE OR REPLACE PROCEDURE addMechanic(
    _first_name VARCHAR,
    _last_name VARCHAR)
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO mechanic  (
		first_name,
	    last_name)
   VALUES (
  		INITCAP(_first_name),
	    INITCAP(_last_name));
	COMMIT;
END
$$;


CALL addMechanic ('Austin', 'Crabich');
CALL addMechanic ('Justin', 'Crabich');
CALL addMechanic ('Mark', 'Sutherland');
CALL addMechanic ('Mike', 'Johnson');


CREATE OR REPLACE PROCEDURE addLaborType(
    _labor VARCHAR,
    _rate DECIMAL(6, 2))
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO labor (
		labor,
	    rate)
   VALUES (
  		INITCAP(_labor),
    	_rate);
	COMMIT;
END
$$;


CALL addLaborType ('General', 45.0);
CALL addLaborType ('Minor Service', 30.0);
CALL addLaborType ('Specialty', 75.0);
CALL addLaborType ('Outsource', 90.0);


CREATE OR REPLACE PROCEDURE addPart(
    _part_number VARCHAR,
    _description VARCHAR,
    _make VARCHAR,
    _model VARCHAR,
    _year VARCHAR,
    _retail_price DECIMAL(8, 2),
    _cost DECIMAL(8, 2))
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO part (
		part_number,
	    description,
	    make,
	    model,
	    "year",
	    retail_price,
	    "cost")
   VALUES (
  		 _part_number,
	    _description,
	    INITCAP(_make),
	    INITCAP(_model),
	    _year,
	    _retail_price,
	    _cost);
	COMMIT;
END
$$;

CALL addPart (
  		 '2563-vc',
	    'vacum control value',
	    'Ford',
	    'Fiesta',
	    '2016',
	    39.99,
	    15.69);
CALL addPart (
  		 '4cyl-1.8-turbo',
	    'Crate engine Ford 4cyl 1.8 Turbo',
	    'Ford',
	    'Focus RS',
	    '2020',
	    799.99,
	    659.69);
CALL addPart (
  		 'ctr-console5698356',
	    'Honda civic center consol computer and touch screen',
	    'Honda',
	    'Civic',
	    '2016',
	    499.99,
	    196.69);


CREATE OR REPLACE PROCEDURE addSalesInvoice(
    _car_id INTEGER,
    c_first VARCHAR, c_last VARCHAR,
    s_first VARCHAR, s_last VARCHAR,
    _date DATE,
    _sale_price DECIMAL(15, 2),
    _paid BOOLEAN)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO sales_invoice (
        car_id,
        customer_id,
        salesperson_id,
        "date",
        sale_price,
        paid)
    VALUES (
        _car_id,
        (SELECT getCustomerId(c_first, c_last)),
        (SELECT getSalespersonId(s_first, s_last)),
        _date,
        _sale_price,
        _paid);
    UPDATE car 
    SET customer_id = (SELECT getCustomerId(c_first, c_last))
    WHERE car_id = _car_id;
   UPDATE car 
    SET for_sale = FALSE
    WHERE car_id = _car_id;
   UPDATE car 
    SET sold = TRUE
    WHERE car_id = _car_id;
    COMMIT;
END
$$;


CREATE OR REPLACE FUNCTION getCustomerId(
	firstname VARCHAR,
	lastname VARCHAR)
RETURNS INTEGER
LANGUAGE plpgsql AS $$
BEGIN
	RETURN(
		SELECT customer_id 
		FROM customer
		WHERE first_name = INITCAP(firstname)
		AND last_name = INITCAP(lastname));
END
$$;

SELECT getCustomerId('madi', 'kim');

CREATE OR REPLACE FUNCTION getSalespersonId(
	firstname VARCHAR,
	lastname VARCHAR)
RETURNS INTEGER
LANGUAGE plpgsql AS $$
BEGIN
	RETURN(
		SELECT salesperson_id 
		FROM salesperson 
		WHERE first_name = INITCAP(firstname)
		AND last_name = INITCAP(lastname));
END
$$;

SELECT getSalespersonId('christian', 'gouldy');

CALL addCar(
		'sdcjhgscougdlkf35467651dsh',
	    'Honda',
	    'Civic',
	    '2016',
	    'Black',
	    22999,
	    TRUE ,
	    FALSE ,
	    TRUE ,
	    NULL);


CALL addSalesInvoice(
	6,
    'madi', 'kim',
    'christian', 'gouldy',
    CURRENT_DATE,
    20999,
    TRUE);
   
DELETE  FROM sales_invoice WHERE sales_invoice_id = 2;
DELETE  FROM mechanic  WHERE mechanic_id = 2;
   
CALL addSalesInvoice(
	7,
    'debbra', 'kim',
    'sean', 'currie',
    CURRENT_DATE,
    20999,
    TRUE);


CREATE OR REPLACE PROCEDURE addPurchaseInvoice(
    _purchase_total DECIMAL(15, 2),
    _paid BOOLEAN,
    _vendor VARCHAR)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO purchase_invoice (
        purchase_total,
        paid,
        vendor)
    VALUES (
        _purchase_total,
       _paid,
      INITCAP(_vendor));
    COMMIT;
END
$$;


CALL addPurchaseInvoice(
    28000,
    TRUE,
    'Honda');
    
CALL addPurchaseInvoice(
    6000,
    TRUE,
    'Trade In');
    
CALL addPurchaseInvoice(
    5000,
    TRUE,
    'Trade In');
   
CALL addPurchaseInvoice(
    424.85,
    TRUE,
    'Honda');
    
CREATE OR REPLACE PROCEDURE addServiceQuote(
    _car_id INTEGER,
    c_first VARCHAR, c_last VARCHAR,
    _date_recived DATE)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service_quote (
        car_id,
	    customer_id,
	    date_recived)
    VALUES (
        _car_id,
	    (SELECT getCustomerId(c_first, c_last)),
	    _date_recived);
    COMMIT;
END
$$;

CALL addServiceQuote(
    7,
    'debbra', 'kim',
    CURRENT_DATE);

CALL addServiceQuote(
    6,
    'madi', 'kim',
    CURRENT_DATE);
    
CREATE OR REPLACE PROCEDURE addPurchaseItems(
	    _purchase_invoice_id INTEGER,
	    _car_id INTEGER,
	    _part_id INTEGER,
	    _shipping DECIMAL(10, 2),
	    _misc DECIMAL(10, 2),
	    _qty INTEGER)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO purchase_items (
        purchase_invoice_id,
	    car_id,
	    part_id,
	    shipping,
	    misc,
	    qty)
    VALUES (
        _purchase_invoice_id,
	    _car_id,
	    _part_id,
	    _shipping,
	    _misc,
	    _qty);
    COMMIT;
END
$$;



CALL addPurchaseItems(
		4,
	    6,
	    3,
	    0.00,
	    0.00,
	    1);
	    
CALL addPurchaseItems(
		4,
	    7,
	    3,
	    0.00,
	    0.00,
	    1);
	    
DELETE  FROM purchase_items  WHERE purchase_items_id = 1;


CREATE OR REPLACE PROCEDURE addPartsNeeded(
    _service_quote_id INTEGER,
    _part_id INTEGER,
    _qty INTEGER)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO parts_needed (
        service_quote_id,
   	 	part_id,
    	qty)
    VALUES (
        _service_quote_id,
   	 	_part_id,
    	_qty);
    COMMIT;
END
$$;


CALL addPartsNeeded(
		1,
   	 	3,
    	1);
    	
CALL addPartsNeeded(
		2,
   	 	3,
    	1);
    	

CREATE OR REPLACE PROCEDURE addCarService(
    _service_quote_id INTEGER,
    _mechanic_id INTEGER,
    _labor_id INTEGER,
    _hours DECIMAL(6, 2),
    _comments VARCHAR)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service (
            service_quote_id,
		    mechanic_id,
		    labor_id,
		    hours,
		    "comments")
    VALUES (
        	_service_quote_id,
		    _mechanic_id,
		    _labor_id,
		    _hours,
		    _comments);
    COMMIT;
END
$$;


CALL addCarService(
		1,
	    1,
	    1,
	    2.5,
	    'None');
	   
CALL addCarService(
		2,
	    1,
	    1,
	    2.5,
	    'None');
