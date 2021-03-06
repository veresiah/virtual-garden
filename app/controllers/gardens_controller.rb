class GardensController < ApplicationController
    def index 
        @gardens = Garden.all 
    end 

    def new 
        @garden = Garden.new 
    end 

    def create
        @garden = Garden.create(garden_params)
        redirect_to garden_path(@garden)
    end 

    def edit 
        @garden = Garden.find(params[:id])
    end 

    def show 
        @garden = Garden.find(params[:id])
    end 
        
    def update
        @garden = Garden.find(params[:id])
        @garden.update(garden_params)
        redirect_to garden_path(@garden)
    end 

    def delete 
        @garden = Garden.find(params[:id])
        @garden.destroy 
        redirect to gardens_path 
    end 

    private 
    def garden_params
        params.require(:garden).permit(:name, :owner_id, :plant_id)
    end 
end
