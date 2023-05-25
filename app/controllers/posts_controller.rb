class PostsController < ApplicationController
    before_action :set_posts, only: [:edit, :update, :destroy]

    def index
        @posts = Post.all
        puts 1.0
    end

    def new 
        @post = Post.new
    end

    def edit

    end

    def update
        if @post.update(post_params)
            redirect_to posts_path
        else
            render :edit
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end


    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path
        else
            render :new
        end
    end

    def set_posts
        @post = Post.find(params[:id])

    end

    private

    def post_params
        params.require(:post).permit(:title, :content)
    end

end
