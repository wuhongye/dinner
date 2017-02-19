class OrderController < ApplicationController
    def index
    @meals = Meal.page(params[:page] || 1).per_page(params[:per_page] || 10).
      order("id desc").include(:username , :meals , :times , :payer , :money , :status)
  end
end