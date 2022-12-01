class RestaurantPizzasController < ApplicationController
  skip_before_action :verify_authenticity_token 
  rescue_from ActiveRecord::RecordNotFound, with:
  :render_not_found_response 
  rescue_from ActiveRecord::RecordInvalid, with: 
  :render_unprocessable_entity_response 
  wrap_parameters format: [] 
  def create
    restaurant_pizza = RestaurantPizza.create!(restaurant_params) 
    render json: restaurant_pizza, status: :created 
  end
     private 
  def restaurant_params 
    params.permit(:restaurant_id, :pizza_id, :price) 
    end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity 
  end
end
