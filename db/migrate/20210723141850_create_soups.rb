class CreateSoups < ActiveRecord::Migration[6.0]
  def change
    create_table :soups do |t|

      t.timestamps
    end
  end
end
