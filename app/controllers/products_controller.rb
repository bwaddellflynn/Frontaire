class ProductsController < InheritedResources::Base
  before_action :initialize_session
  before_action :load_cart

  def index
    @product = Product
      .all
      .page(params[:page])
  end


  private

    def product_params
      params.require(:product).permit(:destination, :flight_date, :departure_time, :departure_iata, :arrival_iata, :price)
    end

    def initialize_session
      session[:cart] ||= []
    end

    def load_cart
      @cart = Product.find(session[:cart])
    end

end
