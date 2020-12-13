# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_13_141556) do

  create_table "formulario_certos", force: :cascade do |t|
    t.integer "data"
    t.integer "departamento"
    t.string "nome_projeto"
    t.string "tipo_projeto_string"
    t.string "orientador"
    t.integer "maquina"
    t.boolean "ferramentas_proprias"
    t.boolean "estado"
    t.string "material"
    t.string "desenho_peca"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservas_certos", force: :cascade do |t|
    t.string "fields"
    t.string "user_id"
    t.integer "formulario_id"
    t.integer "maquina_id"
    t.boolean "tecnico"
    t.boolean "ativa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "n_usp", null: false
    t.integer "telephone", null: false
    t.string "role", default: "aluno"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
