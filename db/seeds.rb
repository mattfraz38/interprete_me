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

User.create!(email: "larrysworld@gmail.com", password: "IloveMatt", name: "Larry the Hairy Fairy", bio: "Loves puppies, and flying high in the sky. Lactose intolerant. Open minded. Matt call me back, please. Time out, hold up. Hold up, sweetheart. Let's get it together before you wanna read. I don't have a sugar daddy, sweetheart. Everything that I've had, I've worked for, and I worked for to get and I've built myself. So you need to know that 100%. I don't have a sugar daddy.", gender: "Male", languages: ["English", "German", "Spanish", "Italian", "French", "Finnish", "Swedish"])
User.create!(email: "mattattack@gmail.com", password: "Pokemon123", name: "Matt the Big Lat", bio: "Loves his protein shakes and heavy weights. So you need to know that 100%. I don't have a sugar daddy, I've never had a sugar daddy. If I wanted a sugar daddy, yes, I probably can go out and get one, because I AM WHAT? SICKENING.", gender: "Male", languages: ["English", "Japanese"])
User.create!(email: "kitkat@gmail.com", password: "Whatupppppp", name: "Kat with the Nice Tat", bio: "Fight me. So you need to know that 100%. I don't have a sugar daddy, I've never had a sugar daddy. If I wanted a sugar daddy, yes, I probably can go out and get one, because I AM WHAT? SICKENING.", gender: "Female", languages: ["English", "Tagalog"])
User.create!(email: "georgewss@gmail.com", password: "HelloWorld", name: "George ", bio: "Whatever you proclaim as your identity here in the material realm is also your drag. You are not your religion. You are not your skin color. You are not your gender, your politics, your career, or your marital status. You are none of the superficial things that this world deems important. The real you is the energy force that created the entire universe!", gender: "Male", languages: ["English"])

puts "Created #{User.count} users!"


Service.create!(days: 22, category: "Night Life", title: "Club!", description: "Go to the club", price: 20, location: "Tokyo", user_id: User.all.sample.id, language: "German")
Service.create!(days: 48, category: "Day Life", title: "Swim with the sharks", description: "Go swimming with the sharks!", price: 23030, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 2, category: "Adventure", title: "Dive in the ocean", description: "Dive down deep", price: 900, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(days: 5, category: "Sports", title: "Play baseball", description: "Play with the Giants!", price: 15, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 2, category: "Sports", title: "See soccer", description: "See Honda", price: 10, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 1, category: "Food", title: "Wine tasting", description: "Drink. A lot.", price: 11000, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(days: 9, category: "Relax", title: "Spa", description: "Relax", price: 4, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 2, category: "Adventure", title: "Fishing", description: "Catch the big one", price: 50, location: "Tokyo", user_id: User.all.sample.id, language: "Tagalog")
Service.create!(days: 20, category: "Night Life", title: "Club!", description: "Go to the club", price: 20, location: "Tokyo", user_id: User.all.sample.id, language: "German")
Service.create!(days: 2, category: "Day Life", title: "Swim with the sharks", description: "Go swimming with the sharks!", price: 23030, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 12, category: "Adventure", title: "Dive in the ocean", description: "Dive down deep", price: 900, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(days: 45, category: "Sports", title: "Play baseball", description: "Play with the Giants!", price: 15, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 2, category: "Sports", title: "See soccer", description: "See Honda", price: 10, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 24, category: "Food", title: "Wine tasting", description: "Drink. A lot.", price: 11000, location: "Tokyo", user_id: User.all.sample.id, language: "English")
Service.create!(days: 10, category: "Relax", title: "Spa", description: "Relax", price: 4, location: "Tokyo", user_id: User.all.sample.id, language: "Japanese")
Service.create!(days: 12, category: "Adventure", title: "Fishing", description: "Catch the big one", price: 50, location: "Tokyo", user_id: User.all.sample.id, language: "Tagalog")

puts "Created #{Service.count} services!"


Appointment.create!(start_day: DateTime.new(2018,9,12,12), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,10,13,17), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,11,1,16), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2019,2,1,22), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2019,1,2), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2019,2,1,5), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,9,5,9), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,10,1,17), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,11,16,12), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2019,12,22,7), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,10,13,23), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,11,30,3), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2019,2,12,18), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,11,1,17), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,12,23,10), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)
Appointment.create!(start_day: DateTime.new(2018,10,15,11), confirmed: false, user_id: User.all.sample.id, service_id: Service.all.sample.id)

puts "Created #{Appointment.count} Appointments!"
