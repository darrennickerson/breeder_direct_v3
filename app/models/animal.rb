class Animal < ApplicationRecord
  belongs_to :user
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many_attached :images
  
  
  
end
