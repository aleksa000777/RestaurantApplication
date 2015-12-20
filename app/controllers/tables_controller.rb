class TablesController < ApplicationController
  def index
    @tables = Table.all
  end

  def create
    # binding.pry
    table = Table.create(table_params)
    redirect_to table_path(table.id)

  end

  def new
    @table = Table.new
  end

  def update
    table = Table.find(params[:id])
    if table.update(table_params)
      redirect_to tables_path
    else
      flash[:error] = table.errors.full_messages
      redirect_to edit_table_path
    end
  end

  def edit
    @table = Table.find(params[:id])
    @party = Party.all
    # @server = Server.all
  end

  def show
    @table = Table.find(params[:id])

  end

  def destroy
    authenticate!
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to tables_path
  end

  private
  def table_params
    parameters = params.require(:table).permit(:party_id, :server_id, :name, :status, :shape, :location)
  end

end
