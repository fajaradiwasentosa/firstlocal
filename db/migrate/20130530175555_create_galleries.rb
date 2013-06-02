class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
