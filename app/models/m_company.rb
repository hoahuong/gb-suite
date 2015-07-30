class MCompany < ActiveRecord::Base
 	has_many :user
 	def self.search(search)
  		where("name LIKE ?", "%#{search}%") 
	end
end
