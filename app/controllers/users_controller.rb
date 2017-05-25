class UsersController < ApplicationController
  def index
  
  end
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to success_path
    else
      render new_user_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email,
                                   :company_type, :company_name, :ref_example, :deadline, :money)
    end
end
