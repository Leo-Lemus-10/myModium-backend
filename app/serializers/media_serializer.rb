class MediaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :picture

  has_many :genres
  has_many :categories, through: :genres
  has_many :platforms, through: :categories
  has_many :users, through: :platforms
end
