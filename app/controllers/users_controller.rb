class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reviews= @user.reviews.last(5)
  end


 

  private

def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:product).permit(:admin,:firstname,:lastname, :email, :password, :current_password)
  end
end
