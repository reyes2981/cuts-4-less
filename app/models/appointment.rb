class Appointment < ApplicationRecord
    belongs_to :customer
    belongs_to :hairdresser
    has_many :customers, through: :appointments

end
