class OmniauthController < ApplicationController

    def facebook
        #find_or_create a customer using the attributes auth
        @customer = Customer.find_or_create_by(email: auth["info"]["email"]) do |customer|
            customer.customername = auth["info"]["first_name"]
            customer.password = SecureRandom.hex(10)
        end
        if @customer.save
          session[:customer_id] = @customer.id
          redirect_to customer_path(@customer)
        else
          redirect_to '/'
        end
    end

    private

    def auth
      request.env['omniauth.auth']
    end
  
end