class Movie < ApplicationRecord
  has_many :lists
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true, allow_blank: false
  validates :overview, presence: true
end
