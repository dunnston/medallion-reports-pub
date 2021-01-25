class Client < ApplicationRecord

  has_many :sales
  belongs_to :source
  belongs_to :rep


def number_of_sales
  sales.count 
end 

  
end
