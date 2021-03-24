class OmniauthController 


    def google_oauth2
        @customer = Customer.crate_from_google_data(request.env['omniauth.auth'])
        if @customer.persisted?
            sign_in_and_redirect @customer
            set_flash_message(:notice, :success, kind: 'Google') if is navigational_format?
        else
            flash[:error] = "There was a problem signing you in through Google. Please register or try signing in again"
            redirect_to new_customer_path
        end
    end

    def failure 
        flash[:error] = "There was a problem signing you in through Google. Please register or try signing in again"
        redirect_to new_customer_path
    end
    
end