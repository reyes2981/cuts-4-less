class CustomersController < ApplicationController
 
    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            session[:customer_id] = @customer.id
            redirect_to @customer 
        else
            render :new
        end
    end

    def show
    end

    private

    def customer_params
        params.require(:customer).permit(:name, :email, :password)
    end

end
