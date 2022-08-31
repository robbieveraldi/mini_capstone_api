class ProductsController < ApplicationController
  def all_products
    product = Product.all
    render json: product
  end

  def paper_towels
    product = Product.first
    render json: product
  end

  def clorox_bleach
    product = Product.second
    render json: product
  end

  def dyson_vacuum
    product = Product.third
    render json: product
  end

  def dawn_soap
    product = Product.fourth
    render json: product
  end

  def tide_pods
    product = Product.fifth
    render json: product
  end
end
