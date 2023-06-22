-- Inserts data into the tables

INSERT INTO Customer (
	first_name,
	last_name
) Values (
	'Bob',
	'Smith'
), (
	'Roger',
	'Ookly'
), (
	'Betty',
	'Yam'
), (
	'Tommy',
	'Junior'
)

SELECT * FROM Customer;

INSERT INTO Staff (
	first_name,
	last_name,
	department,
	hourly_pay
) Values (
	'Marty',
	'McFly',
	'Concessions',
	114.00
),(
	'Trent',
	'Fish',
	'Concessions',
	114.50
), (
	'Walter',
	'Umbridge',
	'Management',
	120.00
), (
	'Stacey',
	'Parks',
	'Tickets',
	115.00
)

SELECT * FROM Staff;

INSERT INTO Movie (
	movie_title,
	lead_actor,
	movie_length,
	rating
) VALUES (
	'Groundhog Day',
	'Bill Murray',
	'90 min',
	'9'
)

SELECT * FROM Movie;

INSERT INTO Concession_Inventory (
	product_price,
	product_quantity
) VALUES (
	10.99,
	100
), (
	3.99,
	300
)

INSERT INTO Receipt (
	purchase_date,
	purchase_time,
	num_adult_tickets,
	num_child_tickets,
	num_senior_tickets,
	concessions_amt,
	total_cost,
	staff_id,
	customer_id
) VALUES (
	'01/29/23',
	'10:23',
	2,
	3,
	0,
	10.99,
	45.99,
	1,
	2
)

SELECT * FROM Receipt;

INSERT INTO Concession_Inventory (
	product_name
) VALUES (
	'popcorn'
), (
	'twizzlers'
)

SELECT * FROM Concession_Inventory

UPDATE Concession_Inventory
SET product_name = 'large soft drink'
WHERE product_id = 1;

UPDATE Concession_Inventory
SET product_name = 'mini soft pretzel'
WHERE product_id = 2;

UPDATE Concession_Inventory
SET product_price = 8.99, product_quantity = 200
WHERE product_name = 'popcorn';

UPDATE Concession_Inventory
SET product_price = 4.99, product_quantity = 30
WHERE product_name = 'twizzlers';

SELECT * FROM Concession_Item

INSERT INTO Concession_Item (
	receipt_id,
	product_id
) VALUES (
	1,
	4
), (
	1,
	3
);

INSERT INTO Studio (
	num_seats,
	theater_type
) VALUES (
	350,
	'IMax'
)

INSERT INTO Ticket (
	ticket_type,
	ticket_price,
	movie_date,
	movie_time,
	movie_id,
	studio_id,
	customer_id,
	receipt_id
) VALUES (
	'adult',
	'8.00',
	'01/29/23',
	'15:20',
	1,
	1,
	1,
	1
)

SELECT * FROM Studio;
SELECT * FROM Ticket;