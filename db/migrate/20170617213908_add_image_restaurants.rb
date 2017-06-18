class AddImageRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :photo_url
    end
  end
end
