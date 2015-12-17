class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def create
    food = Food.create(food_params)
    redirect_to food_path(food.id)

  end

  def new
    @food = Food.new
  end

  def update
    food = Food.find(params[:id])
    if food.update(food_params)
      redirect_to foods_path
    else
      flash[:error] = food.errors.full_messages
      redirect_to edit_food_path
    end
  end

  def edit
    @food = Food.find(params[:id])
  end


  def show
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private
  def food_params
    parameters = params.require(:food).permit(:name, :category, :price, :description)
  end

end
