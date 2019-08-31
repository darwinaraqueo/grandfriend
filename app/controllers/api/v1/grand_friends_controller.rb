module Api
  module V1
    class GrandFriendsController < ApplicationController
      def index
        render json: GrandFriend.all
      end

    end
  end
end
