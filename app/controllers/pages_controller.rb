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
  end
end
