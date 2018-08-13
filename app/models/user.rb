class User < ApplicationRecord
  # has_one_attached :avatar
  mount_uploader :avatar, AvatarUploader
  serialize :avatars, JSON # If you use SQLite, add this line.
end
