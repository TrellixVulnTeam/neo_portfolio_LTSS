module Api
  module V1
    class PostsController < ApplicationController
      before_action :set_post, only: [:show, :destroy]

      def index
        posts = Post.all
        render json: {
          status: 'SUCCESS',
          data: posts
        }
      end

      def show
        render json: { status: 'SUCCESS', data: @post }
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: { status: 'SUCCESS', data: post }
        else
          render json: { status: 'ERROR', data: post.errors }
        end
      end

      def destroy
        if @post.destroy
          render json: { status: 'SUCCESS' }
        else
          render json: { status: 'ERROR', data: @post.errors }
        end
      end

      private

      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:title, :description)
      end
    end
  end
end
