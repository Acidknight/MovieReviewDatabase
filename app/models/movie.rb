class Movie < ApplicationRecord
    belongs_to :user
    belongs_to :genre
    has_many :reviews
    validates :title, :release_year, :summary, presence: true


end