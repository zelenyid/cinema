class CreateRatingReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :rating_reviews do |t|
      t.references :movie
      t.integer :rating

      t.timestamps
    end
  end
end
