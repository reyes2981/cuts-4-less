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

    def omniauth
        #find_or_create a customer using the attribute auth
        @customer = Customer.find_or_create_by(email: auth["info"]["email"]) do |customer|
          customer.full_name = auth["info"]["name"]
          customer.password = SecureRandom.hex(10)
        end
        if @customer.save
          session[:customer_id] = @customer.id
          redirect_to customer_path(@customer)
        else
          redirect_to '/'
        end
    end

      def destroy
        session.destroy
        redirect_to root_path 
      end

    private

  def auth
    request.env['omniauth.auth']
  end


end