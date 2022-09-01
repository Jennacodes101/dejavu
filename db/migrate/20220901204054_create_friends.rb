class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.boolean :accepted
      t.references :user, null: false, foreign_key: true
      t.references :friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
