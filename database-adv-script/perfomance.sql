
SELECT b.id AS booking_id, b.check_in, b.check_out,
       u.username, p.name AS property_name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id
WHERE b.booking_date >= NOW() - INTERVAL 6 MONTH
AND pay.status = 'Completed'
ORDER BY b.booking_date DESC;
