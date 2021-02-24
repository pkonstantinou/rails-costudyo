# Seeding the database in order to test code
u1 = User.create(email: "dummy@gmail.com", password: "costudyo")

Space.create(user: u1, title: "Epic study room", location: "Munich", description:"Super fast internet. 100% focus guaranteed.", price: 10)
Space.create(user: u1, title: "Zen Island", location: "Berlin", description:"Quiet. Free coffee. Comfy chairs.", price: 20)
Space.create(user: u1, title: "Studio", location: "Berlin", description:"Quiet. Free coffee. Comfy chairs.", price: 20)
Space.create(user: u1, title: "House study", location: "Munich", description:"Lorem ipsum, dolor sit amet consectetur adipisicing elit.", price: 20)
Space.create(user: u1, title: "Studnet paradise", location: "Berlin", description:"Lorem ipsum, dolor sit amet consectetur adipisicing elit.", price: 20)
Space.create(user: u1, title: "No study. No gain.", location: "Munich", description:"Lorem ipsum, dolor sit amet consectetur adipisicing elit.", price: 20)
Space.create(user: u1, title: "Focus zone", location: "Berlin", description:"Lorem ipsum, dolor sit amet consectetur adipisicing elit.", price: 20)
