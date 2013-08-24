class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :title
      t.date :expired_date
      t.text :basic_carrier
      t.text :requirement

      t.timestamps
    end
  end
end
