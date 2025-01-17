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

ActiveRecord::Schema.define(version: 2022_03_08_171939) do

  create_table "posts", force: :cascade do |t|
    t.string "rating"
    t.integer "shoe_id"
    t.integer "user_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "description"
    t.string "color"
    t.integer "size"
    t.float "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
