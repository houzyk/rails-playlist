class Playlist < ApplicationRecord
  validates :name, :genre, :description, :photo, presence: true
  has_one_attached :photo
end
