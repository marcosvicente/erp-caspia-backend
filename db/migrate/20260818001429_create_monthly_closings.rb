class CreateMonthlyClosings < ActiveRecord::Migration[8.1]
  def change
    create_table :monthly_closings, id: :uuid do |t|
      t.references :organization, null: false, foreign_key: true, type: :uuid
      t.string :reference_period
      t.string :status
      t.datetime :closed_at

      t.timestamps
    end
  end
end
