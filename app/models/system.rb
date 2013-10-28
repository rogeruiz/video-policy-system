class System < ActiveRecord::Base
  belongs_to :video
  belongs_to :policy
  belongs_to :country
end
