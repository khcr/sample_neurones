class New < ActiveRecord::Base

  	attr_accessible :title, :content, :date_expiration, :avatar

  	validates :title, presence: true, length: { maximum: 50 }
  	validates :content, presence: true
  	validates :date_expiration, presence: true
end
