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
users = []
users_options.each do |user_option|
  # file = URI.open("https://picsum.photos/200") #get avatar from Lorem Picsum
  user = User.new(user_option)
  # user.avatar.attach(io: file, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
  user.save!
  users << user
end
puts ">"
puts "Done!"
puts "Starts attaching photos to users..."
photo1 = URI.open('https://avatars.githubusercontent.com/u/107465113?v=4')
users[0].avatar.attach(io: photo1, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo2 = URI.open("https://avatars.githubusercontent.com/u/112730785?v=4")
users[1].avatar.attach(io: photo2, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo3 = URI.open("https://avatars.githubusercontent.com/u/107369283?v=4")
users[2].avatar.attach(io: photo3, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo4 = URI.open("https://avatars.githubusercontent.com/u/36986044?v=4")
users[3].avatar.attach(io: photo4, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo5 = URI.open("https://avatars.githubusercontent.com/u/114876925?v=4")
users[4].avatar.attach(io: photo5, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
puts ">"
# !Jams options & Seed

jam1 =  {
  title: "Entrainons-nous ensemble",
  location: "16 Villa Gaudelet, 75011 Paris",
  description: "La célèbre Jam du Wagon",
  instruments_list: ["batterie", "guitare", "basse"],
  capacity: 3,
  jam_date: DateTime.strptime("12/07/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam2 =  {
  title: "Je fais un solo, tu fais un solo",
  location: "48 avenue Parmentier, 75011 Paris",
  description: "La Jam de la Data versus Web Dev",
  instruments_list: ["drums", "guitar", "bass", "french horn", "saxophone"],
  capacity: 6,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam3 =  {
  title: "Clarinette au clair de Lune",
  location: "42 rue de Maubeuge, 75011 Paris",
  description: "After-Work Clarinette si ça vous dit ",
  instruments_list: ["batterie", "guitare", "basse", "clarinette"],
  capacity: 3,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam4 =  {
  title: "Session Jazz",
  location: "34 Boulevard Voltaire, 75011 Paris",
  description: "Venez comme vous êtes",
  instruments_list: ["batterie", "trompette", "basse", "saxophone", "contrebasse"],
  capacity: 5,
  jam_date: DateTime.strptime("12/01/2023 20:00", "%m/%d/%Y %H:%M"),
}

jam5 =  {
  title: "Korn et Muse",
  location: "12 Boulevard Marguerite de Rochechouard, 75011 Paris",
  description: "Venez jouer les plus grands tubes de Muse et Korn",
  instruments_list: ["batterie", "guitare", "basse", "kazoo"],
  capacity: 4,
  jam_date: DateTime.strptime("12/12/2022 18:00", "%m/%d/%Y %H:%M"),
}

jam6 =  {
  title: "Christmas jam",
  location: "12 Place de Clichy, 75008 Paris",
  description: "nous somme une chorale de 2 et nous cherchons un orgue pour nous accompagner",
  instruments_list: ["orgue"],
  capacity: 3,
  jam_date: DateTime.strptime("12/13/2022 17:00", "%m/%d/%Y %H:%M"),
}

jam7 =  {
  title: "Old new wave",
  location: "107 rue Saint Lazare, 75009 Paris",
  description: "venez jouez du synthé sur nos textes enjoués ",
  instruments_list: ["guitare", "synthétiseur",],
  capacity: 2,
  jam_date: DateTime.strptime("01/01/2023 10:00", "%m/%d/%Y %H:%M"),
}

jam8 =  {
  title: "Trap Europ Express",
  location: "50 rue des deux gares, 75010 Paris",
  description: "je souhaiterai faire de la musique aussi bien influencée par la trap que Kraftwerk, rejoignez-moi !",
  instruments_list: ["synthétiseur, batterie, vocoder","xylophone"],
  capacity: 4,
  jam_date: DateTime.strptime("12/20/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam9 =  {
  title: " Pump up the Jam",
  location: "21 rue de Maubeuge, 75009 Paris",
  description: "Je fais de l'eurodance et je cherche un joueur de triangle pour donner de l'âme à mes compos",
  instruments_list: ["triangle"],
  capacity: 2,
  jam_date: DateTime.strptime("12/14/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam10 =  {
  title: " Edit path",
  location: "4 place Pigalle",
  description: "Pour les codeurs qui aiment les classiques de la chanson française",
  instruments_list: ["piano", "trompette", "guitare"],
  capacity: 5,
  jam_date: DateTime.strptime("12/19/2022 20:00", "%m/%d/%Y %H:%M"),
}

jams_options = [jam1, jam2, jam3, jam4, jam5, jam6, jam7, jam8, jam9, jam10]

puts ">"
puts "Starts creating jams..."
jams = []
jams_options.each do |jam_option|
  file = URI.open("https://picsum.photos/1500") #get avatar from Lorem Picsum
  jam = Jam.new(jam_option)
  jam.user = users.sample
  jam.photo.attach(io: file, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
  jam.save!
  jams << jam
end
puts ">"
puts "Done!"

# !Booking options & Seed

booking1 =  {
  message: "salut j'ai grave envie de jammer, t'es chaud.e ?",

}

booking2 =  {
  message: "c'est l'heure de la jam! let's go!",

}

booking3 =  {
  message: "c'est l'heure de la jam! let's go!",
}
bookings_options = [booking1, booking2, booking3]

puts ">"
puts "Starts creating Bookings..."
bookings_options.each do |booking_option|
  jam = jams.sample
  booking = Booking.new(booking_option)
  booking.jam = jam
  booking.user = users.reject { |user| user.id == jam.user.id}.sample
  booking.save!
end
puts ">"
puts "Done!"

# !Posts options & Seed

post1 =  {
  content: "Ca va être mortel les petits loups",
}

post2 =  {
  content: "je ramène mon ampli de guitare",

}

post3 =  {
  content: "trop hâte !",

}

post4 =  {
  content: "j'en ai un dans mon grenier !",

}

post_options = [post1, post2, post3, post4]

puts ">"
puts "Starts creating Posts..."
post_options.each do |post_option|
  jam = jams.sample
  user = users.sample
  post = Post.new(post_option)
  post.jam = jam
  post.user = user
  post.save!
end
puts ">"
puts "Done!"

# !Creations options & Seed

creation1 =  {
  name: "Je suis chaud !",
  creation_url: "https://www.youtube.com/watch?v=WaM2pxTPstw"
}

creation2 =  {
  name: "Mon dernier concert",
  creation_url: "https://www.youtube.com/watch?v=WaM2pxTPstw"
}

creations_options = [creation1, creation2]

puts ">"
puts "Starts creating Creations..."
creations_options.each do |creation_option|
  creation = Creation.new(creation_option)
  creation.user = users.sample
  creation.save!
end
puts ">"
puts "Done!"

puts ">"

puts "Done!"
