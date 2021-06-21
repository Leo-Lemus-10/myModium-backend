class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :prof_pic, :bio, :liked_media, :platforms, :categories, :genres, :media

  has_many :platforms
  has_many :categories, through: :platforms
  has_many :genres, through: :categories
  has_many :media, through: :genres
end
