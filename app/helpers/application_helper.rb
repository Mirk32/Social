module ApplicationHelper
  def nav_link(link_text, path, options = {})
    options[:class] ||= ''
    options[:class] << ' active' if path.delete('/') == request.original_url.split('/').last ||
                                    path == request.original_url.last # Last condition for root_path
    link_to(link_text, path, options)
  end

  def show_footer?
    !%w[sign_up sign_in].include? request.original_url.split('/').last
  end

  def random_background
    '/avatars/' + Dir['public/avatars/*'].sample.split('/').last
  end
end
