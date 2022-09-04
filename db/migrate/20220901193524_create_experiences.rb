class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :exp_type
      t.string :subtype
      t.string :country
      t.string :city
      t.string :address
      t.string :contact
      t.string :url
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
