class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart
  respond_to :html, :json
  before_action :set_query

  private

  def set_query
    @query = Product.ransack(params[:q])
    @product = @query.result(distinct: true)
  end

  private

  def initialize_session
    # this will initialize the visit count to zero for new users.
    # session[:visit_count] ||= 0
    session[:shopping_cart] ||=[] # empty of product IDs
  end

  def cart
    # you can pass an array of ids, and you'll get back the collection
    Product.find(session[:shopping_cart])
  end
end
