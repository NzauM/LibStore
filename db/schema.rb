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

ActiveRecord::Schema[7.0].define(version: 2022_09_11_111726) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "bio"
  end

  create_table "bookauthors", force: :cascade do |t|
    t.integer "book_id"
    t.integer "author_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "year_published"
    t.integer "genre_id"
    t.integer "is_borrowed"
  end

  create_table "borrowlogs", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.boolean "is_returned"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.integer "score"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.string "review_comment"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
