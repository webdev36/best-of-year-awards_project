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

ActiveRecord::Schema.define(:version => 20130704031148) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "kind",        :default => 0,  :null => false
    t.integer  "sort_id",     :default => 99, :null => false
    t.integer  "parent_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "companies", :force => true do |t|
    t.integer  "project_spec_id", :null => false
    t.string   "name"
    t.string   "title_position"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "companies", ["project_spec_id"], :name => "index_companies_on_project_spec_id"

  create_table "contacts", :force => true do |t|
    t.integer  "product_spec_id"
    t.integer  "project_spec_id"
    t.string   "name"
    t.string   "title_position"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "contacts", ["product_spec_id"], :name => "index_contacts_on_product_spec_id"
  add_index "contacts", ["project_spec_id"], :name => "index_contacts_on_project_spec_id"

  create_table "options", :force => true do |t|
    t.string   "option_name",  :null => false
    t.text     "option_value", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "order_submissions", :force => true do |t|
    t.integer  "order_id",      :null => false
    t.integer  "submission_id", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "order_submissions", ["order_id"], :name => "index_order_submissions_on_order_id"
  add_index "order_submissions", ["submission_id"], :name => "index_order_submissions_on_submission_id"

  create_table "orders", :force => true do |t|
    t.integer  "user_id",                   :null => false
    t.string   "balance_amount"
    t.string   "payment_option"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.string   "shipping_address"
    t.string   "shipping_optional_address"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip_code"
    t.string   "shipping_country"
    t.string   "shipping_method"
    t.string   "email"
    t.string   "token_key"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "payments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "order_id"
    t.string   "transaction_id"
    t.string   "refund_id"
    t.string   "price_subtotal"
    t.string   "price_tax"
    t.string   "price_refund"
    t.string   "price_total"
    t.string   "status"
    t.string   "ccard_last4"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "region"
    t.string   "post_code"
    t.string   "country"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "payments", ["order_id"], :name => "index_payments_on_order_id"
  add_index "payments", ["user_id"], :name => "index_payments_on_user_id"

  create_table "pictures", :force => true do |t|
    t.string   "caption"
    t.string   "photographer"
    t.string   "photographer_email"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "product_specs", :force => true do |t|
    t.integer  "submission_id",     :null => false
    t.string   "manufacture_name"
    t.string   "manufacture_addr"
    t.string   "name"
    t.text     "description"
    t.date     "introduction_date"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "product_specs", ["submission_id"], :name => "index_product_specs_on_submission_id"

  create_table "project_specs", :force => true do |t|
    t.integer  "submission_id",   :null => false
    t.string   "firm_name"
    t.string   "firm_address"
    t.string   "name"
    t.string   "lead_designer"
    t.string   "architect"
    t.text     "team_members"
    t.text     "description"
    t.date     "completion_date"
    t.string   "square_footage"
    t.text     "primary_sources"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "project_specs", ["submission_id"], :name => "index_project_specs_on_submission_id"

  create_table "submission_categories", :force => true do |t|
    t.integer  "submission_id", :null => false
    t.integer  "category_id",   :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "submission_categories", ["category_id"], :name => "index_submission_categories_on_category_id"
  add_index "submission_categories", ["submission_id"], :name => "index_submission_categories_on_submission_id"

  create_table "submissions", :force => true do |t|
    t.integer  "user_id",                                :null => false
    t.string   "title",                                  :null => false
    t.text     "description"
    t.string   "status",          :default => "editing", :null => false
    t.string   "submission_type",                        :null => false
    t.boolean  "active",          :default => false,     :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_sessions", ["session_id"], :name => "index_user_sessions_on_session_id"
  add_index "user_sessions", ["updated_at"], :name => "index_user_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "occupation"
    t.string   "crypted_password",                      :null => false
    t.string   "password_salt",                         :null => false
    t.string   "persistence_token",                     :null => false
    t.integer  "login_count",        :default => 0,     :null => false
    t.integer  "failed_login_count", :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.boolean  "admin",              :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true

end
