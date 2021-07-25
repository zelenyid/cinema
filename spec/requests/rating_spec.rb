# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Movie controller', type: :request do
  let(:movie) { create(:movie) }

  describe '#create' do
    before do
      create_list(:showtime, 2, movie: movie)
    end

    it 'succeeds' do
      post '/rating', params: { movie_id: movie.id, rating: 5 }

      expect(response.status).to eq(200)
    end
  end
end
