# Seeding the database in order to test code
u1 = User.create(email: "dummy@gmail.com", password: "costudyo")

s1 = Space.create(user: u1, title: "Epic study room", location: "Munich", description:"Super fast internet. 100% focus guaranteed.", price: 10)
s2 = Space.create(user: u1, title: "Zen Island", location: "Berlin", description:"Quiet. Free coffee. Comfy chairs.", price: 20)
