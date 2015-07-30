# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Start seeding #{Rails.env}"
ActiveRecord::Base.transaction do
  %w{users}.each do |section|
    require File.expand_path("../seeds/#{section}", __FILE__)
  end
end

puts "Seed complete!"
