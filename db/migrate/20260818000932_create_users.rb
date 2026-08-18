class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users, id: :uuid do |t|
      t.references :organization, null: false, foreign_key: true, type: :uuid
      t.references :firm, null: false, foreign_key: true, type: :uuid
      t.string :email
      t.string :role

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
