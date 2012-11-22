class AddColumnAvatar < ActiveRecord::Migration
  def change 
  	add_column :news, :avatar, :string
  end
end
