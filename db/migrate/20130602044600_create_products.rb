class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.integer :long
      t.integer :width
      t.integer :height
      t.integer :block_per_vallet
      t.integer :weight_per_vallet
      t.integer :volume
      t.integer :brick_wall
      t.text :description

      t.timestamps
    end
  end
end
