class AddCapacityRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :max_capacity, :integer 
  end
end
