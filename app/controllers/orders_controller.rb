class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @parties = Party.all
    @foods = Food.all
  end

  def create
    @party = Party.find(params[:party_id])
    @order = Order.create(order_params)
    # party.order.create(order_params)
    redirect_to party_order_path
  end

  def new

    @order = Order.new
    @party = Party.find(params[:party_id])
    # binding.pry

  end

  def update
    order = Order.find(params[:id])
    if order.update(order_params)
      redirect_to orders_path
    else
      flash[:error] = order.errors.full_messages
      redirect_to edit_order_path
    end
  end

  def edit
    @order = Order.find(params[:id])
    @food = Food.all
    @party = Party.all
  end

  def show
    @order = Order.find(params[:id])
    @party = Party.all

  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
  def order_params
    parameters = params.require(:order).permit(:food_id, :party_id, :quantity, :comment, :active)
  end


end
