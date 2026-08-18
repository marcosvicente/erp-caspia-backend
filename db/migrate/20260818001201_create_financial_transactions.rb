class CreateFinancialTransactions < ActiveRecord::Migration[8.1]
  def change
    create_table :financial_transactions, id: :uuid do |t|
      t.references :organization, null: false, foreign_key: true, type: :uuid
      t.references :chart_of_account, null: false, foreign_key: true, type: :uuid
      t.string :transaction_type
      t.decimal :amount
      t.date :due_date
      t.date :payment_date
      t.string :status

      t.timestamps
    end
  end
end
