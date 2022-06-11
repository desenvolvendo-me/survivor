ActiveAdmin.register Survivor do
  permit_params :name, :age, :gender, :city_id
end
