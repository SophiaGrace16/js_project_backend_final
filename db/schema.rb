# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_11_213044) do

  create_table "eggs", force: :cascade do |t|
    t.string "egg_movie"
    t.string "egg_description"
    t.string "image"
    t.boolean "approved", default: false
    t.integer "found_count", default: 0
    t.integer "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_eggs_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "movie_name"
    t.string "date_released"
    t.string "studio_name"
    t.string "image"
    t.string "imdb"
    t.string "movie_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "eggs", "movies"
end
