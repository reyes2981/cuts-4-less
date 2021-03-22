class Customer < ApplicationRecord
    has_secure_password

    has_many :appointments 
    has_many :hairdressers
    has_many :reviews_of_appointment, through: :hairdressers, source: :appointment

    validates :email, presence: true
    validates :email, uniqueness: true 

end
