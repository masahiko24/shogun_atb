class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :nickname, presence: true
  validates :title, presence: true
  validates :memo, presence: true

end
