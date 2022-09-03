class ChangeAddressUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :address, :city
  end
end
