class Profile < ApplicationRecord
  # Associations
  belongs_to :user

  validates :phone, :presence => true, uniqueness: {
    message: "already exists"
  }
end
