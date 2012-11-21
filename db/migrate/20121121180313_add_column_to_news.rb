class AddColumnToNews < ActiveRecord::Migration
  def change
  	add_attachment :news, :image
  end
end
