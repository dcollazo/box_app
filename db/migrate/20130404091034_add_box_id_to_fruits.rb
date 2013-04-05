class AddBoxIdToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :box_id, :integer
  end 
end
