require 'open-uri'

p "Seeding..."

u1 = User.create!(email: "tom@lewagon.com", password: "costudyo")
u2 = User.create!(email: "paschalis@lewagon.com", password: "costudyo")

file1 = URI.open('https://images.unsplash.com/photo-1497366811353-6870744d04b2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1497366412874-3415097a27e7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1527192491265-7e15c55b1ed2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80')
file4 = URI.open('https://images.unsplash.com/photo-1600508774634-4e11d34730e2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
file5 = URI.open('https://images.unsplash.com/photo-1594125674965-70d796b6693f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
file6 = URI.open('https://images.unsplash.com/photo-1521127021408-f33c67dfcb76?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
file7 = URI.open('https://images.unsplash.com/photo-1604328699206-5f24c5ed8dd4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80')
file8 = URI.open('https://images.unsplash.com/photo-1554260570-9140fd3b7614?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')

s1 = Space.new(user_id: u1.id, title: "Munichen library", location: "Munich",
               description: "Super fast internet. Cheap coffee. 100+ spaces. 100% focus guaranteed.", price: 10)
s1.photos.attach(io: file1, filename: 'space1-1.png', content_type: 'image/png')
s1.photos.attach(io: file2, filename: 'space1-2.png', content_type: 'image/png')
s1.save!

s2 = Space.new(user_id: u1.id, title: "Zen Island", location: "Berlin", description: "Quiet. Free coffee. Comfy chairs.",
               price: 20)
s2.photos.attach(io: file3, filename: 'space2-1.png', content_type: 'image/png')
s2.photos.attach(io: file4, filename: 'space2-2.png', content_type: 'image/png')
s2.save!

s3 = Space.new(user_id: u1.id, title: "Studio Study", location: "Berlin",
               description: "Amazing study place. Always fun. Good to learn here.", price: 5)
s3.photos.attach(io: file5, filename: 'space3-1.png', content_type: 'image/png')
s3.photos.attach(io: file6, filename: 'space3-2.png', content_type: 'image/png')
s3.save!

s4 = Space.new(user_id: u1.id, title: "Studyhouse", location: "Munich",
               description: "Come to our amazing study house. Pass your exams by studying here.", price: 15)
s4.photos.attach(io: file7, filename: 'space4-1.png', content_type: 'image/png')
s4.photos.attach(io: file8, filename: 'space4-2.png', content_type: 'image/png')
s4.save!

p "Seeding ended"
