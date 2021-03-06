class SignupController < ApplicationController
	def index
		@users = User.with_attached_avatar
	end

  def new
    @user = User.new
  end

	def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    redirect_to signup_path(user)
  end

  def show
  	@user = User.find(params[:id])
  end

  private
	  def user_params
	    params.require(:user).permit(:name, :avatar)
	  end
end
