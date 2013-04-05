class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :color
      t.integer :amount

      t.timestamps
    end
    add_index :fruits, [:box_id, :created_at]
  end
end
