class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_one_attached :image
         has_many :animals
         
         extend FriendlyId
  friendly_id :username, use: :slugged


end
