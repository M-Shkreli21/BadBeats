class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :post_body
      t.integer :user_id
      t.integer :likes
      t.integer :sports_id

      t.timestamps
    end
  end
end
