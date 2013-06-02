ActiveAdmin.register Gallery do
  index do
    column :description
    column :image
    default_actions
  end

  filter :email

  form(:html => {multipart: true}) do |f|
    f.inputs "Admin Details" do
      f.input :image, as: "file"
      f.input :description
    end
    f.actions
  end
end
