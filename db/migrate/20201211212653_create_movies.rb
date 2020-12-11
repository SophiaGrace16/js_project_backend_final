class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.string :date_released
      t.string :studio_name
      t.string :image
      t.string :imdb
      t.string :movie_link

      t.timestamps
    end
  end
end
