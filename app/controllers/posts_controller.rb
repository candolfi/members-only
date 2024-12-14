class PostsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
                user: current_user,
                content: params[:post][:content]
    )

    if @post.save
        redirect_to root_path
    else
        render :root_path, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  private

    def post_params
        params.require(:post).permit(:content)
    end
end
