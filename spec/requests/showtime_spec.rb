# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Showtime controller', type: :request do
  let(:showtime) { create(:showtime) }

  describe '#update' do
    it 'succeeds' do
      put "/showtimes/#{showtime.id}", params: { time: DateTime.new(2023, 8, 29, 22, 35, 0), price: 11 }

      expect(response.status).to eq(200)
    end
  end
end
