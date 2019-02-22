class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @users = User.where.not(category: nil).sample(6)
  end

  def user_index
    @users = User.where.not(category: nil)
  end

  def user_show
    @user = User.find(params[:id])
    @services = Service.where(user_id: params[:id])
  end
end
