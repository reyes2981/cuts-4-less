class SessionsController < ApplicationController


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

    def destroy
        session.delete :customer_id
        redirect_to '/'
    end

end