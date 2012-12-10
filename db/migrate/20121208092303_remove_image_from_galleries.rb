class RemoveImageFromGalleries < ActiveRecord::Migration
  
  def change
  	remove_column :galleries, :image
  end
end
