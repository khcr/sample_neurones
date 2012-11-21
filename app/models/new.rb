class New < ActiveRecord::Base
  attr_accessible :title, :content, :date_expiration, :image

  has_attached_file :image, :styles => { :thumb => "x30" }

  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  validates :date_expiration, presence: true
end
