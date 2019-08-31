module Api
  module V1
    class UsersController < ApplicationController

      def show
        render json: user, serializer: UserSerializer
      end

      private

      def user
        @user ||= User.find(params.require(:id))
      end
    end
  end
end
