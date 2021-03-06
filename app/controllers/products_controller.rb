class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.create(product_params)
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :image)
  end
end
