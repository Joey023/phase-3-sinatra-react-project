class Shoe < ActiveRecord::Base
  has_many :posts
  has_many :users, through: :posts

  def self.lowest_priced
    self.order(:price).first
  end
  
  def self.highest_priced
    self.order(:price).last
  end
end