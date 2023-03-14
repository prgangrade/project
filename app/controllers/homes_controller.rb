class HomesController < ApplicationController
  def index
  
    @users = User.all
    
  end


  def search

    @searches = User.where("email LIKE ?","%" + params[:email] + "%")

  end

  
end
