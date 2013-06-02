ActiveAdmin.register Product do
  index do
    column :name
    column :width
    column :height
    column :long
    column :image
    column :volume
    column :brick_wall
    column :block_per_vallet
    column :weight_per_vallet
    column :description
    default_actions
  end

  filter :name

  form(html: {multipart: true}) do |f|
    f.inputs "Admin Details" do
      f.file_field :image
      f.input :name
      f.input :width
      f.input :height
      f.input :long
      f.input :image, as: :file
      f.input :volume
      f.input :brick_wall
      f.input :block_per_vallet
      f.input :weight_per_vallet
      f.input :description
    end
    f.actions
  end
end
