class PostsController < ApplicationController
    before_action :authenticate_user!

    def index
      @posts = current_user.posts.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
      @post = current_user.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to current_user, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
    end

    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content)
    end
end
