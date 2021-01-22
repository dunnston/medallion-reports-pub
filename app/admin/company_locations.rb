ActiveAdmin.register CompanyLocation do
  
    menu parent: "Add Fields"

  permit_params :location_name

end 