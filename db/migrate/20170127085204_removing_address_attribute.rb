class RemovingAddressAttribute < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :address, :float

  end
end
