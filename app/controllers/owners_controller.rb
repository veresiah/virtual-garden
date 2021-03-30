class OwnersController < ApplicationController
    def index 
        @owners = Owner.all 
    end 

    def new 
        @owner = Owner.new 
    end 

    def create
        @owner = Owner.create(name: params[:name])
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
        @owner.update(name: params[:name])
        redirect_to owner_path(@owner)
    end 

    def delete 
        @owner =Owner.find(params[:id])
        @owner.destroy 
        redirect to owners_path 
    end 
end
