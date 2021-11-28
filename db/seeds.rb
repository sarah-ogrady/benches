# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

# DELETIONS
Bench.destroy_all
User.destroy_all

puts "making a user"

# USER CREATION
user = User.create!(
  email: 'test@test.com',
  password: '123123'
  )

puts "created user #{user.id}"

# BENCH CREATION
puts "making sick benches...."

bench_one = Bench.create!(
    longitude: 0.2165,
    latitude: 51.4612,
    inscription: "How perfect is this, how lucky are we",
    comfort_rating: 5,
    dedication: "Barbara and Stan",
    user: User.first
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_one.photo.attach(io: file, filename: "bench#{bench_one}.png", content_type: 'image/png')

puts "... bench #{bench_one.id} completed"

bench_two = Bench.create!(
    longitude: 0.1657,
    latitude: 51.5073,
    inscription: "May the beauty of nature refresh and restore you",
    comfort_rating: 5,
    dedication: "Russel",
    user: User.first
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_two.photo.attach(io: file, filename: "bench#{bench_two}.jpg", content_type: 'image/jpg')

puts "... bench #{bench_two.id} completed"

bench_three = Bench.create!(
    longitude: 0.1629,
    latitude: 51.5608,
    inscription: "A remarkable man who dedicated his life to the lives of others",
    comfort_rating: 3,
    dedication: "David",
    user: User.first
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_three.photo.attach(io: file, filename: "bench#{bench_three}.png", content_type: 'image/png')


puts "... bench #{bench_three.id} completed"

bench_four = Bench.create!(
    longitude: 0.3007,
    latitude: 51.4123,
    inscription: "How long will I love you, as long as the stars are above you.",
    comfort_rating: 4,
    dedication: "Margaret",
    user: User.first
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_four.photo.attach(io: file, filename: "bench#{bench_four}.png", content_type: 'image/png')


puts "... bench #{bench_four.id} completed"

bench_five = Bench.create!(
    longitude: 0.2392,
    latitude: 51.4753,
    inscription: "Over the rainbow",
    comfort_rating: 4,
    dedication: "David",
    user: User.first
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_five.photo.attach(io: file, filename: "bench#{bench_five}.png", content_type: 'image/png')


puts "... bench #{bench_five.id} completed"

bench_six = Bench.create!(
    longitude: 0.0866,
    latitude: 51.5311,
    inscription: "He's not dead yet, just become increasingly anti-social",
    comfort_rating: 1,
    dedication: "Hayden",
    user: User.first
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_six.photo.attach(io: file, filename: "bench#{bench_six}.png", content_type: 'image/png')

puts "... bench #{bench_six.id} completed"

# MERCHANDISE CREATION

puts "creating some sweet sweet merch"

merch1 = Merchandise.create!(
    item: "keyring",
    price: 5,
    sku: "keyring"
  )

file = URI.open('https://image.shutterstock.com/image-photo/key-chain-space-text-isolated-260nw-276907121.jpg')
merch1.photo.attach(io: file, filename: "bench#{merch1}.png", content_type: 'image/png')

puts "... merch #{merch1.id} completed"

merch2 = Merchandise.create!(
    item: "rucksack",
    price: 17,
    sku: "rucksack"
  )

file = URI.open('https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80')
merch2.photo.attach(io: file, filename: "merch#{merch2}.png", content_type: 'image/png')

puts "... merch #{merch2.id} completed"

merch3 = Merchandise.create!(
    item: "jumper",
    price: 15,
    sku: "jumper"
  )

file = URI.open('https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3dlYXRzaGlydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
merch3.photo.attach(io: file, filename: "merch#{merch3}.png", content_type: 'image/png')

puts "... merch #{merch3.id} completed"

merch4 = Merchandise.create!(
    item: "framed photo",
    price: 3,
    sku: "framed_photo"
  )

file = URI.open('https://images.unsplash.com/photo-1497296690583-da0e2a4ce49a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZnJhbWV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
merch4.photo.attach(io: file, filename: "merch#{merch4}.png", content_type: 'image/png')

puts "... merch #{merch4.id} completed"

merch5 = Merchandise.create!(
    item: "pencil",
    price: 1,
    sku: "pencil"
  )

file = URI.open('https://images.unsplash.com/photo-1483546363825-7ebf25fb7513?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkzfHxob3Jpem9udGFsJTIwcGVuY2lsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
merch5.photo.attach(io: file, filename: "merch#{merch5}.png", content_type: 'image/png')

puts "... merch #{merch5.id} completed"

merch6 = Merchandise.create!(
    item: "lighter",
    price: 3,
    sku: "lighter"
  )

file = URI.open('https://images.unsplash.com/photo-1575908539629-62b3f98d7b3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGlnaHRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
merch6.photo.attach(io: file, filename: "merch#{merch6}.png", content_type: 'image/png')

puts "... merch #{merch6.id} completed"

merch7 = Merchandise.create!(
    item: "t-shirt",
    price: 10,
    sku: "t_shirt"
  )

file = URI.open('https://images.unsplash.com/photo-1581655353564-df123a1eb820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
merch7.photo.attach(io: file, filename: "merch#{merch7}.png", content_type: 'image/png')

puts "... merch #{merch7.id} completed"

merch8 = Merchandise.create!(
    item: "cap",
    price: 8,
    sku: "cap"
  )

file = URI.open('https://images.unsplash.com/photo-1588850561407-ed78c282e89b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
merch8.photo.attach(io: file, filename: "merch#{merch8}.png", content_type: 'image/png')

puts "... merch #{merch8.id} completed"

merch9 = Merchandise.create!(
    item: "towel",
    price: 14,
    sku: "towel"
  )

file = URI.open('https://images.unsplash.com/photo-1583294506577-7f1217aca9fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dG93ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
merch9.photo.attach(io: file, filename: "merch#{merch9}.png", content_type: 'image/png')

puts "... merch #{merch9.id} completed"

puts "Finish making some sweet sweet merch"

