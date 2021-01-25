class Rep < ApplicationRecord
  
  has_many :sales
  has_many :clients

end
