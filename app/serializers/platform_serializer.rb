class PlatformSerializer < ActiveModel::Serializer
  attributes :id, :name, :media
  
  has_many :categories
  has_many :genres, through: :categories
  has_many :media, through: :genres
  belongs_to :user
end
