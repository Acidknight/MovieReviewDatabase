class User < ApplicationRecord

    has_secure_password

    has_many :movies
    has_many :reviews
    has_many :genres, through: :movies

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true

end