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

larry = User.create!(remote_photo_url: 'app/assets/images/larry.jpg', email: "larrysworld@gmail.com", password: "IloveMatt", name: "Larry Nevins", bio: "I'm a big fan of photography and would love to share my knowledge and experience with others. I also love puppies and flying high in the sky. Lactose intolerant. Open minded.", gender: "Male", languages: ["English", "German", "Spanish", "Italian", "French", "Finnish", "Swedish"])
matt = User.create!(remote_photo_url: 'app/assets/images/matt.jpg', email: "mattattack@gmail.com", password: "Pokemon123", name: "Matt Frazier", bio: "Love the outdoors and all things fitness.", gender: "Male", languages: ["English", "Japanese"])
kat = User.create!(remote_photo_url: 'app/assets/images/naneng.jpg', email: "kitkat@gmail.com", password: "Whatupppppp", name: "Katrina Ariola", bio: "I enjoy traveling, cooking and meeting other people. I'd love to share my cooking knowledge and experience.", gender: "Female", languages: ["English", "Tagalog"])
george = User.create!(remote_photo_url: 'app/assets/images/george.jpg', email: "georgewss@gmail.com", password: "HelloWorld", name: "George Walden", bio: "Whatever you proclaim as your identity here in the material realm is also your drag. You are not your religion. You are not your skin color. You are not your gender, your politics, your career, or your marital status. You are none of the superficial things that this world deems important. The real you is the energy force that created the entire universe!", gender: "Male", languages: ["English"])

takuma = User.create!(remote_photo_url: 'app/assets/images/takuma.jpg', email: "takuma@takuma.org", password: "password", name: "Takuma Naruke", bio: "
I was a photographer and also taught English to kids before I come here! Basically I have no background with coding, so I am totally new! I am so excited to be here!
", gender: "Male", languages: ["English", "Japanese"])
tania = User.create!(remote_photo_url: 'app/assets/images/tania.jpg', email: "tania@example.org", password: "password", name: "Tania Perales", bio: "
Currently an undergraduate business student at Korea University .  Interested in programming and looking forward to making creative websites.
", gender: "Female", languages: ["English", "Japanese", "Spanish"])
jan = User.create!(remote_photo_url: 'app/assets/images/jan.jpg', email: "jan@example.org", password: "password", name: "Jan Paul Hoga", bio: "
Former News Producer at a Japanese Broadcaster turned IT Finance Consultant. Mainly working on projects in Germany and Japan for some years now.
", gender: "Male", languages: ["English", "German", "Japanese"])
hiroki = User.create!(remote_photo_url: 'app/assets/images/hiroki.jpg', email: "hiroki@example.org", password: "password", name: "Hiroki Furuichi", bio: "Currently an undergraduate student. Hoping to learn more about programming, web development, IT etc. through Le Wagon and to explore new subject areas and industries I haven't been exposed to previously.", gender: "Male", languages: ["English", "Japanese", "Cantonese"])


# pi = ProductImage.create!(:product => product)
# pi.image.store!(File.open(File.join(Rails.root, 'test.jpg')))
# product.product_images << pi
# product.save!

# ProductImage.create!(:product => product, image: File.open(File.join(Rails.root, 'test.jpg')))

puts "Created #{User.count} users!"
day_life_img        = "app/assets/images/day-life.jpg"
night_life_img      = "app/assets/images/night-life.jpg"
adventure_img       = "app/assets/images/adventure.jpg"
relax_img           = "app/assets/images/relax.jpg"
sports_img          = "app/assets/images/sports.jpg"
food_and_drink_img  = "app/assets/images/food-and-drink.jpg"
art_img             = "app/assets/images/art.jpg"
education_img       = "app/assets/images/education.jpg"


Service.create!(remote_photo_url: day_life_img, days: 4, category: "Day Life", title: "Explore the city", description: "Visiting New York and don't know what to do? I'll be your tour guide for the day!", price: 10, location: "New York", user_id: george.id)
Service.create!(remote_photo_url: night_life_img, days: 3, category: "Night Life", title: "Bar-hopping", description: "Come with me and I'll show you all the good side street locations to drink, eat, and meet other people.", price: 20, location: "Tokyo", user_id: takuma.id)
Service.create!(remote_photo_url: adventure_img, days: 8, category: "Adventure", title: "Dive in the ocean", description: "I'm an experienced diver and would love to help others learn and experience the mysteries of the deep blue sea!", price: 50, location: "Australia", user_id: kat.id)
Service.create!(remote_photo_url: relax_img, days: 1, category: "Relax", title: "Treat yourelf! Get a massage!", description: "Experienced massge therapist looking to make some extra money!", price: 15, location: "Australia", user_id: jan.id)
Service.create!(remote_photo_url: sports_img, days: 2, category: "Sports", title: "Soccer", description: "See a soccer game in Brazil", price: 20, location: "Brazil", user_id: User.all.sample.id)
Service.create!(remote_photo_url: food_and_drink_img, days: 2, category: "Food&Drink", title: "Wine tasting", description: "Are you new to Paris? Do you enjoy the finner things in live? Lets go wine tasting! I'll show you all the best spots!", price: 40, location: "France", user_id: larry.id)
Service.create!(remote_photo_url: art_img, days: 3, category: "Art", title: "Museums in Paris", description: "I'll give you a tour of all the best museums in Paris and translate for you!", price: 35, location: "Paris", user_id: larry.id)
Service.create!(remote_photo_url: education_img, days: 1, category: "Education", title: "Want to learn Spanish?", description: "I'll teach you spanish while we explore the city!", price: 50, location: "Barcelona", user_id: tania.id)
Service.create!(remote_photo_url: night_life_img, days: 4, category: "Night Life", title: "Club!", description: "Go to the club! I'll give you a rundown of all the best clubs in Seoul", price: 10, location: "Seoul", user_id: matt.id)
Service.create!(remote_photo_url: day_life_img, days: 2, category: "Day Life", title: "Tour Venice via gondola", description: "I'll help you get set up for a gondola ride and tour Venice", price: 35, location: "Venice", user_id: larry.id)
Service.create!(remote_photo_url: adventure_img, days: 36, category: "Adventure", title: "Cave diving", description: "Dive down deep", price: 200, location: "Florida", user_id: User.all.sample.id)
Service.create!(remote_photo_url: relax_img, days: 3, category: "Relax", title: "Experience hotsprings in Kyoto!", description: "Are you a foreigner in Japan? Want to experience an authentic hotspring in Japan? Come to Kyoto and I'll help you!", price: 15, location: "Kyoto", user_id: matt.id)
Service.create!(remote_photo_url: sports_img, days: 2, category: "Sports", title: "See a boxing game", description: "Do you like boxing? Don't have anyone to go to a match with? Join me and I'll take to to a boxing match in Mexico!", price: 20, location: "Mexico City", user_id: tania.id)
Service.create!(remote_photo_url: food_and_drink_img, days: 2, category: "Food&Drink", title: "Cheese tasting", description: "I'll introduce you to the exquisite world of cheese tasting.", price: 25, location: "Amsterdam", user_id: larry.id)
Service.create!(remote_photo_url: art_img, days: 6, category: "Art", title: "Lovely Madrid", description: "I'll show you around all the best musuems in Madrid", price: 4, location: "Madrid", user_id: tania.id)
Service.create!(remote_photo_url: education_img, days: 3, category: "Education", title: "New foreign resident", description: "Are you a new foreign resident? Don't know where to go or need help at city hall? I'll help you!", price: 50, location: "Hachinohe", user_id: matt.id)
Service.create!(remote_photo_url: night_life_img, days: 3, category: "Night Life", title: "Bars and pubs in Moscow", description: "I'll show you the best places to drink and meet people", price: 20, location: "Moscow", user_id: jan.id)
Service.create!(remote_photo_url: day_life_img, days: 2, category: "Day Life", title: "Smoke hookah", description: "New to Delhi? Want to smoke hookah with somone? Let's go", price: 5, location: "Delhi", user_id: kat.id)
Service.create!(remote_photo_url: adventure_img, days: 3, category: "Adventure", title: "Hiking in Nepal", description: "New to or visiting Nepal? Do you like the outdoors and want to go hiking?", price: 100, location: "Tokyo", user_id: takuma.id)
Service.create!(remote_photo_url: relax_img, days: 4, category: "Relax", title: "Relax at a castle resort in Portugal", description: "Lets relax and drink wine at Bussaco Palace in Portugal", price: 150, location: "Portugal", user_id: larry.id)
Service.create!(remote_photo_url: sports_img, days: 5, category: "Sports", title: "Baseball fans unite!", description: "Let's go see a baseball game at the Osaka Dome in Japan!", price: 10, location: "Osaka", user_id: matt.id)
Service.create!(remote_photo_url: food_and_drink_img, days: 4, category: "Food&Drink", title: "Cooking class", description: "I'll teach a cooking class in Florence! Please join!", price: 50, location: "Florence", user_id: larry.id)
Service.create!(remote_photo_url: art_img, days: 5, category: "Art", title: "Street art in NY", description: "Are you interested in street art, but don't know where to go? Come all visitors to NY and I'll show you around!", price: 15, location: "New York", user_id: george.id)
Service.create!(remote_photo_url: education_img, days: 48, category: "Education", title: "Fishing", description: "I'll teach you about deep sea fishing and how to catch the big one off the coast of Sydney", price: 150, location: "Sydney", user_id: tania.id)
Service.create!(remote_photo_url: night_life_img, days: 5, category: "Night Life", title: "London night life", description: "I'll show you around all the best places to eat, drink, or have fun no matter the occassion", price: 20, location: "London", user_id: larry.id)
Service.create!(remote_photo_url: day_life_img, days: 12, category: "Day Life", title: "Swim with the sharks", description: "Go swimming with the sharks!", price: 200, location: "Stuat Cove, Bahamas", user_id: kat.id)
Service.create!(remote_photo_url: adventure_img, days: 12, category: "Adventure", title: "Skiing in Switzerland", description: "If you're new to Switzerland and want to learn how to ski I'll teach you", price: 50, location: "Davos", user_id: jan.id)
Service.create!(remote_photo_url: relax_img, days: 24, category: "Relax", title: "Visit spas in Nagoya", description: "Let's go to different spas around Nagoya and visit shrines!", price: 50, location: "Nagoya", user_id: matt.id)
Service.create!(remote_photo_url: sports_img, days: 2, category: "Sports", title: "Go to a Cricket game", description: "Want to learn about a strange game called cricket? Come with me and learn while watching a game in India from a former pro!", price: 20, location: "Anantapur", user_id: tania.id)
Service.create!(remote_photo_url: food_and_drink_img, days: 8, category: "Food&Drink", title: "Rome food tour", description: "Do you like Rome? Do you like food? I'll take you on a food tour through Rome", price: 50, location: "Rome", user_id: hiroki.id)
Service.create!(remote_photo_url: art_img, days: 10, category: "Art", title: "Tokyo street art", description: "Japan is very clean right? I'll show you the true face of street art in Tokyo", price: 15, location: "Tokyo", user_id: takuma.id)



puts "Created #{Service.count} services!"

40.times do
  year = (2018..2019).to_a.sample
  if year == 2018
    month = (9..12).to_a.sample
  else
    month = (1..12).to_a.sample
  end
  day = (1..28).to_a.sample
  hour = (1..23).to_a.sample
  user = User.all.sample
  service = Service.all.sample
  if (user != service.user)
    Appointment.create!(start_day: DateTime.new(year, month, day, hour), confirmed: false, user_id: user.id, service_id: service.id)
  end
end
=begin
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
=end
puts "Created #{Appointment.count} Appointments!"
