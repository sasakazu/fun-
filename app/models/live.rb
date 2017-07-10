class Live < ApplicationRecord

  mount_uploader :live, LiveUploader

  belongs_to :user
  validates :user_id, presence: true





end
