class PlantsController < ApplicationController
    def index 
        @plants = Plant.all 
    end 

    def show
    end 
        
    private 

    API_URL = 'https://trefle.io/api/v1/plants/search?token=#{ENV['API_KEY']&q='
    def get_plant(slug)
        response = HTTParty.get("#{API_URL}#{slug}")
        json = JSON.parse(response.body)
    end 
end
