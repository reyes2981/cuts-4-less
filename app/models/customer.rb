class Customer < ApplicationRecord
    has_secure_password

    has_many :appointments 
    has_many :hairdressers
    has_many :reviews_of_appointment, through: :hairdressers, source: :appointment

    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
    :omniauthable, omniauth_providers: [:facebook]

    def self.create_from_provider_data(provider_data)
        where(provider: provider_data.provider, c_id: provider_data.c_id).first_or_create do |customer|
            customer.email = provider_data.email
            customer.password = Device.friendly_token[0, 29]
        end
    end

end
