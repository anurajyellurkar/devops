USE flight_booking;

CREATE TABLE IF NOT EXISTS flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    flight_no VARCHAR(50),
    source VARCHAR(100),
    destination VARCHAR(100),
    date DATE,
    time TIME,
    price DECIMAL(10,2),
    aircraft_type VARCHAR(20) DEFAULT 'A320'
);

CREATE TABLE IF NOT EXISTS bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    flight_id INT,
    booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    cancel_status VARCHAR(20) DEFAULT 'ACTIVE',
    refund_status VARCHAR(20) DEFAULT 'NONE'
);

CREATE TABLE IF NOT EXISTS passengers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(20),
    seat_no VARCHAR(10),
    cancel_status VARCHAR(20) DEFAULT 'ACTIVE',
    refund_status VARCHAR(20) DEFAULT 'NONE',
    ticket_no VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    password VARCHAR(255),
    role VARCHAR(20) DEFAULT 'USER'
);
