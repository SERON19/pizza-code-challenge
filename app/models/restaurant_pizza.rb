class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza
    validates :price, comparison: { less_than_or_equal_to:30 }  
    validates :price, comparison: { greater_than_or_equal_to:1 }
end
