# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.delete_all
Service.delete_all
User.delete_all

puts "Deleted Users, Services and Appointments"

Appointment.delete_all
Service.delete_all

User.delete_all

puts "Deleted all items!"

User.create!(email: "larrysworld@gmail.com", password: "IloveMatt", name: "Larry the Hairy Fairy", bio: "Loves puppies, and flying high in the sky. Lactose intolerant. Open minded. Matt call me back, please.", gender: "Male", languages: ["English", "German", "Spanish", "Italian", "French", "Finnish", "Swedish"])
User.create!(email: "mattattack@gmail.com", password: "Pokemon123", name: "Matt the Big Lat", bio: "Loves his protein shakes and heavy weights.", gender: "Male", languages: ["English", "Japanese"])
User.create!(email: "kitkat@gmail.com", password: "Whatupppppp", name: "Kat with the Nice Tat", bio: "Fight me.", gender: "Female", languages: ["English", "Tagalog"])
User.create!(email: "georgewss@gmail.com", password: "HelloWorld", name: "George ", bio: "", gender: "Male", languages: ["English"])

puts "Created #{User.count} users!"


Service.create!(category: "Night Life", title: "Club!", description: "Go to the club", price: 20, location: "Tokyo", user_id: User.all.sample.id, language: "German")
Service.create!(category: "Day Life", title: "Swim with the sharks", description: "Go swimming with the sharks!", price: 23030, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Adventure", title: "Dive in the ocean", description: "Dive down deep", price: 900, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(category: "Sports", title: "Play baseball", description: "Play with the Giants!", price: 15, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Sports", title: "See soccer", description: "See Honda", price: 10, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Food", title: "Wine tasting", description: "Drink. A lot.", price: 11000, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(category: "Relax", title: "Spa", description: "Relax", price: 4, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Adventure", title: "Fishing", description: "Catch the big one", price: 50, location: "Tokyo", user_id: User.all.sample.id, language: "Tagalog")
Service.create!(category: "Night Life", title: "Club!", description: "Go to the club", price: 20, location: "Tokyo", user_id: User.all.sample.id, language: "German")
Service.create!(category: "Day Life", title: "Swim with the sharks", description: "Go swimming with the sharks!", price: 23030, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Adventure", title: "Dive in the ocean", description: "Dive down deep", price: 900, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(category: "Sports", title: "Play baseball", description: "Play with the Giants!", price: 15, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Sports", title: "See soccer", description: "See Honda", price: 10, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Food", title: "Wine tasting", description: "Drink. A lot.", price: 11000, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(category: "Relax", title: "Spa", description: "Relax", price: 4, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(category: "Adventure", title: "Fishing", description: "Catch the big one", price: 50, location: "Tokyo", user_id: User.all.sample.id, language: "Tagalog")

puts "Created #{Service.count} services!"


Appointment.create!(start_day: (Date.today + 10), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 20), end_day: (Date.today + 25), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 2), end_day: (Date.today + 30), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 10), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 20), end_day: (Date.today + 25), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 2), end_day: (Date.today + 30), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 10), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 20), end_day: (Date.today + 25), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 2), end_day: (Date.today + 30), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 10), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 20), end_day: (Date.today + 25), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today), end_day: (Date.today + 15), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: (Date.today + 2), end_day: (Date.today + 30), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)

puts "Created #{Appointment.count} Appointments!"
