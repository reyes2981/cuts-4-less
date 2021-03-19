class Hairdresser < ApplicationRecord
    belongs_to :customer
    has_many :appointments
    has_many :customers, through: :appointments

end
