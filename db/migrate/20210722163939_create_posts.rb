class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :ramen_name ,null: false
      t.string :shop_name ,null: false
      t.string :place ,null: false
      t.integer :price ,null: false
      t.integer :soup_id ,null: false
      t.integer :noodle_id ,null: false
      t.text :caption ,null: false
      t.references :user ,foreign_key: true
      t.timestamps
    end
  end
end
