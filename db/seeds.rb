
# !Reinitialization of data

puts ">"
puts "Destroying previous data..."
Booking.destroy_all
Post.destroy_all
Creation.destroy_all
Jam.destroy_all
User.destroy_all
puts ">"
puts "Done!"


# !Users Options & Seed
user1 = {
  first_name: "Anne",
  last_name: "Ly",
  password: "annely",
  password_confirmation: "annely",
  description: "hey, my name is Anne and I love music",
  email: "anne@youjam.com",
  location: "23 rue Coysevox, 75018 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/"
}
user2 = {
  first_name: "Pierre",
  last_name: "Petel",
  password: "pierrepetel",
  password_confirmation: "pierrepetel",
  description: "hey, i'm Pierre, I love to steal keys and of course, I love music!",
  email: "pierre@youjam.com",
  location: "12 rue Halévy, 75009 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/"
}
user3 = {
  first_name: "Maxence",
  last_name: "Robinet",
  password: "maxencerobinet",
  password_confirmation: "maxencerobinet",
  description: "hey, i'm Maxence, I can make music everyday and I'm also a codeur fou",
  email: "maxence@youjam.com",
  location: "2 boulevard Biron, 93400 Saint-Ouen",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/"
}
user4 = {
  first_name: "Benjamin",
  last_name: "Doberset",
  password: "benjamindoberset",
  password_confirmation: "benjamindoberset",
  description: "hey, i'm Benjamin, I can make music even at my lunch at work!",
  email: "benjamin@youjam.com",
  location: "70 Rue Myrha, 75018 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/"

}
user5 = {
  first_name: "Gaspard",
  last_name: "Fauchille",
  password: "gaspardfauchille",
  password_confirmation: "gaspardfauchille",
  description: "hey, i'm Gaspard and I love to eat maroille while listening to my music",
  email: "gaspard@youjam.com",
  location: "261 Bd de Tournai, 59650 Villeneuve-d'Ascq",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/"
}

users_options = [user1, user2, user3, user4, user5]

puts ">"
puts "Starts creating users..."
users_options.each do |user_option|
  file = URI.open("https://picsum.photos/200") #get avatar from Lorem Picsum
  user = User.new(user_option)
  user.avatar.attach(io: file, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
  user.save!
end
puts ">"
puts "Done!"

# !Jams options & Seed

jam1 =  {
  title: "entrainons-nous ensemble",
  location: "16 Villa Gaudelet, 75011 Paris",
  description: "this is the famous wagon jam",
  instruments_list: ["drums", "guitar", "bass"],
  capacity: 3,
  jam_date: DateTime.strptime("12/07/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: User.first.id
}

jam2 =  {
  title: "je fais un solo, tu fais un solo",
  location: "48 avenue Parmentier, 75011 Paris",
  description: "This is the Jam of the data versus Web Dev",
  instruments_list: ["drums", "guitar", "bass", "french horn", "saxophone"],
  capacity: 6,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: User.last.id
}

jams_options = [jam1, jam2]

puts ">"
puts "Starts creating jams..."
jams_options.each do |jam_option|
  file = URI.open("https://picsum.photos/1500") #get avatar from Lorem Picsum
  jam = Jam.new(jam_option)
  jam.photo.attach(io: file, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
  jam.save!
end
puts ">"
puts "Done!"

# !Booking options & Seed

booking1 =  {
  message: "salut j'ai grave envie de jammer, t'es chaud.e ?",
  jam_id: Jam.first.id,
  user_id: User.last.id
}

booking2 =  {
  message: "c'est l'heure de la jam! let's go!",
  jam_id: Jam.last.id,
  user_id: User.first.id
}

bookings_options = [booking1, booking2]

puts ">"
puts "Starts creating Bookings..."
bookings_options.each do |booking_option|
  booking = Booking.new(booking_option)
  booking.save!
end
puts ">"
puts "Done!"

# !Posts options & Seed

post1 =  {
  content: "Ca va être mortel les petits loups",
  jam_id: Jam.first.id,
  user_id: User.last.id
}

post2 =  {
  content: "je ramène mon ampli de guitare",
  jam_id: Jam.last.id,
  user_id: User.first.id
}

post_options = [post1, post2]

puts ">"
puts "Starts creating Posts..."
post_options.each do |post_option|
  post = Post.new(post_option)
  post.save!
end
puts ">"
puts "Done!"

# !Creations options & Seed

creation1 =  {
  name: "Mon dernier concert",
  user_id: User.last.id,
  creation_url: "https://www.youtube.com/watch?v=WaM2pxTPstw"
}

creation2 =  {
  name: "Mon dernier concert",
  user_id: User.first.id,
  creation_url: "https://www.youtube.com/watch?v=WaM2pxTPstw"
}

creations_options = [creation1, creation2]

puts ">"
puts "Starts creating Creations..."
creations_options.each do |creation_option|
  creation = Creation.new(creation_option)
  creation.save!
end
puts ">"
puts "Done!"
