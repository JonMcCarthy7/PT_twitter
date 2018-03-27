class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets
  serialize :following, Array

  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true
end