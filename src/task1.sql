SELECT users.id, users.first_name, users.last_name, users.age
FROM users
  JOIN bookings ON users.id = bookings.user_id
  JOIN tickets ON bookings.ticket_id = tickets.id
WHERE users.age > 25
GROUP BY 1,2,3,4
HAVING SUM(tickets.price)>400
