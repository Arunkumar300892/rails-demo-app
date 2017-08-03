class Image < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  # Associations
  belongs_to :gallery
end
