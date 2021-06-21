class Category < ApplicationRecord
    belongs_to :genre

    delegate :media, to: :genres

    belongs_to :platform

    delegate :users, to: :platforms
end

