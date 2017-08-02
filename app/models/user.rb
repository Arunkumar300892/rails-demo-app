class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  # Associations
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile, allow_destroy: true
  has_many :galleries, dependent: :destroy
  accepts_nested_attributes_for :galleries, allow_destroy: true

  # Validations
  validates :username, :presence => true, uniqueness: {
    :case_sensitive => false
  }

  # to retrive full name
  def name
    [self.profile.first_name, self.profile.last_name].join(' ')
  end

end
