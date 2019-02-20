# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '020 3640 7210',
    category: 'french'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '020 3640 7230',
    category: 'italian'
  },
  {
    name: 'Sushi Samba',
    address: '110 Bishopsgate, London EC2N 4AY',
    phone_number: '020 3640 7330',
    category: 'japanese'
  },
  {
    name: 'Franco Manca',
    address: ' 4 Bernard Street, Russell Square, London WC1N 1LJ',
    phone_number: '020 3538 0780',
    category: 'italian'
  },
  {
    name: 'Smoking Goat',
    address: '64 Shoreditch High St, London E1 6JJ',
    phone_number: '020 5640 7330',
    category: 'french'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
