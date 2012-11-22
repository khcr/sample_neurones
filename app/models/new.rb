require 'carrierwave/orm/activerecord'

class New < ActiveRecord::Base

  	attr_accessible :title, :content, :date_expiration, :avatar

  	mount_uploader :avatar, AvatarUploader

  	validates :title, presence: true, length: { maximum: 50 }
  	validates :content, presence: true
  	validates :date_expiration, presence: true
end
