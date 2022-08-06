class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favarites, dependent: :destroy

  has_one_attached :image

  validates :nickname, presence: true
  validates :title, presence: true
  validates :memo, presence: true
  validates :image, presence: true
  
end
