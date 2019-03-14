class User < ApplicationRecord
  validates :name , presence:true , length:{maximum: 20}
  validates :email , presence:true , length:{maximum: 200},
  format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } , uniqueness: true
  before_validation{email.downcase}
  has_secure_password
  validates :password, length:{ minimum: 6 }
  has_many :post
  has_many :favorites , dependent: :destroy
end
