class System < ActiveRecord::Base
  belongs_to :video
  belongs_to :policy
  belongs_to :country

  # def self.policy(type)
  #   where("policy_id", type)
  # end
end
