class Movie < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    validates :title, :release_year, :summary, presence: true

    scope :alpha, -> { order('LOWER(title)') }

    def self.search(q)
        InventoryList.where("title LIKE ?", "%#{q}%").alpha
    end


end