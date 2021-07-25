class MovieProsessing::MovieTimesShower
  attr_reader :movie_id

  def self.movie_times!(movie_id)
    new(movie_id).movie_times
  end

  def initialize(movie_id)
    super()

    @movie = movie(movie_id)
  end

  def movie_times
    @movie.showtimes.map do |movie|
      {
        time: movie.time,
        price: movie.price
      }
    end
  end

  private

  def movie(movie_id)
    Movie.find(movie_id)
  end
end
