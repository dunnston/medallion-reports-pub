ActiveAdmin.register Sale do
  permit_params :name, :new_client, :client_on, :new_money,  :opening_amount, :first_year_comp, :renewal_comp, 
  :user, :issued_on, :recurring, :rep, :source, :company_location, :product_company, :product_name, :product_type, :rep_id, :product_company_id, 
  :company_location_id, :product_type_id, :source_id 
  
  menu priority: 2
  
    #Narrow filters to useful list
  filter :name
  filter :rep
  filter :issued_on
  filter :source
  filter :company_location
  filter :product_type 
  filter :product_company

  #common queries
  scope :all
  scope("New Money") { |scope| scope.where(new_money: true) }


index do
  selectable_column
  id_column
  column :name
  column :new_client
  column :new_money
  column :rep
  column :opening_amount
  column :issued_on
  column :source
  actions
end

action_item :view_report, only: :index do
  link_to "view report", view_report_admin_sales_path(params.to_unsafe_h), method: :post
end

collection_action :view_report, method: :post do
collection = scoped_collection
collection = apply_authorization_scope(collection)
collection = apply_filtering(collection)
@report = Report.new(collection)
#  redirect_to admin_report_path
end

  
end
