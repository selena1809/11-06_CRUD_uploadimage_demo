class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(friend_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
     render action: 'new'
   end
 end

def show
  @user = User.find(params[:id])
end

def destroy_avatar
  @user = User.find(params[:id])
  @user.avatar = nil
  @user.save
  redirect_to @user
end
 private

 def friend_params
  params.require(:user).permit(:avatar, :name)
end
end
