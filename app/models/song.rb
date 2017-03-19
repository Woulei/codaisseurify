class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true, length: {maximum: 50}
  validates :album, length: {maximum: 50}
  validates :release_date, presence true
end
