class Gif < ApplicationRecord
  has_many :gif_tags
  has_many :tags, through: :gif_tags

  validates :file, file_size: { less_than: 10.megabytes }

  mount_uploader :file, GifUploader
end
