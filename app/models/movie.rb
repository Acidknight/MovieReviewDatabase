class Movie < ApplicationRecord
    belongs_to :user
    belongs_to :genre
    has_many :reviews
    validates :title, :release_year, :summary, presence: true

    scope :alpha, -> { order('LOWER(name)') }

    def self.search(q)
        InventoryList.where("name LIKE ?", "%#{q}%").alpha
    end


end