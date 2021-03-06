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

ActiveRecord::Schema.define(version: 20171221214241) do

  create_table "carte_components", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.string   "image"
    t.string   "type"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "lineage"
    t.integer  "parent_id"
    t.string   "calories"
    t.string   "tags"
    t.boolean  "vegetarian"
    t.boolean  "active"
    t.boolean  "published",   default: true
    t.index ["parent_id"], name: "index_carte_components_on_parent_id"
  end

  create_table "displays", force: :cascade do |t|
    t.string   "name",                      null: false
    t.boolean  "active",     default: true
    t.integer  "order"
    t.string   "resolution"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name",                             null: false
    t.boolean  "active",            default: true
    t.integer  "order"
    t.string   "bgcolor"
    t.string   "bgimage"
    t.integer  "screen_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "skin_template_ref"
    t.index ["screen_id"], name: "index_pages_on_screen_id"
  end

  create_table "screens", force: :cascade do |t|
    t.string   "name",                              null: false
    t.boolean  "active",           default: true
    t.integer  "order"
    t.string   "bgcolor"
    t.string   "bgimage"
    t.integer  "display_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.float    "proportion",       default: 1.0
    t.string   "efect_transition", default: "none"
    t.index ["display_id"], name: "index_screens_on_display_id"
  end

  create_table "sections", force: :cascade do |t|
    t.boolean  "active",                   default: true
    t.integer  "order"
    t.integer  "page_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "skin_template_section_id"
    t.string   "font_color"
    t.string   "font_size"
    t.string   "static_image"
    t.string   "static_text"
    t.string   "type"
    t.integer  "dinamic_ref"
    t.string   "dinamic_expression"
    t.index ["page_id"], name: "index_sections_on_page_id"
    t.index ["skin_template_section_id"], name: "index_sections_on_skin_template_section_id"
  end

  create_table "skin_template_sections", force: :cascade do |t|
    t.integer  "order"
    t.integer  "type_section_id"
    t.integer  "skin_template_id"
    t.string   "class_styling"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["skin_template_id"], name: "index_skin_template_sections_on_skin_template_id"
    t.index ["type_section_id"], name: "index_skin_template_sections_on_type_section_id"
  end

  create_table "skin_templates", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "edit_form"
    t.string   "showroom"
  end

  create_table "type_sections", force: :cascade do |t|
    t.string   "name",       null: false
    t.boolean  "active"
    t.string   "abrev"
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
