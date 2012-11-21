class Agenda < ActiveRecord::Base
  attr_accessible :content, :date_begin, :date_end, :image, :title

  validates :content, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :date_end, presence: true
  validates :date_begin, presence: true	
  validates :image, presence: true
end
