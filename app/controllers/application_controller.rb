class ApplicationController < ActionController::Base

    helper_method :current_customer, :logged_in? # makes these helper methods available in VIEWS directory

    def destroy
        session.destroy
        redirect_to root_path 
    end

    private

    def current_customer
        @current_customer ||= Customer.find_by_id(session[:customer_id]) if session[:customer_id]
        # ^ Memoization ^
    end

    def logged_in?
        !!session[:customer_id]
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end
    
end
