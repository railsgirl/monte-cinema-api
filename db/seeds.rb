cinema_hall_1 = CinemaHall.create(
  name: 'cinema hall 1',
  seats: 200
)

cinema_hall_2 = CinemaHall.create(
  name: 'cinema hall 2',
  seats: 100
)

cinema_hall_3 = CinemaHall.create(
  name: 'cinema hall 3',
  seats: 100
)

cinema_hall_4 = CinemaHall.create(
  name: 'cinema hall 4',
  seats: 50
)

cinema_hall_5 = CinemaHall.create(
  name: 'cinema hall 4',
  seats: 20
)

movie_1 = Movie.create(
  title: "Titanic",
  duration: 128,
  genre: "drama"
)

movie_2 = Movie.create(
  title: "Titanic II",
  duration: 134,
  genre: "drama"
)

movie_3 = Movie.create(
  title: "Bridget Jones 3",
  duration: 95,
  genre: "comedy"
)

movie_4 = Movie.create(
  title: "Pretty Woman",
  duration: 105,
  genre: "comedy"
)

movie_5 = Movie.create(
  title: "Notting Hill",
  duration: 85,
  genre: "romance"
)

movie_6 = Movie.create(
  title: "Inception",
  duration: 120,
  genre: "action"
)

movie_7 = Movie.create(
  title: "Matrix",
  duration: 115,
  genre: "science fiction"
)

seance_1 = Seance.create(
  movie: movie_1,
  cinema_hall: cinema_hall_1,
  start_time: Time.new(2021, 6, 30, 19, 30)
)

seance_2 = Seance.create(
  movie: movie_2,
  cinema_hall: cinema_hall_5,
  start_time: Time.new(2021, 6, 25, 19, 30)
)

seance_3 = Seance.create(
  movie: movie_4,
  cinema_hall: cinema_hall_3,
  start_time: Time.new(2021, 6, 26, 18, 30)
)

seance_4 = Seance.create(
  movie: movie_3,
  cinema_hall: cinema_hall_4,
  start_time: Time.new(2021, 6, 27, 21, 00)
)

seance_5 = Seance.create(
  movie: movie_5,
  cinema_hall: cinema_hall_2,
  start_time: Time.new(2021, 6, 30, 20, 30)
)

client_1 = Client.create(
  name: "Jan Kowalski",
  email: "jan@domain.com",
  age: 25
)

client_2 = Client.create(
  name: "John Smith",
  email: "john@domain.com",
  age: 38
)

client_3 = Client.create(
  name: "Sarah Jones",
  email: "sarah@domain.com",
  age: 32
)

ticket_desk_online = TicketDesk.create(
  online: true
)

ticket_desk_offline_1 = TicketDesk.create(
  online: false
)

ticket_desk_offline_2 = TicketDesk.create(
  online: false
)

ticket_desk_offline_3 = TicketDesk.create(
  online: false
)

ticket_desk_offline_4 = TicketDesk.create(
  online: false
)

reservation_1 = Reservation.create(
  seance: seance_2,
  client: client_1,
  ticket_desk: ticket_desk_online,
  status: "booked"
)

reservation_2 = Reservation.create(
  seance: seance_1,
  client: client_2,
  ticket_desk: ticket_desk_online,
  status: "paid"
)

reservation_3 = Reservation.create(
  seance: seance_3,
  client: client_3,
  ticket_desk: ticket_desk_online,
  status: "booked"
)

reservation_4 = Reservation.create(
  seance: seance_4,
  client: client_1,
  ticket_desk: ticket_desk_online,
  status: "cancelled"
)

reservation_5 = Reservation.create(
  seance: seance_5,
  client: client_3,
  ticket_desk: ticket_desk_offline_1,
  status: "paid"
)

reservation_6 = Reservation.create(
  seance: seance_4,
  client: client_1,
  ticket_desk: ticket_desk_offline_2,
  status: "paid"
)

ticket_1 = Ticket.create(
  price: 20,
  tariff: "regular",
  reservation: reservation_1
)

ticket_2 = Ticket.create(
  price: 20,
  tariff: "regular",
  reservation: reservation_2
)

ticket_3 = Ticket.create(
  price: 20,
  tariff: "regular",
  reservation: reservation_3
)

ticket_4 = Ticket.create(
  price: 15,
  tariff: "reduced",
  reservation: reservation_4
)

ticket_5 = Ticket.create(
  price: 15,
  tariff: "reduced",
  reservation: reservation_5
)

ticket_6 = Ticket.create(
  price: 15,
  tariff: "reduced",
  reservation: reservation_6
)
