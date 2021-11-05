class Playlist < ApplicationRecord
  validates :name, :genre, :description, presence: true
end
