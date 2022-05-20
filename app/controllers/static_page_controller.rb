class StaticPageController < ApplicationController
  def top
    @posts = Post.all.includes(:user)
  end
end
