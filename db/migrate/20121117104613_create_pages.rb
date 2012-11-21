class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end
