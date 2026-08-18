class CreateOrganizations < ActiveRecord::Migration[8.1]
  def change
    create_table :organizations, id: :uuid do |t|
      t.references :firm, null: false, foreign_key: true, type: :uuid
      t.string :trade_name
      t.string :cnpj
      t.string :tax_regime

      t.timestamps
    end
    add_index :organizations, :cnpj, unique: true
  end
end
