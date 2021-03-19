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
        @hairdressers = hairdresser.all
    end

    def show
        @hairdresser = hairdresser.find_by_id(params[:id])
    end

    private 

    def hairdresser_params 
        params.require(:hairdresser).permit(:id, :name)
    end

    

end
