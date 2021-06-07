class Movie < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    before_destroy :check_for_reviews
    validates :title, :release_year, :summary, :genre, presence: true

    scope :alpha, -> { order('LOWER(title)') }

    def self.search(q)
        Movie.where("title LIKE ?", "%#{q}%").alpha
    end

    def check_for_reviews
        if reviews.count > 0
            throw(:abort)
        end
    end


end