class Country < ActiveRecord::Base
  has_many :systems
  has_many :videos, :through => :systems
  has_many :policies, :through => :systems
end
