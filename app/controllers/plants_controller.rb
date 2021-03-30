class PlantsController < ApplicationController
    def index 
        @plants = Plant.all 
    end 

    def new 
        @plant = Plant.new 
    end 

    def create
        @plant = Plant.create(plant_params)
        redirect_to plant_path(@plant)
    end 

    def edit 
        @plant = Plant.find(params[:id])
    end 

    def show 
        @plant = Plant.find(params[:id])
    end 
        
    def update
        @plant = Plant.find(params[:id])
        @plant.update(plant_params)
        redirect_to plant_path(@plant)
    end 

    def delete 
        @plant = Plant.find(params[:id])
        @plant.destroy 
        redirect to plants_path 
    end 

    private 

    def plant_params
        params.require(:garden).permit(:common_name, :scientific_name, :image_url)
    end 
end