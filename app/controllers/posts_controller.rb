class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_post ,only: [:show ,:edit ,:update ,:destroy]
  before_action :move_to_index ,only: [:edit, :update, :destroy]

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

  def show
  end

  def edit
    
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id), method: :get
    else
      render  :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:image ,:ramen_name ,:shop_name ,:place ,:price ,:soup_id ,:noodle_id ,:caption).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path unless current_user.id == @post.user_id
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
end
