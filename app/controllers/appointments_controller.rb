class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @appointment = Appointment.new
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
        
    end

    private

    def appointment_params
        params.require(:appointment).permit(:datetime, :hairdresser_id)
    end
end
