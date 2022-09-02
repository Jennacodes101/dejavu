class Add < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :image, :string
    add_column :users, :birthday, :date
    add_column :users, :home, :string
    add_column :users, :bio, :text
    add_column :users, :phone_number, :string

  end
end
