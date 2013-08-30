ActiveAdmin.register Album do

	index do                            
    column :name
    column :description do |album|
      album.description.html_safe
    end             
    default_actions                   
  end

  show do |carrier|
    attributes_table do
      row :name  
      row :description do |album|
        album.description.html_safe
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :name
      f.input :description, :as => :ckeditor
    end
    f.buttons
  end

  filter :name
  filter :description 
  
end