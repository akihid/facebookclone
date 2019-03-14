class Post < ApplicationRecord
  validates :title , presence:true , length:{maximum:20}
  validates :content , presence:true, length:{maximum:200}
  belongs_to :user
end
