class SessionsController < ApplicationController

    def destroy
        session.destroy
        redirect_to root_path 
    end

    def create # instance variables not needed because we are not updating form
        customer = Customer.find_by(email: params[:customer][:email])
        if customer && customer.authenticate(params[:customer][:password])
            session[:customer_id] = customer.id
            redirect_to customer_path(customer)
        else
            flash[:message] = "Incorrect login info, please try again!"
            redirect_to '/login'
        end
    end

    def google
        @customer = Customer.find_or_create_by(email: auth["info"]["email"]) do |customer|
            customer.name = auth["info"]["first_name"]
            customer.password = SecureRandom.hex(10) # assigns a random password
        end

        if @customer.save
            session[:customer_id] = @customer.id
            redirect_to customer_path(customer)
        else
            redirect_to '/'
        end
        
    end

    private

    def auth
        request.env("omniauth.auth")
    end


end