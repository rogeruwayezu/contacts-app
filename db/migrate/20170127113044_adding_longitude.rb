class AddingLongitude < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :longitude, :float
  end
end
