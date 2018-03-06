class User < ApplicationRecord
  mount_uploader :avatar, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, :room_number, :state_number, presence: true

  def admin?
    false
  end
end
