class CreateMyExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :my_experiences do |t|
      t.boolean :done
      t.references :user, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
