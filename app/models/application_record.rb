class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

=begin   def add_to_cart
    session[:cart] << params[:ticket_id]
    redirect_to root_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end
=end
end
