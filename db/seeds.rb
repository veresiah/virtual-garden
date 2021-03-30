# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
    hash = RestClient.get"https://trefle.io/api/v1/plants?filter_not%5Bmaximum_height_cm%5D=null&filter%5Bligneous_type%5D=tree&order%5Bmaximum_height_cm%5D=desc&token=#{ENV['API_KEY']}"
    plant_data = JSON.parse(hash)["data"]
    plant_data.each do |plant|
        Plant.create(
        common_name: plant["common_name"],
        scientific_name: plant["scientific_name"],
        image_url: plant["image_url"]
        )
    end 