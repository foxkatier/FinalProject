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

ActiveRecord::Schema.define(version: 20141218060316) do

  create_table "articles", force: true do |t|
    t.string   "article_title"
    t.integer  "article_year"
    t.integer  "journal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["journal_id"], name: "index_articles_on_journal_id"

  create_table "authors", force: true do |t|
    t.string   "author_fname"
    t.string   "author_lname"
    t.string   "author_institution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authorships", force: true do |t|
    t.integer  "author_id"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authorships", ["article_id"], name: "index_authorships_on_article_id"
  add_index "authorships", ["author_id"], name: "index_authorships_on_author_id"

  create_table "citations", force: true do |t|
    t.integer  "article_cited"
    t.integer  "article_referencing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journals", force: true do |t|
    t.string   "journal_title"
    t.string   "journal_issn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankings", force: true do |t|
    t.integer  "rank"
    t.integer  "rank_year"
    t.integer  "subject_id"
    t.integer  "journal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rankings", ["journal_id"], name: "index_rankings_on_journal_id"
  add_index "rankings", ["subject_id"], name: "index_rankings_on_subject_id"

  create_table "subjects", force: true do |t|
    t.string   "subject_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
