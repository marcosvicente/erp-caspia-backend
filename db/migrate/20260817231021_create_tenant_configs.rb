class CreateTenantConfigs < ActiveRecord::Migration[8.1]
  def change
    create_table :tenant_configs, id: :uuid do |t|
      t.string :name
      t.string :cnpj
      t.string :database

      t.timestamps
    end
  end
end
