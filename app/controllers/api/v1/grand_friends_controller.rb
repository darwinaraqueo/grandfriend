module Api
  module V1
    class GrandFriendsController < ApplicationController
      def index
        render json: GrandFriend.all, each_serializer: GrandFriendSerializer
      end

    end
  end
end
