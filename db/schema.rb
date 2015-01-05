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

ActiveRecord::Schema.define(version: 20150102100701) do

  create_table "regions", force: true do |t|
    t.string   "nom"
    t.string   "pays"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_a_visiters", force: true do |t|
    t.string   "nom_site"
    t.string   "nom_voyage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "site_nom"
    t.string   "voyage_nom"
  end

  create_table "sites", force: true do |t|
    t.string   "nom"
    t.string   "categorie"
    t.string   "adresse"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "tel"
    t.string   "web"
    t.integer  "tarif"
    t.integer  "reduction"
    t.integer  "groupe"
    t.integer  "audioguide"
    t.integer  "guide"
    t.integer  "avis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "region_nom"
    t.string   "image"
  end

  create_table "sites_voyages", id: false, force: true do |t|
    t.integer "voyage_id", null: false
    t.integer "site_id",   null: false
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "voyages", force: true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_nom"
  end

end
