
SELECT users.user_id, users.name, bookings.booking_id, bookings.property_id, bookings.date
FROM users
INNER JOIN bookings ON users.user_id = bookings.user_id;


SELECT properties.property_id, properties.name, reviews.review_id, reviews.comment, reviews.rating
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id
ORDER BY properties.property_id;




SELECT users.user_id, users.name, bookings.booking_id, bookings.property_id, bookings.date
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id;
