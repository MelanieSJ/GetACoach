# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting all bookings..'
User.destroy_all

puts 'Deleting all users..'
User.destroy_all

puts 'Deleting all services..'
Service.destroy_all

puts 'Creating users...'

url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550595377/mawu1si99ndr6qbx2gaa.jpg"

kevin = User.new({
    email:        'kevin@gmail.com',
    password:     '123456',
    name:         'Kevin',
    city:         'Paris',
    age:           30,
    background:   'Professional Martial Arts teacher and practitioner for more than 10 years. When not kicking and boxing, I like to code and go to the aquarium. Love fish!',
    category:     'Kickboxing'
      })
kevin.remote_photo_url = url
kevin.save!

url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597567/hexlchowxkk6y9nibva6.jpg"

julien = User.new({
    email:        'julien@gmail.com',
    password:     '123456',
    name:         'Julien',
    city:         'Paris',
    age:           25,
    background:   'Karate World Champion 2002 - I teach all ages and levels of Karate (from 3yrs upwards) and tailor my classes to your needs and goals. Favourite Movie: The Karate Kid. Duh.',
    category:     'Karate'
  })
julien.remote_photo_url = url
julien.save!

url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550595693/wwah1liqlgnwb9i5576o.png"

thomas = User.new({
    email:        'thomas@gmail.com',
    password:     '123456',
    name:         'Thomas',
    city:         'Paris',
    age:           30,
    background:   'I have studied and competed in Jiu Jitsu in Kyoto, Rio de Janeiro and Lisbon - trained by internationally acclaimed fighters. My skills in Thai- and Kickboxing, Karate and Judo round off my profile.',
    category:     'Jiu Jitsu'
  })
thomas.remote_photo_url = url
thomas.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597439/okkusjowtvgeudvqjgft.png"

sami = User.new({
    email:        'sami@gmail.com',
    password:     '123456',
    name:         'Sami',
    city:         'Paris',
    age:           18,
    background:   'I’m a certified Karateka and normally teach seminars but like to engage more intensely in one-on-one sessions with my clients.',
    category:     'Karate'
  })
sami.remote_photo_url = url
sami.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597454/eli7jm4yczbx8bciwlhq.jpg"

beatrijs = User.new({
    email:        'beatrijs@gmail.com',
    password:     '123456',
    name:         'Beatrijs',
    city:         'Paris',
    age:           50,
    background:   'I learned the art of Oriental Dance at the Academy of Dance in Cairo! Plus, I make the best Bitterballen!',
    category:     'Oriental Dance'
  })
beatrijs.remote_photo_url = url
beatrijs.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597473/kpxntvfzq9zpnvso1wlo.jpg"

céline = User.new({
    email:        'celine@gmail.com',
    password:     '123456',
    name:         'Céline',
    city:         'Paris',
    age:           25,
    background:   'As a two-time Crossfit national champion, I know more WODs than I can count!',
    category:     'Crossfit'
  })
céline.remote_photo_url = url
céline.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597464/btlwbe4pmfahouokbvsl.jpg"

esther = User.new({
    email:        'esther@gmail.com',
    password:     '123456',
    name:         'Esther',
    city:         'Paris',
    age:           20,
    background:   'Trained by the great Klitschko brothers, I know how to land a decent punch and will teach you in no time!',
    category:     'Boxing'
  })
esther.remote_photo_url = url
esther.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597483/fpto4593pivcqdliupup.png"

mélanie = User.new({
    email:        'melanie@gmail.com',
    password:     '123456',
    name:         'Mélanie',
    city:         'Paris',
    age:           20,
    background:   'Enchantée, I am Mélanie with a passion for fiery music and moves! Together we will dance, sweat and have lots of fun!',
    category:     'Zumba'
  })
mélanie.remote_photo_url = url
mélanie.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597640/hgnollcdrhpmz4mh18lh.jpg"

gabriel = User.new({
    email:        'gabriel@gmail.com',
    password:     '123456',
    name:         'Gabriel',
    city:         'Paris',
    age:           28,
    background:   'Beach Sports are my life! And while there is no beach in Paris, I bring the fun with me and will teach you how to Frisbee your way to fun!',
    category:     'Frisbee'
  })
gabriel.remote_photo_url = url
gabriel.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597508/ex8hqfddmdkkhzuhixd4.jpg"

guillaume = User.new({
    email:        'guillaume@gmail.com',
    password:     '123456',
    name:         'Guillaume',
    city:         'Paris',
    age:           30,
    background:   'After several years in Colombia mastering the arts of Salsa, I now teach in Paris and have brought the good tunes and times with me!',
    category:     'Salsa'
  })
guillaume.remote_photo_url = url
guillaume.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550598327/qsmejnvifymfvndaywij.jpg"

claire = User.new({
    email:        'claire@gmail.com',
    password:     '123456',
    name:         'Claire',
    city:         'Paris',
    age:           24,
    background:   'After 5 years of practicing Yoga, my passion for the philosophy of Yoga have led me to Goa in India, where I became a certified Yogi. I want to share my experience, my knowledge and love for this practice with you!',
    category:     'Yoga'
  })
claire.remote_photo_url = url
claire.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597518/zrrtksvq0vabcerndl01.jpg"

mathieu = User.new({
    email:        'mathieu@gmail.com',
    password:     '123456',
    name:         'Mathieu',
    city:         'Paris',
    age:           18,
    background:   'Lifting 325 lbs easily and still pushing on, I have lifted my way to success. With my experience and advice, there will be no weight too heavy for you to lift out of your way!',
    category:     'Bodybuilding'
  })
mathieu.remote_photo_url = url
mathieu.save!


charles = User.new({
    email:        'charles@gmail.com',
    password:     '123456',
    name:         'Charles',
    city:         'Paris',
    age:           25,
  })



kim = User.new({
    email:        'kim@gmail.com',
    password:     '123456',
    name:         'Kim',
    city:         'Paris',
    age:           50,
  })



maxime = User.new({
    email:        'maxime@gmail.com',
    password:     '123456',
    name:         'Maxime',
    city:         'Paris',
    age:           35,
  })



sarah = User.new({
    email:        'sarah@gmail.com',
    password:     '123456',
    name:         'Sarah',
    city:         'Paris',
    age:           39,
  })



lise = User.new({
    email:        'lise@gmail.com',
    password:     '123456',
    name:         'Lise',
    city:         'Paris',
    age:           45,
  })



philippe = User.new({
    email:        'philippe@gmail.com',
    password:     '123456',
    name:         'Philippe',
    city:         'Paris',
    age:           41,
  })


puts 'Finished Users!'



puts 'Creating services...'

kevin_service = Service.create!({
    name:         'Learn the best Kickboxing techniques',
    description:  'You will learn the fundamentals of Kickboxing and go beyond! By focusing on proper techniques and good form, you can avoid common training mistakes and become a feared Kickboxing fighter!',
    price:         35,
    address:      'FitnessPark République, 5 Place de la République, 75010 Paris',
    city:         'Paris',
    category:     'Kickboxing',
    user:          kevin
  })

julien_service = Service.create!({
    name:         'The Philosophy of Karate and beyond!',
    description:  'Delve deep into the world of the martial arts philosophy and learn how this art form involves the mind and spirit as much the body. Meditation and the practice of Courtesy are essential!',
    price:         60,
    address:      'Le Wagon Cellar, 16 Villa Gaudelet, 75011 Paris',
    city:         'Paris',
    category:     'Karate',
    user:         julien
  })

thomas_service = Service.create!({
    name:         'Master the Japanese art of ground-fighting',
    description:  'BJJ teaches you how even as the smaller and weaker of two fighters, you can successfully defend yourself against any opponent. This is ideal for all self-defense situations!',
    price:         40,
    address:      'Gymnase de la Porte d\'Italie, 13 Boulevard d\'Italie, 75013 Paris',
    city:         'Paris',
    category:     'Jiu Jitsu',
    user:         thomas
  })

sami_service = Service.create!({
    name:         'Become a real Karateka',
    description:  'Become one of 100 million Kareteka worldwide and learn the fundamentals of this martial art including punching, kicking, knee strikes and open-hand techniques. Release energy with a purpose!',
    price:         50,
    address:      'Stade Olympique, 251 boulevard Exelmans, 75016 Paris',
    city:         'Paris',
    category:     'Karate',
    user:         sami
  })

beatrijs_service = Service.create!({
    name:         'Dazzle like a true Belly Dancer!',
    description:  'Learn how to dance and dazzle like the Arabian queens! This dance is all about gracious and fluid movements and lots of fun! Join me!',
    price:         40,
    address:      'Conservatoire de Danse, 51 Boulevard Henri Vasnier, 75016 Paris',
    city:         'Paris',
    category:     'Oriental Dance',
    user:         beatrijs
  })

céline_service = Service.create!({
    name:         'Get fit and beat your goals!',
    description:  'You will receive a custom programme, tailored to your needs! Combining elements of HIIT, weightlifting, plyometrics and powerlifting, you will beat the big guys in no time!',
    price:         30,
    address:      'Stade municipal, 14 boulevard Brune, 75014 Paris',
    city:         'Paris',
    category:     'Crossfit',
    user:         céline
  })

esther_service = Service.create!({
    name:         'Learn how to land a punch',
    description:  'Join the ring, throw a punch and score a TKO! This fast-paced combat sport is for everyone who want to follow in the impressive footsteps of real champions!',
    price:         35,
    address:      'Club Boxe, 14 Rue d\'Abbeville, 75010 Paris',
    city:         'Paris',
    category:     'Boxing',
    user:         esther
  })

melanie_service = Service.create!({
    name:         'Dance your way to fit!',
    description:  'With lots of fun salsa, samba, merengue and hip-hop music to energize you, you will enjoy melting away those extra pounds and get fit in no time!',
    price:         25,
    address:      'Centre Multisports, 20 Avenue de la République, 75011 Paris',
    city:         'Paris',
    category:     'Zumba',
    user:         mélanie
  })

gabriel_service = Service.create!({
    name:         'Impress your next date with fancy Frisbee skills!',
    description:  'Whether in the parc or on the beach, learn the art and skill behind throwing and catching. With my help you will make it look easy and fun and impress anyone by your side! ',
    price:         30,
    address:      'Grande Pelouse du Bois de Vincennes, 75012 Paris',
    city:         'Paris',
    category:     'Frisbee',
    user:         gabriel
  })

 guillaume_service = Service.create!({
    name:         'Learn one of the most popular forms of modern dance - Salsa!',
    description:  'Join me and learn how to move smoothly, rhythmically and with lots of attitude. Plus we will dance to the best salsa music! Join me for a fun-filled hour of dance!',
    price:         35,
    address:      'La Pachanga, 8 Rue Vandamme, 75014 Paris',
    city:         'Paris',
    category:     'Salsa',
    user:         guillaume
  })

claire_service = Service.create!({
    name:         'Yoga, Meditation & Mindfulness',
    description:  'Practice mindfulness, relaxation and become a real yogi. You learn proper breathing techniques, poses ranging from beginner to advanced and become flexible!',
    price:         25,
    address:      'Le Wagon, 16 Villa Gaudelet, 75011 Paris',
    city:         'Paris',
    category:     'Yoga',
    user:         claire
  })

mathieu_service = Service.create!({
    name:        'Compete with Arnie!',
    description:  'You want to become strong and impressive like Arnold Schwarzenegger? Join me now and grow bigger, stronger and healthier with tips from a real pro.',
    price:         40,
    address:      'Magic Forme Gym, 45 avenue Carnot, 75002 Paris',
    city:         'Paris',
    category:     'Bodybuilding',
    user:         mathieu
  })

puts 'Finished services!'


puts 'Creating bookings...'

Booking.create!({
    date:         DateTime.now,
    user:         charles,
    service:      kevin_service
  })

Booking.create!({
    date:         DateTime.now - 1.day,
    user:         maxime,
    service:      kevin_service
  })

Booking.create!({
    date:         DateTime.now + 3.day,
    user:         lise,
    service:      gabriel_service
  })

Booking.create!({
    date:         DateTime.now - 3.day,
    user:         sarah,
    service:      kevin_service
  })

Booking.create!({
    date:         DateTime.now + 2.hour,
    user:         philippe,
    service:      gabriel_service
  })

Booking.create!({
    date:         DateTime.now - 4.day,
    user:         kim,
    service:      kevin_service
  })

Booking.create!({
    date:         DateTime.now - 8.hour,
    user:         kim,
    service:      gabriel_service
  })

Booking.create!({
    date:         DateTime.now - 2.day,
    user:         kim,
    service:      beatrijs_service
  })

Booking.create!({
    date:         DateTime.now + 8.hour,
    user:         kim,
    service:      claire_service
  })

Booking.create!({
    date:         DateTime.now - 1.day,
    user:         kim,
    service:      guillaume_service
  })

Booking.create!({
    date:         DateTime.now - 34.hour,
    user:         kim,
    service:      julien_service
  })

Booking.create!({
    date:         DateTime.now + 20.hour,
    user:         sarah,
    service:      gabriel_service
  })

Booking.create!({
    date:         DateTime.now - 7.day,
    user:         charles,
    service:      gabriel_service
  })

Booking.create!({
    date:         DateTime.now + 1.day,
    user:         maxime,
    service:      gabriel_service
  })

Booking.create!({
    date:         DateTime.now + 6.hour,
    user:         julien,
    service:      gabriel_service
  })





puts 'Finished bookings!'

