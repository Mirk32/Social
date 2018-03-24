class Post < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploaders :files, FileUploader
  belongs_to :user
  has_many :comments
  validates :content, :rating, :title, presence: true
end
