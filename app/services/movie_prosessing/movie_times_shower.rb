class MovieProsessing::MovieTimesShower
  attr_reader :movie_id

  def self.movie_times!(movie_id)
    new(movie_id).movie_times
  end

  def initialize(movie_id)
    super()

    @movie_id = movie_id
  end

  def movie_times
    Movie.find(@movie_id).showtimes.map do |movie|
      {
        time: movie.time,
        price: movie.price
      }
    end
  end
end
