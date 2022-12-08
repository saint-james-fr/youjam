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
Review.destroy_all
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
user9 = {
  first_name: "Etienne",
  last_name: "Détré",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Hello, passionné de musique depuis longtemps je cherche des jammers sur Lyon.",
  email: "etienne@test.com",
  location: "12 avenue Maréchal de Saxe, 69006 Lyon",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user10 = {
  first_name: "Claire",
  last_name: "Martin",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Just play music",
  email: "claire@test.com",
  location: "21 Rue d'Oslo,75018 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user11 = {
  first_name: "Clément",
  last_name: "Costa",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Salut, cherche des gens asap sur Paris.",
  email: "clement@test.com",
  location: "59 Rue de Miromesnil, 75008 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user12 = {
  first_name: "Elodie",
  last_name: "Pignon",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Salut à tous, moi c'est Elodie. J'adore chanter",
  email: "elodie@test.com",
  location: "11bis Rue du Colisée, 75008 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user13 = {
  first_name: "Félix",
  last_name: "Fabre",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Jamais ne jamais dire jammer",
  email: "felix@test.com",
  location: "5 Rue de la Manutention, 75116 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user14 = {
  first_name: "Georges",
  last_name: "Salomon",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Musicien & clown",
  email: "georges@test.com",
  location: "40 Boulevard Arago, 75013 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}
user15 = {
  first_name: "Romane",
  last_name: "Poiret",
  password: "youjam",
  password_confirmation: "youjam",
  description: "Hello guys, je prête mon studio pour jammer !",
  email: "romane@test.com",
  location: "12 Rue Claude Tillier, 75012 Paris",
  soundcloud_url: "https://soundcloud.com/chuwanaga",
  instagram_url: "https://www.instagram.com/universalmusicfrance/",
  spotify_account: "gas.fauchille"
}

users_options = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15]

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
users[7].avatar.attach(io: photo8, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo9 = URI.open("https://i.pravatar.cc/400?img=57")
users[8].avatar.attach(io: photo9, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo10 = URI.open("https://i.pravatar.cc/400?img=32")
users[9].avatar.attach(io: photo10, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo11 = URI.open("https://i.pravatar.cc/400?img=12")
users[10].avatar.attach(io: photo11, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo12 = URI.open("https://i.pravatar.cc/400?img=5")
users[11].avatar.attach(io: photo12, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo13 = URI.open("https://i.pravatar.cc/400?img=55")
users[12].avatar.attach(io: photo13, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo14 = URI.open("https://i.pravatar.cc/400?img=50")
users[13].avatar.attach(io: photo14, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo15 = URI.open("https://i.pravatar.cc/400?img=48")
users[14].avatar.attach(io: photo15, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")

puts ">"
puts "Starts creating Instruments..."
instruments_options = [
  { name:"Accordéon" },
  { name:"Basse" },
  { name:"Batterie" },
  { name:"Balalaïka" },
  { name:"Banjo" },
  { name:"Cithare" },
  { name:"Clavecin" },
  { name:"Cymbales" },
  { name:"Djembe" },
  { name:"Flûte à bec" },
  { name:"Flûte traversière" },
  { name:"Flûte Piccolo" },
  { name:"Guitare" },
  { name:"Harmonica" },
  { name:"Hautbois" },
  { name:"Harpe" },
  { name:"Kazoo" },
  { name:"Piano" },
  { name:"Maracas" },
  { name:"Orgue" },
  { name:"Piano" },
  { name:"Synthétiseurs" },
  { name:"Saxophone" },
  { name:"Tambour" },
  { name:"Trompette" },
  { name:"Trombone" },
  { name:"Triangle" },
  { name:"Tuba" },
  { name:"Ukulele" },
  { name:"Violon" },
  { name:"Violoncelle" },
  { name:"Voix" },
  { name:"Xylophone" },
]
instruments = []
instruments_options.each do |instrument_option|
  instrument = Instrument.new(instrument_option)
  instrument.save!
  instruments << instrument
end

puts ">"
puts "Done!"

puts ">"
puts "> Jams"
# !Jams options & Seed

jam1 =  {
  title: "Entraînons-nous ensemble",
  location: "16 Villa Gaudelet, 75011 Paris",
  description: "La célèbre Jam du Wagon",
  instruments_list: ["Batterie", "Guitare", "Basse"],
  capacity: 3,
  jam_date: DateTime.strptime("12/22/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[0].id
}

jam2 =  {
  title: "Je fais un solo, tu fais un solo",
  location: "48 avenue Parmentier, 75011 Paris",
  description: "La Jam de la Data versus Web Dev",
  instruments_list: ["Batterie", "Guitare", "Basse", "Trompette", "Saxophone"],
  capacity: 6,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[1].id
}

jam3 =  {
  title: "Clarinette au clair de Lune",
  location: "42 rue de Maubeuge, 75011 Paris",
  description: "After-Work clarinette si ça vous dit ",
  instruments_list: ["Clarinette"],
  capacity: 3,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[2].id
}

jam4 =  {
  title: "Session Jazz",
  location: "34 Boulevard Voltaire, 75011 Paris",
  description: "Venez comme vous êtes, ça va jazzer!",
  instruments_list: ["Batterie", "Trompette", "Basse", "Saxophone", "Contrebasse"],
  capacity: 5,
  jam_date: DateTime.strptime("12/01/2023 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[3].id
}

jam5 =  {
  title: "Korn et Muse",
  location: "12 Boulevard Marguerite de Rochechouart, 75018 Paris",
  description: "Venez jouer les plus grands tubes de Muse et Korn",
  instruments_list: ["Batterie", "Guitare", "Basse", "Kazoo"],
  capacity: 4,
  jam_date: DateTime.strptime("12/12/2022 18:00", "%m/%d/%Y %H:%M"),
  user_id: users[4].id
}

jam6 =  {
  title: "Christmas jam",
  location: "12 Place de Clichy, 75008 Paris",
  description: "Nous somme une chorale de deux et nous cherchons un orgue pour nous accompagner",
  instruments_list: ["Orgue", "Voix"],
  capacity: 3,
  jam_date: DateTime.strptime("12/13/2022 17:00", "%m/%d/%Y %H:%M"),
  user_id: users[5].id
}

jam7 =  {
  title: "De la vieille New Wave",
  location: "107 rue Saint Lazare, 75009 Paris",
  description: "Venez jouez du synthé sur nos textes enjoués ",
  instruments_list: ["Synthétiseur",],
  capacity: 2,
  jam_date: DateTime.strptime("01/01/2023 10:00", "%m/%d/%Y %H:%M"),
  user_id: users[6].id
}

jam8 =  {
  title: "Trap Europ Express",
  location: "50 rue des deux gares, 75010 Paris",
  description: "je souhaiterais faire de la musique aussi bien influencée par la trap que Kraftwerk, rejoignez-moi dans ce nouveau défi !",
  instruments_list: ["Synthétiseur", "Batterie", "Vocoder", "Xylophone"],
  capacity: 4,
  jam_date: DateTime.strptime("12/20/2022 21:00", "%m/%d/%Y %H:%M"),
  user_id: users[7].id
}

jam9 =  {
  title: "Pump up the Jam",
  location: "21 rue de Maubeuge, 75009 Paris",
  description: "Je fais de l'Eurodance et je cherche un joueur de triangle pour donner de l'âme à mes compos",
  instruments_list: ["Triangle", "Synthétiseur"],
  capacity: 2,
  jam_date: DateTime.strptime("12/14/2022 22:00", "%m/%d/%Y %H:%M"),
  user_id: users[8].id
}

jam10 =  {
  title: "Edit path",
  location: "4 place Jean-Baptiste Pigalle, 75009 Paris",
  description: "Pour les codeurs qui aiment les classiques de la chanson française",
  instruments_list: ["Piano", "Trompette"],
  capacity: 5,
  jam_date: DateTime.strptime("12/19/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[9].id
}

jam11 =  {
  title: "Jammin' Jam",
  location: "12 Rue Claude Tillier, 75012 Paris",
  description: "Fan de Bob Marley, je cherche des jammers pour faire un petit revival",
  instruments_list: ["Guitare", "Tambour"],
  capacity: 3,
  jam_date: DateTime.strptime("01/05/2023 18:00", "%m/%d/%Y %H:%M"),
  user_id: users[10].id
}

jam12 =  {
  title: "JAM 100% ROCK",
  location: "11bis Rue du Colisée, 75008 Paris",
  description: "Cherche des jammers pour faire du gros Rock",
  instruments_list: ["Guitare électrique", "Batterie"],
  capacity: 6,
  jam_date: DateTime.strptime("02/12/2023 20:30", "%m/%d/%Y %H:%M"),
  user_id: users[11].id
}

jam13 =  {
  title: "Composons ensemble",
  location: "65 Av. de Verdun, 64200 Biarritz",
  description: "Venez composer avec moi lors de cette jam session",
  instruments_list: ["Batterie", "Piano", "Ukulele"],
  capacity: 4,
  jam_date: DateTime.strptime("03/23/2023 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[3].id
}

jam14 =  {
  title: "Rocky Jam",
  location: "30 Rue Pierre Leroux, 75007 Paris",
  description: "J'organise avec mon ami Diane, cette Jam session",
  instruments_list: ["Batterie"],
  capacity: 5,
  jam_date: DateTime.strptime("12/23/2022 20:00", "%m/%d/%Y %H:%M"),
  user_id: users[4].id
}

jam15 =  {
  title: "Jam bien la musik",
  location: "40 Boulevard Arago, 75013 Paris",
  description: "J'aime trop la musique et je souahite jammer avec vous",
  instruments_list: ["Piano", "Ukulele"],
  capacity: 2,
  jam_date: DateTime.strptime("01/05/2023 19:30", "%m/%d/%Y %H:%M"),
  user_id: users[4].id
}

jam16 =  {
  title: "Ben'Jam hein!",
  location: "59 Rue de Miromesnil, 75008 Paris",
  description: "Venez découvrir ma Jam en toute simplicité",
  instruments_list: ["Maracas", "Triangle"],
  capacity: 4,
  jam_date: DateTime.strptime("10/05/2023 21:00", "%m/%d/%Y %H:%M"),
  user_id: users[3].id
}

jams_options = [jam1, jam2, jam3, jam4, jam5, jam6, jam7, jam8, jam9, jam10, jam11, jam12, jam13, jam14, jam15, jam16]

puts ">"
puts "Starts creating jams..."
jams = []
jams_options.each do |jam_option|
  file = URI.open("https://picsum.photos/1500") #get avatar from Lorem Picsum
  jam = Jam.new(jam_option)
  # jam.user = users.sample
  # binding.pry
  jam.photo.attach(io: file, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
  jam.save!
  jams << jam
end

photo1 = URI.open('https://images.unsplash.com/photo-1477611160464-0b9fb6404529?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
jams[0].photo.attach(io: photo1, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo2 = URI.open("https://images.unsplash.com/photo-1477233534935-f5e6fe7c1159?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
jams[1].photo.attach(io: photo2, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo3 = URI.open("https://images.unsplash.com/photo-1600771488491-c22d42a9347d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2xhcmluZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
jams[2].photo.attach(io: photo3, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo4 = URI.open("https://images.unsplash.com/photo-1514320291840-2e0a9bf2a9ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGphenp8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
jams[3].photo.attach(io: photo4, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/71/Abraham_Bloemaert_-_The_Bagpiper_-_WGA02274.jpg")
jams[4].photo.attach(io: photo5, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo6 = URI.open('https://images.unsplash.com/photo-1588032786045-59cefda005c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1788&q=80')
jams[5].photo.attach(io: photo6, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo7 = URI.open("https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
jams[6].photo.attach(io: photo7, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo8 = URI.open("https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
jams[7].photo.attach(io: photo8, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo9 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoL-TgLqPi0NQfAlvPpNfpJBwET0wr8ADbFQ&usqp=CAU")
jams[8].photo.attach(io: photo9, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo10 = URI.open("https://img-4.linternaute.com/9dkRcdwNecBxCbK83hN7hQpRaLE=/1500x/smart/4508a2ffc1084b2398e1b69a9db22cd1/ccmcms-linternaute/11208389.jpg")
jams[9].photo.attach(io: photo10, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo11 = URI.open("https://images.unsplash.com/photo-1597216634616-7a26f806705b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1466&q=80")
jams[10].photo.attach(io: photo11, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo12 = URI.open("https://images.unsplash.com/photo-1598387181032-a3103a2db5b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1476&q=80")
jams[11].photo.attach(io: photo12, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo13 = URI.open("https://images.unsplash.com/photo-1521473260013-0a3cabff168a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tcG9zZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
jams[12].photo.attach(io: photo13, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo14 = URI.open("https://images.unsplash.com/photo-1446057032654-9d8885db76c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGd1aXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
jams[13].photo.attach(io: photo14, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo15 = URI.open("https://images.unsplash.com/photo-1619983081563-430f63602796?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
jams[14].photo.attach(io: photo15, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")
photo16 = URI.open("https://images.unsplash.com/photo-1598515751039-5b58e4f5f6be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFyYWNhc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
jams[15].photo.attach(io: photo16, filename: "nes#{rand(1..1000000)}.png", content_type: "image/png")

puts ">"
puts "Done!"

# !Booking options & Seed
puts ">"
puts "> Bookings"

booking1 =  {
  message: "Salut j'ai grave envie de jammer, t'es chaud.e ?",
  user_id: users[4].id,
  jam_id: jams.last.id
}

booking2 =  {
  message: "c'est l'heure de la jam! let's go!",
  status: "accepted",
  user_id: users[12].id,
  jam_id: jams.last.id
}

booking3 =  {
  message: "Dispo, toujours ok ?",
  status: "accepted",
  user_id: users[11].id,
  jam_id: jams.last.id
}

booking4 =  {
  message: "Est-ce que je peux ramener 5 personnes ?",
  status: "declined",
  user_id: users[11].id,
  jam_id: jams.last.id
}

bookings_options = [booking1, booking2, booking3, booking4]

puts ">"
puts "Starts creating Bookings..."
bookings_options.each do |booking_option|
  # jam = jams.sample
  booking = Booking.new(booking_option)
  # booking.jam = jam
  # booking.user = users.reject { |user| user.id == jam.user.id}.sample
  booking.save!
end
puts ">"
puts "Done Bookings!"



puts ">"
puts "> Posts"

# !Posts options & Seed

post1 =  {
  content: "Ca va être mortel les petits loups",
  jam_id: jams.last.id,
  user_id: users[12].id
}

post2 =  {
  content: "je ramène mon ampli de guitare",
  jam_id: jams.last.id,
  user_id: users[11].id
}

post3 =  {
  content: "trop hâte !",
  jam_id: jams.last.id,
  user_id: users[3].id
}

post4 =  {
  content: "Ca va être trop bien !",
  jam_id: jams.last.id,
  user_id: users[3].id
}

post_options = [post1, post2, post3, post4]

puts ">"
puts "Starts creating Posts..."
post_options.each do |post_option|
  # jam = jams.sample
  # user = users.sample
  post = Post.new(post_option)
  # post.jam = jam
  # post.user = user
  post.save!
end
puts ">"
puts "Done!"

# !Creations options & Seed

creation1 =  {
  creation_url: "https://www.youtube.com/watch?v=WaM2pxTPstw",
  message: "On avait bien rigolé ce jour là!",
  user_id: users[2].id
}

creation2 =  {
  creation_url: "https://www.youtube.com/watch?v=ryz0QmMjexY",
  message: "Super jam, en plus le public était chaud",
  user_id: users[3].id
}

creation3 =  {
  creation_url: "https://www.youtube.com/watch?v=bKn7FyGK080",
  message: "Écoutez le batteur, c'est de la folie !",
  user_id: users[4].id
}

creation4 =  {
  creation_url: "https://www.youtube.com/watch?v=Kk6j3BXHBWM",
  message: "Super hâte de remettre ça avec vous",
  user_id: users[1].id
}

creation5 =  {
  creation_url: "https://www.youtube.com/watch?v=opdEWV9PcNo",
  message: "J'en garde un super souvenir, meilleur jam de l'année !",
  user_id: users[6].id
}

creation6 =  {
  creation_url: "https://www.youtube.com/watch?v=eDwofY2eYHQ",
  message: "La prochaine fois, on fera encore mieux !",
  user_id: users[10].id
}

creation7 =  {
  creation_url: "https://www.youtube.com/watch?v=wrHCWDffcXo",
  message: "Franchement pas mal pour une première !",
  user_id: users[3].id
}

creation8 =  {
  creation_url: "https://www.youtube.com/watch?v=1s6rtWjMTVs",
  message: "J'ai pris beaucoup de plaisir, merci Youjam d'avoir rendu ça possible !",
  user_id: users[6].id
}

creation9 =  {
  creation_url: "https://www.youtube.com/watch?v=DLn48c05xVA",
  message: "Groove de malade, équipe de dingue, un résultat de folie...",
  user_id: users[7].id
}

creation10 =  {
  creation_url: "https://www.youtube.com/watch?v=HO_STXzgdjg",
  message: "Attention, cette vidéo va vous faire groover !",
  user_id: users[8].id
}

creations_options = [creation1, creation2, creation3, creation4, creation5, creation6, creation7, creation8, creation9, creation10]

puts ">"
puts "Starts creating Creations..."
creations_options.each do |creation_option|
  creation = Creation.new(creation_option)
  # creation.user = users.sample
  creation.save!
end

puts ">"
puts "Starts creating User_Instrument..."

user_instrument1 = {
  instrument_id: instruments[0].id,
  user_id: users[4].id
}
user_instrument2 = {
  instrument_id: instruments[6].id,
  user_id: users[4].id
}
user_instrument3 = {
  instrument_id: instruments[4].id,
  user_id: users[4].id
}

user_instrument4 = {
  instrument_id: instruments[12].id,
  user_id: users[3].id
}

user_instrument5 = {
  instrument_id: instruments[4].id,
  user_id: users[3].id
}

user_instrument6 = {
  instrument_id: instruments[17].id,
  user_id: users[0].id
}
user_instrument7 = {
  instrument_id: instruments[9].id,
  user_id: users[0].id
}
user_instrument8 = {
  instrument_id: instruments[3].id,
  user_id: users[0].id
}
user_instrument9 = {
  instrument_id: instruments[7].id,
  user_id: users[0].id
}
user_instrument10 = {
  instrument_id: instruments[12].id,
  user_id: users[1].id
}
user_instrument11 = {
  instrument_id: instruments[1].id,
  user_id: users[1].id
}
user_instrument12 = {
  instrument_id: instruments[16].id,
  user_id: users[2].id
}
user_instrument13 = {
  instrument_id: instruments[2].id,
  user_id: users[3].id
}
user_instrument14 = {
  instrument_id: instruments[3].id,
  user_id: users[4].id
}
user_instrument15 = {
  instrument_id: instruments[4].id,
  user_id: users[5].id
}
user_instrument16 = {
  instrument_id: instruments[5].id,
  user_id: users[6].id
}
user_instrument17 = {
  instrument_id: instruments[6].id,
  user_id: users[7].id
}
user_instrument18 = {
  instrument_id: instruments[7].id,
  user_id: users[8].id
}
user_instrument19 = {
  instrument_id: instruments[12].id,
  user_id: users[9].id
}
user_instrument20 = {
  instrument_id: instruments[12].id,
  user_id: users[10].id
}
user_instrument21 = {
  instrument_id: instruments[14].id,
  user_id: users[11].id
}
user_instrument22 = {
  instrument_id: instruments[9].id,
  user_id: users[12].id
}

user_inst_options = [user_instrument1, user_instrument2, user_instrument3, user_instrument4, user_instrument5, user_instrument6, user_instrument7, user_instrument8, user_instrument9, user_instrument10, user_instrument11, user_instrument12, user_instrument13, user_instrument14, user_instrument15, user_instrument16, user_instrument17, user_instrument18, user_instrument19, user_instrument20, user_instrument21, user_instrument22]

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
genres_options = [
  { name:"Blues" },
  { name:"Classic" },
  { name:"Country" },
  { name:"Disco" },
  { name:"Hip-Hop" },
  { name:"Jazz" },
  { name:"Métal" },
  { name:"Pop" },
  { name:"Reggae" },
  { name:"Rock" }
]
genres = []
genres_options.each do |genre_option|
  genre = Genre.new(genre_option)
  genre.save!
  genres << genre
end
puts ">"
puts "Done!"


user_genre1 = {
  genre_id: genres[0].id,
  user_id: users[0].id
}

user_genre2 = {
  genre_id: genres[1].id,
  user_id: users[0].id
}

user_genre3 = {
  genre_id: genres[1].id,
  user_id: users[1].id
}

user_genre4 = {
  genre_id: genres[2].id,
  user_id: users[1].id
}

user_genre5 = {
  genre_id: genres[2].id,
  user_id: users[2].id
}

user_genre6 = {
  genre_id: genres[3].id,
  user_id: users[2].id
}

user_genre7 = {
  genre_id: genres[3].id,
  user_id: users[3].id
}

user_genre8 = {
  genre_id: genres[4].id,
  user_id: users[3].id
}

user_genre9 = {
  genre_id: genres[4].id,
  user_id: users[4].id
}

user_genre10 = {
  genre_id: genres[5].id,
  user_id: users[4].id
}

user_genre11 = {
  genre_id: genres[4].id,
  user_id: users[5].id
}

user_genre12 = {
  genre_id: genres[5].id,
  user_id: users[5].id
}

user_genre13 = {
  genre_id: genres[6].id,
  user_id: users[6].id
}

user_genre14 = {
  genre_id: genres[7].id,
  user_id: users[7].id
}

user_genre15 = {
  genre_id: genres[8].id,
  user_id: users[8].id
}

user_genre16 = {
  genre_id: genres[9].id,
  user_id: users[9].id
}

user_genre17 = {
  genre_id: genres[7].id,
  user_id: users[10].id
}

user_genre18 = {
  genre_id: genres[8].id,
  user_id: users[11].id
}

user_genre19 = {
  genre_id: genres[9].id,
  user_id: users[12].id
}

user_genre20 = {
  genre_id: genres[6].id,
  user_id: users[13].id
}

user_genre_options = [user_genre1, user_genre2, user_genre3, user_genre4, user_genre5, user_genre6, user_genre7, user_genre8, user_genre9, user_genre10, user_genre11, user_genre12, user_genre13, user_genre14, user_genre15, user_genre16, user_genre17, user_genre18, user_genre19, user_genre20]

puts ">"
puts "Starts creating user_genres..."
user_genre_options.each do |user_genre_option|
  creation = UserGenre.new(user_genre_option)
  creation.save!
end

puts ">"
puts "Done!"
