ActiveAdmin.register Photo do

  index do                           
    column :title
    column :album do |photo|
      photo.album.name unless photo.album.blank?
    end              
    column :image do |gallery|
      image_tag gallery.image
    end   
    column :description do |gallery|
      gallery.description.html_safe
    end             
    default_actions                   
  end

  show do |photo|
    attributes_table do
      row :title
      row :album do |photo|
        photo.album.name  
      end unless photo.album.blank?
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
      if !f.object.new_record?
        f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url)
      else
        f.input :image, :as => :file
      end
      f.input :album unless Album.all.empty?
      f.input :description, :as => :ckeditor
    end
    f.buttons
  end

  filter :title 
  filter :description 
  
end
