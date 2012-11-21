class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :title
      t.string :content
      t.datetime :date_begin
      t.datetime :date_end
      t.string :image

      t.timestamps
    end
  end
end
