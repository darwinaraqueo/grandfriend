module GrandFriends
  class ShowSerializer < GrandFriendSerializer
    attributes :id, :description, :intereses, :considerations, :last_visit
  
   
    def last_visit
      object.visits.last
    end
  end
end