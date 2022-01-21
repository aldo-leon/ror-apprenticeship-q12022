# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_21_190542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemon_traits", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "trait_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id", "trait_id"], name: "index_pokemon_traits_on_pokemon_id_and_trait_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "pokedex_number"
    t.integer "weight"
    t.integer "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sprite"
  end

  create_table "trainer_pokemons", force: :cascade do |t|
    t.integer "trainer_id"
    t.integer "pokemon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trainer_id", "pokemon_id"], name: "index_trainer_pokemons_on_trainer_id_and_pokemon_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "trainer_tag", limit: 25
    t.string "team_name"
    t.string "email", null: false
    t.string "password", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string "trait_type"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end