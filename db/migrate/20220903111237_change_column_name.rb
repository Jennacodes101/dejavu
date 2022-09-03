class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :home, :address
  end
end
