class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # debugger
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #handle a successful save
    else 
      render 'new' 
    end
  end
  
  private 
    #defining strong parameters
    def user_params
      params.require(:user).permit(:name, :emal, :password, :password_confirmation)
    end
end

