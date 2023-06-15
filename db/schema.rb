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

ActiveRecord::Schema[7.0].define(version: 2023_06_13_202200) do
  create_table "book_copies", force: :cascade do |t|
    t.integer "copy_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_copies_borrowings", id: false, force: :cascade do |t|
    t.integer "book_copy_id"
    t.integer "borrowing_id"
    t.index ["book_copy_id"], name: "index_book_copies_borrowings_on_book_copy_id"
    t.index ["borrowing_id"], name: "index_book_copies_borrowings_on_borrowing_id"
  end

  create_table "books", force: :cascade do |t|
    t.integer "book_id"
    t.integer "library_id"
    t.string "author"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrowings", force: :cascade do |t|
    t.integer "copy_id"
    t.integer "reader_id"
    t.date "borrowing_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "librarians", force: :cascade do |t|
    t.integer "librarian_id"
    t.date "hire_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.integer "library_id"
    t.string "name"
    t.string "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries_boook_copies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries_users", id: false, force: :cascade do |t|
    t.integer "library_id"
    t.integer "users_id"
    t.index ["library_id"], name: "index_libraries_users_on_library_id"
    t.index ["users_id"], name: "index_libraries_users_on_users_id"
  end

  create_table "readers", force: :cascade do |t|
    t.integer "reader_id"
    t.date "join_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "library_id"
    t.string "name"
    t.string "surname"
    t.integer "pesel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_librarians", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "librarian_id"
    t.index ["librarian_id"], name: "index_users_librarians_on_librarian_id"
    t.index ["user_id"], name: "index_users_librarians_on_user_id"
  end

  create_table "users_readers", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "reader_id"
    t.index ["reader_id"], name: "index_users_readers_on_reader_id"
    t.index ["user_id"], name: "index_users_readers_on_user_id"
  end

end
