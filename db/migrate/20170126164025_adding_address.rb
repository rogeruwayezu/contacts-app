class AddingAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :address, :float
  end
end
