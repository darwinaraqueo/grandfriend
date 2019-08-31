module Api
  module V1
    class GrandFriendsController < ApplicationController
      def index
        render json: GrandFriend.all, each_serializer: GrandFriendSerializer
      end

      def show
        render json: grand_friend, serializer: GrandFriends::ShowSerializer
      end

      private

      def grand_friend
        @grand_friend ||= GrandFriend.find(params.require(:id))  
      end
    end
  end
end
