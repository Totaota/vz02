# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20171118131632) do

  create_table "companies", force: :cascade do |t|
    t.string   "social_reason"
    t.string   "email_company"
    t.string   "address_company"
    t.string   "tel_company"
    t.string   "legal_status"
    t.string   "num_tva"
    t.string   "rcs"
    t.string   "ape_code"
    t.string   "description"
    t.string   "offer"
    t.string   "product"
    t.string   "creation_date"
    t.integer  "staff"
    t.integer  "turnover"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "active"
  end

  add_index "companies", ["user_id"], name: "index_companies_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "civility"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "social_reason"
    t.string   "profil"
    t.string   "siret"
    t.string   "tel"
    t.string   "rubric"
    t.string   "address"
    t.string   "city"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
