ActiveAdmin.register Rep do
    menu label: "Sales Reps"
    menu parent: "Add Fields"

  permit_params :name

end 