class Gif < ApplicationRecord
  validates :file, file_size: { less_than: 10.megabytes }

  mount_uploader :file, GifUploader
end
