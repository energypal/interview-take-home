class CreateInstallers < ActiveRecord::Migration[6.1]
  def change
    create_table :installers do |t|
      t.string :name
      t.boolean :active, default: true, null: false
      t.string :country, limit: 2, null: false
      t.integer :pricing, default: 2, null: false

      t.timestamps
    end
  end
end
