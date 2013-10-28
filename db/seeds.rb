# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Video.delete_all
# System.delete_all
# Country.delete_all
# Policy.delete_all

policyType = ['monetize', 'free', 'block']
countryType = [['CA', 'Canada'], ['MX', 'Mexico'], ['TW', 'Taiwan'], ['IN', 'India'], ['CN', 'China'], ['US', 'United States of America']]

for i in 0...100
  # puts "Video, :title => Video #{i}"
  Video.create(:title => "Video #{i}")
  for l in 1..6
    # puts "System, :video_id => #{(i + 1)}, :policy_id => #{rand(1..3)}, :country_id => #{l}"
    System.create(:video_id => (i + 1), :policy_id => rand(1..3),:country_id => l)
  end
end

for j in 0...policyType.length
  # puts "Policy, :name => #{policyType[j]}"
  Policy.create!(:name => policyType[j])
end

for k in 0...countryType.length
  # puts "Country, :code => #{countryType[k][0]}, :name => #{countryType[k][1]}"
  Country.create!(:code => countryType[k][0], :name => countryType[k][1])
end
