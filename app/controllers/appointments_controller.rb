class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @appointment = Appointment.new
    end

    def create
        @appointment = current_customer.appointments.build(appointment_params)
        if @appointment.save
            redirect_to 'appointments/index'
        else
            render :new
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(:datetime, hairdresser_attributes:[:name], customer_attributes: [:name])
    end
end
