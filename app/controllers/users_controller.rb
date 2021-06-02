class UsersController < ApplicationController

    def index
        @user = User.find_by_id(params[:id])
    end

    def new
        @user = User.new
    end

end
