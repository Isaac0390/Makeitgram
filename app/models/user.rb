class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  # Virtual fields
  def name
    "#{firstname} #{lastname}"
  end

  # getProfile
  def self.getProfile(username)
    find_by(username: username)
  end
end