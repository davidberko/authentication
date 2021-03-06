class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :like, :image
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :likes, join_table: :posts_users, association_foreign_key: :user_id, class_name: User
end
