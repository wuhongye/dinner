class CheckController < ApplicationController

    before_filter :auth_user

    def new
        @meal = Meal.new
    end

    def create
    @meal = current_user.meals.new(book_attrs)
    if @meal.save
      flash[:notice] = "订单成功"
      redirect_to meals_path
    else
      flash[:notice] = "订单创建失败"
      render action: :new
    end
  end
end