class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price
      t.integer :quantity
      t.boolean :status

      t.timestamps
    end
  end
end
