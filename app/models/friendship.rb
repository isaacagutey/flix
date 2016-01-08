class Friendship < ActiveRecord::Base
  belongs_to :follower, class_name: "User", foreign_key: :user_id
  belongs_to :leader, class_name: "User", foreign_key: :friend_id
end