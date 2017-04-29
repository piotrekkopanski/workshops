class ProductsController < ApplicationController
before_action :authenticate_user!, only: [:new, :destroy, :create]
before_action :correct_user, only: [ :edit, :update, :destroy]
before_action :set_product , only: [:show, :edit, :update, :destroy ,:create]

def current_user?(user)
    user == current_user
  end
def correct_user
     
    @product = Product.find(params[:id]) 
    unless @product.user == current_user
      redirect_to category_product_path, :flash => { :error => "You are not allowed to edit this product." }

    end
  end 
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
    @products = Product.all
  end

  def show
  
  @product = Product.find(params[:id])
  @reviews = @product.reviews
  @table = @reviews.map {|review| review.rating}
  @average = @table.inject(0.0) { |sum, el| sum + el }/ @table.size
  product.average_rating = '%.1f'% @average
  product.save
  end

  def new
  end

  def edit
  end

  def create
    @product = current_user.products.new(product_params)

    if @product.save
      category.products << @product
      redirect_to category_product_url(category, @product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    
    if @product.update(product_params)
      redirect_to category_product_url(category, @product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
  end

  private

   def set_product
      @product = Product.find(params[:product_id])
    end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id,:average_rating,:user_id)
  end
end
