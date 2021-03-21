class Customer < ApplicationRecord
    has_secure_password

    has_many :appointments 
    has_many :hairdressers
    has_many :reviews_of_appointment, through: :hairdressers, source: :appointment

    device :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
    :omniauthable, :omniauth_providers: [:facebook]

    def self.create_from_providers_data(provider_data)
        where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |customer|
            customer.email = provider.data.info.email
            customer.password = provider.data.info.password
        end
    end

end
