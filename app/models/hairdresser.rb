class Hairdresser < ApplicationRecord
    belongs_to :customer, optional: true 
    belongs_to :appointment, optional: true 

end
