require 'httparty'

module Api
  class Omdb
    include HTTParty

    base_uri 'https://www.omdbapi.com/'

    def initialize(token: ENV['OMDB_TOKEN'])
      @options = {
        query: {
          apikey: token
        }
      }
    end

    def movie(imdb_id)
      query = {
        i: imdb_id
      }

      self.class.get('', @options.deep_merge(query: query)).body
    end
  end
end
