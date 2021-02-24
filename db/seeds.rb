# Seeding the database in order to test code
u1 = User.create(email: "dummy@gmail.com", password: "costudyo")
u2 = User.create(email: "tom@lewagon.com", password: "costudyo")


s1 = Space.create(user: u1, title: "Munichen study library", location: "Munich", description:"Super fast internet. Cheap coffee. 100+ spaces. 100% focus guaranteed.", price: 10)
Space.create(user: u1, title: "Zen Island", location: "Berlin", description:"Quiet. Free coffee. Comfy chairs.", price: 20)
Space.create(user: u1, title: "Studio Study", location: "Berlin", description:"Amazing study place. Always fun. Good to learn here.", price: 5)
Space.create(user: u1, title: "Studyhouse", location: "Munich", description:"Come to our amazing study house. Pass your exams by studying here.", price: 15)
Space.create(user: u1, title: "Student paradise", location: "Berlin", description:"The best study place in Berlin. Central location. Quiet place to focus", price: 20)

starting_date = Date.today
ending_date = Date.today + 2
# b = Booking.new(starting_date: starting_date, ending_date: ending_date, confirmed: true)
# b.user = u1
# b.space = s1
# b.save