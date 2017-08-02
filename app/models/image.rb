class Image < ApplicationRecord

  mount_uploaders :avatars, AvatarUploader

  # Associations
  belongs_to :gallery
end
