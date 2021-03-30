class Plant < ApplicationRecord
    has_many :gardens 
    has_many :owners,  through: :gardens
end
