UPDATE users SET is_deleted = 1 WHERE (SELECT COUNT(id) FROM bookings WHERE user_id = users.id)=0
