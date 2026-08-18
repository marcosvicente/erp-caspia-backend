class CreateChartOfAccounts < ActiveRecord::Migration[8.1]
  def change
    create_table :chart_of_accounts, id: :uuid do |t|
      t.references :organization, null: false, foreign_key: true, type: :uuid
      t.string :code
      t.string :name
      t.string :account_type
      t.string :accounting_code

      t.timestamps
    end
  end
end
