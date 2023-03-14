class FrieendsController < ApplicationController


    def change
        
        Frieend.where(rid: [current_user, params[:id]]).update(stattus: true)
        flash[:notice] = "invite link accepted"
        redirect_to root_path

    end

    def find

        @friend = current_user.frieends.new(rid: params[:id], stattus: false)
        @friend.save!
        flash[:notice] = "invite link proccessed"
        redirect_to root_path

    end

    def pending

        @friends = Frieend.where(rid: [current_user, params[:id]], stattus: false)

    end

    def friend
    
        @friends = Frieend.where(rid: [current_user, params[:id]], stattus: true)
   
    end

end
