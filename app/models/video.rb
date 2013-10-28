class Video < ActiveRecord::Base
  has_many :systems
  has_many :policies, :through => :systems
  has_many :countries, :through => :systems
  
end
