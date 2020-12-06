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
    end
  end
end
