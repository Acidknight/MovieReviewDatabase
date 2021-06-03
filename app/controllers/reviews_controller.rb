class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :current_user, only: [:edit, :update, :destroy]

    def index
        if params[:imovie_id] && @movie = Movie.find_by_id(params[:movie_id])
            @reviews = @movie.reviews
        elsif current_user
            @reviews = current_user.reviews.all
        else
            @error = "Movie doesn't exist" if params[:movie_id]
            @comments = Review.all
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
        @movie = Movie.find(params[:review][:movie_id])
        @review = current_user.reviews.new(review_params)
        if @review.save
            redirect_to movie_path(@movie)
        else
            @error = @comment.errors.full_messages
            render :new
        end
    end

    def show
        if @review.blank?
            redirect_to reviews_path
        end
    end

    def edit

    end

    def update
        if @review.update(review_params)
            redirect_to review_path(@review)
        else
            render :edit
        end
    end

    def destroy
        @review.delete
        redirect_to reviews_path
    end

    private 

    def review_params
        params.require(:review).permit(:comment, :movie_id, :user_id)
    end

end