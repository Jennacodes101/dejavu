class ChangeNameOftype < ActiveRecord::Migration[6.1]
  def change
  rename_column :experiences, :type, :exp_type
  end
end
