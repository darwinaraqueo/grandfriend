module Api
  module V1
    class VisitsController < ApplicationController

      def create
        visit = Visit.create!(create_params)
        visit.code_visit = code_visit
        visit.save!
        render json: { code_visit: code_visit}
      end

      private

      def code_visit
        str = Digest::MD5.hexdigest(Time.now.to_s)
        str.chars.last(7).join.upcase
      end

      def create_params
        params.require(:visit).permit(:user_id, :grand_friend_id)
      end
    end
  end
end
