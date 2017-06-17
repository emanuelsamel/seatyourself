class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|

      t.integer  :time
      t.integer  :party_size
      t.belongs_to  :user
      t.belongs_to  :restaurant

      t.timestamps
    end
  end
end
