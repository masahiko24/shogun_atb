class Favarite < ApplicationRecord
  belongs_to :photo
  belongs_to :user

  validates_uniquenss_of :photo_id, scope: :user_id
end
