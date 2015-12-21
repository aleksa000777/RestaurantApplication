class ServersController < ApplicationController
  def index
  end

  def new
    @server = Server.new
  end

  def create
    Server.create(server_params)
    redirect_to admins_path
  end


  private
  def server_params
    params.require(:server).permit(:name)
  end
end
