class Blog < ApplicationRecord

  belongs_to :user
  validates :user_id, :title, :contents, presence: true





end
