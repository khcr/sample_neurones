class Removepaperclip < ActiveRecord::Migration
  	change_table :news do |t|
		t.remove :image_file_name, :image_content_type, :image_file_size, :image_updated_at
	end
end
