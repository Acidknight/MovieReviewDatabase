class MoviesController < ApplicationController

    before_action :redirect_if_not_logged_in

    def index
        if params[:q]
            @inventory_lists = InventoryList.search(params[:q])
        else
            @inventory_lists = InventoryList.alpha.all
        end
    end

end