class OwnersController < ApplicationController
    def index 
        @owners = Owner.all 
    end 

    def new 
        @owner = Owner.new 
    end 

    def create
        @owner = Owner.create(owner_params)
        redirect_to owner_path(@owner)
    end 

    def edit 
        @owner = Owner.find(params[:id])
    end 

    def show 
        @owner = Owner.find(params[:id])
    end 
        
    def update
        @owner = Owner.find(params[:id])
        @owner.update(owner_params)
        redirect_to owner_path(@owner)
    end 

    def delete 
        @owner =Owner.find(params[:id])
        @owner.destroy 
        redirect to owners_path 
    end 

    private 
    def owner_params
        params.require(:owner).permit(:name)
    end 
end
