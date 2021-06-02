class Review < ApplicationRecord
    belongs_to :movie
    belongs_to :user
  
    validates :comment, :rating, presence: true
end