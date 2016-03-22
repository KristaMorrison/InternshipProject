class AdminsController < ApplicationController
  # before_action :set_admin, only: [:profile]

  def new
  end

  def create
  end

  private



  # def set_admin
  #   @admin = Admin.find(params[:id])
  # end

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password)
  end


end
