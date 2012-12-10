class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :gallery_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
