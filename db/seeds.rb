# !Reinitialization of data

puts ">"
puts "Destroying previous data..."
UserInstrument.destroy_all
Instrument.destroy_all
UserArtist.destroy_all
Artist.destroy_all
Booking.destroy_all
Post.destroy_all
Creation.destroy_all
Jam.destroy_all
Message.destroy_all
Chatmember.destroy_all
Chatroom.destroy_all
User.destroy_all
puts ">"
puts "Done!"


# !Users Options & Seed
user1 = {
  first_name: "Anne",
  last_name: "Ly",
  password: "annely",
  password_confirmation: "annely",
  description: "Bonjour à tous, je m'appelle Anne et j'adore la musique !",
  email: "anne@youjam.com",
  location: "23 rue Coysevox, 75018 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user2 = {
  first_name: "Pierre",
  last_name: "Petel",
  password: "pierrepetel",
  password_confirmation: "pierrepetel",
  description: "Salut moi c'est Pierre, je suis fan de percussion!",
  email: "pierre@youjam.com",
  location: "12 rue Halévy, 75009 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user3 = {
  first_name: "Maxence",
  last_name: "Robinet",
  password: "maxencerobinet",
  password_confirmation: "maxencerobinet",
  description: "Salut à tous, ici Maxence, je suis un fan de synthétiseurs.",
  email: "maxence@youjam.com",
  location: "2 boulevard Biron, 93400 Saint-Ouen",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user4 = {
  first_name: "Benjamin",
  last_name: "Doberset",
  password: "benjamindoberset",
  password_confirmation: "benjamindoberset",
  description: "Salut les amis, moi c'est Benjamin et j'essaie de prôner la musique sur les lieux de travail",
  email: "benjamin@youjam.com",
  location: "70 Rue Myrha, 75018 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user5 = {
  first_name: "Gaspard",
  last_name: "Fauchille",
  password: "gaspardfauchille",
  password_confirmation: "gaspardfauchille",
  description: "Bonjour à tous amis musiciens, je m'appelle Gaspard et je suis fan d'instruments traditionnels.",
  email: "gaspard@youjam.com",
  location: "261 Bd de Tournai, 59650 Villeneuve-d'Ascq",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user6 = {
  first_name: "Paul",
  last_name: "Lahana",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Salut, moi c'est Paul. J'adore les maracasses et le Ukulele ! ",
  email: "paul@test.com",
  location: "5 Rue Vouland, 30900 Nîmes",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user7 = {
  first_name: "Timothée",
  last_name: "Regis",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Coucou les amis, j'adore le surf et les Beach Boys !!",
  email: "tim@test.com",
  location: "65 avenue de Verdun, 64200 Biarritz",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user8 = {
  first_name: "Diane",
  last_name: "Johnston-Roussillon",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Hello, je cherche des musicos pour créer un groupe de ROCK !",
  email: "diane@test.com",
  location: "30 Rue Pierre Leroux, 75007 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}

10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "youjam",
    password_confirmation: "youjam",
    description: Faker::Quote.yoda,
    email: Faker::Name.first_name"@test.com",
    location: Faker::Address.full_address,
    soundcloud_url: "https://soundcloud.com/chuwanaga",
    instagram_url: "https://www.instagram.com/universalmusicfrance/",
    spotify_account: "gas.fauchille"
  )
  photo = URI.open(Faker::Avatar.image)
  user.avatar.attach(io: photo, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
end

users_options = [user1, user2, user3, user4, user5, user6, user7, user8]

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
photo6 = URI.open("https://avatars.githubusercontent.com/u/26028980?v=4")
users[5].avatar.attach(io: photo6, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo7 = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQF_UcrJfLwZEg/profile-displayphoto-shrink_800_800/0/1583877931238?e=2147483647&v=beta&t=cYWJi8KwvDtA7DAlM0ckfwr8-J7gPXAFh38jbFbuqoI")
users[6].avatar.attach(io: photo7, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo8 = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQHQOltQOMiIyQ/profile-displayphoto-shrink_800_800/0/1517528413961?e=2147483647&v=beta&t=SxuG-wE_1I2QN6d7NEqIafzw9ilbfXhAqt139vgBnDI")
users[7].avatar.attach(io: photo7, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
puts ">"
# !Jams options & Seed

jam1 =  {
  title: "Entraînons-nous ensemble",
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
  instruments_list: ["batterie", "guitare", "basse", "trompette", "saxophone"],
  capacity: 6,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam3 =  {
  title: "Clarinette au clair de Lune",
  location: "42 rue de Maubeuge, 75011 Paris",
  description: "After-Work clarinette si ça vous dit ",
  instruments_list: ["batterie", "guitare", "basse", "clarinette"],
  capacity: 3,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam4 =  {
  title: "Session Jazz",
  location: "34 Boulevard Voltaire, 75011 Paris",
  description: "Venez comme vous êtes, ça va jazzer!",
  instruments_list: ["batterie", "trompette", "basse", "saxophone", "contrebasse"],
  capacity: 5,
  jam_date: DateTime.strptime("12/01/2023 20:00", "%m/%d/%Y %H:%M"),
}

jam5 =  {
  title: "Korn et Muse",
  location: "12 Boulevard Marguerite de Rochechouart, 75018 Paris",
  description: "Venez jouer les plus grands tubes de Muse et Korn",
  instruments_list: ["batterie", "guitare", "basse", "kazoo"],
  capacity: 4,
  jam_date: DateTime.strptime("12/12/2022 18:00", "%m/%d/%Y %H:%M"),
}

jam6 =  {
  title: "Christmas jam",
  location: "12 Place de Clichy, 75008 Paris",
  description: "Nous somme une chorale de deux et nous cherchons un orgue pour nous accompagner",
  instruments_list: ["orgue", "voix"],
  capacity: 3,
  jam_date: DateTime.strptime("12/13/2022 17:00", "%m/%d/%Y %H:%M"),
}

jam7 =  {
  title: "De la vieille New Wave",
  location: "107 rue Saint Lazare, 75009 Paris",
  description: "Venez jouez du synthé sur nos textes enjoués ",
  instruments_list: ["guitare", "synthétiseur",],
  capacity: 2,
  jam_date: DateTime.strptime("01/01/2023 10:00", "%m/%d/%Y %H:%M"),
}

jam8 =  {
  title: "Trap Europ Express",
  location: "50 rue des deux gares, 75010 Paris",
  description: "je souhaiterais faire de la musique aussi bien influencée par la trap que Kraftwerk, rejoignez-moi dans ce nouveau défi !",
  instruments_list: ["synthétiseur", "batterie", "vocoder", "xylophone"],
  capacity: 4,
  jam_date: DateTime.strptime("12/20/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam9 =  {
  title: "Pump up the Jam",
  location: "21 rue de Maubeuge, 75009 Paris",
  description: "Je fais de l'Eurodance et je cherche un joueur de triangle pour donner de l'âme à mes compos",
  instruments_list: ["triangle", "synthétiseur"],
  capacity: 2,
  jam_date: DateTime.strptime("12/14/2022 20:00", "%m/%d/%Y %H:%M"),
}

jam10 =  {
  title: "Edit path",
  location: "4 place Jean-Baptiste Pigalle, 75009 Paris",
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
  message: "J'ai réussi à me libérer pour cette date, je te promets que ça va être super !",
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


photo1 = URI.open('https://images.unsplash.com/photo-1477611160464-0b9fb6404529?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
jams[0].photo.attach(io: photo1, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo2 = URI.open("https://images.unsplash.com/photo-1477233534935-f5e6fe7c1159?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
jams[1].photo.attach(io: photo2, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo3 = URI.open("https://images.unsplash.com/photo-1600771488491-c22d42a9347d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2xhcmluZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
jams[2].photo.attach(io: photo3, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo4 = URI.open("https://images.unsplash.com/photo-1446057032654-9d8885db76c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1856&q=80")
jams[3].photo.attach(io: photo4, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/71/Abraham_Bloemaert_-_The_Bagpiper_-_WGA02274.jpg")
jams[4].photo.attach(io: photo5, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo6 = URI.open('https://images.unsplash.com/photo-1588032786045-59cefda005c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1788&q=80')
jams[5].photo.attach(io: photo6, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo7 = URI.open("https://fr.wikipedia.org/wiki/Groupe_musical#/media/Fichier:Choreia_Kozatska_2015-09-14.JPG")
jams[6].photo.attach(io: photo7, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo8 = URI.open("https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
jams[7].photo.attach(io: photo8, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo9 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoL-TgLqPi0NQfAlvPpNfpJBwET0wr8ADbFQ&usqp=CAU")
jams[8].photo.attach(io: photo9, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo10 = URI.open("https://img-4.linternaute.com/9dkRcdwNecBxCbK83hN7hQpRaLE=/1500x/smart/4508a2ffc1084b2398e1b69a9db22cd1/ccmcms-linternaute/11208389.jpg")
jams[9].photo.attach(io: photo10, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")

puts ">"

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
  content: "Ca va être trop bien !",

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
  creation_url: "https://www.youtube.com/watch?v=WaM2pxTPstw",
  message: "On avait bien rigolé ce jour là!"
}

creation2 =  {
  creation_url: "https://www.youtube.com/watch?v=g-D99C9poR4",
  message: "Super jam, en plus le public était chaud"
}

creation3 =  {
  creation_url: "https://www.youtube.com/watch?v=bKn7FyGK080",
  message: "Écoutez le batteur, c'est de la folie !"
}

creation4 =  {
  creation_url: "https://www.youtube.com/watch?v=Kk6j3BXHBWM",
  message: "Super hâte de remettre ça avec vous"
}

creation5 =  {
  creation_url: "https://www.youtube.com/watch?v=opdEWV9PcNo",
  message: "J'en garde un super souvenir, meilleur jam de l'année !"
}

creation6 =  {
  creation_url: "https://www.youtube.com/watch?v=T5cMv7-Gr5Q",
  message: "La prochaine fois, on fera encore mieux !"
}

creation7 =  {
  creation_url: "https://www.youtube.com/watch?v=wrHCWDffcXo",
  message: "Franchement pas mal pour une première !"
}

creation8 =  {
  creation_url: "https://www.youtube.com/watch?v=1s6rtWjMTVs",
  message: "J'ai pris beaucoup de plaisir, merci Youjam d'avoir rendu ça possible !"
}

creation9 =  {
  creation_url: "https://www.youtube.com/watch?v=DLn48c05xVA",
  message: "Groove de malade, équipe de dingue, un résultat de folie..."
}

creation10 =  {
  creation_url: "https://www.youtube.com/watch?v=HO_STXzgdjg",
  message: "Attention, cette vidéo va vous faire groover !"
}

creations_options = [creation1, creation2, creation3, creation4, creation5, creation6, creation7, creation8, creation9, creation10]

puts ">"
puts "Starts creating Creations..."
creations_options.each do |creation_option|
  creation = Creation.new(creation_option)
  creation.user = users.sample
  creation.save!
end


puts ">"
puts "Starts creating Instruments..."
instruments_options = [{ name:"Piano" }, { name:"Hautbois" }, { name:"Harpe" }, { name:"Synthétiseurs" }, { name:"Saxophone" }, { name:"Trompette" }, { name:"Triangle" }, { name:"Clavecin" },{ name:"Basse" },{ name:"Batterie" }, { name:"Guitare" }, { name:"Voix" },]
instruments_options.each do |instrument_option|
  instrument = Instrument.new(instrument_option)
  instrument.save!
end
puts ">"
puts "Done!"


user_instrument1 = {
  instrument_id: Instrument.last.id,
  user_id: User.first.id
}

user_instrument2 = {
  instrument_id: Instrument.first.id,
  user_id: User.first.id
}

user_instrument3 = {
  instrument_id: Instrument.last.id,
  user_id: User.last.id
}

user_instrument4 = {
  instrument_id: Instrument.first.id,
  user_id: User.last.id
}

user_inst_options = [user_instrument1, user_instrument2, user_instrument3, user_instrument4]

puts ">"
puts "Starts creating user_instruments..."
user_inst_options.each do |user_inst_option|
  creation = UserInstrument.new(user_inst_option)
  creation.save!
end

puts ">"
puts "Done!"

puts ">"
puts "Starts creating genres..."
genres_options = [{ name:"Blues" }, { name:"Classic" }, { name:"Country" }, { name:"Disco" }, { name:"Hip-Hop" }, { name:"Jazz" }, { name:"Métal" }, { name:"Pop" },{ name:"Reggae" },{ name:"Rock" }]
genres_options.each do |genre_option|
  genre = Genre.new(genre_option)
  genre.save!
end
puts ">"
puts "Done!"


user_genre1 = {
  genre_id: Genre.last.id,
  user_id: User.first.id
}

user_genre2 = {
  genre_id: Genre.first.id,
  user_id: User.first.id
}

user_genre3 = {
  genre_id: Genre.last.id,
  user_id: User.last.id
}

user_genre4 = {
  genre_id: Genre.first.id,
  user_id: User.last.id
}

user_inst_options = [user_genre1, user_genre2, user_genre3, user_genre4]

puts ">"
puts "Starts creating user_instruments..."
user_inst_options.each do |user_inst_option|
  creation = UserGenre.new(user_inst_option)
  creation.save!
end

puts ">"
puts "Done!"
