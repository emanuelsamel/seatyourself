class FixIntegerLimitInTable < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :phone_number, :integer, limit: 8
  end
end

#   This is to correct this error...
#
#         ActiveModel::RangeError:
#         4169671111 is out of range for
#         ActiveModel::Type::Integer with limit 4
#
#   ...which appeared when we ran rails db:seed
#
#   I found the solution here:
#
#   https://stackoverflow.com/a/39810391/7952490
#
#   - Mike
