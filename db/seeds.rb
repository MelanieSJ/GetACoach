# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting all users..'
User.destroy_all

puts 'Deleting all services..'
Service.destroy_all

puts 'Creating users...'

url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550595377/mawu1si99ndr6qbx2gaa.jpg"

kevin = User.new({
    email:        'kevin@gmail.com',
    password:     'abcdefg',
    name:         'Kevin',
    city:         'Paris',
    age:           30,
    category:     'Kickboxing'
      })
kevin.remote_photo_url = url
kevin.save!

url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597567/hexlchowxkk6y9nibva6.jpg"

julien = User.new({
    email:        'julien@gmail.com',
    password:     'klbcdefg',
    name:         'Julien',
    city:         'Paris',
    age:           25,
    category:     'Karate'
  })
julien.remote_photo_url = url
julien.save!

url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550595693/wwah1liqlgnwb9i5576o.png"

thomas = User.new({
    email:        'thomas@gmail.com',
    password:     'cbcdefg',
    name:         'Thomas',
    city:         'Paris',
    age:           30,
    category:     'Jiu Jitsu'
  })
thomas.remote_photo_url = url
thomas.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597439/okkusjowtvgeudvqjgft.png"

sami = User.new({
    email:        'sami@gmail.com',
    password:     'cbddefg',
    name:         'Sami',
    city:         'Paris',
    age:           18,
    category:     'Karate'
  })
sami.remote_photo_url = url
sami.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597454/eli7jm4yczbx8bciwlhq.jpg"

beatrijs = User.new({
    email:        'beatrijs@gmail.com',
    password:     'cbcdmmmg',
    name:         'Beatrijs',
    city:         'Reims',
    age:           50,
    category:     'Oriental Dance'
  })
beatrijs.remote_photo_url = url
beatrijs.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597473/kpxntvfzq9zpnvso1wlo.jpg"

céline = User.new({
    email:        'celine@gmail.com',
    password:     'cbcllfg',
    name:         'Céline',
    city:         'Toulouse',
    age:           25,
    category:     'Crossfit'
  })
céline.remote_photo_url = url
céline.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597464/btlwbe4pmfahouokbvsl.jpg"

esther = User.new({
    email:        'esther@gmail.com',
    password:     'cbcdddeg',
    name:         'Esther',
    city:         'Paris',
    age:           20,
    category:     'Boxing'
  })
esther.remote_photo_url = url
esther.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597483/fpto4593pivcqdliupup.png"

mélanie = User.new({
    email:        'melanie@gmail.com',
    password:     'cbcnnng',
    name:         'Mélanie',
    city:         'Lyon',
    age:           20,
    category:     'Zumba'
  })
mélanie.remote_photo_url = url
mélanie.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597640/hgnollcdrhpmz4mh18lh.jpg"

gabriel = User.new({
    email:        'gabriel@gmail.com',
    password:     'cbkjdefg',
    name:         'Gabriel',
    city:         'Paris',
    age:           28,
    category:     'Frisbee'
  })
gabriel.remote_photo_url = url
gabriel.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597508/ex8hqfddmdkkhzuhixd4.jpg"

guillaume = User.new({
    email:        'guillaume@gmail.com',
    password:     'cbhhhfg',
    name:         'Guillaume',
    city:         'Paris',
    age:           30,
    category:     'Salsa'
  })
guillaume.remote_photo_url = url
guillaume.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550598327/qsmejnvifymfvndaywij.jpg"

claire = User.new({
    email:        'claire@gmail.com',
    password:     'cbcdrrr',
    name:         'Claire',
    city:         'Paris',
    age:           24,
    category:     'Yoga'
  })
claire.remote_photo_url = url
claire.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597518/zrrtksvq0vabcerndl01.jpg"

mathieu = User.new({
    email:        'mathieu@gmail.com',
    password:     'cbcdzer',
    name:         'Mathieu',
    city:         'Bordeaux',
    age:           18,
    category:     'Bodybuilding'
  })
mathieu.remote_photo_url = url
mathieu.save!


puts 'Finished Users!'



puts 'Creating services...'

Service.create!({
    name:         'Learn the best Kickboxing techniques',
    description:  'You will learn the fundamentals of Kickboxing and go beyond! By focusing on proper techniques and good form, you can avoid common training mistakes and become a feared Kickboxing fighter!',
    price:         35,
    address:      'FitnessPark République, 5 Place de la République, 75010 Paris',
    category:     'Kickboxing',
    user:          kevin
  })
Service.create!({
    name:         'The Philosophy of Karate and beyond!',
    description:  'Delve deep into the world of the martial arts philosophy and learn how this art form involves the mind and spirit as much the body. Meditation and the practice of Courtesy are essential!',
    price:         60,
    address:      'Le Wagon Cellar, 16 Villa Gaudelet, 75011 Paris',
    category:     'Karate',
    user:         julien
  })
Service.create!({
    name:         'Master the Japanese art of ground-fighting',
    description:  'BJJ teaches you how even as the smaller and weaker of two fighters, you can successfully defend yourself against any opponent. This is ideal for all self-defense situations!',
    price:         40,
    address:      'Gymnase de la Porte d\'Italie, 13 Boulevard d\'Italie, 75013 Paris',
    category:     'Jiu Jitsu',
    user:         thomas
  })
Service.create!({
    name:         'Become a real Karateka',
    description:  'Become one of 100 million Kareteka worldwide and learn the fundamentals of this martial art including punching, kicking, knee strikes and open-hand techniques. Release energy with a purpose!',
    price:         50,
    address:      'Stade Olympique, 251 boulevard Exelmans, 75016 Paris',
    category:     'Karate',
    user:         sami
  })
Service.create!({
    name:         'Dazzle like a true Belly Dancer!',
    description:  'Learn how to dance and dazzle like the Arabian queens! This dance is all about gracious and fluid movements and lots of fun! Join me!',
    price:         40,
    address:      'Conservatoire de Danse, 51 Boulevard Henri Vasnier, 51000 Reims',
    category:     'Oriental Dance',
    user:         beatrijs
  })
Service.create!({
    name:         'Get fit and beat your goals!',
    description:  'You will receive a custom programme, tailored to your needs! Combining elements of HIIT, weightlifting, plyometrics and powerlifting, you will beat the big guys in no time!',
    price:         30,
    address:      'Stade municipal, Route de la Plage, 31000 Toulouse',
    category:     'Crossfit',
    user:         céline
  })
Service.create!({
    name:         'Learn how to land a punch',
    description:  'Join the ring, throw a punch and score a TKO! This fast-paced combat sport is for everyone who want to follow in the impressive footsteps of real champions!',
    price:         35,
    address:      'Club Boxe, 14 Rue d\'Abbeville, 75010 Paris',
    category:     'Boxing',
    user:         esther
  })
Service.create!({
    name:         'Dance your way to fit!',
    description:  'With lots of fun salsa, samba, merengue and hip-hop music to energize you, you will enjoy melting away those extra pounds and get fit in no time!',
    price:         25,
    address:      'Centre Multisports, 20 Avenue de la République, 69001 Lyon',
    category:     'Zumba',
    user:         mélanie
  })
Service.create!({
    name:         'Impress your next date with fancy Frisbee skills!',
    description:  'Whether in the parc or on the beach, learn the art and skill behind throwing and catching. With my help you will make it look easy and fun and impress anyone by your side! ',
    price:         30,
    address:      'Grande Pelouse du Bois de Vincennes, 75012 Paris',
    category:     'Frisbee',
    user:         gabriel
  })
 Service.create!({
    name:         'Learn one of the most popular forms of modern dance - Salsa!',
    description:  'Join me and learn how to move smoothly, rhythmically and with lots of attitude. Plus we will dance to the best salsa music! Join me for a fun-filled hour of dance!',
    price:         35,
    address:      'La Pachanga, 8 Rue Vandamme, 75014 Paris',
    category:     'Salsa',
    user:         guillaume
  })
Service.create!({
    name:         'Yoga, Meditation & Mindfulness',
    description:  'Practice mindfulness, relaxation and become a real yogi. You learn proper breathing techniques, poses ranging from beginner to advanced and become flexible!',
    price:         25,
    address:      'Le Wagon, 16 Villa Gaudelet, 75011 Paris',
    category:     'Yoga',
    user:         claire
  })
Service.create!({
    name:         'Compete with Arnie!',
    description:  'You want to become strong and impressive like Arnold Schwarzenegger? Join me now and grow bigger, stronger and healthier with tips from a real pro.',
    price:         40,
    address:      'Magic Forme Gym, 45 avenue Carnot, 34000 Bordeaux',
    category:     'Bodybuilding',
    user:         mathieu
  })

puts 'Finished services!'
