class Sale < ApplicationRecord
  belongs_to :rep 
  belongs_to :product_company 
  belongs_to :company_location
  belongs_to :product_type
  belongs_to :source 
  belongs_to :client

end
