class Music < ApplicationRecord

  mount_uploader :music, MusicUploader


  belongs_to :user

  validates :user_id, presence: true





end
