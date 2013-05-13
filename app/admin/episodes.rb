ActiveAdmin.register Episode do
  index do
    selectable_column
    column :name
    column :permalink
    column :created_at
    column :updated_at
    actions
  end
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :permalink
      f.input :tag_list
      f.input :description, :input_html => { :class => 'redactor' }
      f.input :notes
      f.input :position
      f.input :published_at, :label => "Publish Post At"
    end
    f.actions
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :description
    end
    active_admin_comments
  end
end
