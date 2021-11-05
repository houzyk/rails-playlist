class Playlist < ApplicationRecord
  validates :name, :genre, :description, presence: true
  has_one_attached :photo
end
