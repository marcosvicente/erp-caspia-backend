class CreateFirms < ActiveRecord::Migration[8.1]
  def change
    create_table :firms, id: :uuid do |t|
      t.string :company_name
      t.string :cnpj
      t.string :crc_number

      t.timestamps
    end
    add_index :firms, :cnpj, unique: true
  end
end
