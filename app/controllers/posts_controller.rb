class PostsController < ApplicationController

    before_action :require_login

  def new
  end

  def create
  end

  def index
  end

  private

  def require_login
    if current_user.logged_in?
        #insert code
    else
        redirect_to login_path
    end
  end
end
