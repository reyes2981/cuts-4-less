class Hairdresser < ApplicationRecord
    belongs_to :customer
    belongs_to :appointment


    has_many :service, class_name: "Service", dependent: :destroy
end
