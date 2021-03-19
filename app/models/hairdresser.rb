class Hairdresser < ApplicationRecord
    belongs_to :custom
    has_many :appointments
    has_many :customers, through: :appointments

end
