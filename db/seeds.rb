# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Bench.destroy_all
User.destroy_all

puts "making a user"

user = User.create!(
  email: 'test@test.com',
  password: '123123'
  )

puts "created user #{user.id}"

puts "making sick benches...."

bench_one = Bench.create!(
    longitude: 0.2165,
    latitude: 51.4612,
    inscription: "How perfect is this, how lucky are we",
    comfort_rating: 5,
    dedication: "Barbara and Stan",
    user: User.first,
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
    user: User.first,
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
    user: User.first,
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
    user: User.first,
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
    user: User.first,
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
    user: User.first,
  )

file = URI.open('https://images.unsplash.com/photo-1529858483845-477149308bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2069&q=80')
bench_six.photo.attach(io: file, filename: "bench#{bench_six}.png", content_type: 'image/png')

puts "... bench #{bench_six.id} completed"

