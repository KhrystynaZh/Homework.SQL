SELECT users.id, users.first_name, users.last_name, users.age
FROM users
  JOIN bookings ON users.id = bookings.user_id
  JOIN tickets ON bookings.ticket_id = tickets.id AND tickets.title='Lagos'
