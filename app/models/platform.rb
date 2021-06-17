class Platform < ApplicationRecord
    has_many :categories
    has_many :genres, through: :categories
    has_many :media, through: :genres

    belongs_to :users
end
