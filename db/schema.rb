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

ActiveRecord::Schema.define(version: 20180214201434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "owner_phone"
    t.string "owner_address"
    t.string "species", null: false
    t.string "name", null: false
    t.integer "weight", null: false
    t.string "breed", null: false
    t.integer "age_years", null: false
    t.integer "age_months", null: false
    t.string "sex", null: false
    t.boolean "spayed", null: false
    t.boolean "housetrained", null: false
    t.string "housetrained_info"
    t.boolean "chipped", null: false
    t.boolean "otherdogs", null: false
    t.string "otherdogs_info"
    t.boolean "othercats", null: false
    t.string "othercats_info"
    t.boolean "children", null: false
    t.string "children_info"
    t.boolean "shed", null: false
    t.string "shed_info"
    t.boolean "hypoallergenic", null: false
    t.string "hypoallergenic_info"
    t.boolean "noise", null: false
    t.string "noise_info"
    t.boolean "aggression", null: false
    t.string "aggression_info"
    t.string "specialcare"
    t.string "vet"
    t.string "about", null: false
    t.string "instructions", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "sitters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "address1", null: false
    t.string "address2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zipcode", null: false
    t.string "phone1", null: false
    t.integer "max_distance", null: false
    t.boolean "does_visits", null: false
    t.integer "visit_rate"
    t.integer "visit_max_occurences"
    t.string "visit_times_avail", array: true
    t.boolean "does_walking", null: false
    t.integer "walking_rate"
    t.integer "walking_max_occurences"
    t.string "walking_times_avail", array: true
    t.index ["user_id"], name: "index_sitters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.string "sitter_id", null: false
    t.integer "price", null: false
    t.integer "distance", null: false
    t.integer "max_occurences", null: false
    t.string "times_avail", null: false, array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sitter_id"], name: "index_visits_on_sitter_id"
  end

end
