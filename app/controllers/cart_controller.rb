# frozen_string_literal: true

class CartController < ApplicationController
  def create
    @order_items = current_order.order_items
    logger.debug("Adding #{params[:id]} to cart.")
  end


  # def add
  #   @cart_item ="item"
  #   respond_to do |format|

  #     format.turbo_stream do

  #       render turbo_stream: [turbo_stream.replace("cart", partial: "cart/cart", locals: { cart: @order_items }),

  #                             turbo_stream.replace(@order_items)]

  #     end

  #   end
  # end

end
