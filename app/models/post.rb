class Post < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploaders :files, FileUploader
  belongs_to :user
  has_many :comments

  scope :news, -> { where(post_type: 'News') }
  scope :regular_posts, -> { where.not(post_type: 'News') }

  validates :content, :rating, :title, presence: true
end
