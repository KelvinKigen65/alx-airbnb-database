
INSERT INTO User (name, email, password_hash, phone, role) VALUES
('Kelvin Kigen', 'Kelvin@example.com', 'hashed_password_1', '0724219185', 'guest'),
('Dorothy Jeps', 'Kelvin@example.com', 'hashed_password_2', '0722222222', 'host'),
('Lione Kips', 'Lionel@example.com', 'hashed_password_3', '0789783743', 'guest');

INSERT INTO Property (host_id, name, location, price_per_night, description) VALUES
(2, 'Winter Villa', 'Embu, Kenya', 15000.00, 'A stunning villa by the ocean with modern amenities.'),
(2, 'Mountain View', 'Naivasha, Kenya', 20000.00, 'A  lodge with breathtaking mountain views.'),
(2, 'City Apartment', 'Nairobi, Kenya', 10000.00, 'A  apartment in the heart of the city.');

INSERT INTO Booking (user_id, property_id, start_date, end_date, status) VALUES
(1, 1, '2025-06-01', '2025-06-05', 'confirmed'),
(3, 2, '2025-07-10', '2025-07-15', 'pending'),
(1, 3, '2025-08-05', '2025-08-10', 'cancelled');

INSERT INTO Payment (booking_id, amount, payment_method) VALUES
(1, 600.00, 'credit_card'),
(2, 1000.00, 'paypal'),
(3, 500.00, 'bank_transfer');

INSERT INTO Review (property_id, user_id, rating, comment) VALUES
(1, 1, 5, 'Amazing place with fantastic ocean views!'),
(2, 3, 4, 'Loved the scenery, but wish the WiFi was better.'),
(3, 1, 3, 'Convenient location but a bit noisy at night.');
