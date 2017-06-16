class CreateRestaurant < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.text :neighbourhood
      t.text :price_range
      t.text :summary
      t.text :menu
      t.text :time_slots
      t.integer :hours
      t.integer :capacity

    end
  end
end
