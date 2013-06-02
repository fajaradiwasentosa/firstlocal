ActiveAdmin.register Profile do
  index do
    column :name
    column :logo
    column :description
    column :city
    column :address
    column :email
    column :phone
    column :zipcode
    default_actions
  end

  filter :name

  form(:html => {multipart: true}) do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :logo, as: :file
      f.input :description
      f.input :city
      f.input :address
      f.input :email
      f.input :phone
      f.input :zipcode
    end
    f.actions
  end
end
