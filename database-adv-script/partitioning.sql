

CREATE TABLE bookings_partitioned (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    payment_id INT,
    booking_date DATE NOT NULL,
    check_in DATE,
    check_out DATE
) PARTITION BY RANGE (booking_date);

CREATE TABLE bookings_jan PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');

CREATE TABLE bookings_feb PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
