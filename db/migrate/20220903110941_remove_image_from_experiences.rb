class RemoveImageFromExperiences < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :image, :string
  end
end
