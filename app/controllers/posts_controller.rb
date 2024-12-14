class PostsController < ApplicationController

    before_action :authenticate_user!

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
        render :new, status: :unprocessable_entity
    end
  end

  def index
  end

  private

#   def require_login
#     if user_signed_in?
#       redirect_to root_path
#     else
#         redirect_to root_path
#     end
#   end

    def post_params
        params.require(:post).permit(:title, :content, :author)
    end
end
