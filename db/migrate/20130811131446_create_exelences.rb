class CreateExelences < ActiveRecord::Migration
  def change
    create_table :exelences do |t|
      t.string :title
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
