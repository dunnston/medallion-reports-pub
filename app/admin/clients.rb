ActiveAdmin.register Client do
  menu priority: 2

   permit_params :name, :lost, :source_id, :rep_id, :client_on, :lost_on


    #Narrow filters to useful list
  filter :name
  filter :source
  filter :rep
  filter :lost_on
  filter :client_on
  filter :lost 

  #common queries
  scope :all
  scope("Lost") { |scope| scope.where(lost: true) }


index do
  selectable_column
  #id_column
  column :name
  column :rep
  column :source
  column :client_on
  column :lost
  column :lost_on
  actions
end




  show do
        # renders app/views/admin/clients/sales.html.erb
    render 'sales', { client: client }
  end
  
  sidebar :data, :only => :show do
    @client = Client.find(params[:id])
    link_to 'New Sale', new_admin_sale_path(:sale => { :rep_id => @client.rep.id, :source_id => @client.source.id, :client_id => @client.id })
  end 
  
  
end
