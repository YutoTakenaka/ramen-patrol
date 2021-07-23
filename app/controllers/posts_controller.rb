class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:image ,:ramen_name ,:shop_name ,:place ,:price ,:soup_id ,:noodle_id ,:caption).merge(user_id: current_user.id)
  end
end
