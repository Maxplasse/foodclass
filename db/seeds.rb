require "open-uri"

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
    first_name: "Frederic",
    last_name: "Lange",
    email: "frederic@gmail.com",
    password: "frederic",
    nickname: "fred_lange",
    photo: "fred.jpg"
  },
  {
    first_name: "Maxime",
    last_name: "Plasse",
    email: "maxime@gmail.com",
    password: "maxime",
    nickname: "maxplasse",
    photo: "maxime.jpg"
  },
  {
    first_name: "Maxime",
    last_name: "Beauge",
    email: "maximebeauge@gmail.com",
    password: "maxime",
    nickname: "maxxx",
    photo: "maxxx.png"
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

courses_simple = [
  {
    chef: ambroise,
    title: "Bobun au tofu",
    difficulty: "Moyen",
    duration: 50,
    category: "",
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
    category: "",
    total_participations: 168,
    level_points: 10,
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
    category: "",
    total_participations: 128,
    level_points: 10,
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
    category: "",
    total_participations: 265,
    level_points: 10,
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
    category: "",
    total_participations: 142,
    level_points: 10,
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
    level_points: 10,
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
    category: "",
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
    category: "",
    total_participations: 137,
    level_points: 10,
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
    category: "",
    total_participations: 149,
    level_points: 10,
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
    level_points: 10,
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
    category: "",
    total_participations: 281,
    level_points: 10,
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
    level_points: 10,
    start_at: DateTime.new(2022, 2, 10, 19),
    end_at: DateTime.new(2022, 2, 10, 19) + 1.16.hour,
    photo_url: [
      "https://images.pexels.com/photos/10883374/pexels-photo-10883374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: lilian,
    title: "Risotto à la tomate, avocat et burrata",
    difficulty: "Moyen",
    duration: 45,
    category: "",
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
    category: "",
    total_participations: 183,
    level_points: 10,
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

p "5"

courses_simple.each_with_index do |course, index|
  photo = URI.open(course[:photo_url].first)

  p = Course.new(chef: course[:chef],
                 title: course[:title],
                 difficulty: course[:difficulty],
                 category: course[:category],
                 total_participations: course[:total_participations],
                 level_points: course[:level_points],
                 start_at: course[:start_at],
                 end_at: course[:end_at])
  p.photo.attach(io: photo, filename: "course#{index}.png", content_type: 'image/png')
  unless p.save
    raise
  end
end

p "6"
