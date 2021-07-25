# Cinema

Test project was used:
  - Ruby
  - Ruby on Rails
  - Postgresql
  - httparty
  - rubocop
  - fasterer
  - overcommit
  - factory bot
  - annotate
  - rspec
 
As database was used postgresql. Realized best practices to write logic in services. Working with API was realized in lib with gem httpart. Also was used rubocop, fasterer, overcommit for writing more clean and effective code.

### Database structure: 
  - Movies (id: integer, title: string, imdb_id: string); 
  - Showtime (movie_id: FK to movie, time: datetime, price: float);
  - RatingReview (movie_id: FK to movie, rating: integer)


### Setup

1. `bundle install`
2. `overcommit --install`
3.  `rake db:create`
4. `rake db:migrate`
5. `rake db:seed`

### Run server
`rails s`

### Run specs
`rspec`

Not realized swagger documantating, for finishing need to add specs for swagger documentating and it needs a little bit more time. And also we need to create roles for cinema owners and moviegoers, for it we need to create a basic authorization and use gem cancancan to allow all endpoint for cinema owners and deny endpoint update in showtimes controller
