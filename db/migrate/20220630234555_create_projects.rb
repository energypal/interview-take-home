class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.string :country, limit: 2
      t.integer :system_size

      t.timestamps
    end
  end
end
