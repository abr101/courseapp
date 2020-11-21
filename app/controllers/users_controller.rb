class UsersController < ApplicationController
  def index
  	@users = User.all
  end
def create
  @user = User.new(params[:user])
  if @user.save
    sign_in @user
    flash[:success] = "Welcome!"
    redirect_to @user
  else
    render 'new'
  end
end

end
