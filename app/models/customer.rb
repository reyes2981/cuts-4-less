class Customer < ApplicationRecord
    has_secure_password

    has_many :appointments
    has_many :hairdressers
    has_many :reviews_of_appointment, through: :hairdressers, source: :appointment

    devise  :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable,
            :omniauthable, omniauth_providers: [:google_oauth2]

    def self.create_from_provider_data(provider_data)
        where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |customer|
        customer.email = provider_data.info.email
        customer.password = Devise.friendly_token[0, 20]
        end
    end
end
