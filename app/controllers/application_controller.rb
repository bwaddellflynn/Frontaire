class ApplicationController < ActionController::Base
  include ApplicationHelper
  respond_to :html, :json
  before_action :set_query

  private

  def set_query
    @query = Product.ransack(params[:q])
    @product = @query.result(distinct: true)
  end

  def initialize_session

  end
end
