class Animal < ApplicationRecord
  belongs_to :user
  has_many :logs
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many_attached :images
  
  private 
  
  def slug_chooser
    if :name.nil?
      :code
    else
      :name
    end
    
  end 
  
end
