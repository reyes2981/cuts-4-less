class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        if params[:customer_id] && @customer = Customer.find_by_id(params[:customer_id])
            @appointment = @customer.appointments.build
        else
            @appointment = Appointment.new
        end
    end

    def index # nested route / setting value to @post then evalauating if it's 'nill' or "something" / if true it will continue reading doce below
        if params[:customer_id] && @customer = Customer.find_by_id(params[:customer_id]) 
            # confirms it's nested
            @appointments = @customers.appointments
        else
            flash[:message] = "That does not exist" if params[:customer_id]
        end
    end

    def create
        @appointment = current_customer.appointments.build(appointment_params)
        if @appointment.save
            redirect_to appointments_path
        else
            render :new
        end
    end

    def show
        @appointment = Appointment.find_by_id(params[:id])
    end

    private

    def appointment_params
        params.require(:appointment).permit(:datetime, :customer_id, :hairdresser_id)
    end

end
