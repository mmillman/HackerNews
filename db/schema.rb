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

ActiveRecord::Schema.define(:version => 20130409232035) do

  create_table "comment_ancestries", :force => true do |t|
    t.integer  "descendent_id"
    t.integer  "ancestor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "comment_ancestries", ["ancestor_id"], :name => "index_comment_ancestries_on_ancestor_id"
  add_index "comment_ancestries", ["descendent_id"], :name => "index_comment_ancestries_on_descendent_id"

  create_table "comments", :force => true do |t|
    t.integer  "author_id",  :null => false
    t.text     "body"
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["author_id"], :name => "index_comments_on_author_id"
  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "posts", :force => true do |t|
    t.string   "url"
    t.text     "body"
    t.string   "title",      :null => false
    t.integer  "author_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"
  add_index "posts", ["title"], :name => "index_posts_on_title"

  create_table "users", :force => true do |t|
    t.string   "username",       :null => false
    t.string   "email",          :null => false
    t.integer  "karma"
    t.string   "password",       :null => false
    t.string   "remember_token"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["password"], :name => "index_users_on_password"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["username"], :name => "index_users_on_username"

end
