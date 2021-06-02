class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :current_user, only: [:edit, :update, :destroy]

    def index
        if params[:movie_id] && @movie = Movie.find_by_id(params[:movie_id])
            @reviews = @movie.reviews
        else
            @reviews = Review.order_by_date
        end
    end

    def new
        if params[:movie_id] && @movie = Movie.find_by_id(params[:movie_id])
            @review = @movie.reviews.build
        else
            @review = Review.new
        end
    end

    def create
        @review = current_user.reviews.build(review_params)
        @review.user = current_user
        if @review.save
            redirect_to reviews_path
        else
            render :new
        end
    end

end