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

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:is_discounted?])
  end

  def index
    products = Product.all
    render json: products
  end

  # def create
  #   product = Product.new(
  #     name: "Dial Antibacterial Hand Soap",
  #     price: 4,
  #     image_url: "https://m.media-amazon.com/images/I/712W3qxkUvL._SL1500_.jpg",
  #     description: "Antibacterial hand soap. Fights 99.9$ of germs. Gold.",
  #   )
  # end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product destroyed" }
  end
end
