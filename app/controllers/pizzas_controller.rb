class PizzasController < ApplicationController
  #GET /pizzas
  def index
    pizzas = Pizza.all
    render json: pizzas, include: :restaurant_pizzas
  end

end
