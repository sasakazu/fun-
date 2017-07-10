class Picture < ApplicationRecord


  mount_uploader :picture, ImageUploader

  belongs_to :user
  validates :user_id, presence: true




end
