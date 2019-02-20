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
    password:     'abcdefg',
    name:         'Kevin',
    city:         'Paris',
    age:           30,
    category:     'Kick-Boxing'
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
    category:     'Karaté'
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
    category:     'Catch'
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
    category:     'Karaté'
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
    category:     'Danse Orientale'
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
    category:     'Yoga'
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
    category:     'Ultimate Frisbee'
  })
gabriel.remote_photo_url = url
gabriel.save!


url = "https://res.cloudinary.com/dzaa038tu/image/upload/v1550597508/ex8hqfddmdkkhzuhixd4.jpg"

guillaume = User.new({
    email:        'guillaume@gmail.com',
    password:     'cbhhhfg',
    name:         'Guillaume',
    city:         'Bordeaux',
    age:           30,
    category:     'Funboard'
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
    category:     'Claquettes'
  })
mathieu.remote_photo_url = url
mathieu.save!


puts 'Finished Users!'



puts 'Creating services...'

kevin_service = Service.create!({
    name:         'Kick-Boxing',
    description:  'Professeur de sports de combats depuis 10 ans',
    price:         35,
    address:      'Centre multisports, 5 place de la République, 750010 Paris',
    category:     'Sports de combat',
    user:          kevin
  })
julien_service = Service.create!({
    name:         'Karaté',
    description:  '5°Dan et Champion du monde de karaté avec l\'Équipe de France, j\'entraine des personnes de tous âges (à partir de 3 ans, ado, adulte, sénior…), avec différents besoins et des athlètes de haut niveau.',
    price:         60,
    address:      'Stade le Wagon, 16 villa Godelet, 750011 Paris',
    category:     'Sports de combat',
    user:         julien
  })
thomas_service = Service.create!({
    name:         'Catch',
    description:  'Diplôme Fédéral, préparateur mental spécialisé dans le conditionnement au combat.Formé par des experts internationaux.Par ailleurs pratiquant de boxe thaï, et de JJB ce qui me permet d\'avoir un panel de connaissances complet.',
    price:         40,
    address:      'Gymnase de la Porte d\'Italie, 13 boulevard d\'Italie, 750013 Paris',
    category:     'Sports de combat',
    user:         thomas
  })
sami_service = Service.create!({
    name:         'Karaté',
    description:  'Certifié en Karaté, j\'interviens pour former les forces de l\'ordre en séminaires sous forme de stages.',
    price:         50,
    address:      'Stade Olympique, 251 boulevard Exelmans, 75016 Paris',
    category:     'Sports de combat',
    user:         sami
  })
beatrijs_service = Service.create!({
    name:         'Danse Orientale',
    description:  'Formée à l\'académie de Danse du Caire',
    price:         40,
    address:      'Conservatoire de Danse, 51 boulevard Henri Vasnier, 51000 Reims',
    category:     'Danse',
    user:         beatrijs
  })
céline_service = Service.create!({
    name:         'Crossfit',
    description:  'Coaching personnalisé, au programme : renforcement musculaire, cardio-training + suivi nutritionnel et méditation guidée sur Paris et région parisienne.',
    price:         30,
    address:      'Stade municipal, route de la plage, 31000 Toulouse',
    category:     'Remise en forme',
    user:         céline
  })
esther_service = Service.create!({
    name:         'Yoga',
    description:  'Diplômée en Hatha yoga traditionnel, yoga pré-post natal, éducatrice de santé.',
    price:         35,
    address:      'Espace Yoga, 60 rue Edith Piaf, 75020 Paris',
    category:     'Relaxation et Méditation',
    user:         esther
  })
melanie_service = Service.create!({
    name:         'Zumba',
    description:  'Enchantée, Je suis Mélanie, Votre ZIN (Zumba Instructor Network). Ensemble, nous allons Danser, transpirer et surtout nous amuser.',
    price:         25,
    address:      'Centre multisports, 5 place de la république, 69001 Lyon',
    category:     'Danse',
    user:         mélanie
  })
gabriel_service = Service.create!({
    name:         'Ultimate Frisbee',
    description:  'Professeur Diplômé du Beach Sports Academy à Sydney, Australie',
    price:         30,
    address:      'Grande Pelouse du Bois de Vincennes, 75012 Paris',
    category:     'Sports d\'extérieur',
    user:         gabriel
  })
 guillaume_service = Service.create!({
    name:         'Funboard',
    description:  'Envolez-vous avec moi ! un coach de windsurf et Stand Up Paddle expérimenté et passionné autant par la pratique des sports de glisse que par leur enseignement.',
    price:         35,
    address:      'Plage des surfeurs, route de la plage, 34000 Bordeaux',
    category:     'Sports d\'extérieur',
    user:         guillaume
  })
claire_service = Service.create!({
    name:         'Yoga',
    description:  'Après 5 ans de pratique, ma passion pour la philosophie du Yoga m’a conduite à Goa en Inde pour y être certifiée professeur de Yoga par la Yoga Alliance (RYS 200H).Riche de cette expérience, je veux partager avec vous mon savoir et mon amour pour cette pratique.',
    price:         25,
    address:      'Centre multisports, 5 place de la République, 750010 Paris',
    category:     'Relaxation et Méditation',
    user:         claire
  })
mathieu_service = Service.create!({
    name:         'Claquettes',
    description:  'Elève de Gene Kelly je vous fais danser sous la pluie',
    price:         40,
    address:      'Centre Culturel, 45 avenue Carnot, 34000 Bordeaux',
    category:     'Danse',
    user:         mathieu
  })

puts 'Finished services!'
