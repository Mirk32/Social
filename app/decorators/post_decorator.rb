class PostDecorator < ApplicationDecorator
  delegate_all
  def main_image_path
    images&.first&.url || 'news-default.jpg'
  end

  def news?
    post_type == 'News'
  end

  def author
    user.decorate.full_name
  end
end
