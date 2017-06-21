class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :user
  validates :name, :address, :neighberhood, :price_range, :summary, :menu, :photo_url, :max_capacity, presence: true
end
