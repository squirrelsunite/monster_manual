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

ActiveRecord::Schema.define(:version => 20110306211742) do

  create_table "creatures", :force => true do |t|
    t.string   "name"
    t.integer  "hit_points"
    t.integer  "initiative"
    t.integer  "monster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounters", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.integer  "original_encounter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keywords", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "keywords_monsters", :id => false, :force => true do |t|
    t.integer "keyword_id"
    t.integer "monster_id"
  end

  create_table "monsters", :force => true do |t|
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "hit_points"
    t.integer  "armor_class"
    t.integer  "fortitude"
    t.integer  "reflex"
    t.integer  "will"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "origin_id"
    t.string   "size"
    t.integer  "level"
    t.string   "primary_role"
    t.integer  "initiative"
    t.integer  "type_id"
    t.integer  "perception"
    t.integer  "race_id"
    t.integer  "speed"
    t.string   "special_sense"
    t.integer  "primary_role_id"
    t.text     "combat_notes"
    t.text     "description"
    t.string   "alignment"
    t.string   "languages"
  end

  create_table "movements", :force => true do |t|
    t.string   "name"
    t.integer  "speed"
    t.integer  "monster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "origins", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "powers", :force => true do |t|
    t.string   "name"
    t.string   "source"
    t.string   "power_type"
    t.integer  "level"
    t.text     "flavor_text"
    t.string   "usage"
    t.string   "action_type"
    t.text     "trigger"
    t.string   "attack_type"
    t.string   "attack_range"
    t.integer  "attack_range_value"
    t.integer  "area_range_value"
    t.text     "prerequisite"
    t.text     "requirement"
    t.text     "target"
    t.string   "attack_ability"
    t.integer  "attack_modifier"
    t.string   "defense"
    t.text     "hit"
    t.text     "miss"
    t.text     "effect"
    t.string   "sustain_action_type"
    t.text     "sustain_effect"
    t.text     "power_special"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "primary_roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "lore"
    t.text     "encounters"
    t.string   "skill"
    t.integer  "difficulty"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "score"
    t.integer  "monster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
