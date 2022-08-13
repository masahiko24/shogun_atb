class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
<<<<<<< Updated upstream
=======
  has_many :favarites, dependent: :destroy
  has_many :favarited_photos, through: :favarites, source: :photo
>>>>>>> Stashed changes

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
<<<<<<< Updated upstream
=======

  def already_favarited?(photo)
    favarites.exists?(photo_id: photo.id)
  end
>>>>>>> Stashed changes
end
