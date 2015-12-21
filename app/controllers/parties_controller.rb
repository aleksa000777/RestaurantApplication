class PartiesController < ApplicationController
  def index
    @parties = Party.all
    # binding.pry
  end

  def create
    # binding.pry
    party = Party.create(party_params)
    redirect_to party_path(party.id)

  end

  def new
    @party = Party.new
    @tables = Table.where("status = ?", true)

  end

  def update
    party = Party.find(params[:id])

    if party.update(party_params)
      redirect_to parties_path
    else
      flash[:error] = party.errors.full_messages
      redirect_to edit_party_path
    end
  end

  def edit
    @party = Party.find(params[:id])
    @order = Order.all
    @table = Table.all
  end

  def show
    @total
    @party = Party.find(params[:id])
    @orders = Order.all
    @food = Food.all
    @server = Server.all

  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to parties_path
  end

  private
  def party_params
    parameters = params.require(:party).permit(:order_id, :table_id, :server_id, :name, :nmofpeople, :pay_status, :bill, :mood)
  end

    # t.string :name
    # t.integer :nmofpeople
    # t.boolean :pay_status
    # t.decimal :bill
    # t.string :mood
    # t.integer :order_id
    # t.integer :table_id


end
