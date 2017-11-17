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

ActiveRecord::Schema.define(version: 20171030191147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.string "owner_email", null: false
    t.string "owner_firstname", null: false
    t.string "owner_lastname", null: false
    t.string "owner_school", null: false
    t.string "owner_phone", null: false
    t.string "owner_address", null: false
    t.string "owner_facebook", null: false
    t.string "owner_linkedin"
    t.string "venmo", null: false
    t.string "name", null: false
    t.string "species", null: false
    t.string "breed", null: false
    t.string "description", null: false
    t.float "age", null: false
    t.float "weight", null: false
    t.string "shed", null: false
    t.string "housetrained", null: false
    t.string "hypoallergenic", null: false
    t.string "noise", null: false
    t.string "spayed", null: false
    t.string "aggression", null: false
    t.string "otherpets", null: false
    t.string "children", null: false
    t.string "shots", null: false
    t.string "specialcare", null: false
    t.string "vet_name"
    t.string "vet_phone"
    t.string "owner_insurance", null: false
    t.string "additional", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string "email", null: false
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "school", null: false
    t.string "phone", null: false
    t.string "address", null: false
    t.string "residencetype", null: false
    t.string "facebook", null: false
    t.string "linkedin"
    t.string "venmo", null: false
    t.string "locationpref", null: false
    t.string "ownsapet", null: false
    t.string "ownsapetdesc"
    t.string "experience", null: false
    t.string "insurance", null: false
    t.string "additional", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
