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
 
I chose PostgreSQL as a database. Realized best practices moving business logic to services. Also, I used httpart gem for API, and rubocop, fasterer, overcommit to make code cleaner and more effective.

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
