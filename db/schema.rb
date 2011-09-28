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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110920072604) do

  create_table "gst_cats", :force => true do |t|
    t.string   "gst_category"
    t.decimal  "gst_percent",  :precision => 5, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.string   "business_name"
    t.string   "tfn"
    t.string   "email1"
    t.string   "email2"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "abn"
    t.string   "street1"
    t.string   "street2"
    t.string   "suburb"
    t.integer  "state_id"
    t.integer  "current_tax_year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pay_cat_codes", :force => true do |t|
    t.string   "pay_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.integer  "tax_year_id"
    t.integer  "cat_code_id"
    t.string   "pay_details"
    t.integer  "pay_method_id"
    t.string   "ref_no"
    t.decimal  "pay_amount",       :precision => 9, :scale => 2
    t.integer  "gst_cat_id"
    t.decimal  "gst_amount",       :precision => 8, :scale => 2
    t.decimal  "priv_use_percent", :precision => 5, :scale => 2
    t.decimal  "priv_use_amount",  :precision => 9, :scale => 2
    t.integer  "pay_month"
    t.integer  "pay_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rec_cat_codes", :force => true do |t|
    t.string   "rec_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receipts", :force => true do |t|
    t.integer  "tax_year_id"
    t.integer  "cat_code_id"
    t.string   "rec_details"
    t.string   "inv_rec_no"
    t.decimal  "rec_amount",  :precision => 9, :scale => 2
    t.integer  "gst_cat_id"
    t.decimal  "gst_amount",  :precision => 8, :scale => 2
    t.decimal  "bankings",    :precision => 9, :scale => 2
    t.text     "comments"
    t.integer  "rec_month"
    t.integer  "rec_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tax_years", :force => true do |t|
    t.integer  "tax_year"
    t.integer  "home_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
