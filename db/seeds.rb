# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.find_or_create_by(title: 'The Fast and the Furious', imdb_id: 'tt0232500')

Showtime.find_or_create_by({movie: movie, time: DateTime.new(2012, 8, 29, 22, 35, 0), price: 13.6})
Showtime.find_or_create_by({movie: movie, time: DateTime.new(2012, 8, 30, 22, 35, 0), price: 15.6})

RatingReview.create(movie: movie, rating: 5 )
RatingReview.create(movie: movie, rating: 4 )
