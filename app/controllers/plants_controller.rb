class PlantsController < ApplicationController

    def create  
        @plant = Plant.new(plant_params)
        @garden = Garden.find(params[:garden_id])
        @plant.garden = @garden

        if @plant.save
            redirect_to garden_path(@garden)
        else  
            render "gardens/show"
        end
    end

    private 

    def plant_params  
        params.require(:plant).permit(:name, :plant_img)
    end
end
