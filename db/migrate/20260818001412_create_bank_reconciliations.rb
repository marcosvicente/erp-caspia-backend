class CreateBankReconciliations < ActiveRecord::Migration[8.1]
  def change
    create_table :bank_reconciliations, id: :uuid do |t|
      t.references :financial_transaction, null: false, foreign_key: true, type: :uuid
      t.string :fitid
      t.decimal :bank_amount
      t.datetime :reconciled_at

      t.timestamps
    end
  end
end
