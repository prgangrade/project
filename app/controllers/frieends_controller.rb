class FrieendsController < ApplicationController
    def index
        @friends = current_user.frieends
        
    end
    def new
        @friend = Frieend.new
        @friend.build_user

    end
    def create
        
        byebug
        @friend = current_user.frieends.create(email: params[:email])
        if @friend.save!
            redirect_to root_path
        end
    end
    def find
       
    end
end
