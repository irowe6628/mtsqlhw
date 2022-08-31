CREATE TABLE customers(
    customer_id VARCHAR(50) PRIMARY KEY, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    email VARCHAR(150) 
);

CREATE TABLE movies(
    movie_id VARCHAR(150) PRIMARY KEY,
    movie_name VARCHAR(150),
    showing_time timestamp
);

CREATE TABLE tickets(
    ticket_number SERIAL PRIMARY KEY,
    price NUMERIC(4,2),
    customer_id VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    seat_quantity INTEGER,
    movie_id VARCHAR(150),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(first_name) REFERENCES customers(first_name),
    FOREIGN KEY(last_name) REFERENCES customers(last_name),
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);
--when trying to create the tickets table i got an error that read 'there is no unique constraint matching given keys for referenced table "customers"'
CREATE TABLE concessions(
    transaction_number INTEGER,
    product_id SERIAL,
    product_name VARCHAR(150) PRIMARY KEY,
    price NUMERIC(4,2),
    quantity INTEGER
);