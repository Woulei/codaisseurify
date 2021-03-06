class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, length: {maximum: 50}
  validates :describtion, presence: true, length: {maximum: 500}
  validates :country, presence: true, length: {maximum: 50}
end
