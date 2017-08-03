class Gallery < ApplicationRecord
  # Associations
  belongs_to :user
  has_one :image, dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true
end
