class StaticPagesController < ApplicationController
  def home_page
    redirect_to posts_path
  end

  def contact; end
end
