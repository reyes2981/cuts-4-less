class Appointment < ApplicationRecord
    belongs_to :customer, optional: true
    belongs_to :hairdresser, optional: true
    has_many :customers, through: :appointments

end
