class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_parameter)
    if @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def post_parameter
    params.require(:post).permit(:content)
  end
end
