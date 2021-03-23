class HairdressersController < ApplicationController

    def new
        @hairdresser = Hairdresser.new
    end

    def create 
        @hairdresser = Hairdresser.new(hairdresser_params)
        if @hairdresser.save
            redirect_to hairdresser_path(@hairdresser)
        else
            render :new 
        end
    end

    def index 
        @hairdresser = hairdresse.all
    end

    def show
        @hairdresse = Hairdresser.find(params[:id])
    end

    private 

    def hairdresser_params 
        params.require(:hairdresser).permit(:appointment_id, :name)
    end

    

end
