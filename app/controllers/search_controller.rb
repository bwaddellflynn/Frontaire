class SearchController < ApplicationController
  def index
    @query = Flight.ransack(params[:q])
    @flight = @query.result(distinct: true)
  end
end
