ActiveAdmin.register Gallery do

  index do                            
    column :title               
    column :image do |gallery|
      image_tag gallery.image
    end   
    column :description do |gallery|
      gallery.description.html_safe
    end             
    default_actions                   
  end

  show do |carrier|
    attributes_table do
      row :title
      row :image do |gallery|
        image_tag gallery.image
      end   
      row :description do |gallery|
        gallery.description.html_safe
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :title
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url)
      f.input :description, :as => :ckeditor
    end
    f.buttons
  end

  filter :title 
  filter :description 
  
end
