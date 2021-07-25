FactoryBot.define do
  factory :showtime do
    movie { create(:movie) }
    time { DateTime.new(2021, 8, 29, 22, 35, 0) }
    price { 200 }
  end
end
