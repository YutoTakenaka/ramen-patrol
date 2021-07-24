class CreateNoodles < ActiveRecord::Migration[6.0]
  def change
    create_table :noodles do |t|

      t.timestamps
    end
  end
end
