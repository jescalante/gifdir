require "carrierwave"

class Gif < ApplicationRecord
  validates :url, file_size: { less_than: 10.megabytes }

  storage :aws

  def size_range
    1..10.megabytes
  end
end
