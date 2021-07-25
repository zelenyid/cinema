class MovieProsessing::MovieDetailsShower
  attr_reader :imdb_id

  def self.movie_details!(imdb_id)
    new(imdb_id).movie_details
  end

  def initialize(imdb_id)
    super()

    @imdb_id = imdb_id
  end

  def movie_details
    api = Api::Omdb.new

    api.movie(@imdb_id)
  end
end
