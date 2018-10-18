class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!


  def index
    #@products = Product.all
    @products = policy_scope(Product).order(created_at: :asc)
  end

  def show
    authorize @product
  end

  def new
    @product = Product.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
    authorize @product
  end

  def edit

  end

  def create
    @product = Product.new(product_params)
    authorize @product
  end

  def update

  end

  def destroy

  end

  private

  def product_params
    params.require(:product).permit(:sku, :name, :category_id, :photo_url)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
