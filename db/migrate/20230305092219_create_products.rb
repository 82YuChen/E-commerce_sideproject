class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :store, null: false, foreign_key: true
      t.string :subtitle
      t.integer :category, default: 0, null: false
      t.integer :size, default: 0, null: false

      t.timestamps
    end
  end
end
