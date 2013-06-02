ActiveAdmin.register Trick do
  index do
    column :title
    column :image
    column :description
    default_actions
  end

  filter :email

  form(:html => {multipart: true}) do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :image, as: :file
      f.input :description
    end
    f.actions
  end
end
