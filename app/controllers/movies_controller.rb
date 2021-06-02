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

    def create 
        @movie = current_user.movies.build(movies_params)
        if @movie.save 
            redirect_to movies_path(@movie)
        else 
            render :new
        end
    end

end