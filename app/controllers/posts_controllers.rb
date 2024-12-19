class PostsController < ApplicationController
    before_action :set_user
    before_action :set_post, only: %i[show edit update destroy]
  
    def index
      @posts = @user.posts
    end
  
    def show
    end
  
    def new
      @post = @user.posts.build
    end
  
    def create
      @post = @user.posts.build(post_params)
      if @post.save
        redirect_to [@user, @post], notice: 'Post was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @post.update(post_params)
        redirect_to [@user, @post], notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @post.destroy
      redirect_to user_posts_path(@user), notice: 'Post was successfully destroyed.'
    end
  
    private
  
    def set_user
      @user = User.find(params[:user_id])
    end
  
    def set_post
      @post = @user.posts.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end
