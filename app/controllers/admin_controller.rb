# app/controllers/admin_controller.rb
class AdminController < ApplicationController
  def delete_user
    user = User.find_by(email: params[:email])
    if user
      user.destroy
      render plain: "User with email #{params[:email]} deleted."
    else
      render plain: "User not found."
    end
  end
end