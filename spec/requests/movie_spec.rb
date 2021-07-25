# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Movie controller', type: :request do
  let(:movie) { create(:movie) }

  describe '#movie_times' do
    before do
      create_list(:showtime, 2, movie: movie)
    end

    it 'succeeds' do
      get "/movies/#{movie.id}/movie_times"

      expect(response.status).to eq(200)
    end
  end

  describe '#movie_details' do
    it 'succeeds' do
      get '/movies/movie_details', params: { imdb_id: 'tt0322259' }

      expect(response.status).to eq(200)
    end
  end
end
