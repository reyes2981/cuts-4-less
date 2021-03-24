class Appointment < ApplicationRecord
    belongs_to :customer, optional: true 
    belongs_to :hairdresser, optional: true
    belongs_to :service, optional: true

    accepts_nested_attributes_for :customer

    validates_datetime :datetime # ensures that past date isn't choosen

end
