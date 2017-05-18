class Tag < ApplicationRecord
  has_many :gif_tags
  has_many :gifs, through: :gif_tags

  validates :name, uniqueness: true
  before_save :normalize_name

  private
  def normalize_name
    self.name = name.downcase
  end
end
