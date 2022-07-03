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

ActiveRecord::Schema[7.0].define(version: 2022_07_03_195329) do
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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "blocks", force: :cascade do |t|
    t.string "title"
    t.string "template_name"
    t.json "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "block_category_id"
    t.boolean "is_system", default: false, null: false
    t.string "rte_type"
    t.string "container_tag"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug", null: false
    t.string "type"
    t.integer "category_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "document_category_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.json "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "og_title"
    t.string "og_type"
    t.string "og_image"
    t.text "og_description"
    t.string "og_url"
    t.boolean "index", default: true
    t.boolean "follow", default: true
    t.integer "page_category_id"
  end

  create_table "pages_styles", id: false, force: :cascade do |t|
    t.bigint "page_id"
    t.bigint "style_id"
    t.index ["page_id"], name: "index_pages_styles_on_page_id"
    t.index ["style_id"], name: "index_pages_styles_on_style_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.string "slug", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_category_id"
    t.integer "template_id"
    t.string "picture_url"
    t.text "description"
    t.integer "price"
    t.string "currency"
    t.boolean "available", default: false, null: false
    t.json "content"
    t.string "og_title"
    t.string "og_type"
    t.string "og_image"
    t.text "og_description"
    t.string "og_url"
  end

  create_table "settings", force: :cascade do |t|
    t.string "site_name", default: "My new website", null: false
    t.text "head_tags"
    t.text "body_tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "header_id"
    t.integer "footer_id"
    t.boolean "active_store", default: false, null: false
    t.boolean "active_store_sync", default: false, null: false
    t.integer "product_template_id"
    t.string "xml_url"
    t.string "category_xpath"
    t.string "product_xpath"
    t.text "category_whitelist"
    t.text "category_blacklist"
    t.text "product_whitelist"
    t.text "product_blacklist"
    t.integer "style_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "type", default: "User", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["type"], name: "index_users_on_type"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
