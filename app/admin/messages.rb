ActiveAdmin.register Message do
  index do
    column :name
    column :email
    column :subject
    column :message
    default_actions
  end

  filter :email

  form(:html => {multipart: true}) do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :subject
      f.input :message
    end
    f.actions
  end
end
