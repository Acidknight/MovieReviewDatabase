class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :current_user, only: [:edit, :update, :destroy]

end