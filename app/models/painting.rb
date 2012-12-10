class Painting < ActiveRecord::Base
  attr_accessible :name, :image, :gallery_id
  belongs_to :gallery
  mount_uploader :image, ImageUploader

  before_create :default_name

  def default_name
    self.name ||= File.basename(image.filename, '.*').titleize if image
  end
end