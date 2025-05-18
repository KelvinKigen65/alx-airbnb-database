SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;


SELECT property_id, COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_num
FROM bookings
GROUP BY property_id
ORDER BY row_num;


