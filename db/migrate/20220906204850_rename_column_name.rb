class RenameColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :review, :content
  end
end
