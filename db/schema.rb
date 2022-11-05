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

ActiveRecord::Schema[7.0].define(version: 2022_11_05_154804) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "satellite_catalog_entries", force: :cascade do |t|
    t.string "object_name"
    t.string "object_id"
    t.integer "norad_cat_id"
    t.string "object_type"
    t.string "ops_status_code"
    t.string "owner"
    t.datetime "launch_date"
    t.string "launch_site"
    t.datetime "decay_date"
    t.decimal "period"
    t.decimal "inclination"
    t.decimal "apogee"
    t.decimal "perigee"
    t.decimal "rcs"
    t.string "data_status_code"
    t.string "orbit_center"
    t.string "orbit_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "space_objects", force: :cascade do |t|
    t.decimal "cart_vel_y"
    t.decimal "cart_vel_z"
    t.decimal "cart_vel_x"
    t.decimal "arg_p"
    t.integer "norad_id"
    t.string "data_source_id"
    t.decimal "mean_anom"
    t.decimal "area_to_mass"
    t.decimal "cart_pos_x"
    t.decimal "cart_pos_y"
    t.decimal "cart_pos_z"
    t.decimal "equ_lm"
    t.decimal "equ_hy"
    t.decimal "equ_hx"
    t.datetime "epoch_fmt"
    t.decimal "ecc"
    t.decimal "sma"
    t.decimal "epoch"
    t.string "data_source_name"
    t.decimal "raan"
    t.string "orbit_type"
    t.decimal "equ_ey"
    t.decimal "equ_ex"
    t.decimal "inc"
    t.string "namespace"
    t.string "inserted"
    t.string "object_type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
