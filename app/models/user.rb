class User < ActiveRecord::Base
  has_many :posts
  has_many :shoes, through: :posts 

  def delete_ratings(shoe)
    delete_ratings_array = self.posts.find {|po| po.shoe_id == shoe.id}
    delete_ratings_array.destroy
  end

  def add_rating(shoe, rating)
    Post.create(user_id: self.id, shoe_id: shoe.id, rating: rating)
end