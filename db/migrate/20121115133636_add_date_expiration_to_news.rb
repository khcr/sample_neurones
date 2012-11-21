class AddDateExpirationToNews < ActiveRecord::Migration
  def change
    add_column :news, :date_expiration, :datetime
  end
end
