class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    Admin.create(admin_params)
    redirect_to log_in_path
  end

  def log_in
  end

  def index
      @server = Server.new
      @servers = Server.all
  end

  def destroy

    server = Server.find(params[:id])
    server.destroy
    redirect_to admins_path
  end
  private

  def admin_params
    params.require(:admin).permit(:name, :password)
  end
  def server_params
    params.require(:server).permit(:name)
  end
end
