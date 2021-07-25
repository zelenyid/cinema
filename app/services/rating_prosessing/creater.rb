class RatingProsessing::Creater
  attr_reader :movie_id, :rating

  def self.create!(movie_id, rating)
    new(movie_id, rating).create
  end

  def initialize(movie_id, rating)
    super()

    @movie = movie(movie_id)
    @rating = rating
  end

  def create
    RatingReview.create(movie: @movie, rating: @rating)
  end

  private

  def movie(movie_id)
    Movie.find(movie_id)
  end
end
