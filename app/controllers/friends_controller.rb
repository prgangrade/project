class FriendsController < ApplicationController
    def index
        @friends = (current_user).pendings
        
    end
end
