class MoviesController < ApplicationController

    before_action :redirect_if_not_logged_in

    def index
        if params[:q]
            @movies = Movie.search(params[:q])
        else
            @movies = Movie.alpha.all
        end
    end

    def new
        @movie = Movie.new
    end

end