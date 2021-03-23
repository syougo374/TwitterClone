class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(content: params[:posts][:content])
    redirect_to new_post_path
  end

  private
  def post_params
    params.require(:posts).permit(:content)
  end

end
