class GifTag < ApplicationRecord
  belongs_to :gif
  belongs_to :tag
end
