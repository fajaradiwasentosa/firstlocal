class CreateTipTricks < ActiveRecord::Migration
  def change
    create_table :tip_tricks do |t|
      t.string :image
      t.string :title
      t.string :author
      t.text :description

      t.timestamps
    end
  end
end
