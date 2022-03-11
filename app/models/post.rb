class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :shoe

  def shoe_review
    "#{self.shoe.name}: Reviews from our loyal customers; => Heres a rating from #{self.user.name}..... #{self.rating}"
    end
 
end