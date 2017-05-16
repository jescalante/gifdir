class Gif < ApplicationRecord
  validates :url, file_size: { less_than: 10.megabytes }

  mount_uploader :file, GifUploader
end
