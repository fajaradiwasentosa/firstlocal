class CreatePratamaProfiles < ActiveRecord::Migration
  def change
    create_table :pratama_profiles do |t|
      t.string :logo
      t.string :name
      t.string :address
      t.text :about
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
