class Customer < ApplicationRecord
    has_secure_password

    has_many :appointments
    has_many :hairdressers
    has_many :reviews_of_appointment, through: :hairdressers, source: :appointment

    validates_presence_of :password, presence: true
    validates :full_name, presence: true

 
    
    
end
