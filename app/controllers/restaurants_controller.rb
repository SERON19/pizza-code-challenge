class RestaurantsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        restaurants = Restaurant.all
        render json: restaurants
        
    end
    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
          render json: restaurant
        else
          render json: { error: "Restaurant not found" }, status: :not_found
        end
      end
      def destroy
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
          restaurant.destroy
          head :no_content
        else
          render json: { error: "Restaurant not found" }, status: :not_found
        end
      end
end
