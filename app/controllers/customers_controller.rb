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
            flash[:notice]="Password can't be empty"
        end
    end

    def show
        redirect_if_not_logged_in
        @customer = Customer.find_by_id(params[:id])
        redirect_to '/' if !@customer
    end

    private

    def customer_params
        params.require(:customer).permit(:name, :email, :password)
    end

end
