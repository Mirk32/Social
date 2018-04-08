class User < ApplicationRecord
  mount_uploader :avatar, ImageUploader
  store_accessor :social_links

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, :room_number, :state_number, presence: true

  def admin?
    false
  end

  def confirmation_required?
    false
  end
end
