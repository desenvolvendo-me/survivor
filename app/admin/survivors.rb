ActiveAdmin.register Survivor do
  permit_params :name, :age, :city, :gender, :city_id
end
