class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :rating
      t.integer :shoe_id
      t.integer :user_id
    end
  end
end
