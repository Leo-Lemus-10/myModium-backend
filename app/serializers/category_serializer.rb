class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :genre

  belongs_to :genre
  belongs_to :platform

  delegate :media, to: :genres
  delegate :users, to: :platforms
end
