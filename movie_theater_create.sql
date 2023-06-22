-- Creates the tables for the movie theater

CREATE TABLE Customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE Staff (
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department VARCHAR(50),
  hourly_pay NUMERIC(5,2)
);

CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  movie_title VARCHAR(50),
  lead_actor VARCHAR(50),
  movie_length INTERVAL,
  rating INTEGER
);

CREATE TABLE Studio (
  studio_id SERIAL PRIMARY KEY,
  num_seats INTEGER,
  theater_type VARCHAR(50)
);

CREATE TABLE Concession_Inventory (
  product_id SERIAL PRIMARY KEY,
  product_price NUMERIC(5,2),
  product_quantity INTEGER
);

CREATE TABLE Receipt (
  receipt_id SERIAL PRIMARY KEY,
  purchase_date DATE,
  purchase_time TIME,
  num_adult_tickets INTEGER,
  num_child_tickets INTEGER,
  num_senior_tickets INTEGER,
  concessions_amt INTEGER,
  total_cost NUMERIC(7,2),
  staff_id INTEGER,
  customer_id INTEGER,
    FOREIGN KEY (staff_id)
      REFERENCES Staff(staff_id),
	FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);

CREATE TABLE Ticket (
  ticket_id SERIAL PRIMARY KEY,
  ticket_type VARCHAR(10),
  ticket_price NUMERIC(4,2),
  movie_date DATE,
  movie_time TIME,
  movie_id INTEGER,
  studio_id INTEGER,
  customer_id INTEGER,
  receipt_id INTEGER,
	FOREIGN KEY (movie_id)
      REFERENCES Movie(movie_id),
	FOREIGN KEY (studio_id)
      REFERENCES Studio(studio_id),
	FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
	FOREIGN KEY (receipt_id)
      REFERENCES Receipt(receipt_id)
);

CREATE TABLE Concession_Item (
  item_id SERIAL PRIMARY KEY,
  receipt_id INTEGER,
  product_id INTEGER,
	FOREIGN KEY (receipt_id)
      REFERENCES Receipt(receipt_id),
	FOREIGN KEY (product_id)
	  REFERENCES Concession_Inventory(product_id)
);

ALTER TABLE Concession_Inventory
ADD COLUMN product_name VARCHAR(50);

ALTER TABLE Receipt
DROP COLUMN total_cost;

ALTER TABLE Receipt
DROP COLUMN concessions_amt;