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

ActiveRecord::Schema.define(version: 20131107072626) do

  create_table "alternativas", force: true do |t|
    t.string   "opcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encuestas", force: true do |t|
    t.integer  "pregunta_id"
    t.integer  "respuesta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "agrupacion"
  end

  add_index "encuestas", ["pregunta_id"], name: "index_encuestas_on_pregunta_id"
  add_index "encuestas", ["respuesta_id"], name: "index_encuestas_on_respuesta_id"

  create_table "estudiantes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluaciones", force: true do |t|
    t.integer  "tema_id"
    t.integer  "encuesta_id"
    t.string   "contrato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluaciones", ["contrato_id"], name: "index_evaluaciones_on_contrato_id"
  add_index "evaluaciones", ["encuesta_id"], name: "index_evaluaciones_on_encuesta_id"
  add_index "evaluaciones", ["tema_id"], name: "index_evaluaciones_on_tema_id"

  create_table "preguntas", force: true do |t|
    t.string   "denominacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preguntas_respuestas", id: false, force: true do |t|
    t.integer "pregunta_id"
    t.integer "respuesta_id"
  end

  add_index "preguntas_respuestas", ["pregunta_id", "respuesta_id"], name: "index_preguntas_respuestas_on_pregunta_id_and_respuesta_id"

  create_table "respuestas", force: true do |t|
    t.string   "opcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "temas", force: true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo"
    t.string   "dni"
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.boolean  "sexo"
    t.date     "fechanacio"
    t.string   "linkfoto"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
