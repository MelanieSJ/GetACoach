# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating users...'
users_attributes = [
  { email:        'kevin@gmail.com',
    password:     'abcdefg',
    name:         'Kevin',
    city:         'Paris',
    age:           30,
    category:     'Kick-Boxing'
  },
  { email:        'julien@gmail.com',
    password:     'klbcdefg',
    name:         'Julien',
    city:         'Paris',
    age:           25,
    category:     'Karaté'
  },
  { email:        'thomas@gmail.com',
    password:     'cbcdefg',
    name:         'Thomas',
    city:         'Paris',
    age:           30,
    category:     'Catch'
  },
  { email:        'sami@gmail.com',
    password:     'cbddefg',
    name:         'Sami',
    city:         'Paris',
    age:           18,
    category:     'Karaté'
  },
  { email:        'beatrijs@gmail.com',
    password:     'cbcdmmmg',
    name:         'Beatrijs',
    city:         'Reims',
    age:           50,
    category:     'Danse Orientale'
  },
  { email:        'celine@gmail.com',
    password:     'cbcllfg',
    name:         'Céline',
    city:         'Toulouse',
    age:           25,
    category:     'Crossfit'
  },
  { email:        'esther@gmail.com',
    password:     'cbcdddeg',
    name:         'Esther',
    city:         'Paris',
    age:           20,
    category:     'Yoga'
  },
  { email:        'melanie@gmail.com',
    password:     'cbcnnng',
    name:         'Mélanie',
    city:         'Lyon',
    age:           20,
    category:     'Zumba'
  },
  { email:        'gabriel@gmail.com',
    password:     'cbkjdefg',
    name:         'Gabriel',
    city:         'Paris',
    age:           28,
    category:     'Ultimate Frisbee'
  },
  { email:        'guillaume@gmail.com',
    password:     'cbhhhfg',
    name:         'Guillaume',
    city:         'Bordeaux',
    age:           30,
    category:     'Funboard'
  },
  { email:        'claire@gmail.com',
    password:     'cbcdrrr',
    name:         'Claire',
    city:         'Paris',
    age:           24,
    category:     'Yoga'
  },
  { email:        'mathieu@gmail.com',
    password:     'cbcdzer',
    name:         'Mathieu',
    city:         'Bordeaux',
    age:           18,
    category:     'Claquettes'
  }
]
User.create!(users_attributes)
puts 'Finished!'
