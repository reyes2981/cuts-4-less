class Customer < ApplicationRecord
    has_secure_password

    has_many :hairdressers
    has_many :appointments 
    has_many :reviewed_hairdressers, through: :appointments, source: :hairdresser

end
