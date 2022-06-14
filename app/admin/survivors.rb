ActiveAdmin.register Survivor do
  permit_params :name, :age, :gender, :city_id

  index do
    id_column
    column :user_id do |survivor|
      link_to survivor.user&.id, admin_user_path(survivor.user&.id)
    end
    column :name
    column :age
    column :gender
    column :city_id do |survivor|
      survivor.city&.description_uf
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :age
      row :gender
      row :city_id do |survivor|
        survivor.city&.description_uf
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :age
      f.input :gender
      f.input :city_id, :as => :select, :collection => City.all.collect { |city| [city&.description_uf, city.id] }
    end
    f.actions
  end
end
