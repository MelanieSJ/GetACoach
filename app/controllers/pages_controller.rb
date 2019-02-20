class PagesController < ApplicationController
  def home
    @users = User.all.sample(6)
  end
end
