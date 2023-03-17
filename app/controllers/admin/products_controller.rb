class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    if !current_user.admin?
      redirect_to root_path, notice: "您的權限不足"
      return
    end
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to admin_products_path, notice: "商品新增完成"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(params_product)
      redirect_to admin_products_path, notice: "商品更新完成"
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path, notice: "商品已經刪除"
  end

  private

  def params_product
    params.require(:product).permit(:name, :price, :description, :store_id, :subtitle, :category, :size)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
