class CreateExcellences < ActiveRecord::Migration
  def change
    create_table :excellences do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
