module Api
  module V1
    class PostsController < ApplicationController

      def index
        posts = Post.all
        render json: {
          status: 'SUCCESS',
          data: posts
        }
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: { status: 'SUCCESS', data: post }
        else
          render json: { status: 'ERROR', data: post.errors }
        end
      end

      private

      def post_params
        params.require(:post).permit(:title, :description)
      end
    end
  end
end
