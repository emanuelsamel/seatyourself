class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string  :full_name
      t.integer :phone_number
      t.integer :reservation_id

      t.timestamps

    end
  end
end
