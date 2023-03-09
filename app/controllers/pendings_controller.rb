class PendingsController < ApplicationController
#     before_action :validify, only: [:index]

# private
# def validify
#     byebug
#     @pending = (current_user).pendings.find(params[:id])
#     @pending.update(status:"true")
#     redirect_to root_path

# end
    def index
        
        @pendings = (current_user).pendings
    end
    def show
    end
    def new
    @pending = Pending.new()
    @pending.build_user
    end
    def create
    @pending = (current_user).pendings.create(email: params[:email])
    if @pending.save!
        redirect_to root_path
    end
    end
    # private
    # def pending_params
    #     params.require(:pending).permit(:email)
    # end
end
