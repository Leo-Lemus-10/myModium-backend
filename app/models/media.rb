class Media < ApplicationRecord
    has_many :genres
    has_many :categories, through: :genres
    has_many :platforms, through: :categories
    has_many :users, through: :platforms
end
