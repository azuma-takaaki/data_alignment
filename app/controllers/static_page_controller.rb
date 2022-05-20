class StaticPageController < ApplicationController
  def top
    @posts = Post.all
  end
end
