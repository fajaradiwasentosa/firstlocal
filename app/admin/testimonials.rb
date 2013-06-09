ActiveAdmin.register Testimonial do
  index do
    column :content
    column :name
    default_actions
  end

  filter :name
end
