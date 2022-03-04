require "open-uri"

p "Destroying posts"
Post.destroy_all
p "Destroying participations"
Participation.destroy_all
p "Destroying courses"
Course.destroy_all
p "Destroying chefs"
Chef.destroy_all
p "Destroying users"
User.destroy_all

users_h = [
  {
    first_name: "Stephen",
    last_name: "Grieves",
    email: "stephen@gmail.com",
    password: "stephen",
    nickname: "stepheng",
    photo: "stephen.png"
  },
  {
    first_name: "Matthieu",
    last_name: "Flecher",
    email: "matthieu@gmail.com",
    password: "matthieu",
    nickname: "matt_f",
    photo: "matthieu.jpg"
  },
  {
    first_name: "Marie",
    last_name: "Sepanik",
    email: "maries@gmail.com",
    password: "maries",
    nickname: "marie szz",
    photo: "maries.jpg",
    admin: true
  },
  {
    first_name: "Frederic",
    last_name: "Lange",
    email: "frederic@gmail.com",
    password: "frederic",
    nickname: "fred_lange",
    photo: "fred.jpg",
    admin: true
  },
  {
    first_name: "Maxime",
    last_name: "Plasse",
    email: "maxime@gmail.com",
    password: "maxime",
    nickname: "maxplasse",
    photo: "maxime.jpg",
    admin: true
  },
  {
    first_name: "Maxime",
    last_name: "Beauge",
    email: "maximebeauge@gmail.com",
    password: "maxime",
    nickname: "maxxx",
    photo: "maxxx.png",
    admin: true
  },
  {
    first_name: "Thomas",
    last_name: "Desmoulins",
    email: "thomas@gmail.com",
    password: "thomas",
    nickname: "tdm",
    photo: "thomas.jpg"
  },
  {
    first_name: "Marie",
    last_name: "Desjonqueres",
    email: "marie@gmail.com",
    password: "maried",
    nickname: "marie_d",
    photo: "marie.jpg"
  },
  {
    first_name: "Louise",
    last_name: "Ouldhaddi",
    email: "louise@gmail.com",
    password: "louise",
    nickname: "loulou",
    photo: "louise.jpg"
  },
  {
    first_name: "Myriam",
    last_name: "Delbreil",
    email: "myriam@gmail.com",
    password: "myriam",
    nickname: "mymy",
    photo: "myriam.jpg"
  },
  {
    first_name: "Diane",
    last_name: "Johnson",
    email: "diane@gmail.com",
    password: "dianej",
    nickname: "djr",
    photo: "diane.jpg"
  }
]

users = users_h.map do |user|
  u = User.new(user)
  u.save
  u
end

stephen = users[0]
matthieu = users[1]
fred = users[2]
maxime_p = users[3]
maxime_b = users[4]
thomas = users[5]
marie = users[6]
louise = users[7]
myriam = users[8]
diane = users[9]

p "1"

users_chefs_h = [
  {
    first_name: "Ambroise",
    last_name: "Voreux",
    email: "ambroise@gmail.com",
    password: "ambroise",
    nickname: "ambroise",
    photo: "ambroise.jpg"
  },
  {
    first_name: "Lilian",
    last_name: "Douchet",
    email: "lilian@gmail.com",
    password: "lilian",
    nickname: "douchet",
    photo: "lilian.jpg"
  },
  {
    first_name: "Chloé",
    last_name: "Charles",
    email: "chloe@gmail.com",
    password: "chloec",
    nickname: "chloec",
    photo: "chloe.jpg"
  },
  {
    first_name: "Mory",
    last_name: "Sacko",
    email: "morysacko@gmail.com",
    password: "morysacko",
    nickname: "morysacko",
    photo: "mory.jpg"
  },
  {
    first_name: "Sarah",
    last_name: "Mainguy",
    email: "sarah@gmail.com",
    password: "sarahm",
    nickname: "sarahm",
    photo: "sarah.jpg"
  },
  {
    first_name: "Alexia",
    last_name: "Duchesnes",
    email: "alexia@gmail.com",
    password: "alexia",
    nickname: "alexia_d",
    photo: "alexia.jpg"
  },
  {
    first_name: "Pierre",
    last_name: "Chomet",
    email: "pierre@gmail.com",
    password: "pierre",
    nickname: "pierre_chomet",
    photo: "pierre.jpg"
  }
]

users_chefs = users_chefs_h.map do |user|
  u = User.new(user)
  u.save
  u
end

ambroisev = users_chefs[0]
liliand = users_chefs[1]
chloec = users_chefs[2]
morys = users_chefs[3]
sarahm = users_chefs[4]
alexiad = users_chefs[5]
pierrec = users_chefs[6]

p "2"

chefs_h = [
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: ambroisev
  },
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: liliand
  },
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: chloec
  },
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: morys
  },
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: sarahm
  },
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: alexiad
  },
  {
    restaurant_name: "",
    specialty: "",
    level: "",
    user: pierrec
  }
]

p "3"

chefs = chefs_h.map do |chef|
  c = Chef.new(chef)
  c.save
  c
end

ambroise = chefs[0]
lilian = chefs[1]
chloe = chefs[2]
mory = chefs[3]
sarah = chefs[4]
alexia = chefs[5]
pierre = chefs[6]

p "4"

courses_simple_h = [
  {
    chef: ambroise,
    title: "Bobun au tofu",
    difficulty: "Moyen",
    duration: 50,
    category: "Asiatique",
    total_participations: 236,
    level_points: 10,
    start_at: DateTime.new(2022, 1, 5, 18),
    end_at: DateTime.new(2022, 1, 5, 18) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/3026808/pexels-photo-3026808.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: lilian,
    title: "Burger savoyard, frites au fromage",
    difficulty: "Facile",
    duration: 50,
    category: "Français",
    total_participations: 168,
    level_points: 5,
    start_at: DateTime.new(2022, 1, 12, 18, 30),
    end_at: DateTime.new(2022, 1, 12, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: chloe,
    title: "Riz curry coco et petits pois",
    difficulty: "Facile",
    duration: 40,
    category: "Asiatique",
    total_participations: 128,
    level_points: 5,
    start_at: DateTime.new(2022, 1, 13, 19),
    end_at: DateTime.new(2022, 1, 13, 19) + 0.66.hour,
    photo_url: [
      "https://images.pexels.com/photos/674574/pexels-photo-674574.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: mory,
    title: "Mi-cuit de saumon, haricot et riz",
    difficulty: "Facile",
    duration: 35,
    category: "Français",
    total_participations: 265,
    level_points: 5,
    start_at: DateTime.new(2022, 1, 19, 18, 30),
    end_at: DateTime.new(2022, 1, 19, 18, 30) + 0.58.hour,
    photo_url: [
      "https://images.pexels.com/photos/3490368/pexels-photo-3490368.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: sarah,
    title: "Gnocchis épinards et crème au soja",
    difficulty: "Facile",
    duration: 30,
    category: "Végétarien",
    total_participations: 142,
    level_points: 5,
    start_at: DateTime.new(2022, 1, 25, 18),
    end_at: DateTime.new(2022, 1, 25, 18) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/3590401/pexels-photo-3590401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: alexia,
    title: "Canard, épinards et pommes de terre grillées au four",
    difficulty: "Difficile",
    duration: 60,
    category: "",
    total_participations: 189,
    level_points: 15,
    start_at: DateTime.new(2022, 1, 27, 19, 30),
    end_at: DateTime.new(2022, 1, 25, 18) + 1.hour,
    photo_url: [
      "https://images.pexels.com/photos/3659862/pexels-photo-3659862.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: pierre,
    title: "Makis saumon et avocat",
    difficulty: "Moyen",
    duration: 60,
    category: "Asiatique",
    total_participations: 193,
    level_points: 10,
    start_at: DateTime.new(2022, 2, 1, 19, 30),
    end_at: DateTime.new(2022, 2, 1, 19, 30) + 1.hour,
    photo_url: [
      "https://images.pexels.com/photos/3642030/pexels-photo-3642030.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: pierre,
    title: "Pavé de boeuf, asperges, sauce au vin",
    difficulty: "Facile",
    duration: 50,
    category: "Français",
    total_participations: 137,
    level_points: 5,
    start_at: DateTime.new(2022, 2, 2, 18, 30),
    end_at: DateTime.new(2022, 2, 2, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: alexia,
    title: "Gigot d'agneau et ses légumes de saison",
    difficulty: "Difficile",
    duration: 50,
    category: "Français",
    total_participations: 149,
    level_points: 15,
    start_at: DateTime.new(2022, 2, 2, 18, 30),
    end_at: DateTime.new(2022, 2, 2, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: sarah,
    title: "Toast avocat, épinards et œuf",
    difficulty: "Difficile",
    duration: 30,
    category: "",
    total_participations: 203,
    level_points: 15,
    start_at: DateTime.new(2022, 2, 8, 18, 30),
    end_at: DateTime.new(2022, 2, 8, 18, 30) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
    ]
  },
  {
    chef: mory,
    title: "Poke bowl salade, crevettes au curry, avocat",
    difficulty: "Facile",
    duration: 30,
    category: "Asiatique",
    total_participations: 281,
    level_points: 5,
    start_at: DateTime.new(2022, 2, 9, 18, 30),
    end_at: DateTime.new(2022, 2, 8, 18, 30) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: chloe,
    title: "Homard grillé au four, sauce à la crème et à la bisque",
    difficulty: "Difficile",
    duration: 70,
    category: "",
    total_participations: 219,
    level_points: 15,
    start_at: DateTime.new(2022, 3, 15, 19),
    end_at: DateTime.new(2022, 3, 15, 19) + 1.16.hour,
    photo_url: [
      "https://images.pexels.com/photos/10883374/pexels-photo-10883374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: lilian,
    title: "Risotto à la tomate, avocat et burrata",
    difficulty: "Moyen",
    duration: 45,
    category: "Italien",
    total_participations: 172,
    level_points: 10,
    start_at: DateTime.new(2022, 2, 17, 19),
    end_at: DateTime.new(2022, 2, 17, 19) + 0.75.hour,
    photo_url: [
      "https://images.pexels.com/photos/10766728/pexels-photo-10766728.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: ambroise,
    title: "Lasagnes traditionnelles à l'italienne",
    difficulty: "Facile",
    duration: 45,
    category: "Italien",
    total_participations: 183,
    level_points: 5,
    start_at: DateTime.new(2022, 2, 18, 18, 30),
    end_at: DateTime.new(2022, 2, 18, 18, 30) + 0.75.hour,
    photo_url: [
      "https://images.pexels.com/photos/6046493/pexels-photo-6046493.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: pierre,
    title: "Pad thaï aux crevettes",
    difficulty: "Moyen",
    duration: 50,
    category: "",
    total_participations: 137,
    level_points: 10,
    start_at: DateTime.new(2022, 2, 25, 19, 30),
    end_at: DateTime.new(2022, 2, 25, 19, 30) + 0.83.hour,
    photo_url: [
      "https://images.pexels.com/photos/6646351/pexels-photo-6646351.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  }
]

courses = courses_simple_h.map.with_index do |course, index|
  photo = URI.open(course[:photo_url].first)

  p = Course.new(chef: course[:chef],
                 title: course[:title],
                 difficulty: course[:difficulty],
                 duration: course[:duration],
                 category: course[:category],
                 total_participations: course[:total_participations],
                 level_points: course[:level_points],
                 start_at: course[:start_at],
                 end_at: course[:end_at])
  p.photo.attach(io: photo, filename: "course#{index}.png", content_type: 'image/png')
  p.save!
  p
end

p "5"

posted_course = courses.each do |course|
  Participation.create!(course: course, user: maxime_p, favorite: false)
  Participation.create!(course: course, user: fred, favorite: false)
  Participation.create!(course: course, user: stephen, favorite: false)
end

p "6"

maxime_p.participations.sample(3).each { |p| p.update(favorite: true) }

p "7"


# Max participation to create new posts
part_max = maxime_p.participations
part_max1 = part_max[0]
part_max2 = part_max[2]
part_max3 = part_max[3]

# Fred participation to create new posts
part_fred = fred.participations
part_fred1 = part_fred[4] # Gnocchis épinards et crème au soja avec Sarah
part_fred2 = part_fred[5] # Canard, épinards et pommes de terre grillées au four avec Alexia
part_fred3 = part_fred[6] # Makis saumon et avocat avec Pierre

# Fred participation to create new posts
part_stephen = stephen.participations
part_stephen1 = part_stephen[7] # Pavé de boeuf, asperges, sauce au vin
part_stephen2 = part_stephen[8] # Gigot d'agneau et ses légumes de saison
part_stephen3 = part_stephen[9] # Toast avocat, épinards et œuf


p "8"

# les posts de maxime
post_max1 = posted_course[0]
post_max2 = posted_course[2]
post_max3 = posted_course[3]

# les posts de fred
post_fred1 = posted_course[4]
post_fred2 = posted_course[5]
post_fred3 = posted_course[6]

# les posts de stephen
post_stephen1 = posted_course[7]
post_stephen2 = posted_course[8]
post_stephen3 = posted_course[9]


posts_h = [
  {
    content: "Recette excellente ! Un beau moment de partage avec Ambroise",
    participation: part_max1,
    course: post_max1,
    posted_at: DateTime.new(2022, 2, 18, 15, 55),
    photo_url: "https://img-3.journaldesfemmes.fr/Dv4No5oSzA4-mYG4QYiXZRInjhs=/750x500/smart/0858995addb849bdb295719d05cf406c/recipe-jdf/10033576.jpg"
  },
  {
    content: "Un délicieux riz coco accompagné sous les conseils de Chloé Charles. Plat délicieuuuuux! ",
    participation: part_max2,
    course: post_max2,
    posted_at: DateTime.new(2022, 3, 1, 18, 57),
    photo_url: "https://res.cloudinary.com/hv9ssmzrz/image/fetch/c_fill,f_auto,h_488,q_auto,w_650/https://s3-eu-west-1.amazonaws.com/images-ca-1-0-1-eu/recipe_photos/original/140940/DSC_0390.JPG"
  },
  {
    content: "Recette suive à la lettre, très bonne recette avec Mory Sacko",
    participation: part_max3,
    course: post_max3,
    posted_at: DateTime.new(2021, 12, 1, 15, 2),
    photo_url: "https://i.ytimg.com/vi/Jke_paxHCUc/sddefault.jpg"
  },
  {
    content: "Recette plutôt facile, mes gnocchis étaient bien fermes et dorés ! Je recommande",
    participation: part_fred1,
    course: post_fred1,
    posted_at: DateTime.new(2022, 1, 5, 9, 14),
    photo_url: "https://img.cuisine-etudiant.fr/image/recette/800500/da8329134318fb87d7d17effb25ccabe9c12adcb-gnocchis-epinards-champignons-et-mozzzzaaaa.jpeg"
  },
  {
    content: "Canard cuisson lente à la poêle, recette complexe mais incroyable résultat. ",
    participation: part_fred2,
    course: post_fred2,
    posted_at: DateTime.new(2022, 1, 5, 9, 32),
    photo_url: "https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2020.2F05.2F06.2Fed655561-3904-4b22-8064-8779e5e0adc8.2Ejpeg/748x372/quality/80/crop-from/center/magret-de-canard-et-pommes-de-terre-sautees.jpeg"
  },
  {
    content: "Pierre a pris son temps pour bien expliquer cette recette asseaz complexe. Un régal!",
    participation: part_fred3,
    course: post_fred3,
    posted_at: DateTime.new(2021, 11, 4, 15, 23),
    photo_url: "https://static.750g.com/images/1200-630/dc55b155cecbd4a45c1f0131c1d7850c/makis-saumon-et-avocat.jpeg"
  },
  {
    content: "Le secret du plat c'est la sauce au vin. Awesome ! Chef à l'écoute et pédagogue",
    participation: part_stephen1,
    course: post_stephen1,
    posted_at: DateTime.new(2021, 8, 10, 9, 19),
    photo_url: "https://recettes.de/images/blogs/edith-et-sa-cuisine/pave-de-boeuf-sauce-grand-veneur-523.640x480.jpg"
  },
  {
    content: "La cuisson du gigot est primordiale, pour ma part j'ai suivi les consignes à la lettre et le résultat est plus que convenable",
    participation: part_stephen2,
    course: post_stephen2,
    posted_at: DateTime.new(2022, 2, 19, 10, 12),
    photo_url: "http://p0.storage.canalblog.com/01/46/208183/61625287.jpg"
  },
  {
    content: "Recette simple et efficace",
    participation: part_stephen3,
    course: post_stephen3,
    posted_at: DateTime.new(2022, 1, 20, 17, 27),
    photo_url: "https://cuisine-addict.com/wp-content/uploads/2015/06/avocado-toast.jpg"
  }
]

posts_h.map do |post|
  photo = URI.open(post[:photo_url])
  new_post = Post.create!(content: post[:content],
                          participation: post[:participation],
                          posted_at: post[:posted_at],
                          course: post[:course])
  new_post.photo.attach(io: photo, filename: "post.png", content_type: 'image/png')
  new_post.save!
  new_post
end

p "9"
