class AdminsController < ApplicationController

  def new
  end

  def create

  end

  private

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password)
  end


end
