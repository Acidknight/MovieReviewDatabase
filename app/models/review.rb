class Review < ApplicationRecord
    belongs_to :movie
    belongs_to :user
  
    validates :comment, presence: true

    def self.order_by_date
        @review = Review.order('created_at DESC')
    end
      
end