class Photo < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  validates :nickname, presence: true
  validates :title, presence: true
  validates :memo, presence: true
  validates :images, presence: true

end
