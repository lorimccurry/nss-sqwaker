class Squeek < ActiveRecord::Base
  validates_presence_of :body, message: "Your squeek can't be blank"
end
