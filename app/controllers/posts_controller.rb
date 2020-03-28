class PostsController < ApplicationController
    before_action :authenticate_user!, :except => [:index, :show]

    def index
        @posts = Post.all.order('created_at DESC')
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render "new"
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        if @post.save
            redirect_to @post
        else
            render "edit"
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            redirect_to root_path
        else
            render @post
        end
    end

private
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
