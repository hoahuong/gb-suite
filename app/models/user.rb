class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

	 belongs_to :company

 	def self.search search_term
	  return scoped unless search_term.present? 
	  where(['first_name LIKE ? AND code LIKE ? AND email LIKE ?', "%#{search_term}%", "%#{search_term}%", "%#{search_term}%"]) 
	end
end
