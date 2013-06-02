class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.string :city
      t.string :address
      t.integer :zipcode
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
