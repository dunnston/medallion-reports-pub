ActiveAdmin.register Client do
  menu priority: 2

   permit_params :name, :lost, :source_id, :rep_id, :client_on, :lost_on


  show do
        # renders app/views/admin/clients/sales.html.erb
    render 'sales', { client: client }
  end
  
  sidebar :data, :only => :show do
    @client = Client.find(params[:id])
    link_to 'New Sale', new_admin_sale_path(:sale => { :rep_id => @client.rep.id, :source_id => @client.source.id, :client_id => @client.id })
  end 
  
  
end
