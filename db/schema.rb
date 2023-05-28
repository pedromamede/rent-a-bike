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

ActiveRecord::Schema[7.0].define(version: 2023_05_28_212411) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alugueis", force: :cascade do |t|
    t.bigint "bike_id", null: false
    t.bigint "ponto_id", null: false
    t.datetime "hora_retirada"
    t.datetime "hora_devolucao"
    t.string "forma_pagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_alugueis_on_bike_id"
    t.index ["ponto_id"], name: "index_alugueis_on_ponto_id"
  end

  create_table "bikes", force: :cascade do |t|
    t.string "modelo"
    t.string "marca"
    t.text "descricao"
    t.float "valor_aluguel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "pontos", force: :cascade do |t|
    t.string "image_url"
    t.text "endereco"
    t.string "horario"
    t.string "link_maps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
  end

  add_foreign_key "alugueis", "bikes"
  add_foreign_key "alugueis", "pontos"
end
