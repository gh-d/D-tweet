class User < ApplicationRecord
  has_secure_password
  
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  # アソシエーションなし
  # def posts
  #   return Post.where(user_id: self.id)
  # end
  has_many :posts, dependent: :destroy
  has_many :comments
  # アソシエーションあり
end
