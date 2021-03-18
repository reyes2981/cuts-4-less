class SessionsController < ApplicationController

    def destroy
        session.clear
        redirect_to root_path 
    end

    def create # instance variables not needed because we are not updating form
        customer = Customer.find_by(email: params[:customer][:email])
        if customer && customer.authenticate(params[:customer][:password])
        else
        end
    end
end