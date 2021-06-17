class Category < ApplicationRecord
    belongs_to :genres

    delegate :media, to: :genres

    belongs_to :platforms

    delegate :users, to: :platforms
end

