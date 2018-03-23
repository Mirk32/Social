class UserDecorator < ApplicationDecorator
  delegate_all

  def full_name
    "#{first_name&.capitalize} #{last_name&.capitalize}"
  end

  def user_avatar_path
    avatar&.url || '/avatars/default.png'
  end
end
