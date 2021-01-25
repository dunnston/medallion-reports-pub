class Source < ApplicationRecord
  
    has_many :sales
    has_many :clients

    
def name
   source_name
end

  
end
