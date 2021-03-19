class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new
        if @appointment.save
            redirect_to @appointment
        else
            render :new
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(:hairdresser, :datetime)
    end
end
