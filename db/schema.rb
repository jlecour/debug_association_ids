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

ActiveRecord::Schema.define(:version => 20110809081053) do

  create_table "blue_brokers", :force => true do |t|
    t.string "name"
  end

  create_table "hotels", :force => true do |t|
    t.string "name"
  end

  create_table "relations", :force => true do |t|
    t.integer "broker_id"
    t.string  "broker_type"
    t.integer "hotel_id"
    t.integer "status",      :limit => 1, :default => 0
  end

end
