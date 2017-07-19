class Dance < ApplicationRecord

  mount_uploader :dance, LiveUploader

  belongs_to :user
  validates :user_id, :title, :dance, presence: true


end
