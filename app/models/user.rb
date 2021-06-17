class User < ApplicationRecord
    has_many :platforms
    has_many :categories, through: :platforms
    has_many :genres, through: :categories
    has_many :media, through: :genres
end
