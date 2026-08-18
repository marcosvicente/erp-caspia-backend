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

ActiveRecord::Schema[8.1].define(version: 2026_08_18_001429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pgcrypto"

  create_table "bank_reconciliations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.decimal "bank_amount"
    t.datetime "created_at", null: false
    t.uuid "financial_transaction_id", null: false
    t.string "fitid"
    t.datetime "reconciled_at"
    t.datetime "updated_at", null: false
    t.index ["financial_transaction_id"], name: "index_bank_reconciliations_on_financial_transaction_id"
  end

  create_table "chart_of_accounts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "account_type"
    t.string "accounting_code"
    t.string "code"
    t.datetime "created_at", null: false
    t.string "name"
    t.uuid "organization_id", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_chart_of_accounts_on_organization_id"
  end

  create_table "financial_transactions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.decimal "amount"
    t.uuid "chart_of_account_id", null: false
    t.datetime "created_at", null: false
    t.date "due_date"
    t.uuid "organization_id", null: false
    t.date "payment_date"
    t.string "status"
    t.string "transaction_type"
    t.datetime "updated_at", null: false
    t.index ["chart_of_account_id"], name: "index_financial_transactions_on_chart_of_account_id"
    t.index ["organization_id"], name: "index_financial_transactions_on_organization_id"
  end

  create_table "firms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "cnpj"
    t.string "company_name"
    t.string "crc_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cnpj"], name: "index_firms_on_cnpj", unique: true
  end

  create_table "monthly_closings", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "closed_at"
    t.datetime "created_at", null: false
    t.uuid "organization_id", null: false
    t.string "reference_period"
    t.string "status"
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_monthly_closings_on_organization_id"
  end

  create_table "organizations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.uuid "firm_id", null: false
    t.string "tax_regime"
    t.string "trade_name"
    t.datetime "updated_at", null: false
    t.index ["cnpj"], name: "index_organizations_on_cnpj", unique: true
    t.index ["firm_id"], name: "index_organizations_on_firm_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.uuid "firm_id", null: false
    t.uuid "organization_id", null: false
    t.string "role"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["firm_id"], name: "index_users_on_firm_id"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "bank_reconciliations", "financial_transactions"
  add_foreign_key "chart_of_accounts", "organizations"
  add_foreign_key "financial_transactions", "chart_of_accounts"
  add_foreign_key "financial_transactions", "organizations"
  add_foreign_key "monthly_closings", "organizations"
  add_foreign_key "organizations", "firms"
  add_foreign_key "users", "firms"
  add_foreign_key "users", "organizations"
end
