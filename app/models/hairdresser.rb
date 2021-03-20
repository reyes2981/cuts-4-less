class Hairdresser < ApplicationRecord
    belongs_to :customer
    belongs_to :appointment

end
