class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :grand_friend
end