class Report 
attr_reader :sales


def initialize(sales)
  @sales = sales 
end 

#New Clients

def number_of_new_clients 
  new_client_group.count
end 

def new_client_group
    new_clients.pluck(:client_id).uniq
end 

def new_clients
  @sales.where(new_client: true)
end 

 def new_client_revenue
   new_clients.sum(:first_year_comp)
 end 
 
 def new_clients_aum
   new_clients.sum(:opening_amount)
 end 
 


#Exisiting Clients In Motion 
 def existing_clients
   @sales.where(new_client: false)
 end 
 
 def exisiting_client_in_motion_revenue
   existing_clients.where(new_money: false).sum(:first_year_comp)
 end 
 
 def exisiting_client_in_motion_aum
   existing_clients.where(new_money: false).sum(:opening_amount)
 end 

#Exisiting Clients New Money 
def existing_clients_new_revenue 
   existing_clients.where(new_money: true).sum(:first_year_comp)
end 

def existing_clients_new_aum 
   existing_clients.where(new_money: true).sum(:opening_amount)
end 

# totals 
def total_sales_revenue  
  @sales.sum(:first_year_comp)
end 

def total_aum 
    @sales.sum(:opening_amount)
end 

def total_new_revenue 
  existing_clients_new_revenue + new_client_revenue
end 

def total_new_aum
  new_clients_aum + existing_clients_new_aum
end 







 

end 