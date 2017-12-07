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

ActiveRecord::Schema.define(version: 20171207064226) do

  create_table "campers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "camp_id"
    t.bigint "user_id"
    t.string "role"
    t.string "nickname"
    t.datetime "joined_at"
    t.datetime "last_speaked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_campers_on_camp_id"
    t.index ["user_id"], name: "index_campers_on_user_id"
  end

  create_table "camps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "camps_tags", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "tag_id", null: false
    t.bigint "camp_id", null: false
    t.index ["camp_id"], name: "index_camps_tags_on_camp_id"
    t.index ["tag_id"], name: "index_camps_tags_on_tag_id"
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "camp_id"
    t.bigint "camper_id"
    t.bigint "topic_id"
    t.string "message_type"
    t.text "content"
    t.string "media_server_id"
    t.string "media_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_messages_on_camp_id"
    t.index ["camper_id"], name: "index_messages_on_camper_id"
    t.index ["topic_id"], name: "index_messages_on_topic_id"
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "topics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "camp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_topics_on_camp_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "open_id"
    t.string "nickname"
    t.string "gender"
    t.string "avatar"
    t.string "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["open_id"], name: "index_users_on_open_id"
  end

end
