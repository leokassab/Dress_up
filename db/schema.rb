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

ActiveRecord::Schema.define(version: 2022_02_19_110046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "clothes", force: :cascade do |t|
    t.string "category"
    t.boolean "bookmark"
    t.string "size"
    t.string "color"
    t.string "material"
    t.string "product_ref"
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "bought", default: true
    t.bigint "shop_id"
    t.index ["shop_id"], name: "index_clothes_on_shop_id"
    t.index ["user_id"], name: "index_clothes_on_user_id"
  end

  create_table "clothes_outfits", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clothe_id"], name: "index_clothes_outfits_on_clothe_id"
    t.index ["outfit_id"], name: "index_clothes_outfits_on_outfit_id"
  end

  create_table "clothes_tags", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clothe_id"], name: "index_clothes_tags_on_clothe_id"
    t.index ["tag_id"], name: "index_clothes_tags_on_tag_id"
  end

  create_table "outfit_tags", force: :cascade do |t|
    t.bigint "outfit_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_outfit_tags_on_outfit_id"
    t.index ["tag_id"], name: "index_outfit_tags_on_tag_id"
  end

  create_table "outfits", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_outfits_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "brand_name"
    t.string "url_website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "height"
    t.string "body_shape"
    t.string "skin_tone"
    t.string "waist_circ"
    t.string "chest_circ"
    t.string "hip_circ"
    t.string "user_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "clothes", "shops"
  add_foreign_key "clothes", "users"
  add_foreign_key "clothes_outfits", "clothes"
  add_foreign_key "clothes_outfits", "outfits"
  add_foreign_key "clothes_tags", "clothes"
  add_foreign_key "clothes_tags", "tags"
  add_foreign_key "outfit_tags", "outfits"
  add_foreign_key "outfit_tags", "tags"
  add_foreign_key "outfits", "users"
  add_foreign_key "tags", "users"
end
