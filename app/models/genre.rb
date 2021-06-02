class Genre < ApplicationRecord
    has_many :movies, inverse_of: :movie
    has_many :users, through: :movies
  
  
    def self.find_by_name(name)
      Genre.find_by(name: name)
    end

end