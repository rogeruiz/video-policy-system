class Policy < ActiveRecord::Base
  has_many :systems
  has_many :videos, :through => :systems
  has_many :countries, :through => :systems
end
