class OmniauthController < ApplicationController

    def facebook
        @customer = Customer.create_from_provider_data(request.env['omniauth.auth'])
        if @customer.persisted?
            sign_in_and_redirect @customer
            set_flash_message(:notice, :success, kind: 'facebook') if is_navigational_format?
        else
            flash[:error] = "There was a problem signing in through Facebook. Please Register or try again. "
            redirect new_customer_registration_url
        end
end