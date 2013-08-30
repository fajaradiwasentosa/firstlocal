class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_column :galleries, :album_id, :integer
  end
end
