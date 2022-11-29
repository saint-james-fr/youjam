# Reinitialization of data

puts ">"
puts "Destroying previous data..."
User.destroy_all
Jam.destroy_all
puts ">"
puts "Done!"


# Users Options & Seed
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

# Jams options & Seed

jam1 =  {
  location: "16 Villa Gaudelet, 75011 Paris",
  description: "this is the famous wagon jam",
  instruments_list: ["drums", "guitar", "bass"],
  capacity: 3,
  date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: User.first.id
}

jam2 =  {
  location: "48 avenue Parmentier, 75011 Paris",
  description: "This is the Jam of the data versus Web Dev",
  instruments_list: ["drums", "guitar", "bass", "french horn", "saxophone"],
  capacity: 6,
  date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: User.last.id
}

jams_options = [jam1, jam2]

puts ">"
puts "Starts creating jams..."
jams_options.each do |jam_option|
  file = URI.open("https://picsum.photos/200") #get avatar from Lorem Picsum
  jam = Jam.new(jam_option)
  jam.photo.attach(io: file, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
  jam.save!
end
puts ">"
puts "Done!"
