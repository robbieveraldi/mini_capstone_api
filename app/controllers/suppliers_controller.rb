class SuppliersController < ApplicationController
  def show
    @supplier = Supplier.find_by(id: params["id"])
    render template: "suppliers/show"
  end

  def index
    @supplier = Supplier.all
    render template: "suppliers/index"
  end

  def update
    @supplier = supplier.find_by(id: params["id"])
    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number

    if @supplier.save
      render template: "suppliers/show"
    else
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity
  end

  def destroy
    supplier = Supplier.find_by(id: params["id"])
    supplier.destroy
    render json: { message: "Supplier destroyed" }
  end
end
