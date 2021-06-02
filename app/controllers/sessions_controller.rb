class SessionsController < ApplicationController

    def home 
        @user = User.find_by_id(params[:id])
    end

end