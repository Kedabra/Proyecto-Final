class UsersController < ApplicationController

  def profile

  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welcome_email(@user).deliver_now

    end
  end
end
