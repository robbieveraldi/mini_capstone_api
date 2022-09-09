class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    subtotal = Product.find_by(id: params["product_id"]).price * params["quantity"].to_i
    tax = Product.find_by(id: params["product_id"]).tax * params["quantity"].to_i

    # OR
    # product = Product.find_by(id: params["product_id"])
    # subtotal = product.price * params["quantity"].to_i
    # tax = product.tax * params["quantity"].to_i
    # total = subtotal + tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax,
    )
    @order.save
    render json: @order.as_json
  end

  def show
    @order = Order.find_by(id: params["id"])
    if current_user.id == @order.user_id
      render template: "orders/show"
    else
      render json: { message: "You are not authorized to view this order" }, status: :unauthorized
    end
  end

  def index
    @orders = current_user.orders # method from has_many in user model
    render template: "orders/index"
  end
end
