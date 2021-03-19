class Customer < ApplicationRecord
    has_secure_password

    has_many :appointments 
    has_many :hairdressers, through: :appointments

end
