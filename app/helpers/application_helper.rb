module ApplicationHelper
  def current_admin
    if session[:admin_id]
      @current_admin = @current_admin || Admin.find(session[:admin_id])
    end
  end

  def authenticate!
    redirect_to log_in_path unless current_admin
  end

  def total
    @total = 0
    @total+=order.food.price*order.quantity
    return @total
  end
end
