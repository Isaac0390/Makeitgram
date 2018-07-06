class UsersController < ApplicationController
  def profile
    @user = User.getProfile(params[:username])
  end
end
