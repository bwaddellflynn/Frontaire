class ApplicationController < ActionController::Base
  include ApplicationHelper
  respond_to :html, :json
  before_action :set_query

  private

  def set_query
    @query = Flight.ransack(params[:q])
    @flight = @query.result(distinct: true)
  end

  def initialize_session

  end
end
