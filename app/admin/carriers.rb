ActiveAdmin.register Carrier do
	index do                            
    column :title                     
    column :expired_date        
    column :basic_carrier do |carrier|
    	carrier.basic_carrier.html_safe
    end   
    column :requirement do |carrier|
    	carrier.requirement.html_safe
    end             
    default_actions                   
  end

  show do |carrier|
    attributes_table do
      row :title
      row :expired_date
      row :basic_carrier do |carrier|
	    	carrier.basic_carrier.html_safe
	    end   
	    row :requirement do |carrier|
	    	carrier.requirement.html_safe
	    end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :expired_date, :as => :datepicker
      f.input :basic_carrier, :as => :ckeditor
      f.input :requirement, :as => :ckeditor
    end
    f.buttons
  end

  filter :title 
  filter :expired_date 
  filter :basic_carrier 
  filter :requirement

end
