class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :name
      t.string :description
      t.string :color
      t.integer :size
      t.float :price
      end
  end
end
