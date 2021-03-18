class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in? # makes these helper methods available in VIEWS directory


    private

    def current_user
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
