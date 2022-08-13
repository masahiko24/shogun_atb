class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favarites, dependent: :destroy
  has_many :favarited_photos, through: :favarites, source: :photo

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def already_favarited?(photo)
    favarites.exists?(photo_id: photo.id)
  end
end
