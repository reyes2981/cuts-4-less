class Appointment < ApplicationRecord
    belongs_to :customer, optional: true
    belongs_to :hairdresser, optional: true

    Appointment.includes(:hairdresser)
end
