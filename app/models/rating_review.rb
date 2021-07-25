class RatingReview < ApplicationRecord
  belongs_to :movie

  validates :rating, inclusion: 1..5
end
