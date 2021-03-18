class Customer < ApplicationRecord

    has_many :appointments 
    has_many :hairdressers 
    has_many :completed_appointments, through: :hairdressers, source: :appointment

end
