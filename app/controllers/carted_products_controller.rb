class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create!(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )

    render json: @carted_product.as_json
  end

  def index
    @carted_products = CartedProduct.all

    render json: @carted_products.as_json
  end
end
