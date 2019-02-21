class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @users = User.all.sample(6)
  end

  def user_index
    @users = User.all
  end

  def user_show
    @user = User.find(params[:id])
    @services = Service.where(user_id: current_user.id)
  end
end
