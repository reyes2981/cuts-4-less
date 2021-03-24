class Appointment < ApplicationRecord
    belongs_to :customer, optional: true 
    belongs_to :hairdresser, optional: true
    belongs_to :service, optional: true

    accepts_nested_attributes_for :customer


end
