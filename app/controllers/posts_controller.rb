class PostsController < ApplicationController

    before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
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
end
