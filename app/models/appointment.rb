class Appointment < ApplicationRecord
    belongs_to :customer
    belongs_to :hairdresser
    has_many :services
end
