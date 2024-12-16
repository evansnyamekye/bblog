# UsersController is a controller for users.
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
