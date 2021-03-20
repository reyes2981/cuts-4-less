class Appointment < ApplicationRecord
    belongs_to :customer
    belongs_to :hairdresser

    has_one :hairdresser
    has_one :service, through: :hairdresser


end
