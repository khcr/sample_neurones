class CreateTableGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
