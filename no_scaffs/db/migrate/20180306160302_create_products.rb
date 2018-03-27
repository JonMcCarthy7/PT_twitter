class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.boolean :gluten_free, default: false

      t.timestamps
    end
  end
end
