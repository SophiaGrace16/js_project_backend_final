class CreateEggs < ActiveRecord::Migration[6.0]
  def change
    create_table :eggs do |t|
      t.string :egg_movie
      t.string :egg_description
      t.string :image
      t.boolean :approved, default: false
      t.integer :found_count, default: 0
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
