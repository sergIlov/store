# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170912193617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"

  create_table "articles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.string "authors"
    t.string "genres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authorable_authors", force: :cascade do |t|
    t.integer "author_id"
    t.integer "authorable_id"
    t.string "authorable_type", limit: 8
    t.index ["authorable_id", "authorable_type"], name: "index_authorable_authors_on_authorable_id_and_authorable_type"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name", limit: 255
    t.index ["name"], name: "index_authors_on_name", unique: true
  end

  create_table "books", id: :serial, force: :cascade do |t|
    t.string "name"
    t.boolean "available"
    t.string "genres"
    t.string "authors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "publisher_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "genreble_genres", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "genreble_id"
    t.string "genreble_type", limit: 8
    t.index ["genreble_id", "genreble_type"], name: "index_genreble_genres_on_genreble_id_and_genreble_type"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", limit: 255
    t.index ["name"], name: "index_genres_on_name", unique: true
  end

  create_table "lists", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", limit: 255
    t.index ["name"], name: "index_publishers_on_name", unique: true
  end

  create_table "single_sorts", id: :serial, force: :cascade do |t|
    t.integer "list_id"
    t.integer "book_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
