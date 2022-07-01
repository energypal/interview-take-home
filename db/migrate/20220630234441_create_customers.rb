class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name, limit: 100
      t.string :email, limit: 320

      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
