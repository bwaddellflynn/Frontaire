module ApplicationHelper
  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end

  def current_order
    # Use Find by id to avoid potential erros
    if Order.find_by_id(session[:order_id]).nil?
      Order.new
    else
      Order.find_by_id(session[:order_id])
    end
  end
end
