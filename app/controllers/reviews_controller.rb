class ReviewsController < ApplicationController
before_action :authenticate_user!, only: [:new, :update, :destroy, :create]

  expose(:review)
  expose(:product)

  def edit
  end 
   
  def create
   @review = current_user.reviews.new(review_params)
    
    if @review.save
      
      product.reviews << @review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating,:author)
    end
end
