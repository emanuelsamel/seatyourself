class User < ApplicationRecord

    has_many :reservations



    has_secure_password

    validates :email, :phone_number, :full_name,  presence: true

    ALLOWED_ROLES = ['Owner']

end
