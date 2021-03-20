class AppointmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @appointment = Appointment.new
    end

    def index # nested route / setting value to @post then evalauating if it's 'nill' or "something" / if true it will continue reading doce below
        @appointments = Appointment.where("customer_id" => current_customer.id)
    end

    def create
        @appointment = current_customer.appointments.build(appointments_params)
        if @appointment.save
            redirect_to appointments_path
        else
            render :new
        end
    end

    def show
        @appointment = Appointment.find_by_id(params[:id])
    end


    def destroy
        @appointment = current_customers.appointments.find(params[:id]) # browser side
        @appointment.destroy    

        redirect_to '/appoinments'
    end

    

    private

    def appointments_params
        params.require(:appointment).permit(:datetime, :customer_id, :hairdresser_id, :service_id)
    end

end