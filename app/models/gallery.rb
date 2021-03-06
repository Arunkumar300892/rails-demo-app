class Gallery < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates_presence_of :name
end
