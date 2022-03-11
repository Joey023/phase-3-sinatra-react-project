class User < ActiveRecord::Base
  has_many :posts
  has_many :shoes, through: :posts 
end