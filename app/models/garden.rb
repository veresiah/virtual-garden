class Garden < ApplicationRecord
    belongs_to :owner 
    belongs_to :plant 
end
