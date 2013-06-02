class AddLocationDescriptionToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :location_description, :text
  end
end
