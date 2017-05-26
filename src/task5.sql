SELECT users.id, users.first_name, users.last_name, users.age
FROM users WHERE id NOT IN (
  SELECT DISTINCT user_id FROM bookings JOIN tickets ON bookings.ticket_id = tickets.id AND tickets.country='Aruba'
)
