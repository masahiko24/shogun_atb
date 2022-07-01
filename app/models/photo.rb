class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :nickname, presence: true
  validates :title, presence: true
  validates :memo, presence: true
  validates :image, presence: true
end
