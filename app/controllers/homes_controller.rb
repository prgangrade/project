class HomesController < ApplicationController
  def index
    @users = User.all
  end


  def search
  @search = User.find_by(email: params[:email])
  end
end
