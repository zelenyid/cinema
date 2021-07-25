class CreateShowtimes < ActiveRecord::Migration[6.1]
  def change
    create_table :showtimes do |t|
      t.references :movie
      t.datetime :time
      t.float :price

      t.timestamps
    end
  end
end
