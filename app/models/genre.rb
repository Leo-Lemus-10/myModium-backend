class Genre < ApplicationRecord
    has_many :categories
    has_many :platforms, through: :categories
    has_many :users, through: :platforms
    
    belongs_to :media
end
