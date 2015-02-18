class UsersController < ApplicationController

  def show
    @trips = Trip.where(user_id: current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thanks for signing up!"
    else
      render "new"
    end
  end 

  private 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, trips_attributes: [ :name, :user_id ])
  end
end